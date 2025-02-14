require 'pry'

class Project
    attr_reader :title, :backers
    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer_instance)
        @backers << backer_instance
        backer_instance.backed_projects << self
    end

end