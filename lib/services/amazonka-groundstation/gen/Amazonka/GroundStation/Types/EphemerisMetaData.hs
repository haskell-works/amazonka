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
-- Module      : Amazonka.GroundStation.Types.EphemerisMetaData
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.GroundStation.Types.EphemerisMetaData where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.GroundStation.Types.EphemerisSource
import qualified Amazonka.Prelude as Prelude

-- | Metadata describing a particular ephemeris.
--
-- /See:/ 'newEphemerisMetaData' smart constructor.
data EphemerisMetaData = EphemerisMetaData'
  { -- | A name string associated with the ephemeris. Used as a human-readable
    -- identifier for the ephemeris.
    --
    -- A name is only returned for customer-provider ephemerides that have a
    -- name associated.
    name :: Prelude.Maybe Prelude.Text,
    -- | The epoch of a default, ephemeris from Space Track in UTC.
    --
    -- This field is not populated for customer-provided ephemerides.
    epoch :: Prelude.Maybe Core.POSIX,
    -- | UUID of a customer-provided ephemeris.
    --
    -- This field is not populated for default ephemerides from Space Track.
    ephemerisId :: Prelude.Maybe Prelude.Text,
    -- | The @EphemerisSource@ that generated a given ephemeris.
    source :: EphemerisSource
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EphemerisMetaData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'ephemerisMetaData_name' - A name string associated with the ephemeris. Used as a human-readable
-- identifier for the ephemeris.
--
-- A name is only returned for customer-provider ephemerides that have a
-- name associated.
--
-- 'epoch', 'ephemerisMetaData_epoch' - The epoch of a default, ephemeris from Space Track in UTC.
--
-- This field is not populated for customer-provided ephemerides.
--
-- 'ephemerisId', 'ephemerisMetaData_ephemerisId' - UUID of a customer-provided ephemeris.
--
-- This field is not populated for default ephemerides from Space Track.
--
-- 'source', 'ephemerisMetaData_source' - The @EphemerisSource@ that generated a given ephemeris.
newEphemerisMetaData ::
  -- | 'source'
  EphemerisSource ->
  EphemerisMetaData
newEphemerisMetaData pSource_ =
  EphemerisMetaData'
    { name = Prelude.Nothing,
      epoch = Prelude.Nothing,
      ephemerisId = Prelude.Nothing,
      source = pSource_
    }

-- | A name string associated with the ephemeris. Used as a human-readable
-- identifier for the ephemeris.
--
-- A name is only returned for customer-provider ephemerides that have a
-- name associated.
ephemerisMetaData_name :: Lens.Lens' EphemerisMetaData (Prelude.Maybe Prelude.Text)
ephemerisMetaData_name = Lens.lens (\EphemerisMetaData' {name} -> name) (\s@EphemerisMetaData' {} a -> s {name = a} :: EphemerisMetaData)

-- | The epoch of a default, ephemeris from Space Track in UTC.
--
-- This field is not populated for customer-provided ephemerides.
ephemerisMetaData_epoch :: Lens.Lens' EphemerisMetaData (Prelude.Maybe Prelude.UTCTime)
ephemerisMetaData_epoch = Lens.lens (\EphemerisMetaData' {epoch} -> epoch) (\s@EphemerisMetaData' {} a -> s {epoch = a} :: EphemerisMetaData) Prelude.. Lens.mapping Core._Time

-- | UUID of a customer-provided ephemeris.
--
-- This field is not populated for default ephemerides from Space Track.
ephemerisMetaData_ephemerisId :: Lens.Lens' EphemerisMetaData (Prelude.Maybe Prelude.Text)
ephemerisMetaData_ephemerisId = Lens.lens (\EphemerisMetaData' {ephemerisId} -> ephemerisId) (\s@EphemerisMetaData' {} a -> s {ephemerisId = a} :: EphemerisMetaData)

-- | The @EphemerisSource@ that generated a given ephemeris.
ephemerisMetaData_source :: Lens.Lens' EphemerisMetaData EphemerisSource
ephemerisMetaData_source = Lens.lens (\EphemerisMetaData' {source} -> source) (\s@EphemerisMetaData' {} a -> s {source = a} :: EphemerisMetaData)

instance Core.FromJSON EphemerisMetaData where
  parseJSON =
    Core.withObject
      "EphemerisMetaData"
      ( \x ->
          EphemerisMetaData'
            Prelude.<$> (x Core..:? "name")
            Prelude.<*> (x Core..:? "epoch")
            Prelude.<*> (x Core..:? "ephemerisId")
            Prelude.<*> (x Core..: "source")
      )

instance Prelude.Hashable EphemerisMetaData where
  hashWithSalt _salt EphemerisMetaData' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` epoch
      `Prelude.hashWithSalt` ephemerisId
      `Prelude.hashWithSalt` source

instance Prelude.NFData EphemerisMetaData where
  rnf EphemerisMetaData' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf epoch
      `Prelude.seq` Prelude.rnf ephemerisId
      `Prelude.seq` Prelude.rnf source
