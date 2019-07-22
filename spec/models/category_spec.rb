require 'rails_helper'

RSpec.describe Category, type: :model do

  # verify that a category may have many articles
  it { should have_many(:articles) }

  # verify that the data are not null before save 
  it { should validate_presence_of(:title) }
end