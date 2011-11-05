# encoding: utf-8
require 'thor'
$:.unshift File.dirname(__FILE__)
require 'mosaheh'

class Mosaheh::Cli < Thor
  
  desc 'repair FILE_PATH', 'Repairs a misencoded file'
  def repair(file)
    error "File (#{file}) must exist and be readable!" unless File.readable?(file)

    begin
      broken_file = File.open(file, 'r:utf-8')

      fixed_file_path = File.join(File.dirname(file), 'repaired_' + File.basename(file))
      encoder = Mosaheh::Encoder.new
      
      begin
        fixed_file = File.open(fixed_file_path, 'w:utf-8')
        broken_file.each do |line|
          fixed_file.write(encoder.repair line)
        end

        puts 'Successfully repaired your file: ' + file
      rescue
        error "Can't open file (#{fixed_file_path}) for writting!"
      ensure
        fixed_file.close unless fixed_file.nil?
      end

    rescue
      error "Can't read from file (#{file})!"
    ensure
      broken_file.close unless broken_file.nil?
    end
  end

private
  
  def error(str)
    abort 'Mosaheh error: ' + str
  end
end
