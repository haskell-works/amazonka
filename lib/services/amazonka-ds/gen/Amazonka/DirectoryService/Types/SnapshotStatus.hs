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
-- Module      : Amazonka.DirectoryService.Types.SnapshotStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DirectoryService.Types.SnapshotStatus
  ( SnapshotStatus
      ( ..,
        SnapshotStatus_Completed,
        SnapshotStatus_Creating,
        SnapshotStatus_Failed
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype SnapshotStatus = SnapshotStatus'
  { fromSnapshotStatus ::
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

pattern SnapshotStatus_Completed :: SnapshotStatus
pattern SnapshotStatus_Completed = SnapshotStatus' "Completed"

pattern SnapshotStatus_Creating :: SnapshotStatus
pattern SnapshotStatus_Creating = SnapshotStatus' "Creating"

pattern SnapshotStatus_Failed :: SnapshotStatus
pattern SnapshotStatus_Failed = SnapshotStatus' "Failed"

{-# COMPLETE
  SnapshotStatus_Completed,
  SnapshotStatus_Creating,
  SnapshotStatus_Failed,
  SnapshotStatus'
  #-}
