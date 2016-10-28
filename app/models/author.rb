class Author < ActiveRecord::Base
  def name
    if !first_name.nil? and !last_name.nil?
      return first_name + ' ' + last_name
    end
  else
    return ''
  end
end
