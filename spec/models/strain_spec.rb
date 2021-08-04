require 'rails_helper'

RSpec.describe Strain, type: :model do
  it "is not valid if it is empty" do
    strain = Strain.create(name: nil)
    expect(strain).to_not  be_valid
  end
  it "is not valid if it is empty" do
    strain = Strain.create(name: " ")
    expect(strain).to_not  be_valid
  end
  it "is not valid if it is empty" do
    strain = Strain.create(name: "Carmenere")
    expect(strain).to  be_valid
  end

  it "is invalid without a firstname" do
    strain = Strain.create(name: "Carmenere")
    strain1 = Strain.create(name: "Carmenere")

    strain1.valid?
    expect(strain1.errors[:name]).to include("has already been taken")
  end
end



