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
-- Module      : Amazonka.SageMaker.Types.ArtifactSourceIdType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.ArtifactSourceIdType
  ( ArtifactSourceIdType
      ( ..,
        ArtifactSourceIdType_Custom,
        ArtifactSourceIdType_MD5Hash,
        ArtifactSourceIdType_S3ETag,
        ArtifactSourceIdType_S3Version
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ArtifactSourceIdType = ArtifactSourceIdType'
  { fromArtifactSourceIdType ::
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

pattern ArtifactSourceIdType_Custom :: ArtifactSourceIdType
pattern ArtifactSourceIdType_Custom = ArtifactSourceIdType' "Custom"

pattern ArtifactSourceIdType_MD5Hash :: ArtifactSourceIdType
pattern ArtifactSourceIdType_MD5Hash = ArtifactSourceIdType' "MD5Hash"

pattern ArtifactSourceIdType_S3ETag :: ArtifactSourceIdType
pattern ArtifactSourceIdType_S3ETag = ArtifactSourceIdType' "S3ETag"

pattern ArtifactSourceIdType_S3Version :: ArtifactSourceIdType
pattern ArtifactSourceIdType_S3Version = ArtifactSourceIdType' "S3Version"

{-# COMPLETE
  ArtifactSourceIdType_Custom,
  ArtifactSourceIdType_MD5Hash,
  ArtifactSourceIdType_S3ETag,
  ArtifactSourceIdType_S3Version,
  ArtifactSourceIdType'
  #-}
