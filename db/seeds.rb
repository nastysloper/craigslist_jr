class SeedCategories
  def self.seed
    cats = "Firearms,Zombie Repellent,Shark Suit,Flame Thrower".split(',')
    cats.each do |cat|
      Category.create(:name => cat)
    end
  end
end

SeedCategories.seed



