class ContactPresenter < SimpleDelegator
  def initialize(contact)
    super
    @contact = contact
  end

  def name
    "#{contact.first_name} #{contact.last_name}"
  end

  private
  attr_reader :contact
end
