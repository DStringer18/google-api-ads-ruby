# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.7.0 on 2012-05-15 17:24:22.

require 'dfp_api/errors'

module DfpApi; module V201108; module UserService
  class UserServiceRegistry
    USERSERVICE_METHODS = {:create_user=>{:input=>[{:name=>:user, :type=>"User", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"create_user_response", :fields=>[{:name=>:rval, :type=>"User", :min_occurs=>0, :max_occurs=>1}]}}, :create_users=>{:input=>[{:name=>:users, :type=>"User", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"create_users_response", :fields=>[{:name=>:rval, :type=>"User", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_all_roles=>{:input=>[], :output=>{:name=>"get_all_roles_response", :fields=>[{:name=>:rval, :type=>"Role", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_current_user=>{:input=>[], :output=>{:name=>"get_current_user_response", :fields=>[{:name=>:rval, :type=>"User", :min_occurs=>0, :max_occurs=>1}]}}, :get_user=>{:input=>[{:name=>:user_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_user_response", :fields=>[{:name=>:rval, :type=>"User", :min_occurs=>0, :max_occurs=>1}]}}, :get_users_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_users_by_statement_response", :fields=>[{:name=>:rval, :type=>"UserPage", :min_occurs=>0, :max_occurs=>1}]}}, :perform_user_action=>{:input=>[{:name=>:user_action, :type=>"UserAction", :min_occurs=>0, :max_occurs=>1}, {:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"perform_user_action_response", :fields=>[{:name=>:rval, :type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1}]}}, :update_user=>{:input=>[{:name=>:user, :type=>"User", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"update_user_response", :fields=>[{:name=>:rval, :type=>"User", :min_occurs=>0, :max_occurs=>1}]}}, :update_users=>{:input=>[{:name=>:users, :type=>"User", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"update_users_response", :fields=>[{:name=>:rval, :type=>"User", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    USERSERVICE_TYPES = {:ActivateUsers=>{:fields=>[], :base=>"UserAction"}, :Authentication=>{:fields=>[{:name=>:authentication_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :ClientLogin=>{:fields=>[{:name=>:token, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Authentication"}, :DeactivateUsers=>{:fields=>[], :base=>"UserAction"}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :OAuth=>{:fields=>[{:name=>:parameters, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Authentication"}, :Role=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:authentication, :type=>"Authentication", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :UpdateResult=>{:fields=>[{:name=>:num_changes, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :UserAction=>{:fields=>[{:name=>:user_action_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :User=>{:fields=>[{:name=>:is_active, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_email_notification_allowed, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"UserRecord"}, :UserPage=>{:fields=>[{:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"User", :min_occurs=>0, :max_occurs=>:unbounded}]}, :UserRecord=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:email, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:role_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:role_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:preferred_locale, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_record_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :Value=>{:fields=>[{:name=>:value_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}}
    USERSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return USERSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return USERSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return USERSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < DfpApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end
