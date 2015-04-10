# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "fileutils"
require_relative('../rawdata/make_seed_data')
include FileUtils
cd('../rawdata')
defense_info = GettingData.get_position_info_for_all_weeks("D.txt")
kicker_info = GettingData.get_position_info_for_all_weeks("K.txt")
quarterback_info = GettingData.get_position_info_for_all_weeks("QB.txt")
runningback_info = GettingData.get_position_info_for_all_weels("RB.txt")
tightend_info = GettingData.get_position_info_for_all_weels("TE.txt")
widereciever_info = GettingData.get_position_info_for_all_weels("WR.txt")
