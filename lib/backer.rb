class Backer
  # code goes here
  attr_accessor  :name, :backed_projects
  # attr_reader :name

  # def initialize(name=nil,mood="nervous",owner=nil)
  def initialize(name)
    @name=name
    @backed_projects=[]
    # @owner=owner
    # @mood=mood
  end

  def back_project(project)
    @backed_projects << project
    project.add_backer(self)
  end
end
