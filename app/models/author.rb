class Author < ActiveRecord::Base
  validates :last_name, presence: true, length: { minimum: 2 }

  def name
    # we need this, because we have empty entries in our database
    if !first_name.nil? and !last_name.nil?
      return first_name + ' ' + last_name
    end
  else
    return ''
  end
end
