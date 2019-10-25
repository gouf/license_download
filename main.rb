require 'sinatra'
require 'sinatra/base'
require_relative 'license_list'
require 'active_support'
require 'active_support/core_ext'

class LicenseDownload < Sinatra::Base
  private

  def valid_license_name?(license_name)
    LICENSE_LIST.map { |key, _value| key }.include?(license_name)
  end

  def read_specified_file(license_name)
    File.read("license_files/#{LICENSE_LIST[license_name]}")
  end

  def license_name
    params[:splat].to_a
                  .first
                  .delete('/')
                  .to_sym
  end

  def error_message
    message = "Please specify a type of license name.\n"
    message << "\n"
    message << "Supported list:\n"
    message << LICENSE_LIST.map { |key, _value| key }.join(', ')
    message << "\n"
  end

  get '*' do
    return error_message unless valid_license_name?(license_name)

    read_specified_file(license_name)
  end
end
