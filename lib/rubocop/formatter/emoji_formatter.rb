require "rubocop"

module RuboCop
  module Formatter
    # This formatter display green hearts for files with no offenses and
    # broken red hearts for files with problems in them. In the end it
    # appends the regular report data in the clang style format.
    class EmojiFormatter < ProgressFormatter
      def report_file_as_mark(offenses)
        mark = if offenses.empty?
                 "\u{1f49a} "
               else
                 "\u{1f494} "
               end

        output.write mark
      end
    end
  end
end
