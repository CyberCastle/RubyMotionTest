class MapsScreen < PM::Screen
  GOOGLE_MAP_API_KEY = "AIzaSyAfwu4iumgR_OREPvrsfz59R2-wBi5xJc4"
  attr_accessor :latitude, :longitude, :markerTitle, :markerSnippet

  def on_init
    # Fires right after the screen is initialized
    GMSServices.provideAPIKey(GOOGLE_MAP_API_KEY)
  end

  def on_load
    camera = GMSCameraPosition.cameraWithLatitude(@latitude, longitude: @longitude, zoom: 15)
    @map_view = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
    @map_view.myLocationEnabled = true
    self.view = @map_view

    marker = GMSMarker.alloc.init
    marker.position = CLLocationCoordinate2DMake(@latitude, @longitude)
    marker.title = @markerTitle
    marker.snippet = @markerSnippet
    marker.map = @map_view
  end

end