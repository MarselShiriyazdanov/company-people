class CreateCompany
  def self.populate!
    new.populate
  end

  def populate
    50.times do
      company = FactoryGirl.create :company
      create_people(company)
    end
  end

  private

  def create_people(company)
    number_between_two_and_ten.times do
      FactoryGirl.create :person, company: company
    end
  end

  def number_between_two_and_ten
    2 + Random.rand(9)
  end
end

CreateCompany.populate!
