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
-- Module      : Amazonka.OpenSearch.Types.EBSOptions
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.OpenSearch.Types.EBSOptions where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.OpenSearch.Types.VolumeType
import qualified Amazonka.Prelude as Prelude

-- | Container for the parameters required to enable EBS-based storage for an
-- OpenSearch Service domain.
--
-- /See:/ 'newEBSOptions' smart constructor.
data EBSOptions = EBSOptions'
  { -- | Specifies the type of EBS volumes attached to data nodes.
    volumeType :: Prelude.Maybe VolumeType,
    -- | Specifies the size (in GiB) of EBS volumes attached to data nodes.
    volumeSize :: Prelude.Maybe Prelude.Int,
    -- | Specifies the throughput (in MiB\/s) of the EBS volumes attached to data
    -- nodes. Applicable only for the @gp3@ volume type.
    throughput :: Prelude.Maybe Prelude.Int,
    -- | Indicates whether EBS volumes are attached to data nodes in an
    -- OpenSearch Service domain.
    eBSEnabled :: Prelude.Maybe Prelude.Bool,
    -- | Specifies the baseline input\/output (I\/O) performance of EBS volumes
    -- attached to data nodes. Applicable only for the @gp3@ and provisioned
    -- IOPS EBS volume types.
    iops :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EBSOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'volumeType', 'eBSOptions_volumeType' - Specifies the type of EBS volumes attached to data nodes.
--
-- 'volumeSize', 'eBSOptions_volumeSize' - Specifies the size (in GiB) of EBS volumes attached to data nodes.
--
-- 'throughput', 'eBSOptions_throughput' - Specifies the throughput (in MiB\/s) of the EBS volumes attached to data
-- nodes. Applicable only for the @gp3@ volume type.
--
-- 'eBSEnabled', 'eBSOptions_eBSEnabled' - Indicates whether EBS volumes are attached to data nodes in an
-- OpenSearch Service domain.
--
-- 'iops', 'eBSOptions_iops' - Specifies the baseline input\/output (I\/O) performance of EBS volumes
-- attached to data nodes. Applicable only for the @gp3@ and provisioned
-- IOPS EBS volume types.
newEBSOptions ::
  EBSOptions
newEBSOptions =
  EBSOptions'
    { volumeType = Prelude.Nothing,
      volumeSize = Prelude.Nothing,
      throughput = Prelude.Nothing,
      eBSEnabled = Prelude.Nothing,
      iops = Prelude.Nothing
    }

-- | Specifies the type of EBS volumes attached to data nodes.
eBSOptions_volumeType :: Lens.Lens' EBSOptions (Prelude.Maybe VolumeType)
eBSOptions_volumeType = Lens.lens (\EBSOptions' {volumeType} -> volumeType) (\s@EBSOptions' {} a -> s {volumeType = a} :: EBSOptions)

-- | Specifies the size (in GiB) of EBS volumes attached to data nodes.
eBSOptions_volumeSize :: Lens.Lens' EBSOptions (Prelude.Maybe Prelude.Int)
eBSOptions_volumeSize = Lens.lens (\EBSOptions' {volumeSize} -> volumeSize) (\s@EBSOptions' {} a -> s {volumeSize = a} :: EBSOptions)

-- | Specifies the throughput (in MiB\/s) of the EBS volumes attached to data
-- nodes. Applicable only for the @gp3@ volume type.
eBSOptions_throughput :: Lens.Lens' EBSOptions (Prelude.Maybe Prelude.Int)
eBSOptions_throughput = Lens.lens (\EBSOptions' {throughput} -> throughput) (\s@EBSOptions' {} a -> s {throughput = a} :: EBSOptions)

-- | Indicates whether EBS volumes are attached to data nodes in an
-- OpenSearch Service domain.
eBSOptions_eBSEnabled :: Lens.Lens' EBSOptions (Prelude.Maybe Prelude.Bool)
eBSOptions_eBSEnabled = Lens.lens (\EBSOptions' {eBSEnabled} -> eBSEnabled) (\s@EBSOptions' {} a -> s {eBSEnabled = a} :: EBSOptions)

-- | Specifies the baseline input\/output (I\/O) performance of EBS volumes
-- attached to data nodes. Applicable only for the @gp3@ and provisioned
-- IOPS EBS volume types.
eBSOptions_iops :: Lens.Lens' EBSOptions (Prelude.Maybe Prelude.Int)
eBSOptions_iops = Lens.lens (\EBSOptions' {iops} -> iops) (\s@EBSOptions' {} a -> s {iops = a} :: EBSOptions)

instance Core.FromJSON EBSOptions where
  parseJSON =
    Core.withObject
      "EBSOptions"
      ( \x ->
          EBSOptions'
            Prelude.<$> (x Core..:? "VolumeType")
            Prelude.<*> (x Core..:? "VolumeSize")
            Prelude.<*> (x Core..:? "Throughput")
            Prelude.<*> (x Core..:? "EBSEnabled")
            Prelude.<*> (x Core..:? "Iops")
      )

instance Prelude.Hashable EBSOptions where
  hashWithSalt _salt EBSOptions' {..} =
    _salt `Prelude.hashWithSalt` volumeType
      `Prelude.hashWithSalt` volumeSize
      `Prelude.hashWithSalt` throughput
      `Prelude.hashWithSalt` eBSEnabled
      `Prelude.hashWithSalt` iops

instance Prelude.NFData EBSOptions where
  rnf EBSOptions' {..} =
    Prelude.rnf volumeType
      `Prelude.seq` Prelude.rnf volumeSize
      `Prelude.seq` Prelude.rnf throughput
      `Prelude.seq` Prelude.rnf eBSEnabled
      `Prelude.seq` Prelude.rnf iops

instance Core.ToJSON EBSOptions where
  toJSON EBSOptions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("VolumeType" Core..=) Prelude.<$> volumeType,
            ("VolumeSize" Core..=) Prelude.<$> volumeSize,
            ("Throughput" Core..=) Prelude.<$> throughput,
            ("EBSEnabled" Core..=) Prelude.<$> eBSEnabled,
            ("Iops" Core..=) Prelude.<$> iops
          ]
      )
