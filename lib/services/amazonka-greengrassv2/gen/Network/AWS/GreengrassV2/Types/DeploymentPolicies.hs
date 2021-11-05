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
-- Module      : Network.AWS.GreengrassV2.Types.DeploymentPolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GreengrassV2.Types.DeploymentPolicies where

import qualified Network.AWS.Core as Core
import Network.AWS.GreengrassV2.Types.DeploymentComponentUpdatePolicy
import Network.AWS.GreengrassV2.Types.DeploymentConfigurationValidationPolicy
import Network.AWS.GreengrassV2.Types.DeploymentFailureHandlingPolicy
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about policies that define how a deployment updates
-- components and handles failure.
--
-- /See:/ 'newDeploymentPolicies' smart constructor.
data DeploymentPolicies = DeploymentPolicies'
  { -- | The failure handling policy for the configuration deployment. This
    -- policy defines what to do if the deployment fails.
    --
    -- Default: @ROLLBACK@
    failureHandlingPolicy :: Prelude.Maybe DeploymentFailureHandlingPolicy,
    -- | The configuration validation policy for the configuration deployment.
    -- This policy defines how long each component has to validate its
    -- configure updates.
    configurationValidationPolicy :: Prelude.Maybe DeploymentConfigurationValidationPolicy,
    -- | The component update policy for the configuration deployment. This
    -- policy defines when it\'s safe to deploy the configuration to devices.
    componentUpdatePolicy :: Prelude.Maybe DeploymentComponentUpdatePolicy
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeploymentPolicies' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'failureHandlingPolicy', 'deploymentPolicies_failureHandlingPolicy' - The failure handling policy for the configuration deployment. This
-- policy defines what to do if the deployment fails.
--
-- Default: @ROLLBACK@
--
-- 'configurationValidationPolicy', 'deploymentPolicies_configurationValidationPolicy' - The configuration validation policy for the configuration deployment.
-- This policy defines how long each component has to validate its
-- configure updates.
--
-- 'componentUpdatePolicy', 'deploymentPolicies_componentUpdatePolicy' - The component update policy for the configuration deployment. This
-- policy defines when it\'s safe to deploy the configuration to devices.
newDeploymentPolicies ::
  DeploymentPolicies
newDeploymentPolicies =
  DeploymentPolicies'
    { failureHandlingPolicy =
        Prelude.Nothing,
      configurationValidationPolicy = Prelude.Nothing,
      componentUpdatePolicy = Prelude.Nothing
    }

-- | The failure handling policy for the configuration deployment. This
-- policy defines what to do if the deployment fails.
--
-- Default: @ROLLBACK@
deploymentPolicies_failureHandlingPolicy :: Lens.Lens' DeploymentPolicies (Prelude.Maybe DeploymentFailureHandlingPolicy)
deploymentPolicies_failureHandlingPolicy = Lens.lens (\DeploymentPolicies' {failureHandlingPolicy} -> failureHandlingPolicy) (\s@DeploymentPolicies' {} a -> s {failureHandlingPolicy = a} :: DeploymentPolicies)

-- | The configuration validation policy for the configuration deployment.
-- This policy defines how long each component has to validate its
-- configure updates.
deploymentPolicies_configurationValidationPolicy :: Lens.Lens' DeploymentPolicies (Prelude.Maybe DeploymentConfigurationValidationPolicy)
deploymentPolicies_configurationValidationPolicy = Lens.lens (\DeploymentPolicies' {configurationValidationPolicy} -> configurationValidationPolicy) (\s@DeploymentPolicies' {} a -> s {configurationValidationPolicy = a} :: DeploymentPolicies)

-- | The component update policy for the configuration deployment. This
-- policy defines when it\'s safe to deploy the configuration to devices.
deploymentPolicies_componentUpdatePolicy :: Lens.Lens' DeploymentPolicies (Prelude.Maybe DeploymentComponentUpdatePolicy)
deploymentPolicies_componentUpdatePolicy = Lens.lens (\DeploymentPolicies' {componentUpdatePolicy} -> componentUpdatePolicy) (\s@DeploymentPolicies' {} a -> s {componentUpdatePolicy = a} :: DeploymentPolicies)

instance Core.FromJSON DeploymentPolicies where
  parseJSON =
    Core.withObject
      "DeploymentPolicies"
      ( \x ->
          DeploymentPolicies'
            Prelude.<$> (x Core..:? "failureHandlingPolicy")
            Prelude.<*> (x Core..:? "configurationValidationPolicy")
            Prelude.<*> (x Core..:? "componentUpdatePolicy")
      )

instance Prelude.Hashable DeploymentPolicies

instance Prelude.NFData DeploymentPolicies

instance Core.ToJSON DeploymentPolicies where
  toJSON DeploymentPolicies' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("failureHandlingPolicy" Core..=)
              Prelude.<$> failureHandlingPolicy,
            ("configurationValidationPolicy" Core..=)
              Prelude.<$> configurationValidationPolicy,
            ("componentUpdatePolicy" Core..=)
              Prelude.<$> componentUpdatePolicy
          ]
      )