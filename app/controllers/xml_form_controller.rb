require "rexml/document"

class XmlFormController < ApplicationController
  def index
  end

  def forming_xml
    view_data = ""
    begin
      xml_str = params[:xml_origin]
      doc = REXML::Document.new(xml_str)
      formatter = REXML::Formatters::Pretty.new
      formatter.write(doc.root, view_data)
    rescue => ex
      # —áŠOˆ—
      p "******************************"
      p "error"
      p ex
      p ex.backtrace
      p xml_str
      p "******************************"
      view_data = ""
    end
    render :json => {:formed_xml => view_data}

  end

end
