cask "screencraft" do
  version "1.2.1"

  on_arm do
    sha256 "237dde384d27cac13db84c51f44aeffca12a9107fa568a187092708e6c113cc9"
    url "https://github.com/NewTurn2017/ScreenCraft/releases/download/v1.2.1/ScreenCraft-arm64.dmg"
  end

  on_intel do
    sha256 "0270333fb7e235f01b133f0f58f9440fbfd57817337923b6018ef488ee10e1da"
    url "https://github.com/NewTurn2017/ScreenCraft/releases/download/v1.2.1/ScreenCraft-x64.dmg"
  end

  name "ScreenCraft"
  desc "Creator-focused desktop screen recorder and editor"
  homepage "https://github.com/NewTurn2017/ScreenCraft"

  app "ScreenCraft.app"
end
