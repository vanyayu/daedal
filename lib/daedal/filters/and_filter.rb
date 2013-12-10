require 'daedal/filters/filter'
require 'daedal/attributes'

module Daedal
  module Filters
    """Class for the basic term filter"""
    class AndFilter < Filter
  
      # required attributes
      attribute :filters, Attributes::FilterArray
  
      def to_hash
        unless filters.empty?
          {:and => filters.map {|f| f.to_hash}}
        else
          super
        end
      end
    end
  end
end