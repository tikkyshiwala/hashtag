class Searcher
  DEFAULT_COUNT = 10

  class_attribute :backend
  self.backend = TwitterApi

  def initialize(term, count = DEFAULT_COUNT, options = {})
    @term = term
    @count = count
    @options = options
  end

  def each(&block)
    backend.search(@term, @options).take(@count).each &block
  end
end
