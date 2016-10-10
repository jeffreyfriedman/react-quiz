You've been tasked with making a quiz application in React!

![React Quiz 1][react-quiz-1]

## Setup
From your challenges directory, run the following:

```
$ et get react-quiz
$ cd react-quiz
$ bundle install
$ bundle exec rake db:create
$ bundle exec rake db:migrate
$ bundle exec rails server -b 0.0.0.0
```

Then in another terminal tab run:

```
$ npm install
$ npm start
```

If you go to [localhost:3000][localhost-3000], there will be nothing on the
page and there should be no errors in your console.

## Meets Expectations Requirements
1. Using React and the data supplied in `react/src/constants/data.js`, render a
     static page displaying the question and its possible answers. **You may not
     modify the data in this file**. On initial render, the page should not
     display either 'Correct!' or 'Incorrect' on the page.

     ![React Quiz 1][react-quiz-1]

2. Clicking on a correct answer updates the page to display 'Correct!' at the
     bottom of the answers.

     ![React Quiz 2][react-quiz-2]

3. Clicking on an incorrect answer updates the page to display 'Incorrect' at the
     bottom of the answers.

     ![React Quiz 3][react-quiz-3]

## Exceeds Expectations Requirements
1. Add an API enpoint to the Rails application which responds to the following cURL request:

    ```sh
    $ curl http://localhost:3000/api/question/random
    ```

    The JSON response should be a random question with three incorrect answers
    and one correct answer. The following is an example of how the response
    body should be structured:

    ```sh
    {"question":{"id":1,"body":"What is the best JavaScript Framework?"},"answers":[{"id":1,"body":"React","question_id":1,"correct":true},{"id":2,"body":"Ember","question_id":1,"correct":false},{"id":3,"body":"Angular2","question_id":1,"correct":false},{"id":4,"body":"Rails","question_id":1,"correct":false}]};
    ```

2. Update the `db/seeds.rb` file to seed two questions that each have four answers to the database.
3. Update your React application so it uses data from the API endpoint that you created rather than the data from `react/src/constants/data.js`.
4. When a correct answer is selected, your React application should now display a button with the text "Next Question".

     ![React Quiz 4][react-quiz-4]

     Clicking on the button will update the application to show a question randomly chosen from the database.
     The page should not display either 'Correct!' or 'Incorrect' on the page.

     ![React Quiz 5][react-quiz-5]

[localhost-3000]: http://localhost:3000
[react-quiz-1]: https://s3.amazonaws.com/horizon-production/images/react-quiz-1.png
[react-quiz-2]: https://s3.amazonaws.com/horizon-production/images/react-quiz-2.png
[react-quiz-3]: https://s3.amazonaws.com/horizon-production/images/react-quiz-3.png
[react-quiz-4]: https://s3.amazonaws.com/horizon-production/images/react-quiz-4.png
[react-quiz-5]: https://s3.amazonaws.com/horizon-production/images/react-quiz-5.png
