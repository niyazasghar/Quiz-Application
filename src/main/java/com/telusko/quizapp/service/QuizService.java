package com.telusko.quizapp.service;

import com.telusko.quizapp.dao.QuestionDao;
import com.telusko.quizapp.dao.QuizDao;
import com.telusko.quizapp.model.Question;
import com.telusko.quizapp.model.QuestionWrapper;
import com.telusko.quizapp.model.Quiz;
import com.telusko.quizapp.model.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class QuizService {

    @Autowired
    QuizDao quizDao;  // Dependency Injection for QuizDao

    @Autowired
    QuestionDao questionDao;  // Dependency Injection for QuestionDao

    public ResponseEntity<String> createQuiz(String category, int numQ, String title) {

        // Fetch a list of random questions by category
        List<Question> questions = questionDao.findRandomQuestionsByCategory(category, numQ);

        // Create a new Quiz object and set its properties
        Quiz quiz = new Quiz();
        quiz.setTitle(title);
        quiz.setQuestions(questions);

        // Save the quiz object to the database
        quizDao.save(quiz);

        // Return a success response with HTTP status 201 (Created)
        return new ResponseEntity<>("Success", HttpStatus.CREATED);
    }

    public ResponseEntity<List<QuestionWrapper>> getQuizQuestions(Integer id) {
        // Fetch the quiz by ID, using Optional to handle potential null values
        Optional<Quiz> quiz = quizDao.findById(id);

        // Get the list of questions from the fetched quiz
        List<Question> questionsFromDB = quiz.get().getQuestions();

        // Create a list to hold QuestionWrapper objects
        List<QuestionWrapper> questionsForUser = new ArrayList<>();

        // Convert each Question object to a QuestionWrapper and add to the list
        for (Question q : questionsFromDB) {
            QuestionWrapper qw = new QuestionWrapper(q.getId(), q.getQuestionTitle(), q.getOption1(), q.getOption2(), q.getOption3(), q.getOption4());
            questionsForUser.add(qw);
        }

        // Return the list of QuestionWrapper objects with HTTP status 200 (OK)
        return new ResponseEntity<>(questionsForUser, HttpStatus.OK);
    }

    public ResponseEntity<Integer> calculateResult(Integer id, List<Response> responses) {
        // Fetch the quiz by ID
        Quiz quiz = quizDao.findById(id).get();

        // Get the list of questions from the quiz
        List<Question> questions = quiz.getQuestions();

        int right = 0;  // Counter for correct answers
        int i = 0;  // Index for iterating through questions

        // Iterate through the responses and compare with the correct answers
        for (Response response : responses) {
            if (response.getResponse().equals(questions.get(i).getRightAnswer()))
                right++;  // Increment counter if the answer is correct
            i++;
        }

        // Return the number of correct answers with HTTP status 200 (OK)
        return new ResponseEntity<>(right, HttpStatus.OK);
    }
}
