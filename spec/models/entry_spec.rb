require "rails_helper"

RSpec.describe Entry, :type => :model do
  it "if is walid with content and title" do
    test_entry = Entry.new(title: "Title", contents: "Content")
    
    expect(test_entry).to be_valid
  end
  
  
      it "if is not walid with content and no title" do
    test_entry = Entry.new(title: nil, contents: "Content")
    
    expect(test_entry).to_not be_valid
  end
  
      it "if is no walid withot content but with title" do
    test_entry = Entry.new(title: "Title", contents: nil)
    
    expect(test_entry).to_not be_valid
  end
  
end