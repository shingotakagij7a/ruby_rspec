class IntTriangle
  attr_reader :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    unless side_a.positive? && side_b.positive? && side_c.positive?
      raise ArgumentError, 'The given sides contain a zero or negative value'
    end

    unless side_a.is_a?(Integer) && side_b.is_a?(Integer) && side_c.is_a?(Integer)
      raise ArgumentError, 'The given sides contain a float value'
    end

    unless side_a + side_b > side_c && side_a + side_c > side_b && side_b + side_c > side_a
      raise ArgumentError,
            'The given sides do not form a valid triangle'
    end

    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def perimeter
    @side_a + @side_b + @side_c
  end
end
