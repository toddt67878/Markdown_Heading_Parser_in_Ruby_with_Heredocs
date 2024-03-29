require 'rspec'

def markdown_heading_parser content
  content.gsub(/^.*#.*/) { |heading| "<h1>#{heading[2..-1]}</h1>" }
end

describe 'Markdown heading parser' do
  it 'Converts a heredoc string to markdown headings' do
content = <<-EOF
# Hey there
Some content
# Another heading
More content
EOF

    expect(markdown_heading_parser content).to eq("<h1>Hey there</h1>\n\nSome content\n\n<h1>Another heading</h1>\n\nMore content\n")

  end
end
