class RnaTranscription {
  static const Map<String, String> MAP = {
    'G': 'C',
    'C': 'G',
    'T': 'A',
    'A': 'U'
  };
  // convert each dna nucleotide into rna
  String toRna(String dna) {
    return dna.split('').map((l) => MAP[l]).join();
  }
}
