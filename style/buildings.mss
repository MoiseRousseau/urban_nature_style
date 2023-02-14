@building-fill: #f8f8ff;  // Lch(84, 5, 68)
@building-line: #f8f8ff;  // Lch(70, 9, 66)
@building-low-zoom: #f8f8ff;

@building-major-fill: darken(@building-fill, 10%);  // Lch(75, 8, 67)
@building-major-line: darken(@building-major-fill, 15%);  // Lch(61, 13, 65)
@building-major-z15: darken(@building-major-fill, 5%);  // Lch(70, 9, 66)
@building-major-z14: darken(@building-major-fill, 10%);  // Lch(66, 11, 65)

@entrance-permissive: darken(@building-line, 15%);
@entrance-normal: @building-line;

#buildings {
  [zoom >= 12] {
    polygon-fill: @building-low-zoom;
    polygon-clip: false;
    [zoom >= 13] {
      polygon-fill: @building-fill;
      line-color: @building-line;
      line-width: .5;
      line-clip: false;
    }
    [amenity = 'place_of_worship'],
    [aeroway = 'terminal'],
    [aerialway = 'station'],
    [building = 'train_station'],
    [public_transport = 'station'] {
      polygon-fill: @building-major-z14;
      [zoom >= 13] {
        polygon-fill: @building-major-z15;
        line-color: @building-major-line;
        [zoom >= 14] {
          polygon-fill: @building-major-fill;
        }
      }
    }
  }
}

#bridge {
  [zoom >= 12] {
    polygon-fill: #B8B8B8;
  }
}

