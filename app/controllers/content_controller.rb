class ContentController < ApplicationController
  skip_before_filter :authenticate_user!
  def domains
    @domains = Domain.where("user_id is not null").order("name")
    render formats: :text
  end
  def sec
    @domains = Domain.where("user_id is not null").order("name")
    render formats: :text
  end
end
