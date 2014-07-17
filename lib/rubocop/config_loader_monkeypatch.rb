require 'rubocop'
module RuboCop
  class ConfigLoader
    RIDECHARGE_RUBOCOP_HOME = File.realpath(File.join(File.dirname(__FILE__), '..', '..'))
    DEFAULT_RIDECHARGE_FILE= File.join(RIDECHARGE_RUBOCOP_HOME, 'config', '0default.yml')

    # https://github.com/bbatsov/rubocop/blob/ff167d8f202baf7a68955db0aaf0dc29afb7e7ee/lib/rubocop/config_loader.rb#L88
=begin 
    def configuration_file_for(target_dir)
      config_files_in_path(target_dir).first || DEFAULT_FILE
    end
=end
    def configuration_file_for(target_dir)
      config_files_in_path(target_dir).first || DEFAULT_RIDECHARGE_FILE
    end
  end
end

