require 'rails_helper'

RSpec.describe Student, type: :model do
  describe 'associations' do
    it {should have one(:school)}
  end
end 