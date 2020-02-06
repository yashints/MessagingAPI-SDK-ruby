=begin
#Telstra Messaging API

#The Telstra Messaging API specification

The version of the OpenAPI document: 2.2.9

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3-SNAPSHOT

=end

require 'cgi'

module Telstra_Messaging
  class ProvisioningApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Subscription
    # Invoke the provisioning API to get a dedicated mobile number for an account or application.  Note that Free Trial apps will have a 30-Day Limit for their provisioned number. If the Provisioning call is made several times within that 30-Day period, it will return the `expiryDate` in the Unix format and will not add any activeDays until after that `expiryDate`. After the `expiryDate`, you may make another Provisioning call to extend the activeDays by another 30-Days.  For paid apps, a provisioned number can be allotted for a maximum of 5 years. If a Provisioning call is made which will result to activeDays > 1825, a 409 `Active Days Max` response will be returned to indicate that the provisioned number is already valid for more than 5 years and that no update to activeDays has been made. 
    # @param body [ProvisionNumberRequest] A JSON payload containing the required attributes
    # @param [Hash] opts the optional parameters
    # @return [ProvisionNumberResponse]
    def create_subscription(body, opts = {})
      data, _status_code, _headers = create_subscription_with_http_info(body, opts)
      data
    end

    # Create Subscription
    # Invoke the provisioning API to get a dedicated mobile number for an account or application.  Note that Free Trial apps will have a 30-Day Limit for their provisioned number. If the Provisioning call is made several times within that 30-Day period, it will return the &#x60;expiryDate&#x60; in the Unix format and will not add any activeDays until after that &#x60;expiryDate&#x60;. After the &#x60;expiryDate&#x60;, you may make another Provisioning call to extend the activeDays by another 30-Days.  For paid apps, a provisioned number can be allotted for a maximum of 5 years. If a Provisioning call is made which will result to activeDays &gt; 1825, a 409 &#x60;Active Days Max&#x60; response will be returned to indicate that the provisioned number is already valid for more than 5 years and that no update to activeDays has been made. 
    # @param body [ProvisionNumberRequest] A JSON payload containing the required attributes
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProvisionNumberResponse, Integer, Hash)>] ProvisionNumberResponse data, response status code and response headers
    def create_subscription_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProvisioningApi.create_subscription ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ProvisioningApi.create_subscription"
      end
      # resource path
      local_var_path = '/messages/provisioning/subscriptions'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] || 'ProvisionNumberResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['auth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvisioningApi#create_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Subscription
    # Delete a mobile number subscription from an account 
    # @param body [DeleteNumberRequest] EmptyArr
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_subscription(body, opts = {})
      delete_subscription_with_http_info(body, opts)
      nil
    end

    # Delete Subscription
    # Delete a mobile number subscription from an account 
    # @param body [DeleteNumberRequest] EmptyArr
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_subscription_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProvisioningApi.delete_subscription ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ProvisioningApi.delete_subscription"
      end
      # resource path
      local_var_path = '/messages/provisioning/subscriptions'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['auth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvisioningApi#delete_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Subscription
    # Get mobile number subscription for an account 
    # @param [Hash] opts the optional parameters
    # @return [GetSubscriptionResponse]
    def get_subscription(opts = {})
      data, _status_code, _headers = get_subscription_with_http_info(opts)
      data
    end

    # Get Subscription
    # Get mobile number subscription for an account 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetSubscriptionResponse, Integer, Hash)>] GetSubscriptionResponse data, response status code and response headers
    def get_subscription_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProvisioningApi.get_subscription ...'
      end
      # resource path
      local_var_path = '/messages/provisioning/subscriptions'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'GetSubscriptionResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['auth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvisioningApi#get_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
