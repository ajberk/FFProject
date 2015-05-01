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
      line << File.basename(file, File.extname(file))
      info << line
    end
    self.append_titles(file, info)
    info
  end

  def self.append_titles(file, info)
    if file == "D.txt"
      info[0] = %w(team opponent sacks interceptions safeties
                      fumble_recoveries blocks defensive_td	points_against passing_yards_against
                      rushing_yards_against total_yards_against	points week position)
    elsif file == "K.txt"
      info[0] = %w(player team opponent extra_point_attempts
                      extra_points_made	field_goal_attempts field_goals_made
                      fifty_plus_yard_field_goals points week position)
    else
      info[1] = %w(player team opponent
                      passing_attempts passing_completions passing_yards
                      passing_td interceptions passing_2Pt
                      rushing_attempts rushing_yards rushing_td
                      rushing_2Pt_conversions	receptions recieving_yds
                      recieving_td recieving_2Pt_conversions fumbles_lost
                      fumble_td	points week position)
    end
  end

  def self.get_position_info_for_all_weeks(file)
    dir_list = (1..17).to_a
    all_week_info = []
    dir_list.each do |week_num|
      cd("w" + week_num.to_s)
      self.formatting_title(file, week_num, all_week_info)
      cd("..")
    end
    all_week_info
  end

  def self.formatting_title(file, week_num, all_week_info)
    if file == "K.txt" || file == "D.txt"
      concat_headers(file, week_num, all_week_info, 0)
    else
      concat_headers(file, week_num, all_week_info, 1)
    end
    all_week_info
  end

  def self.concat_headers(file, week_num, all_week_info, line_num)
    if week_num == 1
      all_week_info.concat(read_file_lines(file, week_num)[line_num..-1])
    else
      all_week_info.concat(read_file_lines(file,week_num)[line_num + 1..-1])
    end
  end
end
