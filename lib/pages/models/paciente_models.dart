class PacienteModel {
  final int idPaciente;
  final int idUsuarioRegistro;
  final int edad;
  final String tipoSangre;
  final String enfermedades;
  final String alergias;
  final String medicamentos;

  const PacienteModel({
    required this.idPaciente,
    required this.idUsuarioRegistro,
    required this.edad,
    required this.tipoSangre,
    required this.enfermedades,
    required this.alergias,
    required this.medicamentos,
  });

  factory PacienteModel.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
      'id_paciente': int idPaciente,
      'id_usuario_registro': int idUsuarioRegistro,
      'edad': int edad,
      'tipo_sangre': String tipoSangre,
      'enfermedades': String enfermedades,
      'alergias': String alergias,
      'medicamentos': String medicamentos,
      } =>
          PacienteModel(
            idPaciente: idPaciente,
            idUsuarioRegistro: idUsuarioRegistro,
            edad: edad,
            tipoSangre: tipoSangre,
            enfermedades: enfermedades,
            alergias: alergias,
            medicamentos: medicamentos,
          ),
      _ => throw const FormatException('Failed to load paciente.'),
    };
  }
}