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
-- Module      : Amazonka.DeviceFarm.Types.CustomerArtifactPaths
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DeviceFarm.Types.CustomerArtifactPaths where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A JSON object that specifies the paths where the artifacts generated by
-- the customer\'s tests, on the device or in the test environment, are
-- pulled from.
--
-- Specify @deviceHostPaths@ and optionally specify either @iosPaths@ or
-- @androidPaths@.
--
-- For web app tests, you can specify both @iosPaths@ and @androidPaths@.
--
-- /See:/ 'newCustomerArtifactPaths' smart constructor.
data CustomerArtifactPaths = CustomerArtifactPaths'
  { -- | Comma-separated list of paths on the Android device where the artifacts
    -- generated by the customer\'s tests are pulled from.
    androidPaths :: Prelude.Maybe [Prelude.Text],
    -- | Comma-separated list of paths in the test execution environment where
    -- the artifacts generated by the customer\'s tests are pulled from.
    deviceHostPaths :: Prelude.Maybe [Prelude.Text],
    -- | Comma-separated list of paths on the iOS device where the artifacts
    -- generated by the customer\'s tests are pulled from.
    iosPaths :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CustomerArtifactPaths' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'androidPaths', 'customerArtifactPaths_androidPaths' - Comma-separated list of paths on the Android device where the artifacts
-- generated by the customer\'s tests are pulled from.
--
-- 'deviceHostPaths', 'customerArtifactPaths_deviceHostPaths' - Comma-separated list of paths in the test execution environment where
-- the artifacts generated by the customer\'s tests are pulled from.
--
-- 'iosPaths', 'customerArtifactPaths_iosPaths' - Comma-separated list of paths on the iOS device where the artifacts
-- generated by the customer\'s tests are pulled from.
newCustomerArtifactPaths ::
  CustomerArtifactPaths
newCustomerArtifactPaths =
  CustomerArtifactPaths'
    { androidPaths =
        Prelude.Nothing,
      deviceHostPaths = Prelude.Nothing,
      iosPaths = Prelude.Nothing
    }

-- | Comma-separated list of paths on the Android device where the artifacts
-- generated by the customer\'s tests are pulled from.
customerArtifactPaths_androidPaths :: Lens.Lens' CustomerArtifactPaths (Prelude.Maybe [Prelude.Text])
customerArtifactPaths_androidPaths = Lens.lens (\CustomerArtifactPaths' {androidPaths} -> androidPaths) (\s@CustomerArtifactPaths' {} a -> s {androidPaths = a} :: CustomerArtifactPaths) Prelude.. Lens.mapping Lens.coerced

-- | Comma-separated list of paths in the test execution environment where
-- the artifacts generated by the customer\'s tests are pulled from.
customerArtifactPaths_deviceHostPaths :: Lens.Lens' CustomerArtifactPaths (Prelude.Maybe [Prelude.Text])
customerArtifactPaths_deviceHostPaths = Lens.lens (\CustomerArtifactPaths' {deviceHostPaths} -> deviceHostPaths) (\s@CustomerArtifactPaths' {} a -> s {deviceHostPaths = a} :: CustomerArtifactPaths) Prelude.. Lens.mapping Lens.coerced

-- | Comma-separated list of paths on the iOS device where the artifacts
-- generated by the customer\'s tests are pulled from.
customerArtifactPaths_iosPaths :: Lens.Lens' CustomerArtifactPaths (Prelude.Maybe [Prelude.Text])
customerArtifactPaths_iosPaths = Lens.lens (\CustomerArtifactPaths' {iosPaths} -> iosPaths) (\s@CustomerArtifactPaths' {} a -> s {iosPaths = a} :: CustomerArtifactPaths) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON CustomerArtifactPaths where
  parseJSON =
    Core.withObject
      "CustomerArtifactPaths"
      ( \x ->
          CustomerArtifactPaths'
            Prelude.<$> (x Core..:? "androidPaths" Core..!= Prelude.mempty)
            Prelude.<*> ( x Core..:? "deviceHostPaths"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "iosPaths" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable CustomerArtifactPaths where
  hashWithSalt _salt CustomerArtifactPaths' {..} =
    _salt `Prelude.hashWithSalt` androidPaths
      `Prelude.hashWithSalt` deviceHostPaths
      `Prelude.hashWithSalt` iosPaths

instance Prelude.NFData CustomerArtifactPaths where
  rnf CustomerArtifactPaths' {..} =
    Prelude.rnf androidPaths
      `Prelude.seq` Prelude.rnf deviceHostPaths
      `Prelude.seq` Prelude.rnf iosPaths

instance Core.ToJSON CustomerArtifactPaths where
  toJSON CustomerArtifactPaths' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("androidPaths" Core..=) Prelude.<$> androidPaths,
            ("deviceHostPaths" Core..=)
              Prelude.<$> deviceHostPaths,
            ("iosPaths" Core..=) Prelude.<$> iosPaths
          ]
      )