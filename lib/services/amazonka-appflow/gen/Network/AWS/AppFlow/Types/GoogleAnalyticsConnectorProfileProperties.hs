{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppFlow.Types.GoogleAnalyticsConnectorProfileProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.GoogleAnalyticsConnectorProfileProperties where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The connector-specific profile properties required by Google Analytics.
--
-- /See:/ 'newGoogleAnalyticsConnectorProfileProperties' smart constructor.
data GoogleAnalyticsConnectorProfileProperties = GoogleAnalyticsConnectorProfileProperties'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GoogleAnalyticsConnectorProfileProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newGoogleAnalyticsConnectorProfileProperties ::
  GoogleAnalyticsConnectorProfileProperties
newGoogleAnalyticsConnectorProfileProperties =
  GoogleAnalyticsConnectorProfileProperties'

instance
  Core.FromJSON
    GoogleAnalyticsConnectorProfileProperties
  where
  parseJSON =
    Core.withObject
      "GoogleAnalyticsConnectorProfileProperties"
      ( \x ->
          Prelude.pure
            GoogleAnalyticsConnectorProfileProperties'
      )

instance
  Prelude.Hashable
    GoogleAnalyticsConnectorProfileProperties

instance
  Prelude.NFData
    GoogleAnalyticsConnectorProfileProperties

instance
  Core.ToJSON
    GoogleAnalyticsConnectorProfileProperties
  where
  toJSON = Prelude.const (Core.Object Prelude.mempty)