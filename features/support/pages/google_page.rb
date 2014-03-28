class GooglePage
  include PageObject

  page_url "http://www.google.com"

  text_field(:search_query, :id => "gbqfq")
  div(:search_results, :id => "ires")

  def search_for(search_term)
    self.search_query = search_term
    self.search_query_element.send_keys :enter
  end
end
