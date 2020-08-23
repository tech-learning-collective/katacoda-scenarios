" Markdownify formatting.
:%s/<b>\|<\/b>/**/g
:%s/<i>\|<\/i>/*/g

" Markdownify code blocks.
:%s/<pre>/```\r/
:%s/<\/pre>/\r```/

" Markdownify lists.
:%s/<ul>\n\|\n<\/ul>//
:%s/<\/li>//
:%s/<li>/* /

" Katacoda-quizzify questions and answers.
:%s/\#\# Quiz Question\n\n/>>Q1: /
:%s/>>Q1: \(.*\)/>>Q1: \1<</
:%s/\n\#\# Quiz Answer\n\n/=== /

" Save, if there were changes, and quit.
:update
:q

