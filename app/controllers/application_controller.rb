class ApplicationController < ActionController::Base

  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb"})
  end

  def calculate_square
    @num = params.fetch("elephant").to_f
    @square_of_num = @num ** 2

    render({ :template => "calculation_templates/square_results.html.erb"})
  end

  def blank_random_form
    render({ :template => "calculation_templates/random_form.html.erb"})
  end

  def calculate_random
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @result = rand(@lower..@upper)

    render({ :template => "calculation_templates/random_results.html.erb"})
  end

  def blank_root_form
    render({ :template => "calculation_templates/root_form.html.erb"})
  end

  def calculate_root
    @num = params.fetch("user_num").to_f
    @result = @num ** 0.5

    render({ :template => "calculation_templates/root_results.html.erb"})
  end
end
