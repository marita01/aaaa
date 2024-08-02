enum VehicleType {
  meditacao(label: 'Meditação'),
  respiracao(label: 'Respiração'),
  leitura(label: 'Leitura'),
  massagem(label: 'Massagem');

  const VehicleType({
    required this.label,
  });

  final String label;
}
