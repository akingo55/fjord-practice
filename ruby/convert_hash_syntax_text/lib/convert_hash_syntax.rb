def convert_hash_syntax(old_syntax)
  old_syntax.gsub(/:(\w+) *=> */, '\1: ')
end

old_syntax = <<~EOF
{
  :name => "Alice",
  :age => "22",
  :gender => :female
}
EOF

convert_hash_syntax(old_syntax)
