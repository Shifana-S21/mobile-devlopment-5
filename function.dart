/// 📌 Dart Program: Dynamic List Processing with Functions
///
/// This program defines a flexible function named `processList()`
/// that takes:
///  1. A list of integers (`List<int> numbers`)
///  2. A function that applies an operation to each number
///
/// It applies the operation to each element and displays the result.
///
/// 📚 How to Use:
/// - The function can be reused with different operations like:
///     - Doubling numbers
///     - Squaring numbers
///     - Incrementing numbers
/// - This showcases the power of higher-order functions in Dart.

void main() {
  // Example Lists
  List<int> list1 = [1, 2, 3, 4, 5];
  List<int> list2 = [10, 20, 30];
  List<int> list3 = [3, 6, 9];

  // ✅ Call processList with different operations
  print("🔁 Doubling List Elements:");
  processList(list1, (int number) => number * 2);

  print("\n🔁 Squaring List Elements:");
  processList(list2, (int number) => number * number);

  print("\n🔁 Incrementing List Elements by 1:");
  processList(list3, (int number) => number + 1);
}

/// ✅ Function: processList
/// Takes a list of integers and a function (operation).
/// Applies the function to each item and prints the result.
///
/// Parameters:
/// - numbers: List of integers to process
/// - operation: A function that takes an integer and returns a result
void processList(List<int> numbers, int Function(int) operation) {
  for (int number in numbers) {
    int result = operation(number);
    print("Input: $number → Output: $result");
  }
}
