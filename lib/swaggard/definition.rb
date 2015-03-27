module Swaggard
  class Definition

    attr_reader :id

    def initialize(id)
      @id = id
      @properties = []
    end

    def add_property(property)
      @properties << property
    end

    def to_doc
      {
        'properties' => Hash[@properties.map { |property| [property.id, property.to_doc] }]
      }
    end

  end
end