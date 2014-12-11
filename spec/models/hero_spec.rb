require 'rails_helper'

describe Hero do
  let(:attr) { {name: 'Abaddon', short_name: 'abaddon', 'portrait_url' => 'http://cdn.dota2.com/apps/dota2/images/heroes/abaddon_full.png'} }

  it "should create hero with valid attributes" do
    expect { Hero.create(attr) }.to change {Hero.count}.by(1)
  end
end
