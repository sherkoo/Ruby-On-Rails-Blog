module ApplicationHelper

  # site vars
  def site_vars
    @site_name = "Rails Blog"
  end

  # page title
  def page_title
    site_vars
    if @page_title
      @page_title + ' - ' + @site_name
    else
      @site_name
    end
  end

end
