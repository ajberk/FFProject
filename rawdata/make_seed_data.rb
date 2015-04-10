require "fileutils"
include FileUtils

module GettingData
  def self.read_file_lines(file, week_num)
    info = []
    File.readlines(file).each do |line|
      line = line.split("\t")
      next if line.length == 1
      line.last.gsub!("\n", "")
      line << week_num.to_s
      info << line
    end
    info.first[-1] = "week"
    info
  end

  def self.get_position_info_for_all_weeks(file)
    dir_list = (1..17).to_a
    root_path = pwd
    all_week_info = []
    all_week_length = 0
    dir_list.each do |week_num|
      cd("w" + week_num.to_s)
      if week_num == 1
        all_week_info.concat(read_file_lines(file, week_num))
      else
        all_week_info.concat(read_file_lines(file,week_num)[1..-1])
      end
      all_week_length += read_file_lines(file, week_num).length
      cd(root_path)
    end
    all_week_info
  end

  def self.hi
    p "hi"
  end
end

p GettingData.get_position_info_for_all_weeks("K.txt")
