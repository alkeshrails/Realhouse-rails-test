require 'rails_helper'

RSpec.describe Commecial, type: :model do
  it "belongs to with manager" do
    Commecial.reflect_on_association(:manager).macro.should  eq(:belongs_to)
  end
end
