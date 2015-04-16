# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

################################################################################
#Note: to run, must be in main project folder
require "fileutils"
require_relative('../rawdata/make_seed_data')
include FileUtils

p pwd
cd('rawdata')
d_info = GettingData.get_position_info_for_all_weeks("D.txt")
k_info = GettingData.get_position_info_for_all_weeks("K.txt")
qb_info = GettingData.get_position_info_for_all_weeks("QB.txt")
rb_info = GettingData.get_position_info_for_all_weeks("RB.txt")
te_info = GettingData.get_position_info_for_all_weeks("TE.txt")
wr_info = GettingData.get_position_info_for_all_weeks("WR.txt")

def make_seed_objects(info)
  titles = info.shift
  info_object = []
  info_line = {}
  info.each do |line|
    give_info_correct_data_type(info, titles, info_line, line)
    info_object << info_line
    info_line = {}
  end
  info_object
end

def give_info_correct_data_type(info, titles, info_line, line)
  line.each_with_index do |stat, idx|
    if titles[idx] == "Player" || titles[idx] == "Opponent" || titles[idx] == "Team"
      info_line[titles[idx].to_sym] = stat
    else
      info_line[titles[idx].to_sym] = stat.to_i
    end
  end
end

defenses = Defense.create(make_seed_objects(d_info))
kickers = Kicker.create(make_seed_objects(k_info))
quarterbacks = Quarterback.create(make_seed_objects(qb_info))
runningbacks = Runningback.create(make_seed_objects(rb_info))
tightends = Tightend.create(make_seed_objects(te_info))
widerecievers = Widereciever.create(make_seed_objects(wr_info))
