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
-- Module      : Amazonka.MediaConvert.Types.Mp4FreeSpaceBox
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.Mp4FreeSpaceBox
  ( Mp4FreeSpaceBox
      ( ..,
        Mp4FreeSpaceBox_EXCLUDE,
        Mp4FreeSpaceBox_INCLUDE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | Inserts a free-space box immediately after the moov box.
newtype Mp4FreeSpaceBox = Mp4FreeSpaceBox'
  { fromMp4FreeSpaceBox ::
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

pattern Mp4FreeSpaceBox_EXCLUDE :: Mp4FreeSpaceBox
pattern Mp4FreeSpaceBox_EXCLUDE = Mp4FreeSpaceBox' "EXCLUDE"

pattern Mp4FreeSpaceBox_INCLUDE :: Mp4FreeSpaceBox
pattern Mp4FreeSpaceBox_INCLUDE = Mp4FreeSpaceBox' "INCLUDE"

{-# COMPLETE
  Mp4FreeSpaceBox_EXCLUDE,
  Mp4FreeSpaceBox_INCLUDE,
  Mp4FreeSpaceBox'
  #-}
