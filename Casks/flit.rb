cask "flit" do
  version "1.0.0"
  sha256 "d209fe096dea9fb8f35393e65f312198a55a2f1f5c8f019dfcea72c552ff4adf"

  url "https://github.com/dxni087/flit-releases/releases/download/v#{version}/Flit-#{version}.zip"
  name "Flit"
  desc "Turns the MacBook notch into an interactive panel"
  homepage "https://flit.up.railway.app/"

  depends_on macos: ">= :sequoia"

  app "Flit.app"

  # Flit está firmada con certificado de desarrollador pero aún sin notarizar.
  # Homebrew marca las descargas con cuarentena por defecto, y con esa marca
  # Gatekeeper bloquea cualquier app sin notarizar. Quien instale por aquí debe
  # añadir --no-quarantine, y este aviso lo dice antes de que se estrelle.
  caveats do
    <<~EOS
      Instala con:

        brew install --cask dxni087/flit/flit --no-quarantine

      Sin --no-quarantine, macOS bloqueará la app porque todavía no está
      notarizada. La notarización llega con el Apple Developer Program.
    EOS
  end

  zap trash: [
    "~/Library/Preferences/com.fletesmexico.flit.plist",
    "~/Library/Application Support/com.fletesmexico.flit",
  ]
end
