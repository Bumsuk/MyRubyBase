story = <<EOS
Solomon Grundy,
Born on Monday,
Christened on Tuesday,
Married on Wednesday,
Took ill on Thursday,
Worse on Friday,
Died on Saturday,
Buried on Sunday:
This is the end
Of Solomon Grundy.
EOS
story = story.gsub(/Solomon Grundy/, "Hippopotamus")
print story
#=> Hippopotamus,
#   Born on Monday,
#   ....
#   This is the end
#   Of Hippopotamus.

