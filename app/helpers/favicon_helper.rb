module FaviconHelper
  def google_favicon_url(domain)
    "https://www.google.com/s2/favicons?domain=#{domain}"
  end

  def domain_favicon_image_tag(domain, **)
    image_tag(google_favicon_url(domain), **)
  end
end
