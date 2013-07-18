class Employee < User
    has_many :videos, :conditions => "videos.state != 'approved'"

    def employee?
        true
    end
end