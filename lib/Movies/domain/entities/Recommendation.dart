import 'package:equatable/equatable.dart';

class Recommendation extends Equatable {
  final String? backgroundPath;
  final int id;

  const Recommendation({
    this.backgroundPath,
    required this.id,
  });

  @override
  List<Object?> get props => [
        backgroundPath,
        id,
      ];
}
