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
-- Module      : Amazonka.KinesisVideoArchivedMedia.Types.DASHPlaybackMode
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.KinesisVideoArchivedMedia.Types.DASHPlaybackMode
  ( DASHPlaybackMode
      ( ..,
        DASHPlaybackMode_LIVE,
        DASHPlaybackMode_LIVE_REPLAY,
        DASHPlaybackMode_ON_DEMAND
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype DASHPlaybackMode = DASHPlaybackMode'
  { fromDASHPlaybackMode ::
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

pattern DASHPlaybackMode_LIVE :: DASHPlaybackMode
pattern DASHPlaybackMode_LIVE = DASHPlaybackMode' "LIVE"

pattern DASHPlaybackMode_LIVE_REPLAY :: DASHPlaybackMode
pattern DASHPlaybackMode_LIVE_REPLAY = DASHPlaybackMode' "LIVE_REPLAY"

pattern DASHPlaybackMode_ON_DEMAND :: DASHPlaybackMode
pattern DASHPlaybackMode_ON_DEMAND = DASHPlaybackMode' "ON_DEMAND"

{-# COMPLETE
  DASHPlaybackMode_LIVE,
  DASHPlaybackMode_LIVE_REPLAY,
  DASHPlaybackMode_ON_DEMAND,
  DASHPlaybackMode'
  #-}
