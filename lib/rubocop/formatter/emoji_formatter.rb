require "rubocop"
require "rubocop/formatter/progress_formatter"

module RuboCop
  module Formatter
    # This formatter display green hearts for files with no offenses and
    # letters for files with problems in the them. In the end it
    # appends the regular report data in the clang style format.
    class EmojiFormatter < ProgressFormatter
      def report_file_as_mark(offenses)
        mark = if offenses.empty?
                 "\u{1f49a} "
               else
                 highest_offense = offenses.max_by(&:severity)
                 colored_severity_code(highest_offense)
               end

        output.write mark
      end
    end
  end
end
