{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudHSM.Types.CloudHsmObjectState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSM.Types.CloudHsmObjectState
  ( CloudHsmObjectState
      ( ..,
        CloudHsmObjectState_DEGRADED,
        CloudHsmObjectState_READY,
        CloudHsmObjectState_UPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CloudHsmObjectState = CloudHsmObjectState'
  { fromCloudHsmObjectState ::
      Prelude.Text
  }
  deriving
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic,
      Prelude.Hashable,
      Prelude.NFData,
      Prelude.FromText,
      Prelude.ToText,
      Prelude.ToByteString,
      Prelude.ToLog,
      Prelude.ToHeader,
      Prelude.ToQuery,
      Prelude.FromJSON,
      Prelude.FromJSONKey,
      Prelude.ToJSON,
      Prelude.ToJSONKey,
      Prelude.FromXML,
      Prelude.ToXML
    )

pattern CloudHsmObjectState_DEGRADED :: CloudHsmObjectState
pattern CloudHsmObjectState_DEGRADED = CloudHsmObjectState' "DEGRADED"

pattern CloudHsmObjectState_READY :: CloudHsmObjectState
pattern CloudHsmObjectState_READY = CloudHsmObjectState' "READY"

pattern CloudHsmObjectState_UPDATING :: CloudHsmObjectState
pattern CloudHsmObjectState_UPDATING = CloudHsmObjectState' "UPDATING"

{-# COMPLETE
  CloudHsmObjectState_DEGRADED,
  CloudHsmObjectState_READY,
  CloudHsmObjectState_UPDATING,
  CloudHsmObjectState'
  #-}