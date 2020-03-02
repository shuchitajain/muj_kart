List<ListWords>  listWords = [
  ListWords('BS Grewal', 'OneWord definition'),
  ListWords('Galvin', 'TwoWord definition.'),
  ListWords('Rdbms notes', 'TreeWord definition'),
  ListWords('Lab coat', 'TreeWord definition'),
  ListWords('Drafter', 'TreeWord definition'),
  ListWords('Nilesh Bahadure', 'TreeWord definition'),
];

class ListWords {
  String titlelist;
  String definitionlist;

  ListWords(String titlelist, String definitionlist) {
    this.titlelist = titlelist;
    this.definitionlist = definitionlist;
  }
}