module ApplicationHelper
  # Returns a full title on a per page basis

  # Method definition, optional argument
  def full_title(page_title = ' ')
    base_title = "Company Feedback Application" # Creating and assigning a variable
    # Boolean test
    if page_title.empty?
      base_title # Implicit return
    else
      page_title + " | " + base_title #  String concatenation
    end
  end
end
