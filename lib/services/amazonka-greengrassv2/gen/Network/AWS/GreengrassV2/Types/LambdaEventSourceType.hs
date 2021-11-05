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
-- Module      : Amazonka.GreengrassV2.Types.LambdaEventSourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.GreengrassV2.Types.LambdaEventSourceType
  ( LambdaEventSourceType
      ( ..,
        LambdaEventSourceType_IOT_CORE,
        LambdaEventSourceType_PUB_SUB
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype LambdaEventSourceType = LambdaEventSourceType'
  { fromLambdaEventSourceType ::
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

pattern LambdaEventSourceType_IOT_CORE :: LambdaEventSourceType
pattern LambdaEventSourceType_IOT_CORE = LambdaEventSourceType' "IOT_CORE"

pattern LambdaEventSourceType_PUB_SUB :: LambdaEventSourceType
pattern LambdaEventSourceType_PUB_SUB = LambdaEventSourceType' "PUB_SUB"

{-# COMPLETE
  LambdaEventSourceType_IOT_CORE,
  LambdaEventSourceType_PUB_SUB,
  LambdaEventSourceType'
  #-}
