class QuizQuestion {

  final String question;
  final List<String> answers;

  const QuizQuestion(this.question, this.answers);

  List<String> getShuffledAnswer(){
    List<String> shuffeldlist= List.of(answers);
    shuffeldlist.shuffle();
    return shuffeldlist;
  }
}


