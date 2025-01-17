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
-- Module      : Amazonka.SSMSAP.Types.HostRole
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSMSAP.Types.HostRole
  ( HostRole
      ( ..,
        HostRole_LEADER,
        HostRole_STANDBY,
        HostRole_UNKNOWN,
        HostRole_WORKER
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype HostRole = HostRole'
  { fromHostRole ::
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

pattern HostRole_LEADER :: HostRole
pattern HostRole_LEADER = HostRole' "LEADER"

pattern HostRole_STANDBY :: HostRole
pattern HostRole_STANDBY = HostRole' "STANDBY"

pattern HostRole_UNKNOWN :: HostRole
pattern HostRole_UNKNOWN = HostRole' "UNKNOWN"

pattern HostRole_WORKER :: HostRole
pattern HostRole_WORKER = HostRole' "WORKER"

{-# COMPLETE
  HostRole_LEADER,
  HostRole_STANDBY,
  HostRole_UNKNOWN,
  HostRole_WORKER,
  HostRole'
  #-}
