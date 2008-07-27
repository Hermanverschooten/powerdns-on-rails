class RecordsController < ApplicationController
  
  before_filter :get_zone
  
  def new
    @record = @domain.records.new
  end
  
  def create
    @record = @domain.send( "#{params[:record][:type].downcase}_records".to_sym ).new( params[:record] )
    if @record.save
      flash[:info] = "Record created!"
    else
      flash[:error] = "Record not created!"
      render :action => :new
    end
  end
  
  def edit
    @record = @domain.records.find( params[:id] )
  end
  
  def update
    @record = @domain.records.find( params[:id] )
    if @record.update_attributes( params[:record] )
      flash[:info] = "Record udpated!"
    else
      flash[:error] = "Record not updated!"
      render :action => :edit
    end
  end
  
  def destroy
    @record = @domain.records.find( params[:id] )
    @record.destroy
    redirect_to domain_path( @domain )
  end
  
  # Non-CRUD methods
  def update_soa
    @domain.soa_record.update_attributes( params[:soa] )
    if @domain.soa_record.valid?
      flash[:info] = "SOA record updated!"
    else
      flash[:error] = "SOA record not updated!"
    end
  end
  
  protected
  
  def get_zone
    @domain = Domain.find(params[:domain_id], :user => current_user)
  end
end
