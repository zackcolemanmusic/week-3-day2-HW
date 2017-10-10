require('pry')
require_relative('bounty_class.rb')


bounty_1 = Bounty.new(
  {
  'name' => 'Zack',
  'bounty_value' => '100,000',
  'last_known_location' => 'Cuba',
  'favourite_weapon' => 'silenced AK74'
  }
)

bounty_2 = Bounty.new(
  {
  'name' => 'Santa',
  'bounty_value' => '250,000',
  'last_known_location' => 'North Pole',
  'favourite_weapon' => 'Katana'
  }
)

binding.pry
nil
