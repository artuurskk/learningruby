#---
# Excerpted from "Agile Web Development with Rails 5.1",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rails51 for more book information.
#---
# encoding: utf-8
Product.delete_all
Product.create!(title: 'DELL XL20',
                description:
                    %{<p>
      <em>Powerful, Effective, and Efficient</em>
  Plays Every Latest PC Games at Full Max Ultra Settings at more than 60 Fps (Full Smooth) Advanced Rendering Performance in Video Editing , Streaming , Multimedia Editing such as Photoshop m Premier , Illustrator , After effects , Cinema 4d , 3Ds Max, Auto Cad SPECIFICATIONS: Intel Core I7 4790k (4th Generation) Turbo Boost Edition of 4.4 Ghz 8 Logical Cores
      </p>},
                image_url: 'pc.jpg',
                price: 445.00)
# . . .
Product.create!(title: 'HP Z620',
                description:
                    %{<p>
      <em>Best Budget PC</em>
      3 Month Warranty PC & Graphics Card
      Our All Item Not Local Used In Pakistan
      Condition 10/09 Like New
      Exchange Possible With in Month
      Without any Exchange Charges
      Free Delivery
      No Demo Charges ON Gameplay After Delivery
      </p>},
                image_url: 'pc2.jpg',
                price: 326.00)
# . . .

Product.create!(title: 'MSI M250',
                description:
                    %{<p>
      <em>Everything You Need</em>
      Nvidia GeForce GTX 1060 Pascal (3GB GDDR5 RAM / 1x HDMI 2.0 / 2x DisplayPort 1.4 / 1x DVI-D Dual-Link Ports)
      AMD FX 4300 Quad 4-Core CPU
      1000GB (1TB) Hard Drive Storage Space (SATA-III 6.0 Gbit/s / 7200rpm), 8GB DDR3 1600MHz Memory
      3x Triple 21.5" AOC E2270SWDN (Monitor), Vibox Septem Gaming Set (Keyboard & Mouse)Vibox Glide Black (Mouse Mat), AVP Gamer Headset with Microphone, Super Fast 150MBs USB Wireless Network WiFi Adaptor, No Operating System Included
       </p>},
                image_url: 'pc3.jpg',
                price: 646.00)