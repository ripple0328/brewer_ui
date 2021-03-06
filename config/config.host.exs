use Mix.Config

config :brewer_ui, :viewport, %{
  name: :main_viewport,
  # default_scene: {BrewerUi.Scene.Crosshair, nil},
  default_scene: {BrewerUi.Scene.SysInfo, nil},
  size: {800, 480},
  opts: [scale: 1.0],
  drivers: [
    %{
      module: Scenic.Driver.Glfw,
      opts: [title: "MIX_TARGET=host, app = :brewer_ui"]
    }
  ]
}
