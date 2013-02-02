# encoding: UTF-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Section.create :name => "Ruby"
Section.create :name => "分享"
Section.create :name => "Web 开发"
Section.create :name => "Mobile"
Section.create :name => "Languages"
Section.create :name => "Ruby China"
Section.create :name => "活动"

%w(Ruby Rails Gem 重构 Testing Sinatra 部署 RVM 开源项目 新手问题 JRuby).each do |a|
  Node.create :name => a, :section_id => 1
end

%w(工具控 招聘 分享 瞎扯淡 其他 产品控 书籍 Mac 插画 创业).each do |a|
  Node.create :name => a, :section_id => 2
end

%w(MongoDB Redis Git Database Linux Nginx 云服务 搜索分词 算法 CSS Mailer 数学 运维).each do |a|
  Node.create :name => a, :section_id => 3
end

%w(iPhone Android).each do |a|
  Node.create :name => a, :section_id => 4
end

%w(Python JavaScript Go Erlang Cocoa Clojure Haskell).each do |a|
  Node.create :name => a, :section_id => 5
end

%w(公告 反馈 社区开发).each do |a|
  Node.create :name => a, :section_id => 6
end

%w(Ruby Tuesday GZRuby RubyConfChina 其他线下活动).each do |a|
  Node.create :name => a, :section_id => 7
end

%w(国内商业网站 国外著名网站 Ruby 社区网站 国外企业  国内企业 技术博客 其他).each do |a|
  Node.create :name => a
end