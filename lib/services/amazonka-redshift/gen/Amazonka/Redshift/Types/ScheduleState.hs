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
-- Module      : Amazonka.Redshift.Types.ScheduleState
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Redshift.Types.ScheduleState
  ( ScheduleState
      ( ..,
        ScheduleState_ACTIVE,
        ScheduleState_FAILED,
        ScheduleState_MODIFYING
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude
import Amazonka.Redshift.Internal

newtype ScheduleState = ScheduleState'
  { fromScheduleState ::
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

pattern ScheduleState_ACTIVE :: ScheduleState
pattern ScheduleState_ACTIVE = ScheduleState' "ACTIVE"

pattern ScheduleState_FAILED :: ScheduleState
pattern ScheduleState_FAILED = ScheduleState' "FAILED"

pattern ScheduleState_MODIFYING :: ScheduleState
pattern ScheduleState_MODIFYING = ScheduleState' "MODIFYING"

{-# COMPLETE
  ScheduleState_ACTIVE,
  ScheduleState_FAILED,
  ScheduleState_MODIFYING,
  ScheduleState'
  #-}
