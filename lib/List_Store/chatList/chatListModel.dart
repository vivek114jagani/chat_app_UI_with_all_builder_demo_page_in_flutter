// ignore_for_file: file_names

class ChatListModel {
  // Any variable within this class must be written in the list given above.
  final String title; // Compulsory
  final String subTitle; // Compulsory
  // This is not compulsory because, after the string ? Therefore, even if you write in any one of the data team, it will work.
  final String? dateTime;
  final String? netImage;

  ChatListModel({
    required this.title,
    required this.subTitle,
    this.dateTime,
    this.netImage,
  });
}

List<ChatListModel> chatList = [
  // goto ChatListModel class.
  // If you want to use 2 different lists given below then it can be done in this way.
  // In this way, the index of title and subtitle is same, so there is no problem of error.
  ChatListModel(
    title: "Wade",
    subTitle: "Work from home",
    dateTime: DateTime.now().toString().substring(11, 16),
    netImage:
        "https://image.shutterstock.com/image-photo/young-handsome-man-beard-wearing-260nw-1768126784.jpg",
  ),
  ChatListModel(
    title: "Dave",
    subTitle: "hii",
    dateTime: DateTime.now().toString().substring(11, 16),
    netImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1JFjPFW0JcGUkSC0Eb42FQypMi54S_dkL_w&usqp=CAU",
  ),
  ChatListModel(
    title: "Seth",
    subTitle: "offline",
    dateTime: DateTime.now().toString().substring(11, 16),
    netImage: "https://www.cdc.gov/cancer/prostate/images/man-750.jpg?_=76964",
  ),
  ChatListModel(
    title: "Ivan",
    subTitle: "Right be there",
    dateTime: DateTime.now().toString().substring(11, 16),
    netImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7rlzt0yo4mV_oFzY8Nk-kTG178G06pd5NFg&usqp=CAU",
  ),
  ChatListModel(
    title: "Riley",
    subTitle: "busy",
    dateTime: DateTime.now().toString().substring(11, 16),
    netImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJVl8AFIbEG4MYhkjmnl38iO3UVE_aMH7QDg&usqp=CAU",
  ),
  ChatListModel(
    title: "Gilbert",
    subTitle: "i'm going to school",
    dateTime: DateTime.now().toString().substring(11, 16),
    netImage:
        "https://t4.ftcdn.net/jpg/03/26/98/51/360_F_326985142_1aaKcEjMQW6ULp6oI9MYuv8lN9f8sFmj.jpg",
  ),
  ChatListModel(
    title: "Jorge",
    subTitle: "party time",
    dateTime: DateTime.now().toString().substring(11, 16),
    netImage: "https://i.ytimg.com/vi/tHxip2x-PLc/maxresdefault.jpg",
  ),
  ChatListModel(
    title: "Dan",
    subTitle: "lazy day!!",
    dateTime: DateTime.now().toString().substring(11, 16),
    netImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTdMqkOIvbkpItFnVHSEe_089zicEzURSpTw&usqp=CAU",
  ),
  ChatListModel(
    title: "Brian",
    subTitle: "🙌😁👍",
    dateTime: DateTime.now().toString().substring(11, 16),
    netImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQERRktxxTcshtADZgiLNPudfVRwzGkaqe7AQ&usqp=CAU",
  ),
  ChatListModel(
    title: "Roberto",
    subTitle: "😎 I'm your Boss 😎 🤙",
    dateTime: DateTime.now().toString().substring(11, 16),
    netImage:
        "https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2022/01/1565673-1569747-What-premature-ejaculation-pills-work-732x549-Feature-732x549.jpg",
  ),
  ChatListModel(
    title: "Ramon",
    subTitle: "Sorry, I'm gonna slipping",
    dateTime: DateTime.now().toString().substring(11, 16),
    netImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnKVS3fJXWce782tZbbPeRO0EMFopAHno22Q&usqp=CAU",
  ),
  ChatListModel(
    title: "Miles",
    subTitle: "I Love India 😍😍😍",
    dateTime: DateTime.now().toString().substring(11, 16),
    netImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU",
  ),
  ChatListModel(
    title: "Liam",
    subTitle: "Hola ✋",
    dateTime: DateTime.now().toString().substring(11, 16),
    netImage:
        "https://www.koimoi.com/wp-content/new-galleries/2023/02/ant-man-villain-jonathan-majors-recalls-walking-out-of-marvels-office-001.jpg",
  ),
  ChatListModel(
    title: "Nathaniel",
    subTitle: "What are you doing here??",
    dateTime: DateTime.now().toString().substring(11, 16),
    netImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYkaAMf5JYiPUE4OfVQ8EBLVP0d_kiKcTYVw&usqp=CAU",
  ),
  ChatListModel(
    title: "Ethan",
    subTitle: "Go back to Your Home",
    dateTime: DateTime.now().toString().substring(11, 16),
    netImage:
        "https://imgnew.outlookindia.com/uploadimage/library/16_9/16_9_2/Spider_Man_1686812121.webp",
  ),
  ChatListModel(
    title: "Lewis",
    subTitle: "Online",
    netImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmUg9y37uIFFYNvnTlxNLSjp2POLcXaeTNNA&usqp=CAU",
    dateTime: DateTime.now().toString().substring(11, 16),
  ),
  ChatListModel(
    title: "Milton",
    subTitle: "Traveling",
    dateTime: DateTime.now().toString().substring(11, 16),
    netImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFsdVZ8UYwSXclNjG6S-sO_p7ChlpkynqgpA&usqp=CAU",
  ),
  ChatListModel(
    title: "Claude",
    subTitle: "Byy",
    dateTime: DateTime.now().toString().substring(11, 16),
    netImage: "https://images.indianexpress.com/2022/10/RDJ1200.jpg",
  ),
];
