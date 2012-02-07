require "rexml/document"

class XmlFormController < ApplicationController
  def index
  end

  def forming_xml
    view_data = ""
    format_is_sucess = false
    begin
      xml_str = params[:xml_origin]
      doc = REXML::Document.new(xml_str)
      formatter = REXML::Formatters::Pretty.new
      formatter.write(doc.root, view_data)
      format_is_sucess = true
    rescue Exception => ex
      # —áŠOˆ—
      p "******************************"
      p "error"
      p ex
      p ex.backtrace
      p xml_str
      p "******************************"
      view_data = ""
    end
    p format_is_sucess
    render :json => {:formed_xml => view_data, :sucess => format_is_sucess.to_s}

  end

end
