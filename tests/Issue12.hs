#!/usr/bin/env cabal

{- cabal:

  build-depends: base
               , wave

-}

--------------------------------------------------

{-# LANGUAGE PackageImports #-}

--------------------------------------------------

import qualified "wave" Codec.Audio.Wave as W

--------------------------------------------------

main = do

  putStrLn "--------------------------------------------------"
  putStrLn "Reading WAV (Signed PCM)"
  putStrLn "--------------------------------------------------"
  
  W.readWaveFile "./issue-12.wav.pcm"

  putStrLn "--------------------------------------------------"
  putStrLn "Reading WAV (MS ADPCM)"
  putStrLn "--------------------------------------------------"

  W.readWaveFile "./issue-12.wav"

  putStrLn "--------------------------------------------------"
  putStrLn "DONE"
  putStrLn "--------------------------------------------------"

--------------------------------------------------

-- https://github.com/mrkkrp/wave/issues/11
--
-- « readWaveFile » throws « NonPcmFormatButMissingFact » on « ./issue-11.wav ».
--

--------------------------------------------------