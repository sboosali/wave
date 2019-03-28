#!/usr/bin/env python

import wave

##################################################

with wave.open("./issue-11.wav", "rb") as audio:

    print audio.getnframes()

##################################################

# <<< wave.Error: unknown format: 3 >>>

# Python's wave module works with a specific type of WAV: PCM (WAVE_FORMAT_PCM: 0x0001).
# In your case, you're using a WAV of type IEEE_FLOAT (WAVE_FORMAT_IEEE_FLOAT: 0x0003 = hex(3))

##################################################