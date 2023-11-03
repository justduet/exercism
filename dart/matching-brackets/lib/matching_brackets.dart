class MatchingBrackets {
  bool isPaired(String testString) {
    Stack<String> stack = new Stack<String>();
    bool success = true;

    // leave ({[]}) and make sure they all match
    FOR:
    for (final Match m in RegExp(r'([\(){}\[\]])').allMatches(testString)) {
      switch (m[0]) {
        case '(':
        case '[':
        case '{':
          stack.push(m[0]!);
          break;
        case ')':
        case ']':
        case '}':
          // we have failed if the stack is empty OR
          //   the popped item does not match the top of the stack
          if (stack.isEmpty || !this.matchTest(stack.pop(), m[0]!)) {
            success = false;
            break FOR;
          }
      }
    }
    return stack.isEmpty && success;
  }

  // check whether two strings match ({[]})
  bool matchTest(String a, String b) {
    return  (a == '(' && b == ')') ||
            (a == '[' && b == ']') ||
            (a == '{' && b == '}');
  }
}

class Stack<E> {
  Stack() : _storage = <E>[];
  final List<E> _storage;

  void push(E element)    => _storage.add(element);
  E pop()                 => _storage.removeLast();
  E get peek              => _storage.last;
  bool get isEmpty        => _storage.isEmpty;
  bool get isNotEmpty     => !isEmpty;
}
