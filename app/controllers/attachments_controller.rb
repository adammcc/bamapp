class AttachmentsController < ApplicationController
  http_basic_authenticate_with name: 'admin', password: 'fieldapp1'

  def update
    attachment = Attachment.find(params[:id])
    attachment.update(safe_attachment_params)
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
    params.require(:attachment).permit(:name, :description, :order)
  end
end


