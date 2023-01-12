defmodule HtmlParserFloki do
  @moduledoc """
  Documentation for `HtmlParserFloki`.
  """

  def perform do
    search_keyword = "おなかの脂肪が気になる方のタブレット"
    search_url = "https://search.rakuten.co.jp/search/mall/#{search_keyword}"
    shop_name = "taisho-directshop"
    categories = ["おなかの脂肪が気になる方のタブレット"]

    HTTPoison.request!(:get, parse_url(search_url), "", [], recv_timeout: 100, timeout: 100)
    |> Map.get(:title)
  end

  def parse_url(url, query \\ %{})

  def parse_url(url, query) do
    URI.parse(url)
    |> Map.put(:query, URI.encode_query(query))
    |> URI.to_string()
  end
end
