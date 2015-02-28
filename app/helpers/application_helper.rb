module ApplicationHelper

  # site vars
  def site_vars
    @site_name = "Rails Blog"
    @site_tagline = "This is a short description"
  end

  # page title
  def page_title
    site_vars
    if @page_title
      @page_title + ' - ' + @site_name
    else
      @site_name + ' - ' + @site_tagline
    end
  end

  # Page Description
  def pageDescription
    if @pageDescription
      @pageDescription
    else
      @pageDescription = "Needs a page description";
    end
  end

end
