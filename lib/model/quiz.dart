class Quiz {
  final String question;
  final List<int> variant;
  final int correctVariant;

  const Quiz({
    required this.question,
    required this.variant,
    required this.correctVariant,
  });
}