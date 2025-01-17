{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.MediaLive.Types.FrameCaptureIntervalUnit
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.FrameCaptureIntervalUnit
  ( FrameCaptureIntervalUnit
      ( ..,
        FrameCaptureIntervalUnit_MILLISECONDS,
        FrameCaptureIntervalUnit_SECONDS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | Frame Capture Interval Unit
newtype FrameCaptureIntervalUnit = FrameCaptureIntervalUnit'
  { fromFrameCaptureIntervalUnit ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern FrameCaptureIntervalUnit_MILLISECONDS :: FrameCaptureIntervalUnit
pattern FrameCaptureIntervalUnit_MILLISECONDS = FrameCaptureIntervalUnit' "MILLISECONDS"

pattern FrameCaptureIntervalUnit_SECONDS :: FrameCaptureIntervalUnit
pattern FrameCaptureIntervalUnit_SECONDS = FrameCaptureIntervalUnit' "SECONDS"

{-# COMPLETE
  FrameCaptureIntervalUnit_MILLISECONDS,
  FrameCaptureIntervalUnit_SECONDS,
  FrameCaptureIntervalUnit'
  #-}
