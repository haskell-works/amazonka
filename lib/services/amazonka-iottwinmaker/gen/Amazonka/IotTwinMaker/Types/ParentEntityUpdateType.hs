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
-- Module      : Amazonka.IotTwinMaker.Types.ParentEntityUpdateType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IotTwinMaker.Types.ParentEntityUpdateType
  ( ParentEntityUpdateType
      ( ..,
        ParentEntityUpdateType_DELETE,
        ParentEntityUpdateType_UPDATE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ParentEntityUpdateType = ParentEntityUpdateType'
  { fromParentEntityUpdateType ::
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

pattern ParentEntityUpdateType_DELETE :: ParentEntityUpdateType
pattern ParentEntityUpdateType_DELETE = ParentEntityUpdateType' "DELETE"

pattern ParentEntityUpdateType_UPDATE :: ParentEntityUpdateType
pattern ParentEntityUpdateType_UPDATE = ParentEntityUpdateType' "UPDATE"

{-# COMPLETE
  ParentEntityUpdateType_DELETE,
  ParentEntityUpdateType_UPDATE,
  ParentEntityUpdateType'
  #-}
