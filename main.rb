require 'sinatra'
require 'sinatra/base'
require_relative 'lisence_list'
require 'active_support'
require 'active_support/core_ext'

class LicenseDownload < Sinatra::Base
  def error_message
    message = "Please specify a type of license name.\n"
    message << "\n"
    message << "Supported list:\n"
    message << LICENSE_LIST.map { |key, _value| key }.join(', ')
    message << "\n"
  end

  get '*' do
    license_name = params[:splat].to_a.first.delete('/').to_sym
    p license_name
    if LICENSE_LIST.map { |key, _value| key }.exclude? license_name
      error_message
    else
      File.read "license_files/#{LICENSE_LIST[license_name]}"
    end
  end
end
