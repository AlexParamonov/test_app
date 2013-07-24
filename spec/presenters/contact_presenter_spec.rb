require 'spec_helper'

describe ContactPresenter do
  let(:contact) { FactoryGirl.create(:contact) }
  let(:presenter) { ContactPresenter.new(contact) }


  it "delegates unknown methods to contact" do
    contact.should_receive(:unknown_method)
    presenter.unknown_method
  end

  describe "#name" do
    it "combines contact's first and last name" do
      presenter.name.should include contact.first_name
      presenter.name.should include contact.last_name
    end
  end
end
