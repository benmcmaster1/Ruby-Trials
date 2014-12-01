from_file, to_file = ARGV;
in_file = open(from_file); indata = in_file.read;
out_file = open(to_file, 'w'); out_file.write(indata);
out_file.close
in_file.close

=begin ---------------------------
an alternative for one line:
File.open(ARGV[1], 'w').write(File.open(ARGV[0]).read())﻿
=end 
