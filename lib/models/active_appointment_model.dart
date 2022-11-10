// ignore_for_file: public_member_api_docs, sort_constructors_first
class ActiveAppointmentModel {
  final String docName;
  final String docSpecs;
  final String docPic;
  ActiveAppointmentModel({
    required this.docName,
    required this.docSpecs,
    required this.docPic,
  });

 static List<ActiveAppointmentModel> activeAppointments = [
    // ActiveAppointmentModel(
    //   docName: "Maral",
    //   docSpecs: "Health",
    //   docPic: "assets/doc_pic.png",
    // ),
    // ActiveAppointmentModel(
    //   docName: "Maral",
    //   docSpecs: "Health",
    //   docPic: "assets/doc_pic.png",
    // ),
    // ActiveAppointmentModel(
    //   docName: "Maral",
    //   docSpecs: "Health",
    //   docPic: "assets/doc_pic.png",
    // ),
    ActiveAppointmentModel(
      docName: "Maral",
      docSpecs: "Health",
      docPic: "assets/doc_pic.png",
    ),
  ];
}
