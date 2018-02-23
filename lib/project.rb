class Project
  # code goes here
  attr_accessor  :backers,:title
  # attr_reader :name

  # def initialize(name=nil,mood="nervous",owner=nil)
  def initialize(title)
    # @name=name
    @title=title
    @backers=[]
    # @owner=owner
    # @mood=mood
  end

  def add_backer(backer)
    @backers << backer
    # backer.back_project(self)
    # puts "********** #{backer.backed_projects.include?(self)}"
    # puts "********** #{}"
    backer.back_project(self) if !backer.backed_projects.include?(self)
  end


end
