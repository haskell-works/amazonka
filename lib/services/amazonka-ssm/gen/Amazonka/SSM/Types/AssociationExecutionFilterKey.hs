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
-- Module      : Amazonka.SSM.Types.AssociationExecutionFilterKey
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSM.Types.AssociationExecutionFilterKey
  ( AssociationExecutionFilterKey
      ( ..,
        AssociationExecutionFilterKey_CreatedTime,
        AssociationExecutionFilterKey_ExecutionId,
        AssociationExecutionFilterKey_Status
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype AssociationExecutionFilterKey = AssociationExecutionFilterKey'
  { fromAssociationExecutionFilterKey ::
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

pattern AssociationExecutionFilterKey_CreatedTime :: AssociationExecutionFilterKey
pattern AssociationExecutionFilterKey_CreatedTime = AssociationExecutionFilterKey' "CreatedTime"

pattern AssociationExecutionFilterKey_ExecutionId :: AssociationExecutionFilterKey
pattern AssociationExecutionFilterKey_ExecutionId = AssociationExecutionFilterKey' "ExecutionId"

pattern AssociationExecutionFilterKey_Status :: AssociationExecutionFilterKey
pattern AssociationExecutionFilterKey_Status = AssociationExecutionFilterKey' "Status"

{-# COMPLETE
  AssociationExecutionFilterKey_CreatedTime,
  AssociationExecutionFilterKey_ExecutionId,
  AssociationExecutionFilterKey_Status,
  AssociationExecutionFilterKey'
  #-}
