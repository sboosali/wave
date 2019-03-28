#!/usr/bin/env python
##################################################

import wave

##################################################

with wave.open("./issue-12.wav", "rb") as audio:

    print audio.getnframes()

##################################################

# <<< wave.Error: unknown format: 2 >>>

# Python's wave module only works with one ype of WAV: PCM (WAVE_FORMAT_PCM: 0x0001).
# "./issue-12.wav" is a WAV of type Adaptive Differential PCM (WAVE_FORMAT_ADPCM: 0x0002)

##################################################