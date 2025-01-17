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
-- Module      : Amazonka.ServiceCatalogAppRegistry.Types.AppRegistryConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ServiceCatalogAppRegistry.Types.AppRegistryConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.ServiceCatalogAppRegistry.Types.TagQueryConfiguration

-- | Includes all of the Service Catalog AppRegistry settings.
--
-- /See:/ 'newAppRegistryConfiguration' smart constructor.
data AppRegistryConfiguration = AppRegistryConfiguration'
  { -- | Includes the definition of a @tagQuery@.
    tagQueryConfiguration :: Prelude.Maybe TagQueryConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AppRegistryConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tagQueryConfiguration', 'appRegistryConfiguration_tagQueryConfiguration' - Includes the definition of a @tagQuery@.
newAppRegistryConfiguration ::
  AppRegistryConfiguration
newAppRegistryConfiguration =
  AppRegistryConfiguration'
    { tagQueryConfiguration =
        Prelude.Nothing
    }

-- | Includes the definition of a @tagQuery@.
appRegistryConfiguration_tagQueryConfiguration :: Lens.Lens' AppRegistryConfiguration (Prelude.Maybe TagQueryConfiguration)
appRegistryConfiguration_tagQueryConfiguration = Lens.lens (\AppRegistryConfiguration' {tagQueryConfiguration} -> tagQueryConfiguration) (\s@AppRegistryConfiguration' {} a -> s {tagQueryConfiguration = a} :: AppRegistryConfiguration)

instance Core.FromJSON AppRegistryConfiguration where
  parseJSON =
    Core.withObject
      "AppRegistryConfiguration"
      ( \x ->
          AppRegistryConfiguration'
            Prelude.<$> (x Core..:? "tagQueryConfiguration")
      )

instance Prelude.Hashable AppRegistryConfiguration where
  hashWithSalt _salt AppRegistryConfiguration' {..} =
    _salt `Prelude.hashWithSalt` tagQueryConfiguration

instance Prelude.NFData AppRegistryConfiguration where
  rnf AppRegistryConfiguration' {..} =
    Prelude.rnf tagQueryConfiguration

instance Core.ToJSON AppRegistryConfiguration where
  toJSON AppRegistryConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tagQueryConfiguration" Core..=)
              Prelude.<$> tagQueryConfiguration
          ]
      )
