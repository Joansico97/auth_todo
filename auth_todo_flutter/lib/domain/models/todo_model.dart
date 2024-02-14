class TodoModel {
  final String title;
  final String description;
  final bool state;

  TodoModel({
    required this.title,
    required this.description,
    required this.state,
  });

  TodoModel copyWith({
    String? title,
    String? description,
    bool? state,
  }) =>
      TodoModel(
        title: title ?? this.title,
        description: description ?? this.description,
        state: state ?? this.state,
      );

  factory TodoModel.fromJson(Map<String, dynamic> json) => TodoModel(
        title: json["title"],
        description: json["description"],
        state: json["state"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "state": state,
      };
}
