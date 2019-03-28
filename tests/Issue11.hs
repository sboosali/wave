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
  putStrLn "Reading WAV (Unsigned PCM)"
  putStrLn "--------------------------------------------------"
  
  W.readWaveFile "./issue-11.wav.pcm"

  putStrLn "--------------------------------------------------"
  putStrLn "Reading WAV (F.P. PCM)"
  putStrLn "--------------------------------------------------"

  W.readWaveFile "./issue-11.wav"

  putStrLn "--------------------------------------------------"
  putStrLn "DONE"
  putStrLn "--------------------------------------------------"

--------------------------------------------------

-- https://github.com/mrkkrp/wave/issues/11
--
-- « readWaveFile » throws « NonPcmFormatButMissingFact » on « ./issue-11.wav ».
--

--------------------------------------------------