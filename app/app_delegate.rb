class AppDelegate < PM::Delegate

  #URL1: http://192.168.1.239:8080/RestCmdBuild/services/rest/getMachine
  #URL2: http://192.168.1.239:8080/RestCmdBuild/services/rest/getNotification?patente=ZK4238


  def on_load(app, options)

    AFMotion::HTTP.get("http://ip.bjango.com/") do |response|
      p response.body.to_str
    end

    screen = HomeScreen.new(nav_bar: true)
    #screen.title = 'Devices List'
    open screen

  end
end