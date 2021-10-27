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
-- Module      : Network.AWS.Synthetics.Types.CanaryState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Synthetics.Types.CanaryState
  ( CanaryState
      ( ..,
        CanaryState_CREATING,
        CanaryState_DELETING,
        CanaryState_ERROR,
        CanaryState_READY,
        CanaryState_RUNNING,
        CanaryState_STARTING,
        CanaryState_STOPPED,
        CanaryState_STOPPING,
        CanaryState_UPDATING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype CanaryState = CanaryState'
  { fromCanaryState ::
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

pattern CanaryState_CREATING :: CanaryState
pattern CanaryState_CREATING = CanaryState' "CREATING"

pattern CanaryState_DELETING :: CanaryState
pattern CanaryState_DELETING = CanaryState' "DELETING"

pattern CanaryState_ERROR :: CanaryState
pattern CanaryState_ERROR = CanaryState' "ERROR"

pattern CanaryState_READY :: CanaryState
pattern CanaryState_READY = CanaryState' "READY"

pattern CanaryState_RUNNING :: CanaryState
pattern CanaryState_RUNNING = CanaryState' "RUNNING"

pattern CanaryState_STARTING :: CanaryState
pattern CanaryState_STARTING = CanaryState' "STARTING"

pattern CanaryState_STOPPED :: CanaryState
pattern CanaryState_STOPPED = CanaryState' "STOPPED"

pattern CanaryState_STOPPING :: CanaryState
pattern CanaryState_STOPPING = CanaryState' "STOPPING"

pattern CanaryState_UPDATING :: CanaryState
pattern CanaryState_UPDATING = CanaryState' "UPDATING"

{-# COMPLETE
  CanaryState_CREATING,
  CanaryState_DELETING,
  CanaryState_ERROR,
  CanaryState_READY,
  CanaryState_RUNNING,
  CanaryState_STARTING,
  CanaryState_STOPPED,
  CanaryState_STOPPING,
  CanaryState_UPDATING,
  CanaryState'
  #-}
