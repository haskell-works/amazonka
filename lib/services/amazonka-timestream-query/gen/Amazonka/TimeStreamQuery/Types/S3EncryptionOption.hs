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
-- Module      : Amazonka.TimeStreamQuery.Types.S3EncryptionOption
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.TimeStreamQuery.Types.S3EncryptionOption
  ( S3EncryptionOption
      ( ..,
        S3EncryptionOption_SSE_KMS,
        S3EncryptionOption_SSE_S3
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype S3EncryptionOption = S3EncryptionOption'
  { fromS3EncryptionOption ::
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

pattern S3EncryptionOption_SSE_KMS :: S3EncryptionOption
pattern S3EncryptionOption_SSE_KMS = S3EncryptionOption' "SSE_KMS"

pattern S3EncryptionOption_SSE_S3 :: S3EncryptionOption
pattern S3EncryptionOption_SSE_S3 = S3EncryptionOption' "SSE_S3"

{-# COMPLETE
  S3EncryptionOption_SSE_KMS,
  S3EncryptionOption_SSE_S3,
  S3EncryptionOption'
  #-}
