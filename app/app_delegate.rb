# -*- coding: undecided -*-
class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    array_counting

    true
  end
end

def array_counting

  url = 'http://38-ch.net/bbsmenu/get?format=json&charset=UTF-8'

  BubbleWrap::HTTP.get(url) do |response|
    case response.status_code
    when 200
      json = BubbleWrap::JSON.parse response.body

      categories = json['bbsmenu']['category']
      latest_at = json['bbsmenu']['lastup']

      dummy_array = (0..46).to_a.map do |i|
        categories.first
      end


      # puts categories.first.inspect
      # puts dummy_array.first.inspect
      # puts "compare #{ (categories.first == dummy_array.first) }"
      puts 'response array count!'
      puts categories.size         # => 47
      puts Array(categories).size  # => 3
      puts Array(dummy_array).size # => 47
    else
    end
  end

end
