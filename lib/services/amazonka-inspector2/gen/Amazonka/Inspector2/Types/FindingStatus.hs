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
-- Module      : Amazonka.Inspector2.Types.FindingStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Inspector2.Types.FindingStatus
  ( FindingStatus
      ( ..,
        FindingStatus_ACTIVE,
        FindingStatus_CLOSED,
        FindingStatus_SUPPRESSED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype FindingStatus = FindingStatus'
  { fromFindingStatus ::
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

pattern FindingStatus_ACTIVE :: FindingStatus
pattern FindingStatus_ACTIVE = FindingStatus' "ACTIVE"

pattern FindingStatus_CLOSED :: FindingStatus
pattern FindingStatus_CLOSED = FindingStatus' "CLOSED"

pattern FindingStatus_SUPPRESSED :: FindingStatus
pattern FindingStatus_SUPPRESSED = FindingStatus' "SUPPRESSED"

{-# COMPLETE
  FindingStatus_ACTIVE,
  FindingStatus_CLOSED,
  FindingStatus_SUPPRESSED,
  FindingStatus'
  #-}
