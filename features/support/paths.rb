# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/
      '/equipment'
    when /^the borrower\s?page$/
      '/equipment/borrow'
    when /^the search\s?page$/
      '/equipment/search' 
    when /^the recurring\s?page$/
      '/equipment/recurring'
    when /^the return\s?page$/
      '/equipment/recurr'
    when /^the renewdevice\s?page$/
      '/equipment/reneweq'
    when /^the renew\s?page$/
      '/equipment/renew'  
    when /^the login\s?page$/
      '/equipment/login'
    when /^the adddevice\s?page$/
      '/equipment/adddv'
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    end
  end
end

World(NavigationHelpers)
