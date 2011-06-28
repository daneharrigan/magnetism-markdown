require 'magnetism'
require 'magnetism/markdown'

if defined? Magnetism
  Magnetism.content_parser = Magnetism::Markdown
end
