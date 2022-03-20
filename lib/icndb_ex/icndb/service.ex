defmodule Icndb.Service do
  @moduledoc false

  @base_url "http://api.icndb.com"

  defp url do
    @base_url
  end

  def get_joke(params) do
    if params["firstname"] || params["lastname"] do
      get(url() <> "/jokes/random?firstName=#{params["firstname"]}&lastName=#{params["lastname"]}")
    else
      get(url() <> "/jokes/random")
    end
  end

  defp get(path) do
    resp = HTTPoison.get!(path)

    Jason.decode!(resp.body)["value"]["joke"]
  end
end
