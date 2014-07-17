require 'rubocop'
module Rubocop
  class ConfigLoader
    RIDECHARGE_RUBOCOP_HOME = File.realpath(File.join(File.dirname(__FILE__), '..', '..'))
    DEFAULT_RIDECHARGE_FILE= File.join(RIDECHARGE_RUBOCOP_HOME, 'config', '0default.yml')

    # https://github.com/bbatsov/rubocop/blob/ff167d8f202baf7a68955db0aaf0dc29afb7e7ee/lib/rubocop/config_loader.rb#L88
=begin 
      def configuration_file_for(target_dir)
        config_files_in_path(target_dir).first || DEFAULT_FILE
      end

      def configuration_from_file(config_file)
        config = load_file(config_file)
        return config if config_file == DEFAULT_FILE

        found_files = config_files_in_path(config_file)
        if found_files.any? && found_files.last != config_file
          print 'AllCops/Excludes ' if debug?
          add_excludes_from_higher_level(config, load_file(found_files.last))
        end
        make_excludes_absolute(config)
        merge_with_default(config, config_file)
      end
      def default_configuration
        @default_configuration ||= begin
                                     print 'Default ' if debug?
                                     load_file(DEFAULT_FILE)
                                   end
      end
=end
    class << self
      def configuration_file_for(target_dir)
        $stderr.puts [target_dir, DEFAULT_RIDECHARGE_FILE].inspect
        config_files_in_path(target_dir).first || DEFAULT_RIDECHARGE_FILE
      end
      def configuration_from_file(config_file)
        $stderr.puts [config_file, DEFAULT_RIDECHARGE_FILE].inspect
        config = load_file(config_file)
        return config if config_file == DEFAULT_RIDECHARGE_FILE

        found_files = config_files_in_path(config_file)
        if found_files.any? && found_files.last != config_file
          print 'AllCops/Excludes ' if debug?
          add_excludes_from_higher_level(config, load_file(found_files.last))
        end
        make_excludes_absolute(config)
        merge_with_default(config, config_file)
      end
      def default_configuration
        @default_configuration ||= begin
                                     print 'Ridecharge Default ' if debug?
                                     load_file(DEFAULT_RIDECHARGE_FILE)
                                   end
      end
    end
  end
end

