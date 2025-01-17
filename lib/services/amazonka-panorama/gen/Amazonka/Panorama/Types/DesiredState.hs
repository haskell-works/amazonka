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
-- Module      : Amazonka.Panorama.Types.DesiredState
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Panorama.Types.DesiredState
  ( DesiredState
      ( ..,
        DesiredState_REMOVED,
        DesiredState_RUNNING,
        DesiredState_STOPPED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype DesiredState = DesiredState'
  { fromDesiredState ::
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

pattern DesiredState_REMOVED :: DesiredState
pattern DesiredState_REMOVED = DesiredState' "REMOVED"

pattern DesiredState_RUNNING :: DesiredState
pattern DesiredState_RUNNING = DesiredState' "RUNNING"

pattern DesiredState_STOPPED :: DesiredState
pattern DesiredState_STOPPED = DesiredState' "STOPPED"

{-# COMPLETE
  DesiredState_REMOVED,
  DesiredState_RUNNING,
  DesiredState_STOPPED,
  DesiredState'
  #-}
