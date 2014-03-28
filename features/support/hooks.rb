Before do
  if $browser.nil?
    $browser = Watir::Browser.new :chrome
  end
  @browser = $browser
end

at_exit do
  $browser.close if $browser
end
