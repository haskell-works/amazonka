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
-- Module      : Amazonka.IoTWireless.Types.DownlinkMode
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTWireless.Types.DownlinkMode
  ( DownlinkMode
      ( ..,
        DownlinkMode_CONCURRENT,
        DownlinkMode_SEQUENTIAL,
        DownlinkMode_USING_UPLINK_GATEWAY
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype DownlinkMode = DownlinkMode'
  { fromDownlinkMode ::
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

pattern DownlinkMode_CONCURRENT :: DownlinkMode
pattern DownlinkMode_CONCURRENT = DownlinkMode' "CONCURRENT"

pattern DownlinkMode_SEQUENTIAL :: DownlinkMode
pattern DownlinkMode_SEQUENTIAL = DownlinkMode' "SEQUENTIAL"

pattern DownlinkMode_USING_UPLINK_GATEWAY :: DownlinkMode
pattern DownlinkMode_USING_UPLINK_GATEWAY = DownlinkMode' "USING_UPLINK_GATEWAY"

{-# COMPLETE
  DownlinkMode_CONCURRENT,
  DownlinkMode_SEQUENTIAL,
  DownlinkMode_USING_UPLINK_GATEWAY,
  DownlinkMode'
  #-}
