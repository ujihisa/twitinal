# encoding: utf-8
require 'rubygems'
require 'rubytter'

module Twitinal
  module_function
  def get(target)
    Rubytter.new.user_timeline(target).map(&:text)
  end
end
