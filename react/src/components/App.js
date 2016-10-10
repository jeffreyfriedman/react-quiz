import React, { Component } from 'react';
import Answer from './Answer'

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      question: "",
      answers: [],
      selectedAnswerId: null
    }

    this.handleAnswerClick = this.handleAnswerClick.bind(this);
    this.handleNewButtonClick = this.handleNewButtonClick.bind(this);
  }

  newQuestion() {
    $.ajax({
      url: '/api/question/random',
      contentType: 'application/json'
    })
    .done(data => {
      this.setState({ question: data.question.body, answers: data.answers });
    });
  }

  componentDidMount() {
    this.newQuestion();
  }

  handleAnswerClick(id) {
    this.setState({selectedAnswerId: id});
  }

  handleNewButtonClick() {
    this.newQuestion();
  }

  render() {

      let question = this.state.question;
      let response = null;
      let newClass = "";
      let conditionalButton = null;
      let answers = this.state.answers.map(answer => {

        let onClick = () => this.handleAnswerClick(answer.id);
        if (this.state.selectedAnswerId === answer.id) {
          if (answer.correct) {
            response = <p className="right">Correct!</p>;
            conditionalButton = <li className="button large" onClick={this.handleNewButtonClick}>Next Question</li>;
            newClass = "green";
          } else {
            response = <h2 className="wrong">Incorrect</h2>;
          }
        }

        return(
          <Answer
          key={answer.id}
          id={answer.id}
          body={answer.body}
          onClick={onClick}
          newClass={newClass}
          />
        )
      });

      return(
        <div>
          <h1 className="text-center">{question}</h1>
          <div className="row test">
            <div className="sm-2 small-centered columns">
              <div>
                {answers}
                <div className="text-center">{response}</div>
                <div className="spacer">
                  {conditionalButton}
                </div>
              </div>
            </div>
          </div>
        </div>
      )

  }
}

export default App;
