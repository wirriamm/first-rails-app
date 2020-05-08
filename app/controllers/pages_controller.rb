class PagesController < ApplicationController

  def homepage

  end

  def about

  end

  def contact
    @members = ['ben', 'arthur', 'lucien', 'alex']
    if params[:member]
      @members = @members.select { |member| member.starts_with?(params[:member]) }
    end
  end

end
