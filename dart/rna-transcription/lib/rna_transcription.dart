class RnaTranscription {
  static const Map<String, String> MAP = {
    'G': 'C',
    'C': 'G',
    'T': 'A',
    'A': 'U'
  };
  // convert each dna nucleotide into rna
  String toRna(String dna) {
    String rna = '';
    for (int i = 0; i < dna.length; i++) {
      rna += MAP[dna[i]]!;
    }
    return rna;
  }
}
