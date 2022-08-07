class AttachmentsController < ApplicationController
  http_basic_authenticate_with name: 'admin', password: 'fieldapp1'

  def update
    @attachment = Attachment.find(params[:id])
    clear_default if params[:attachment][:default]
    @attachment.update(safe_attachment_params)
    respond_to do |format|
      format.html { redirect_back(fallback_location: locations_url) }
      format.json { head :no_content }
    end
  end

  def destroy
    location = Location.find(params[:location_id])
    attachment = location.attachments.find(params[:id])
    attachment.image.purge
    attachment.destroy
    respond_to do |format|
      format.html { redirect_back(fallback_location: locations_url) }
      format.json { head :no_content }
    end
  end

  private

  def safe_attachment_params
    params.require(:attachment).permit(:name, :description, :order, :default)
  end

  def clear_default
    default_attachments = @attachment.location.attachments.where(default: true)
    default_attachments.update_all(default: false)
  end
end


