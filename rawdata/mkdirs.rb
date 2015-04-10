require "fileutils"
include FileUtils
dir_list = (1..17).to_a.map {|num| "w" + num.to_s}
file_list = %w(QB.txt RB.txt TE.txt WR.txt K.txt D.txt)
root_path = pwd

dir_list.each do |dir_name|
  mkdir(dir_name)
  cd(dir_name)
  file_list.each do |file_name|
    File.new(file_name, "w")
  end
  cd(root_path)
end
