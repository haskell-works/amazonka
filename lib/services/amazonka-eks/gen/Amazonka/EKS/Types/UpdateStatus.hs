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
-- Module      : Amazonka.EKS.Types.UpdateStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EKS.Types.UpdateStatus
  ( UpdateStatus
      ( ..,
        UpdateStatus_Cancelled,
        UpdateStatus_Failed,
        UpdateStatus_InProgress,
        UpdateStatus_Successful
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype UpdateStatus = UpdateStatus'
  { fromUpdateStatus ::
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

pattern UpdateStatus_Cancelled :: UpdateStatus
pattern UpdateStatus_Cancelled = UpdateStatus' "Cancelled"

pattern UpdateStatus_Failed :: UpdateStatus
pattern UpdateStatus_Failed = UpdateStatus' "Failed"

pattern UpdateStatus_InProgress :: UpdateStatus
pattern UpdateStatus_InProgress = UpdateStatus' "InProgress"

pattern UpdateStatus_Successful :: UpdateStatus
pattern UpdateStatus_Successful = UpdateStatus' "Successful"

{-# COMPLETE
  UpdateStatus_Cancelled,
  UpdateStatus_Failed,
  UpdateStatus_InProgress,
  UpdateStatus_Successful,
  UpdateStatus'
  #-}
