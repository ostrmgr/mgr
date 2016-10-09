class PollSerializer
  class << self
    def count_per_day poll
      polls_per_day = poll.replies.order('created_at ASC').group_by { |reply|
        reply.created_at.beginning_of_day }

      data = polls_per_day.map { |k,v| v.size }

      {
        data: data,
        title: "Polls answered by day",
        x_axis: {
          legend: "Polls per day",
          series: polls_per_day.keys.map { |date| date.strftime("%d %b %y") }
        },
        y_axis: {
          legend: "No. polls",
        }
      }
    end

    ##
    # @param question {Question}
    def answers_per_question question
      answers_per_question = question.answers.group_by(&:possible_answer)
      data = answers_per_question.map { |possible_answer, answers| answers.length }

      {
        data: data,
        title: %(#{question.title}),
        y_axis: {
          legend: "No. of answers",
          scale: [ 0, 1 ]
        },
        x_axis: {
          legend: "Answers per question",
          series: answers_per_question.map do |possible_answer, answers|
            possible_answer.title
          end
        },
      }
    end
  end
end