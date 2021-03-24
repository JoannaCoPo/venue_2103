class Venue

  attr_reader :name,
              :capacity,
              :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(patron)
    patrons << patron
  end

  def yell_at_patrons
    patrons.map do |patron|
      patron.upcase
    end
  end

  def over_capacity
    return true if @patrons.count > 4
    false
  end

  def kick_out
    while patrons.count > 4
      patrons.pop
    end
  end

end
