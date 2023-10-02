class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;

  Message({
    required this.text,
    required this.date,
    required this.isSentByMe,
  });
}

List<Message> messages = [
  Message(
    text: 'hii',
    date: DateTime.now().subtract(
      const Duration(days: 15, minutes: 3),
    ),
    isSentByMe: false,
  ),
  Message(
    text: 'hii',
    date: DateTime.now().subtract(
      const Duration(days: 3, minutes: 4),
    ),
    isSentByMe: true,
  ),
  Message(
    text: 'How are you?',
    date: DateTime.now().subtract(
      const Duration(days: 3, minutes: 3),
    ),
    isSentByMe: false,
  ),
  Message(
    text: "i'm fine\nHow are you??",
    date: DateTime.now().subtract(
      const Duration(days: 3, minutes: 3),
    ),
    isSentByMe: true,
  ),
  Message(
    text: "I'm well Good",
    date: DateTime.now().subtract(
      const Duration(days: 3, minutes: 3),
    ),
    isSentByMe: false,
  ),
  Message(
    text: 'what are you doing Now?',
    date: DateTime.now().subtract(
      const Duration(days: 3, minutes: 3),
    ),
    isSentByMe: false,
  ),
  Message(
    text: "Nothing, I'm free",
    date: DateTime.now().subtract(
      const Duration(days: 3, minutes: 3),
    ),
    isSentByMe: true,
  ),
  Message(
    text: 'Great',
    date: DateTime.now().subtract(
      const Duration(days: 3, minutes: 3),
    ),
    isSentByMe: false,
  ),
  Message(
    text: 'would you like a watching Movies',
    date: DateTime.now().subtract(
      const Duration(days: 3, minutes: 3),
    ),
    isSentByMe: false,
  ),
  Message(
    text: 'yah, I really Like Movies',
    date: DateTime.now().subtract(
      const Duration(days: 3, minutes: 3),
    ),
    isSentByMe: true,
  ),
  Message(
    text: 'Which tye of Movies?',
    date: DateTime.now().subtract(
      const Duration(days: 3, minutes: 3),
    ),
    isSentByMe: false,
  ),
  Message(
    text: 'Horror, Action, Thriller, etc...',
    date: DateTime.now().subtract(
      const Duration(days: 3, minutes: 3),
    ),
    isSentByMe: true,
  ),
  Message(
    text: 'same here',
    date: DateTime.now().subtract(
      const Duration(days: 3, minutes: 3),
    ),
    isSentByMe: false,
  ),
  Message(
    text: 'We have going to watching movie tomorrow??',
    date: DateTime.now().subtract(
      const Duration(days: 3, minutes: 3),
    ),
    isSentByMe: false,
  ),
  Message(
    text: 'yes, of course',
    date: DateTime.now().subtract(
      const Duration(days: 3, minutes: 3),
    ),
    isSentByMe: true,
  ),
  Message(
    text:
        "But, can you tell me which movie we are watching tomorrow and what's time that Movie",
    date: DateTime.now().subtract(
      const Duration(days: 3, minutes: 3),
    ),
    isSentByMe: true,
  ),
  Message(
    text: "yah, of course We have watching RRR movie to 6 O'Clock",
    date: DateTime.now().subtract(
      const Duration(days: 3, minutes: 3),
    ),
    isSentByMe: false,
  ),
  Message(
    text: 'ok',
    date: DateTime.now().subtract(
      const Duration(days: 3, minutes: 3),
    ),
    isSentByMe: true,
  ),
  Message(
    text: "Great, so we have meet tomorrow.\nbyy",
    date: DateTime.now().subtract(
      const Duration(days: 3, minutes: 3),
    ),
    isSentByMe: false,
  ),
  Message(
    text: 'Good Night',
    date: DateTime.now().subtract(
      const Duration(days: 3, minutes: 3),
    ),
    isSentByMe: false,
  ),
  Message(
    text: 'byy\nGood Night',
    date: DateTime.now().subtract(
      const Duration(days: 3, minutes: 3),
    ),
    isSentByMe: true,
  ),
];
