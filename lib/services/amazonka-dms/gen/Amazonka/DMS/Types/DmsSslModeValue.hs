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
-- Module      : Amazonka.DMS.Types.DmsSslModeValue
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DMS.Types.DmsSslModeValue
  ( DmsSslModeValue
      ( ..,
        DmsSslModeValue_None,
        DmsSslModeValue_Require,
        DmsSslModeValue_Verify_ca,
        DmsSslModeValue_Verify_full
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype DmsSslModeValue = DmsSslModeValue'
  { fromDmsSslModeValue ::
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

pattern DmsSslModeValue_None :: DmsSslModeValue
pattern DmsSslModeValue_None = DmsSslModeValue' "none"

pattern DmsSslModeValue_Require :: DmsSslModeValue
pattern DmsSslModeValue_Require = DmsSslModeValue' "require"

pattern DmsSslModeValue_Verify_ca :: DmsSslModeValue
pattern DmsSslModeValue_Verify_ca = DmsSslModeValue' "verify-ca"

pattern DmsSslModeValue_Verify_full :: DmsSslModeValue
pattern DmsSslModeValue_Verify_full = DmsSslModeValue' "verify-full"

{-# COMPLETE
  DmsSslModeValue_None,
  DmsSslModeValue_Require,
  DmsSslModeValue_Verify_ca,
  DmsSslModeValue_Verify_full,
  DmsSslModeValue'
  #-}
