cask "screencraft" do
  version "1.2.1"

  on_arm do
    sha256 "a6310e86bda2d3ef5fec967d6d5d0556a58d6e4529b576fdc74a8f367eacaa38"
    url "https://github.com/NewTurn2017/ScreenCraft/releases/download/v1.2.1/ScreenCraft-arm64.dmg"
  end

  on_intel do
    sha256 "8ccaef11bd06363cc22063fb39822731ae3f949432a126d4c68822bb3777eb65"
    url "https://github.com/NewTurn2017/ScreenCraft/releases/download/v1.2.1/ScreenCraft-x64.dmg"
  end

  name "ScreenCraft"
  desc "Creator-focused desktop screen recorder and editor"
  homepage "https://github.com/NewTurn2017/ScreenCraft"

  app "ScreenCraft.app"
end
