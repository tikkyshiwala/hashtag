class Searcher
  DEFAULT_COUNT = 10

  def initialize(term, count = DEFAULT_COUNT, options = {})
    @term = term
    @count = count
    @options = options
  end

  def each(&block)
    TwitterApi.search(@term, @options).take(@count).each &block
  end
end
