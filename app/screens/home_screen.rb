class HomeScreen < PM::TableScreen
  #title "Home"

  def on_init
    # Fires right after the screen is initialized
    @maps = MapsScreen.new(nav_bar: false)
  end

  def will_appear
    self.title = 'Devices List'
    #set_attributes self.view, {
    #    backgroundColor: UIColor.whiteColor
    #}
  end

  def table_data
    [{
      title: nil,
      cells: [
        { title: 'HG DF 45', action: :go_to_maps, arguments: { device: 'HG DF 45'}}
       ]
    }]
  end

  def go_to_maps(device)
    self.title = ''
    @maps.title = 'Ubication'
    @maps.latitude = -33.44300
    @maps.longitude = -70.65382
    @maps.markerTitle = 'La Moneda'
    @maps.markerSnippet = 'Chile'
    open @maps
  end

end