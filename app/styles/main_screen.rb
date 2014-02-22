Teacup::Stylesheet.new(:main_screen) do

  label_color = UIColor.blueColor

  style :hai,
    landscape: true,
    autoresizingMask: autoresize.flexible_width | autoresize.flexible_height,
    backgroundColor: UIColor.whiteColor

  style UILabel,
    textColor: label_color

  style :hi_button,
    title: 'aaaaaaaaaaaaaa',
    backgroundColor: UIColor.lightGrayColor,
    constraints: [
      :center_x,
      constrain_top(200),
    ]

  style :label,
    color: :white,
    background: :clear,
    constraints: [
      :center_x,
      :center_y,
    ]

  # style :button,
  #   title: 'neat.',
  #   constraints: [
  #     :center_x,
  #     constrain_below(:label).plus(0),
  #   ]

  # style :label,
  #   text: 'Hai!',
  #   backgroundColor: UIColor.blackColor,
  #   width: 200,
  #   height: 20,
  #   portrait: {
  #     # layer: {
  #     #   transform: transform_layer.identity,
  #     # },
  #     top: 200,
  #     left: 100,
  #     # height: 20,
  #     # width: 50
  #   },
  #   landscape_left: {
  #     layer: {
  #       transform: transform_layer.rotate(pi/6, 0.3, 0.3, 0.3)
  #     },
  #     top: 40,
  #     left: 100,
  #     # height: 20,
  #     # width: 75
  #   }

  # style :footer2,
  #   text: 'brought to you by teacup',
  #   backgroundColor: UIColor.lightGrayColor,
  #   width: 200,
  #   height: 20,
  #   portrait: {
  #     top: 240,
  #     left: 120,
  #   },
  #   landscape: {
  #     top: 280,
  #     left: 280,
  #   }

  # style :footer,
  #   text: 'brought to you by teacup',
  #   backgroundColor: UIColor.lightGrayColor,
  #   width: 200,
  #   height: 20,
  #   portrait: {
  #     top: 440,
  #     left: 120,
  #   },
  #   landscape: {
  #     top: 280,
  #     left: 280,
  #   }
  # style :hi_button,
  #   title: 'aaaaaaaaaaaaaa',
  #   backgroundColor: UIColor.lightGrayColor,
  #   #frame: [[20, 300], [50, 20]]
  #    #     left: '50%', top: '50%,  # easy enough!
  #    # width: '100% - 16',  # woah!  (O_o)
  #    # height: 22

  #   # top: 400,
  #   # left: 400,
  #   # width: 100,
  #   # height: 100

  #    constraints: [
  #     :center_x,
  #     constrain_top(200),
  #   #   constrain_left(400)
  #    ]
     
end
