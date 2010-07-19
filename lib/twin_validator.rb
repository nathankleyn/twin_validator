require 'active_model'

module ActiveModel
  module Validations
    class TwinValidator < ActiveModel::EachValidator
      def check_validity!
        raise ArgumentError, "An Enumerable object is required and must be supplied as the " <<
                              ":twins option of the configuration hash" unless options[:twins].respond_to?(:each)
      end

      def validate_each(record, attribute, value)
        options[:twins].each do |twin|
          value = record.send(:read_attribute_for_validation, twin)
          record.errors.add_on_blank(attribute, options[:message]) if value
        end
      end

      module HelperMethods

        def validates_twin_of(*attr_names)
          validates_with TwinValidator, _merge_attributes(attr_names)
        end

      end

    end
  end
end
