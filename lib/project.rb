class Project 
    attr_reader :title 
    
    def initialize(title)
        @title = title
    end

    def add_backer(backer) 
        ProjectBacker.new(self, backer)
    end

    def backers 
        this_projects = ProjectBacker.all.select { |project_info| project_info.project == self}
        this_projects.map {|projects| projects.backer}
    end
    
end 