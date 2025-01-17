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
-- Module      : Amazonka.ResourceGroupsTagging.Types.GroupByAttribute
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ResourceGroupsTagging.Types.GroupByAttribute
  ( GroupByAttribute
      ( ..,
        GroupByAttribute_REGION,
        GroupByAttribute_RESOURCE_TYPE,
        GroupByAttribute_TARGET_ID
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype GroupByAttribute = GroupByAttribute'
  { fromGroupByAttribute ::
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

pattern GroupByAttribute_REGION :: GroupByAttribute
pattern GroupByAttribute_REGION = GroupByAttribute' "REGION"

pattern GroupByAttribute_RESOURCE_TYPE :: GroupByAttribute
pattern GroupByAttribute_RESOURCE_TYPE = GroupByAttribute' "RESOURCE_TYPE"

pattern GroupByAttribute_TARGET_ID :: GroupByAttribute
pattern GroupByAttribute_TARGET_ID = GroupByAttribute' "TARGET_ID"

{-# COMPLETE
  GroupByAttribute_REGION,
  GroupByAttribute_RESOURCE_TYPE,
  GroupByAttribute_TARGET_ID,
  GroupByAttribute'
  #-}
