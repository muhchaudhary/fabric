{
  lib,
  python3Packages,
  gtk3,
  gtk-layer-shell,
  cairo,
  gobject-introspection,
  libdbusmenu-gtk3,
  gdk-pixbuf,
  cinnamon,
  gnome,
}:
python3Packages.buildPythonPackage {
  pname = "python-fabric";
  version = "0.0.1";
  pyproject = true;

  src = ./.;

  buildInputs = [
    gtk3
    gtk-layer-shell
    cairo
    gobject-introspection
    libdbusmenu-gtk3
    gdk-pixbuf
    cinnamon.cinnamon-desktop
    gnome.gnome-bluetooth
  ];

  dependencies = with python3Packages; [
    setuptools
    click
    pycairo
    pygobject3
    pygobject-stubs
    loguru
    psutil
  ];

  meta = {
    changelog = "";
    description = ''
      next-gen framework for building desktop widgets using Python (check the rewrite branch for progress)
    '';
    homepage = "https://github.com/Fabric-Development/fabric";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [];
  };
}
