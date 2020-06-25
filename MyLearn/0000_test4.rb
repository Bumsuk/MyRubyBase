#!/usr/bin/ruby

# Hashes are Ruby's primary dictionary with keys/value pairs.
# Hashes are denoted with curly braces:
hash = {'color' => 'green', 'number' => 5}

hash.keys #=> ['color', 'number']

# Hashes can be quickly looked up by key:
hash['color'] #=> 'green'
hash['number'] #=> 5

# Asking a hash for a key that doesn't
# exist returns nil:
hash['nothing here'] #=> nil

puts "🤡 check!"