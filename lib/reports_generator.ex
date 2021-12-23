defmodule ReportsGenerator do

  def build(fileName) do
    case file = File.read("reports/#{fileName}") do
      {:ok, result} -> result
      {:error, reason} -> reason
    end
  end
end

