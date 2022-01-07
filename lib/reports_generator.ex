defmodule ReportsGenerator do
  alias ReportsGenerator.Parse
  def build(fileName) do
    fileName
    |> Parse.parse_file()
    |> Enum.reduce(report_acc(), fn line, report -> sum_values(line, report) end)
  end

  defp sum_values([id, _food_name, price], report), do: Map.put(report, id, report[id] + price)
  defp report_acc, do: Enum.into(1..30, %{}, &{Integer.to_string(&1), 0})

end
