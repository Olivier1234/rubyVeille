require 'rails_helper'

RSpec.describe Comment, type: :model do
  # verify that a comment belong to an article
  it { should belong_to(:article) }

  # verify that all comment data are not null before save
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:message) }
  it { should validate_presence_of(:article_id) }
end