#!/usr/bin/env ruby
#
#
#
class Hirase
  @@letters ||= %w(c o i s)
  @@cooi_words ||= %w(Cooi Cisco Sicco Siso Oisii Isoiso Cocco)

  class << self
    def random_letter
      @@letters.sample
    end

    def length
      2.times.reduce(1) { |l| l + rand(3) }
    end

    def cooi?(its)
      @@cooi_words.include? its
    end

    def shout(word)
      puts ""
      puts ""
      puts "    　＿人人人人人人人人人＿ "
      puts "    　＞　 #{word} JAPAN! 　＜"
      puts "    　￣^Y^Y^Y^Y^Y^Y^Y^Y^Y￣ "
    end

    def main
      loop do
        word = length.times.reduce('') { |w| w + random_letter }.capitalize!

        printf "#{word} "
        if cooi? word
          shout word
          break
        end
      end
    end
  end

end

Hirase.main
