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
    self.append_titles(file, info)
    info
  end

  def self.append_titles(file, info)
    if file == "D.txt"
      info[0] = %w(team opponent sacks interceptions safeties
                      fumble_recoveries blocks defensive_td	points_against passing_yards_against
                      rushing_yards_against total_yards_against	points week)
    elsif file == "K.txt"
      info[0] = %w(player team opponent extra_point_attempts
                      extra_points_made	field_goal_attempts field_goals_made
                      fifty_plus_yard_field_goals points week)
    else
      info[1] = %w(Player Team Opponent
                      Passing_Attempts Passing_Completions Passing_Yards
                      Passing_TD Interceptions Passing_2Pt
                      Rushing_Attempts Rushing_Yards Rushing_TD
                      Rushing_2Pt_Conversions	Receptions Recieving_Yds
                      Recieving_TD Recieving_2Pt_Conversions Fumbles_Lost
                      Fumble_TD	Points Week)
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
