defmodule Wat do
  require Logger

  def run() do
    s = File.read!("/etc/passwd")
    try do
      Logger.info(self()) 
      {:ok, xml} = Parser.parse(s)
       IO.puts "Got here"
    rescue 
      e -> 
         Logger.info("unparseable")
         IO.puts "wow"
    end
  end
end
