Config = {}
Config.enabled = true
-- Exakt gleiche Schaedelpositionen nur einmal spawnen (Platzhalter-Schutz).
Config.AllowDuplicatePositions = true
-- Pro Event getrennte Funde und Punktestände. Während des Events nicht ändern.
Config.EventId = 'halloween_2026'
Config.TargetDistance = 2.0
Config.ServerDistance = 2.75
Config.RoutingBucket = 0
Config.LeaderboardLimit = 100
Config.Debug = false
Config.Commands = {
  leaderboard = 'halloween',
  reset = 'halloween_reset'
}
Config.Props = {
  ['prop_mp_skull'] = {
    propname = 'prop_mp_skull'
  },
  ['bloodstain_hand'] = {
    propname = 'm25_1_prop_m51_blood_smear_01b',
    text_dic = 'm25_1_prop_m51_blood_smear',
    hash = '0x8FEA9959'
  }
}
Config.CollectablePlacement = {
  { 
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_001',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-1170.337, 4926.909, 223.338, 20.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-1169.969, 4924.449, 223.135, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1169.733, 4928.590, 223.300, 0.0), rot = vector3(90.0, 0.0, 0.0)},
        {vector4(-1171.771, 4928.582, 223.146, 0.0), rot = vector3(0.0, 90.0, 0.0)},
        {vector4(-1168.927, 4926.511, 223.135, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_002',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(1414.698, 6351.721, 23.318, 60.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(1414.766, 6352.589, 24.645, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1414.766, 6352.589, 24.645, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1414.766, 6352.589, 24.645, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1414.766, 6352.589, 24.645, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_003',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(2204.725, 5607.959, 52.706, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(2204.725, 5607.959, 52.706, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2204.725, 5607.959, 52.706, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2204.725, 5607.959, 52.706, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2204.725, 5607.959, 52.706, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_004',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(3435.663, 5175.724, 6.386, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(3426.668, 5173.876, 8.160, 90.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(3426.668, 5173.876, 8.160, 90.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(3426.668, 5173.876, 8.160, 90.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(3426.668, 5173.876, 8.160, 90.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_005',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(2511.665, 3785.028, 49.732, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
       {vector4(2511.665, 3785.028, 49.732, 0.0), rot = vector3(0.0, 0.0, 0.0)},
       {vector4(2511.665, 3785.028, 49.732, 0.0), rot = vector3(0.0, 0.0, 0.0)},
       {vector4(2511.665, 3785.028, 49.732, 0.0), rot = vector3(0.0, 0.0, 0.0)},
       {vector4(2511.665, 3785.028, 49.732, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_006',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(1600.587, 3587.771, 37.770, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(1600.587, 3587.771, 37.770, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1600.587, 3587.771, 37.770, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1600.587, 3587.771, 37.770, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1600.587, 3587.771, 37.770, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_007',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(334.208, 2556.452, 43.128, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(334.208, 2556.452, 43.128, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(334.208, 2556.452, 43.128, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(334.208, 2556.452, 43.128, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(334.208, 2556.452, 43.128, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_008',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(1894.279, 272.276, 161.791, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
       {vector4(1894.279, 272.276, 161.791, 0.0), rot = vector3(0.0, 0.0, 0.0)},
       {vector4(1894.279, 272.276, 161.791, 0.0), rot = vector3(0.0, 0.0, 0.0)},
       {vector4(1894.279, 272.276, 161.791, 0.0), rot = vector3(0.0, 0.0, 0.0)},
       {vector4(1894.279, 272.276, 161.791, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_009',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(1665.278, 3.486, 165.916, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(1665.278, 3.486, 165.916, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1665.278, 3.486, 165.916, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1665.278, 3.486, 165.916, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1665.278, 3.486, 165.916, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_010',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(1091.326, 197.851, 84.741, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(1091.326, 197.851, 84.741, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1091.326, 197.851, 84.741, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1091.326, 197.851, 84.741, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1091.326, 197.851, 84.741, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_011',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(1522.582, 797.265, 76.455, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(1522.582, 797.265, 76.455, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1522.582, 797.265, 76.455, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1522.582, 797.265, 76.455, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1522.582, 797.265, 76.455, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_012',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(891.413, 507.964, 124.571, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(891.413, 507.964, 124.571, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(891.413, 507.964, 124.571, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(891.413, 507.964, 124.571, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(891.413, 507.964, 124.571, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_013',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(86.180, 811.574, 210.125, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(86.180, 811.574, 210.125, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(86.180, 811.574, 210.125, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(86.180, 811.574, 210.125, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(86.180, 811.574, 210.125, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_014',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-222.705, -1110.525, 68.089, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-222.705, -1110.525, 68.089, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-222.705, -1110.525, 68.089, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-222.705, -1110.525, 68.089, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-222.705, -1110.525, 68.089, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_015',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-547.052, -1297.184, 25.907, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-547.052, -1297.184, 25.907, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-547.052, -1297.184, 25.907, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-547.052, -1297.184, 25.907, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-547.052, -1297.184, 25.907, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_016',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-905.892, -2769.661, 12.944, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-905.892, -2769.661, 12.944, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-905.892, -2769.661, 12.944, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-905.892, -2769.661, 12.944, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-905.892, -2769.661, 12.944, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_017',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-2303.536, 391.367, 175.144, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-2303.536, 391.367, 175.144, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-2303.536, 391.367, 175.144, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-2303.536, 391.367, 175.144, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-2303.536, 391.367, 175.144, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_018',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-3001.121, 458.035, 14.140, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-3001.121, 458.035, 14.140, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-3001.121, 458.035, 14.140, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-3001.121, 458.035, 14.140, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-3001.121, 458.035, 14.140, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_019',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-860.484, -1145.770, 5.991, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-860.484, -1145.770, 5.991, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-860.484, -1145.770, 5.991, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-860.484, -1145.770, 5.991, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-860.484, -1145.770, 5.991, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_020',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(255.819, -987.798, 28.293, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(255.819, -987.798, 28.293, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(255.819, -987.798, 28.293, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(255.819, -987.798, 28.293, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(255.819, -987.798, 28.293, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_021',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(195.463, -1046.016, 29.324, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(195.463, -1046.016, 29.324, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(195.463, -1046.016, 29.324, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(195.463, -1046.016, 29.324, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(195.463, -1046.016, 29.324, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_022',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(398.899, -758.775, 28.285, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(398.899, -758.775, 28.285, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(398.899, -758.775, 28.285, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(398.899, -758.775, 28.285, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(398.899, -758.775, 28.285, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_023',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-49.696, -456.355, 39.450, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-49.696, -456.355, 39.450, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-49.696, -456.355, 39.450, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-49.696, -456.355, 39.450, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-49.696, -456.355, 39.450, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_024',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-1376.909, 55.832, 52.740, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-1376.909, 55.832, 52.740, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1376.909, 55.832, 52.740, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1376.909, 55.832, 52.740, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1376.909, 55.832, 52.740, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_025',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(1196.525, -502.640, 64.272, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(1196.525, -502.640, 64.272, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1196.525, -502.640, 64.272, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1196.525, -502.640, 64.272, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1196.525, -502.640, 64.272, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_026',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(1184.002, -3261.451, 12.278, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(1184.002, -3261.451, 12.278, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1184.002, -3261.451, 12.278, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1184.002, -3261.451, 12.278, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1184.002, -3261.451, 12.278, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_027',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-1481.673, 1525.178, 113.252, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-1481.673, 1525.178, 113.252, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1481.673, 1525.178, 113.252, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1481.673, 1525.178, 113.252, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1481.673, 1525.178, 113.252, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_028',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-1875.476, 2027.576, 141.045, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-1875.476, 2027.576, 141.045, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1875.476, 2027.576, 141.045, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1875.476, 2027.576, 141.045, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1875.476, 2027.576, 141.045, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_029',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-596.501, 2089.855, 130.413, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-596.501, 2089.855, 130.413, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-596.501, 2089.855, 130.413, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-596.501, 2089.855, 130.413, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-596.501, 2089.855, 130.413, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_030',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-85.567, 1880.277, 196.302, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-85.567, 1880.277, 196.302, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-85.567, 1880.277, 196.302, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-85.567, 1880.277, 196.302, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-85.567, 1880.277, 196.302, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_031',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(781.354, 1274.383, 359.297, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(781.354, 1274.383, 359.297, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(781.354, 1274.383, 359.297, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(781.354, 1274.383, 359.297, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(781.354, 1274.383, 359.297, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_032',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-769.055, -29.964, 40.518, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-769.055, -29.964, 40.518, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-769.055, -29.964, 40.518, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-769.055, -29.964, 40.518, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-769.055, -29.964, 40.518, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_033',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-591.108, -287.892, 50.270, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-591.108, -287.892, 50.270, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-591.108, -287.892, 50.270, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-591.108, -287.892, 50.270, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-591.108, -287.892, 50.270, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_034',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-1240.287, -763.102, 20.442, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-1240.287, -763.102, 20.442, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1240.287, -763.102, 20.442, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1240.287, -763.102, 20.442, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1240.287, -763.102, 20.442, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_035',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-1009.314, -1759.528, 5.550, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-1009.314, -1759.528, 5.550, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1009.314, -1759.528, 5.550, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1009.314, -1759.528, 5.550, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1009.314, -1759.528, 5.550, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_036',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-250.952, -2678.077, 5.000, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-250.952, -2678.077, 5.000, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-250.952, -2678.077, 5.000, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-250.952, -2678.077, 5.000, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-250.952, -2678.077, 5.000, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_037',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-131.058, -1771.714, 29.715, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-131.058, -1771.714, 29.715, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-131.058, -1771.714, 29.715, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-131.058, -1771.714, 29.715, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-131.058, -1771.714, 29.715, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_038',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(288.473, -1601.254, 30.271, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(288.473, -1601.254, 30.271, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(288.473, -1601.254, 30.271, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(288.473, -1601.254, 30.271, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(288.473, -1601.254, 30.271, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_039',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(631.706, -1732.612, 28.271, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(631.706, -1732.612, 28.271, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(631.706, -1732.612, 28.271, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(631.706, -1732.612, 28.271, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(631.706, -1732.612, 28.271, 0.0), rot = vector3(0.0, 0.0, 0.0)}
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_040',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(983.388, -2121.897, 31.630, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(983.388, -2121.897, 31.630, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(983.388, -2121.897, 31.630, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(983.388, -2121.897, 31.630, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(983.388, -2121.897, 31.630, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_041',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(1271.308, -1980.877, 45.291, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(1271.308, -1980.877, 45.291, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1271.308, -1980.877, 45.291, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1271.308, -1980.877, 45.291, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1271.308, -1980.877, 45.291, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_042',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(1276.291, -1710.396, 54.507, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(1276.291, -1710.396, 54.507, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1276.291, -1710.396, 54.507, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1276.291, -1710.396, 54.507, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1276.291, -1710.396, 54.507, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_043',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(1257.788, -1571.549, 77.970, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(1257.788, -1571.549, 77.970, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1257.788, -1571.549, 77.970, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1257.788, -1571.549, 77.970, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1257.788, -1571.549, 77.970, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_044',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(153.166, -3092.502, 4.896, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(153.166, -3092.502, 4.896, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(153.166, -3092.502, 4.896, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(153.166, -3092.502, 4.896, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(153.166, -3092.502, 4.896, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_045',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-1807.996, -2810.336, 12.944, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-1807.996, -2810.336, 12.944, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1807.996, -2810.336, 12.944, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1807.996, -2810.336, 12.944, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1807.996, -2810.336, 12.944, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_046',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(901.890, -172.078, 74.142, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(901.890, -172.078, 74.142, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(901.890, -172.078, 74.142, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(901.890, -172.078, 74.142, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(901.890, -172.078, 74.142, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_047',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(1272.436, -56.624, 60.820, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(1272.436, -56.624, 60.820, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1272.436, -56.624, 60.820, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1272.436, -56.624, 60.820, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1272.436, -56.624, 60.820, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_048',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-261.664, -681.971, 32.311, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-261.664, -681.971, 32.311, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-261.664, -681.971, 32.311, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-261.664, -681.971, 32.311, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-261.664, -681.971, 32.311, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_049',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-889.400, -853.437, 19.566, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-889.400, -853.437, 19.566, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-889.400, -853.437, 19.566, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-889.400, -853.437, 19.566, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-889.400, -853.437, 19.566, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_050',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-1820.986, -1221.632, 18.261, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-1820.986, -1221.632, 18.261, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1820.986, -1221.632, 18.261, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1820.986, -1221.632, 18.261, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1820.986, -1221.632, 18.261, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_051',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(1487.598, 2202.303, 80.345, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(1487.598, 2202.303, 80.345, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1487.598, 2202.303, 80.345, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1487.598, 2202.303, 80.345, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1487.598, 2202.303, 80.345, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_052',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(2955.569, 2744.962, 43.635, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(2955.569, 2744.962, 43.635, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2955.569, 2744.962, 43.635, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2955.569, 2744.962, 43.635, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2955.569, 2744.962, 43.635, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_053',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(2654.200, 2894.375, 38.447, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(2654.200, 2894.375, 38.447, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2654.200, 2894.375, 38.447, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2654.200, 2894.375, 38.447, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2654.200, 2894.375, 38.447, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_054',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(1850.745, 2612.891, 44.643, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(1850.745, 2612.891, 44.643, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1850.745, 2612.891, 44.643, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1850.745, 2612.891, 44.643, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1850.745, 2612.891, 44.643, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_055',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(2658.427, 1641.941, 23.830, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(2658.427, 1641.941, 23.830, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2658.427, 1641.941, 23.830, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2658.427, 1641.941, 23.830, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2658.427, 1641.941, 23.830, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_056',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-968.795, -418.354, 37.059, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-968.795, -418.354, 37.059, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-968.795, -418.354, 37.059, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-968.795, -418.354, 37.059, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-968.795, -418.354, 37.059, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_057',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(89.969, 3725.102, 38.653, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(89.969, 3725.102, 38.653, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(89.969, 3725.102, 38.653, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(89.969, 3725.102, 38.653, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(89.969, 3725.102, 38.653, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_058',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(328.973, -1386.557, 31.582, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(328.973, -1386.557, 31.582, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(328.973, -1386.557, 31.582, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(328.973, -1386.557, 31.582, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(328.973, -1386.557, 31.582, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_059',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(441.315, 5572.091, 792.486, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(441.315, 5572.091, 792.486, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(441.315, 5572.091, 792.486, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(441.315, 5572.091, 792.486, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(441.315, 5572.091, 792.486, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_060',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(1303.943, 4257.268, 32.914, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(1303.943, 4257.268, 32.914, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1303.943, 4257.268, 32.914, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1303.943, 4257.268, 32.914, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1303.943, 4257.268, 32.914, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_061',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(1788.439, 3895.294, 33.389, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(1788.439, 3895.294, 33.389, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1788.439, 3895.294, 33.389, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1788.439, 3895.294, 33.389, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1788.439, 3895.294, 33.389, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_062',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(3082.121, 6213.616, 117.139, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(3082.121, 6213.616, 117.139, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(3082.121, 6213.616, 117.139, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(3082.121, 6213.616, 117.139, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(3082.121, 6213.616, 117.139, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_063',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(3828.640, 4471.949, 3.009, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(3828.640, 4471.949, 3.009, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(3828.640, 4471.949, 3.009, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(3828.640, 4471.949, 3.009, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(3828.640, 4471.949, 3.009, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_064',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-1289.581, 288.105, 63.806, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-1289.581, 288.105, 63.806, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1289.581, 288.105, 63.806, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1289.581, 288.105, 63.806, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1289.581, 288.105, 63.806, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_065',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-2689.643, 2303.440, 21.439, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-2689.643, 2303.440, 21.439, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-2689.643, 2303.440, 21.439, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-2689.643, 2303.440, 21.439, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-2689.643, 2303.440, 21.439, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_066',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-2206.634, 4284.680, 47.983, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-2206.634, 4284.680, 47.983, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-2206.634, 4284.680, 47.983, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-2206.634, 4284.680, 47.983, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-2206.634, 4284.680, 47.983, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_067',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(2565.439, 384.553, 107.463, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(2565.439, 384.553, 107.463, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2565.439, 384.553, 107.463, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2565.439, 384.553, 107.463, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2565.439, 384.553, 107.463, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_068',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-262.896, 4730.001, 137.102, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-262.896, 4730.001, 137.102, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-262.896, 4730.001, 137.102, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-262.896, 4730.001, 137.102, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-262.896, 4730.001, 137.102, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_069',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(712.066, 4110.236, 30.305, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(712.066, 4110.236, 30.305, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(712.066, 4110.236, 30.305, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(712.066, 4110.236, 30.305, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(712.066, 4110.236, 30.305, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_070',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(1392.438, 3602.096, 37.942, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(1392.438, 3602.096, 37.942, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1392.438, 3602.096, 37.942, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1392.438, 3602.096, 37.942, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1392.438, 3602.096, 37.942, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_071',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(2683.846, 4846.678, 32.647, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(2683.846, 4846.678, 32.647, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2683.846, 4846.678, 32.647, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2683.846, 4846.678, 32.647, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2683.846, 4846.678, 32.647, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_072',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(2109.222, 4768.867, 40.222, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(2109.222, 4768.867, 40.222, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2109.222, 4768.867, 40.222, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2109.222, 4768.867, 40.222, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2109.222, 4768.867, 40.222, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_073',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(1654.800, 4908.563, 41.825, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(1654.800, 4908.563, 41.825, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1654.800, 4908.563, 41.825, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1654.800, 4908.563, 41.825, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1654.800, 4908.563, 41.825, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_074',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-416.715, 1155.622, 325.873, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-416.715, 1155.622, 325.873, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-416.715, 1155.622, 325.873, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-416.715, 1155.622, 325.873, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-416.715, 1155.622, 325.873, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_075',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(2785.614, -712.567, 4.907, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(2785.614, -712.567, 4.907, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2785.614, -712.567, 4.907, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2785.614, -712.567, 4.907, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(2785.614, -712.567, 4.907, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_076',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-1018.022, -2120.552, 11.591, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-1018.022, -2120.552, 11.591, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1018.022, -2120.552, 11.591, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1018.022, -2120.552, 11.591, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1018.022, -2120.552, 11.591, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_077',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(274.110, 146.987, 103.392, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(274.110, 146.987, 103.392, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(274.110, 146.987, 103.392, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(274.110, 146.987, 103.392, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(274.110, 146.987, 103.392, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_078',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-676.792, 313.713, 82.084, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-676.792, 313.713, 82.084, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-676.792, 313.713, 82.084, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-676.792, 313.713, 82.084, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-676.792, 313.713, 82.084, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_079',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-57.719, -1221.393, 27.702, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-57.719, -1221.393, 27.702, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-57.719, -1221.393, 27.702, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-57.719, -1221.393, 27.702, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-57.719, -1221.393, 27.702, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_080',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(121.393, -1730.874, 29.546, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(121.393, -1730.874, 29.546, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(121.393, -1730.874, 29.546, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(121.393, -1730.874, 29.546, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(121.393, -1730.874, 29.546, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_081',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(478.717, -2050.024, 23.913, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(478.717, -2050.024, 23.913, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(478.717, -2050.024, 23.913, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(478.717, -2050.024, 23.913, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(478.717, -2050.024, 23.913, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_082',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(1231.957, -1102.596, 34.419, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(1231.957, -1102.596, 34.419, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1231.957, -1102.596, 34.419, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1231.957, -1102.596, 34.419, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1231.957, -1102.596, 34.419, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_083',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(1079.774, -701.747, 57.738, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(1079.774, -701.747, 57.738, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1079.774, -701.747, 57.738, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1079.774, -701.747, 57.738, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1079.774, -701.747, 57.738, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_084',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-274.075, -13.084, 49.150, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-274.075, -13.084, 49.150, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-274.075, -13.084, 49.150, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-274.075, -13.084, 49.150, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-274.075, -13.084, 49.150, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_085',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-1335.758, -1277.276, 4.487, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-1335.758, -1277.276, 4.487, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1335.758, -1277.276, 4.487, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1335.758, -1277.276, 4.487, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1335.758, -1277.276, 4.487, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_086',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-701.407, 933.597, 233.854, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-701.407, 933.597, 233.854, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-701.407, 933.597, 233.854, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-701.407, 933.597, 233.854, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-701.407, 933.597, 233.854, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_087',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-1766.451, 812.584, 140.026, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-1766.451, 812.584, 140.026, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1766.451, 812.584, 140.026, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1766.451, 812.584, 140.026, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1766.451, 812.584, 140.026, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_088',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-1902.071, -287.635, 48.272, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-1902.071, -287.635, 48.272, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1902.071, -287.635, 48.272, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1902.071, -287.635, 48.272, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1902.071, -287.635, 48.272, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_089',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(87.569, -2191.045, 6.656, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(87.569, -2191.045, 6.656, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(87.569, -2191.045, 6.656, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(87.569, -2191.045, 6.656, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(87.569, -2191.045, 6.656, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_090',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(1222.245, -2901.719, 4.866, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(1222.245, -2901.719, 4.866, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1222.245, -2901.719, 4.866, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1222.245, -2901.719, 4.866, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(1222.245, -2901.719, 4.866, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_091',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-1307.216, -1556.528, 3.656, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-1307.216, -1556.528, 3.656, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1307.216, -1556.528, 3.656, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1307.216, -1556.528, 3.656, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1307.216, -1556.528, 3.656, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_092',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(146.507, -192.712, 53.651, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(146.507, -192.712, 53.651, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(146.507, -192.712, 53.651, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(146.507, -192.712, 53.651, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(146.507, -192.712, 53.651, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_093',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-880.736, 4414.052, 19.904, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-880.736, 4414.052, 19.904, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-880.736, 4414.052, 19.904, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-880.736, 4414.052, 19.904, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-880.736, 4414.052, 19.904, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_094',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(127.111, -2419.056, 12.872, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(127.111, -2419.056, 12.872, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(127.111, -2419.056, 12.872, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(127.111, -2419.056, 12.872, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(127.111, -2419.056, 12.872, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_095',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-370.127, 2952.126, 23.829, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-370.127, 2952.126, 23.829, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-370.127, 2952.126, 23.829, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-370.127, 2952.126, 23.829, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-370.127, 2952.126, 23.829, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_096',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-2711.431, 1501.744, 105.429, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-2711.431, 1501.744, 105.429, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-2711.431, 1501.744, 105.429, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-2711.431, 1501.744, 105.429, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-2711.431, 1501.744, 105.429, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_097',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-233.873, 6321.328, 31.400, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-233.873, 6321.328, 31.400, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-233.873, 6321.328, 31.400, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-233.873, 6321.328, 31.400, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-233.873, 6321.328, 31.400, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_098',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-79.155, 6269.003, 34.517, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-79.155, 6269.003, 34.517, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-79.155, 6269.003, 34.517, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-79.155, 6269.003, 34.517, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-79.155, 6269.003, 34.517, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_099',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-737.465, 5595.042, 40.659, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-737.465, 5595.042, 40.659, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-737.465, 5595.042, 40.659, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-737.465, 5595.042, 40.659, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-737.465, 5595.042, 40.659, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
  {
    -- ID MUSS eindeutig und dauerhaft gleich bleiben, auch beim Umsortieren.
    id = 'skull_100',
    prop = Config.Props['prop_mp_skull'],
    -- Platzhalter ersetzen! Positionen mit x=y=z=0 werden übersprungen.
    -- w = Heading. z = Modellursprung, keine automatische Bodenplatzierung.
    coords = vector4(-1612.310, 5262.098, 2.944, 0.0),
    hints = {
      prop = Config.Props['bloodstain_hand'],
      coords = {
        {vector4(-1612.310, 5262.098, 2.944, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1612.310, 5262.098, 2.944, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1612.310, 5262.098, 2.944, 0.0), rot = vector3(0.0, 0.0, 0.0)},
        {vector4(-1612.310, 5262.098, 2.944, 0.0), rot = vector3(0.0, 0.0, 0.0)},
      }
    }
  },
}