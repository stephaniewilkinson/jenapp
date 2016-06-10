json.array!(@clients) do |client|
  json.extract! client, :id, :name, :phone, :email, :visit_date, :egc, :birthday, :gwp, :address, :shipping_address, :age, :aging, :fine_lines, :dehydration, :sun_damage, :excess_oil, :clogged_pores, :acne, :dark_spots, :dullness, :sensitive, :firmness, :large_pores, :dark_circles, :notes
  json.url client_url(client, format: :json)
end
