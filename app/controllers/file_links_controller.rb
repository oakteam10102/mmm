class FileLinksController < ApplicationController
  def show
    @file_link = FileLink.find(params[:id])

    click = Click.new(
      user: current_user,
      file_link: @file_link,
      user_name: "#{current_user.first_name} #{current_user.last_name}",
      file_title: @file_link.title
      )
    click.save
    redirect_to @file_link.url
  end
end
