#!/usr/bin/env python
# -*- encoding: utf-8 -*-

"""Generate NPS pictographs"""

__author__ = 'kotaimen'
__date__ = '2/4/16'

import PIL.Image, PIL.ImageFont, PIL.ImageDraw

font1 = PIL.ImageFont.truetype(
    '../fonts/NPSPICT1.TTF',
    size=36,
)
font2 = PIL.ImageFont.truetype(
    '../fonts/NPSPICT1.TTF',
    size=36,
    encoding='armn'
)
chars = \
    u'!"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^' \
    u'_`abcdefghijklmnopqrstuvwxyz{|}~ÄÅÇÉÑÖÜáàâäãåçéèêëíìîïñóòôöõúùû'

names = '''Airport
Amphitheater
All-terrain trail
Archery
Automobiles
Baseball
Bear viewing
Boat launch
Boat tour
Bicycle trail
Bus stop_Shuttle stop
Campfire
Campground
Canoe access
Cans or bottles
Chair lift_Ski lift
Climbing
Cross-country ski trail
Dam
Deer viewing
Diving
Downhill skiing
Drinking water
Driving tour
Exercise_Fitness
Falling rocks
Fire extinguisher
Firewood cutting
First aid
Fishing
Fish cleaning
Fish hatchery
Fish ladder
Fishing pier
Food service
4-wheel-drive road
Gas station
Golfing
Hang gliding
Hand launch_Small boat launch
Horseback riding
Hospital
Ice fishing
Ice skating
Information
In-line skating
Kayaking
Kennel
Laundromat
Library
Lifejackets
Lighthouse
Litter receptacle
Lockers_Storage
Lodging
Lookout tower
Marina
Mechanic
Mens room
Motor bike trail
Motorboating
Parking
Pedestrian crossing
Pets on leash
Personal watercraft
Picnic area
Picnic shelter
Playground
Point of interest
Post office
Radiator water
Radios
Ranger station
Rattlesnakes
RV campground
Recycling
Restrooms
Rock collecting
Rowboating
Sailing
Sanitary disposal station
Scuba diving
Sea plane
Seal viewing
Self-guiding trail
Shelter
Showers
Skateboarding
Ski jumping
Sledding
Sleeping shelter
Smoking
Snack bar
Snowboarding
Snow-shoeing
Snowmobile trail
Spelunking_Caves
Stable
Stay on trail
Store
Strollers
Swimming
Surfing
Technical rock climb
Telephone
Tennis
Theater
Trailhead
Trailer site
Tramway
Trash dumpster
Trucks
Tunnel
Vehicle ferry
Viewing area
Wading
Walk on boardwalk
Waterskiing
Whale viewing
Wheelchair-accessible
Wildlife viewing
Wind surfing
Winter Recreation area
Wood gathering
Womens room'''.splitlines()


def render_glyph(glyph, font, background, foreground):
    image = PIL.Image.new('RGBA', (36, 36))
    draw = PIL.ImageDraw.Draw(image)
    draw.rectangle((2, 2, 33, 33), fill=background)
    draw.text((0, 0), glyph, font=font, fill=foreground)
    return image


bg = '#c4c1b5'
fg = '#665555'

for n, ch in enumerate(chars):
    image = render_glyph(ch, font1, bg, fg)
    filename = 'Stage/nps/%s.png' % names[n]
    # print n + 33, ch, repr(ch), filename
    image.save(filename)

# XXX set encoding to Apple Roman solves incorrectly rendered 'Campground'
render_glyph('-', font2, bg, fg).save('Stage/nps/Campground.png')
# Generate 'general' marker using 'point of interest'
render_glyph('e', font2, bg, fg).save('Stage/nps/Bob.png')
