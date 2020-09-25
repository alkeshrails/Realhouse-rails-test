require 'rails_helper'

RSpec.describe House, type: :model do
  it "belongs to with manager" do
    House.reflect_on_association(:manager).macro.should  eq(:belongs_to)
  end
end
