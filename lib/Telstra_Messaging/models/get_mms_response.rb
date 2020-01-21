=begin
#Telstra Messaging API

#The API specification for Telstra Messaging API

The version of the OpenAPI document: 2.2.9

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3-SNAPSHOT

=end

require 'date'

module Telstra_Messaging
  class GetMmsResponse
    # The final state of the message. 
    attr_accessor :status

    # The number the message was sent to. 
    attr_accessor :destination_address

    # The number the message was sent from. 
    attr_accessor :sender_address

    # The subject assigned to the message. 
    attr_accessor :subject

    # Message Id assigned by the MMSC. 
    attr_accessor :message_id

    # Message Id assigned by the API. 
    attr_accessor :api_msg_id

    # Time handling of the message ended. 
    attr_accessor :sent_timestamp

    # An array of content that was received in an MMS message. 
    attr_accessor :mms_content

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'status' => :'status',
        :'destination_address' => :'destinationAddress',
        :'sender_address' => :'senderAddress',
        :'subject' => :'subject',
        :'message_id' => :'messageId',
        :'api_msg_id' => :'apiMsgId',
        :'sent_timestamp' => :'sentTimestamp',
        :'mms_content' => :'MMSContent'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'status' => :'String',
        :'destination_address' => :'String',
        :'sender_address' => :'String',
        :'subject' => :'String',
        :'message_id' => :'String',
        :'api_msg_id' => :'String',
        :'sent_timestamp' => :'String',
        :'mms_content' => :'Array<MMSContent>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Telstra_Messaging::GetMmsResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Telstra_Messaging::GetMmsResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'destination_address')
        self.destination_address = attributes[:'destination_address']
      end

      if attributes.key?(:'sender_address')
        self.sender_address = attributes[:'sender_address']
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'message_id')
        self.message_id = attributes[:'message_id']
      end

      if attributes.key?(:'api_msg_id')
        self.api_msg_id = attributes[:'api_msg_id']
      end

      if attributes.key?(:'sent_timestamp')
        self.sent_timestamp = attributes[:'sent_timestamp']
      end

      if attributes.key?(:'mms_content')
        if (value = attributes[:'mms_content']).is_a?(Array)
          self.mms_content = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @destination_address.nil?
        invalid_properties.push('invalid value for "destination_address", destination_address cannot be nil.')
      end

      if @sender_address.nil?
        invalid_properties.push('invalid value for "sender_address", sender_address cannot be nil.')
      end

      if @sent_timestamp.nil?
        invalid_properties.push('invalid value for "sent_timestamp", sent_timestamp cannot be nil.')
      end

      if @mms_content.nil?
        invalid_properties.push('invalid value for "mms_content", mms_content cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @status.nil?
      return false if @destination_address.nil?
      return false if @sender_address.nil?
      return false if @sent_timestamp.nil?
      return false if @mms_content.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          status == o.status &&
          destination_address == o.destination_address &&
          sender_address == o.sender_address &&
          subject == o.subject &&
          message_id == o.message_id &&
          api_msg_id == o.api_msg_id &&
          sent_timestamp == o.sent_timestamp &&
          mms_content == o.mms_content
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [status, destination_address, sender_address, subject, message_id, api_msg_id, sent_timestamp, mms_content].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        Telstra_Messaging.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
