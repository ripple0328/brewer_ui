use Mix.Config

config :brewer_ui, :viewport, %{
  name: :main_viewport,
  # default_scene: {BrewerUi.Scene.Crosshair, nil},
  default_scene: {BrewerUi.Scene.Crosshair, nil},
  size: {800, 480},
  opts: [scale: 1.0],
  drivers: [
    %{
      module: Scenic.Driver.Nerves.Rpi
    },
    %{
      module: Scenic.Driver.Nerves.Touch,
      opts: [
        device: "ILITEK Multi-Touch-V3000",
        calibration: {{1, 0, 0}, {1, 0, 0}}
      ]
    }
  ]
}
