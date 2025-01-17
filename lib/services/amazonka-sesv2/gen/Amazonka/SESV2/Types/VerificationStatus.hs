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
-- Module      : Amazonka.SESV2.Types.VerificationStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SESV2.Types.VerificationStatus
  ( VerificationStatus
      ( ..,
        VerificationStatus_FAILED,
        VerificationStatus_NOT_STARTED,
        VerificationStatus_PENDING,
        VerificationStatus_SUCCESS,
        VerificationStatus_TEMPORARY_FAILURE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype VerificationStatus = VerificationStatus'
  { fromVerificationStatus ::
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

pattern VerificationStatus_FAILED :: VerificationStatus
pattern VerificationStatus_FAILED = VerificationStatus' "FAILED"

pattern VerificationStatus_NOT_STARTED :: VerificationStatus
pattern VerificationStatus_NOT_STARTED = VerificationStatus' "NOT_STARTED"

pattern VerificationStatus_PENDING :: VerificationStatus
pattern VerificationStatus_PENDING = VerificationStatus' "PENDING"

pattern VerificationStatus_SUCCESS :: VerificationStatus
pattern VerificationStatus_SUCCESS = VerificationStatus' "SUCCESS"

pattern VerificationStatus_TEMPORARY_FAILURE :: VerificationStatus
pattern VerificationStatus_TEMPORARY_FAILURE = VerificationStatus' "TEMPORARY_FAILURE"

{-# COMPLETE
  VerificationStatus_FAILED,
  VerificationStatus_NOT_STARTED,
  VerificationStatus_PENDING,
  VerificationStatus_SUCCESS,
  VerificationStatus_TEMPORARY_FAILURE,
  VerificationStatus'
  #-}
