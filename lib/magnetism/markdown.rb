require 'rdiscount'

module Magnetism
  class Markdown
    def initialize(content)
      @content = content
    end

    def to_html
      RDiscount.new(@content).to_html
    end
  end
end
