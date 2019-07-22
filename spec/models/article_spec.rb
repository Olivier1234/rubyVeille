require 'rails_helper'

RSpec.describe Article, type: :model do

  # verify that an article should have many comments
  it { should have_many(:comments).dependent(:destroy) }

  #test if all the data are not null before save
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:content) }
  it { should validate_presence_of(:created_by) }
end