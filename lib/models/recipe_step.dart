class RecipeStep {
  String text;
  int time;

  RecipeStep(text, time) {
    //add any rules to reject invalid values
    //for example, reject negative gram amounts
    this.text = text;
    this.time = time;
  }
}
