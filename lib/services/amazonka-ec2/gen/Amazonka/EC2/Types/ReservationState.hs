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
-- Module      : Amazonka.EC2.Types.ReservationState
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.ReservationState
  ( ReservationState
      ( ..,
        ReservationState_Active,
        ReservationState_Payment_failed,
        ReservationState_Payment_pending,
        ReservationState_Retired
      ),
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Prelude as Prelude

newtype ReservationState = ReservationState'
  { fromReservationState ::
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

pattern ReservationState_Active :: ReservationState
pattern ReservationState_Active = ReservationState' "active"

pattern ReservationState_Payment_failed :: ReservationState
pattern ReservationState_Payment_failed = ReservationState' "payment-failed"

pattern ReservationState_Payment_pending :: ReservationState
pattern ReservationState_Payment_pending = ReservationState' "payment-pending"

pattern ReservationState_Retired :: ReservationState
pattern ReservationState_Retired = ReservationState' "retired"

{-# COMPLETE
  ReservationState_Active,
  ReservationState_Payment_failed,
  ReservationState_Payment_pending,
  ReservationState_Retired,
  ReservationState'
  #-}
