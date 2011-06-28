require 'spec_helper'

describe Magnetism::Markdown do
  describe '#to_html' do
    it 'parses the content into html' do
      content = <<-HTML
# Header 1

## Header 2

Paragraph 1
      HTML

      html_content = <<-HTML
<h1>Header 1</h1>

<h2>Header 2</h2>

<p>Paragraph 1</p>
      HTML

      Magnetism::Markdown.new(content).to_html.should eq(html_content)
    end
  end

  context 'when there is html mixed with markdown' do
    it 'does not alter the html' do
      content = <<-HTML
# Header 1

## Header 2

<pre><code>
  Embedded HTML Content
</code></pre>

Paragraph 1
      HTML

      html_content = <<-HTML
<h1>Header 1</h1>

<h2>Header 2</h2>

<pre><code>
  Embedded HTML Content
</code></pre>


<p>Paragraph 1</p>
      HTML

      Magnetism::Markdown.new(content).to_html.should eq(html_content)
    end
  end
end
