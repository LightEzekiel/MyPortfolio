class Recommendation {
  final String? name, source, text;

  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> demo_recommendations = [
  Recommendation(
    name: "Egolum Anthony",
    source: "LinkedIn",
    text:
        "I have had the pleasure of working with Light on a project (Strivon) and what strikes me the most about his work is his ability to write clean and reusable codes with best practices. He is hardworking and makes it so easy to transcribe ideas into beautiful and testable flutter apps. He is a Flutter/Dart gem and has my highest recommendation",
  ),
  Recommendation(
    name: "Precious Okafor C.",
    source: "Twitter",
    text:
        "Light is great asset for any organization. It's a true pleasure working with him at Bisector. His flutter skill is amazing as well as his professionalism and being a good team player. Light's problem solving skill is also one of his great skills.",
  ),
  Recommendation(
    name: "Obodozie Chuka",
    source: "LinkedIn",
    text:
        "I like the way you structure your project and working with you is quite wonderful.\nI sincerely recommend you to any outstanding organization.",
  ),
];
