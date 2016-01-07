require 'zip'
require 'zip/filesystem'
require 'pathname'
require 'capistrano/scm_copy_command/utils'
require 'tempfile'

load File.expand_path('../tasks/scm_copy_command.rake', __FILE__)
