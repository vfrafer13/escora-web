class StaticPagesController < ApplicationController
  def show
    render template: "staticpages/main"
  end
end
