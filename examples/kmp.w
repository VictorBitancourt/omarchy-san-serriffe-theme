@* Fast pattern matching in strings.
This small CWEB program searches for a pattern using the
Knuth--Morris--Pratt algorithm.  Its central idea is to remember how much of
the pattern remains useful after a mismatch, rather than comparing the same
characters again.

@c
#include <stdio.h>
#include <string.h>

@<Function prototypes@>@;

int main(void) {
  const char *text = "THE ART OF ABRACADABRA";
  const char *pattern = "ABRACADABRA";
  int position = kmp_search(text, pattern);

  printf("pattern found at position %d\n", position);
  return position == 11 ? 0 : 1;
}

@<Build the failure table@>
@<Search using the table@>

@ The failure table records the length of the longest proper prefix that is
also a suffix.  For |ABRACADABRA| it is

$$0,0,0,1,0,1,0,1,2,3,4.$$

@<Function prototypes@>=
static void build_failure_table(const char *pattern, int *failure);
static int kmp_search(const char *text, const char *pattern);

@ @<Build the failure table@>=
static void build_failure_table(const char *pattern, int *failure) {
  int prefix = 0;
  failure[0] = 0;
  for (int cursor = 1; pattern[cursor] != '\0'; ++cursor) {
    while (prefix > 0 && pattern[cursor] != pattern[prefix])
      prefix = failure[prefix - 1];
    if (pattern[cursor] == pattern[prefix]) ++prefix;
    failure[cursor] = prefix;
  }
}

@ The search advances monotonically through the text.  On a mismatch, the
table tells us which prefix state can still lead to a complete match.

@<Search using the table@>=
static int kmp_search(const char *text, const char *pattern) {
  int failure[256], matched = 0;
  int pattern_length = (int) strlen(pattern);
  build_failure_table(pattern, failure);

  for (int cursor = 0; text[cursor] != '\0'; ++cursor) {
    while (matched > 0 && text[cursor] != pattern[matched])
      matched = failure[matched - 1];
    if (text[cursor] == pattern[matched]) ++matched;
    if (matched == pattern_length)
      return cursor + 1 - matched;
  }
  return -1;
}
