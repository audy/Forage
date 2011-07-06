class Forage
  attr_accessor :handle, :iupac, :regex

  def initialize(handle, query)
    @handle = handle
    
    @iupac = Hash.new { |h, k| h[k] = k }.merge(
      { 'R' => 'AG', 'Y' => 'CTUY', 'S' => 'GCS', 'W' => 'ATUW', 'K' =>
      'GTUK', 'M' => 'ACM', 'B' => 'CGTUB', 'D' => 'AGTUD', 'H' => 'ACTUH',
      'V' => 'ACGV', 'N' => '.', '-' => '.'}
    )
    
    @regex = self.convert query
  end

  # return [header, [matches]]
  def each
    self.fasta do |record|
      next if record[0] == nil
      header = record[0]
      sequence = record[1]
      matches = sequence.scan(@regex)
      yield [header, matches] if matches != []
    end
  end

  # convert string to regex
  def convert(s)
    @regex = s.each_char.collect { |n| "[#{@iupac[n]}]" }.join
    Regexp.new @regex
  end
  
  # parse fasta-formatted data
  def fasta
    sequence, header = nil, nil
    @handle.each do |line|
      if line[0].chr == '>'
        yield [ header, sequence ]
        sequence = ''
        header = line[1..-1].strip
      else
        sequence << line.strip.tr(' ','')
      end
    end
    yield [ header, sequence ]
  end
end