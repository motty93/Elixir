defmodule Identicon do
  alias Identicon.Struct.Image
  @moduledoc """
  Documentation for `Identicon.Struct..
  """

  def main(input) do
    input
    |> hash_input
    |> pick_color
    |> build_grid
    |> filter_odd_squares
    |> build_pixel_map
    |> draw_image
    |> save_image(input)
  end

  def save_image(image, input) do
    File.write("#{input}.png", image)
  end

  def draw_image(%Image{color: color, pixel_map: pixel_map}) do
    image = :egd.create(250, 250)
    fill = :egd.color(color)

    Enum.each(pixel_map, fn {start, stop} ->
      :egd.filledRectangle(image, start, stop, fill)
    end)

    :egd.render(image)
  end

  def build_pixel_map(%Image{grid: grid} = image) do
    pixel_map =
      Enum.map(grid, fn {_code, index} ->
        horizontal = rem(index, 5) * 50
        vertical = div(index, 5) * 50

        top_left = {horizontal, vertical}
        bottom_right = {horizontal + 50, vertical + 50}

        {top_left, bottom_right}
      end)

    %Image{image | pixel_map: pixel_map}
  end

  def filter_odd_squares(%Image{grid: grid} = image) do
    grid =
      Enum.filter(grid, fn {code, _index} ->
        rem(code, 2) == 0
      end)

    %Image{image | grid: grid}
  end

  def build_grid(%Image{hex: hex} = image) do
    grid =
      hex
      |> Enum.chunk(3)
      |> Enum.map(&mirror_row/1)
      |> List.flatten()
      |> Enum.with_index()

    %Image{image | grid: grid}
  end

  def mirror_row(row) do
    # [145, 46, 200]
    [first, second | _tail] = row

    # [145, 46, 200, 46, 145]
    row ++ [first, second]
  end

  def pick_color(%Image{hex: [r, g, b | _tail]} = image) do
    # %Image{hex: hex_list} = image
    # # [r, g, b]だとパターンマッチでエラーになる
    # [r, g, b | _tail] = hex_list
    # ↓を引数へ
    # %Image{hex: [r, g, b | _tail]} = image

    %Image{image | color: {r, g, b}}
  end

  def hash_input(input) do
    hex =
      :crypto.hash(:md5, input)
      |> :binary.bin_to_list()

    %Image{hex: hex}
  end
end
