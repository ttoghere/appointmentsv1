// ignore_for_file: public_member_api_docs, sort_constructors_first
class PastAppointmentModel {
  final String imagePath;
  final String doctorName;
  final String doctorsprofession;
  final String doctorLocation;
  final String followUpTime;
  final String labTestCount;
  final String chemList;
  final String updateDoctor;
  PastAppointmentModel({
    required this.chemList,
    required this.imagePath,
    required this.doctorName,
    required this.doctorsprofession,
    required this.doctorLocation,
    required this.followUpTime,
    required this.labTestCount,
    required this.updateDoctor,
  });

  static List<PastAppointmentModel> pastAppointments = [
    PastAppointmentModel(
        chemList: "MonetmacL, Leucitrizine, ZyroSyrup",
        imagePath: "assets/doc_pic.png",
        doctorName: "Dr. Subil Shankar Vedant",
        doctorsprofession: "Fever and Cold",
        doctorLocation: "Radiology Dept., GetWell Hospital, Nagpur",
        followUpTime: "(07/11/22)",
        labTestCount: "(4tests)",
        updateDoctor: "(Dr. Shamshankar Prasad)"),
    PastAppointmentModel(
        chemList: "MonetmacL, Leucitrizine, ZyroSyrup",
        imagePath: "assets/doc_pic.png",
        doctorName: "Dr. Subil Shankar Vedant",
        doctorsprofession: "Fever and Cold",
        doctorLocation: "Radiology Dept., GetWell Hospital, Nagpur",
        followUpTime: "(07/11/22)",
        labTestCount: "(4tests)",
        updateDoctor: "(Dr. Shamshankar Prasad)"),
    PastAppointmentModel(
        chemList: "MonetmacL, Leucitrizine, ZyroSyrup",
        imagePath: "assets/doc_pic.png",
        doctorName: "Dr. Subil Shankar Vedant",
        doctorsprofession: "Fever and Cold",
        doctorLocation: "Radiology Dept., GetWell Hospital, Nagpur",
        followUpTime: "(07/11/22)",
        labTestCount: "(4tests)",
        updateDoctor: "(Dr. Shamshankar Prasad)"),
    PastAppointmentModel(
        chemList: "MonetmacL, Leucitrizine, ZyroSyrup",
        imagePath: "assets/doc_pic.png",
        doctorName: "Dr. Subil Shankar Vedant",
        doctorsprofession: "Fever and Cold",
        doctorLocation: "Radiology Dept., GetWell Hospital, Nagpur",
        followUpTime: "(07/11/22)",
        labTestCount: "(4tests)",
        updateDoctor: "(Dr. Shamshankar Prasad)"),
  ];
}
