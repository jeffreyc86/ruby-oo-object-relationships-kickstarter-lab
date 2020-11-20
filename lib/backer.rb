class Backer 
    attr_reader :name 

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        self_projects = ProjectBacker.all.select { |backed_project| backed_project.backer == self }
        self_projects.map { |backed| backed.project }
    end 
    
end 

#Project Backer belongs to Project (belongs to)
#project Backer belongs to a backer (has many)