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
-- Module      : Amazonka.ImageBuilder.Types.Distribution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ImageBuilder.Types.Distribution where

import qualified Amazonka.Core as Core
import Amazonka.ImageBuilder.Types.AmiDistributionConfiguration
import Amazonka.ImageBuilder.Types.ContainerDistributionConfiguration
import Amazonka.ImageBuilder.Types.LaunchTemplateConfiguration
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Defines the settings for a specific Region.
--
-- /See:/ 'newDistribution' smart constructor.
data Distribution = Distribution'
  { -- | The specific AMI settings; for example, launch permissions or AMI tags.
    amiDistributionConfiguration :: Prelude.Maybe AmiDistributionConfiguration,
    -- | The License Manager Configuration to associate with the AMI in the
    -- specified Region.
    licenseConfigurationArns :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | A group of launchTemplateConfiguration settings that apply to image
    -- distribution for specified accounts.
    launchTemplateConfigurations :: Prelude.Maybe (Prelude.NonEmpty LaunchTemplateConfiguration),
    -- | Container distribution settings for encryption, licensing, and sharing
    -- in a specific Region.
    containerDistributionConfiguration :: Prelude.Maybe ContainerDistributionConfiguration,
    -- | The target Region.
    region :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Distribution' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'amiDistributionConfiguration', 'distribution_amiDistributionConfiguration' - The specific AMI settings; for example, launch permissions or AMI tags.
--
-- 'licenseConfigurationArns', 'distribution_licenseConfigurationArns' - The License Manager Configuration to associate with the AMI in the
-- specified Region.
--
-- 'launchTemplateConfigurations', 'distribution_launchTemplateConfigurations' - A group of launchTemplateConfiguration settings that apply to image
-- distribution for specified accounts.
--
-- 'containerDistributionConfiguration', 'distribution_containerDistributionConfiguration' - Container distribution settings for encryption, licensing, and sharing
-- in a specific Region.
--
-- 'region', 'distribution_region' - The target Region.
newDistribution ::
  -- | 'region'
  Prelude.Text ->
  Distribution
newDistribution pRegion_ =
  Distribution'
    { amiDistributionConfiguration =
        Prelude.Nothing,
      licenseConfigurationArns = Prelude.Nothing,
      launchTemplateConfigurations = Prelude.Nothing,
      containerDistributionConfiguration = Prelude.Nothing,
      region = pRegion_
    }

-- | The specific AMI settings; for example, launch permissions or AMI tags.
distribution_amiDistributionConfiguration :: Lens.Lens' Distribution (Prelude.Maybe AmiDistributionConfiguration)
distribution_amiDistributionConfiguration = Lens.lens (\Distribution' {amiDistributionConfiguration} -> amiDistributionConfiguration) (\s@Distribution' {} a -> s {amiDistributionConfiguration = a} :: Distribution)

-- | The License Manager Configuration to associate with the AMI in the
-- specified Region.
distribution_licenseConfigurationArns :: Lens.Lens' Distribution (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
distribution_licenseConfigurationArns = Lens.lens (\Distribution' {licenseConfigurationArns} -> licenseConfigurationArns) (\s@Distribution' {} a -> s {licenseConfigurationArns = a} :: Distribution) Prelude.. Lens.mapping Lens.coerced

-- | A group of launchTemplateConfiguration settings that apply to image
-- distribution for specified accounts.
distribution_launchTemplateConfigurations :: Lens.Lens' Distribution (Prelude.Maybe (Prelude.NonEmpty LaunchTemplateConfiguration))
distribution_launchTemplateConfigurations = Lens.lens (\Distribution' {launchTemplateConfigurations} -> launchTemplateConfigurations) (\s@Distribution' {} a -> s {launchTemplateConfigurations = a} :: Distribution) Prelude.. Lens.mapping Lens.coerced

-- | Container distribution settings for encryption, licensing, and sharing
-- in a specific Region.
distribution_containerDistributionConfiguration :: Lens.Lens' Distribution (Prelude.Maybe ContainerDistributionConfiguration)
distribution_containerDistributionConfiguration = Lens.lens (\Distribution' {containerDistributionConfiguration} -> containerDistributionConfiguration) (\s@Distribution' {} a -> s {containerDistributionConfiguration = a} :: Distribution)

-- | The target Region.
distribution_region :: Lens.Lens' Distribution Prelude.Text
distribution_region = Lens.lens (\Distribution' {region} -> region) (\s@Distribution' {} a -> s {region = a} :: Distribution)

instance Core.FromJSON Distribution where
  parseJSON =
    Core.withObject
      "Distribution"
      ( \x ->
          Distribution'
            Prelude.<$> (x Core..:? "amiDistributionConfiguration")
            Prelude.<*> (x Core..:? "licenseConfigurationArns")
            Prelude.<*> (x Core..:? "launchTemplateConfigurations")
            Prelude.<*> (x Core..:? "containerDistributionConfiguration")
            Prelude.<*> (x Core..: "region")
      )

instance Prelude.Hashable Distribution where
  hashWithSalt _salt Distribution' {..} =
    _salt
      `Prelude.hashWithSalt` amiDistributionConfiguration
      `Prelude.hashWithSalt` licenseConfigurationArns
      `Prelude.hashWithSalt` launchTemplateConfigurations
      `Prelude.hashWithSalt` containerDistributionConfiguration
      `Prelude.hashWithSalt` region

instance Prelude.NFData Distribution where
  rnf Distribution' {..} =
    Prelude.rnf amiDistributionConfiguration
      `Prelude.seq` Prelude.rnf licenseConfigurationArns
      `Prelude.seq` Prelude.rnf launchTemplateConfigurations
      `Prelude.seq` Prelude.rnf containerDistributionConfiguration
      `Prelude.seq` Prelude.rnf region

instance Core.ToJSON Distribution where
  toJSON Distribution' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("amiDistributionConfiguration" Core..=)
              Prelude.<$> amiDistributionConfiguration,
            ("licenseConfigurationArns" Core..=)
              Prelude.<$> licenseConfigurationArns,
            ("launchTemplateConfigurations" Core..=)
              Prelude.<$> launchTemplateConfigurations,
            ("containerDistributionConfiguration" Core..=)
              Prelude.<$> containerDistributionConfiguration,
            Prelude.Just ("region" Core..= region)
          ]
      )