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
-- Module      : Network.AWS.CodeBuild.Types.ProjectSortByType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ProjectSortByType
  ( ProjectSortByType
      ( ..,
        ProjectSortByType_CREATED_TIME,
        ProjectSortByType_LAST_MODIFIED_TIME,
        ProjectSortByType_NAME
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProjectSortByType = ProjectSortByType'
  { fromProjectSortByType ::
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

pattern ProjectSortByType_CREATED_TIME :: ProjectSortByType
pattern ProjectSortByType_CREATED_TIME = ProjectSortByType' "CREATED_TIME"

pattern ProjectSortByType_LAST_MODIFIED_TIME :: ProjectSortByType
pattern ProjectSortByType_LAST_MODIFIED_TIME = ProjectSortByType' "LAST_MODIFIED_TIME"

pattern ProjectSortByType_NAME :: ProjectSortByType
pattern ProjectSortByType_NAME = ProjectSortByType' "NAME"

{-# COMPLETE
  ProjectSortByType_CREATED_TIME,
  ProjectSortByType_LAST_MODIFIED_TIME,
  ProjectSortByType_NAME,
  ProjectSortByType'
  #-}