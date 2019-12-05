class CheckinsController < ApplicationController
  def index
    @checkins = Checkin.all

    render("checkin_templates/index.html.erb")
  end

  def show
    @checkin = Checkin.find(params.fetch("id_to_display"))

    render("checkin_templates/show.html.erb")
  end

  def new_form
    @checkin = Checkin.new

    render("checkin_templates/new_form.html.erb")
  end

  def create_row
    @checkin = Checkin.new

    @checkin.description = params.fetch("description")
    @checkin.lat = params.fetch("lat")
    @checkin.lng = params.fetch("lng")

    if @checkin.valid?
      @checkin.save

      redirect_back(:fallback_location => "/checkins", :notice => "Checkin created successfully.")
    else
      render("checkin_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @checkin = Checkin.find(params.fetch("prefill_with_id"))

    render("checkin_templates/edit_form.html.erb")
  end

  def update_row
    @checkin = Checkin.find(params.fetch("id_to_modify"))

    @checkin.description = params.fetch("description")
    @checkin.lat = params.fetch("lat")
    @checkin.lng = params.fetch("lng")

    if @checkin.valid?
      @checkin.save

      redirect_to("/checkins/#{@checkin.id}", :notice => "Checkin updated successfully.")
    else
      render("checkin_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @checkin = Checkin.find(params.fetch("id_to_remove"))

    @checkin.destroy

    redirect_to("/checkins", :notice => "Checkin deleted successfully.")
  end
end
