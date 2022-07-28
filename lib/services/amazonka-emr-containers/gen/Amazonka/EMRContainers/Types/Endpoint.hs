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
-- Module      : Amazonka.EMRContainers.Types.Endpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EMRContainers.Types.Endpoint where

import qualified Amazonka.Core as Core
import Amazonka.EMRContainers.Types.ConfigurationOverrides
import Amazonka.EMRContainers.Types.EndpointState
import Amazonka.EMRContainers.Types.FailureReason
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | This entity represents the endpoint that is managed by Amazon EMR on
-- EKS.
--
-- /See:/ 'newEndpoint' smart constructor.
data Endpoint = Endpoint'
  { -- | The tags of the endpoint.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the endpoint.
    name :: Prelude.Maybe Prelude.Text,
    -- | The type of the endpoint.
    type' :: Prelude.Maybe Prelude.Text,
    -- | Additional details of the endpoint state.
    stateDetails :: Prelude.Maybe Prelude.Text,
    -- | The security group configuration of the endpoint.
    securityGroup :: Prelude.Maybe Prelude.Text,
    -- | The EMR release version to be used for the endpoint.
    releaseLabel :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the endpoint.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The state of the endpoint.
    state :: Prelude.Maybe EndpointState,
    -- | The server URL of the endpoint.
    serverUrl :: Prelude.Maybe Prelude.Text,
    -- | The ID of the endpoint.
    id :: Prelude.Maybe Prelude.Text,
    -- | The certificate ARN of the endpoint.
    certificateArn :: Prelude.Maybe Prelude.Text,
    -- | The configuration settings that are used to override existing
    -- configurations for endpoints.
    configurationOverrides :: Prelude.Maybe ConfigurationOverrides,
    -- | The ID of the endpoint\'s virtual cluster.
    virtualClusterId :: Prelude.Maybe Prelude.Text,
    -- | The execution role ARN of the endpoint.
    executionRoleArn :: Prelude.Maybe Prelude.Text,
    -- | The subnet IDs of the endpoint.
    subnetIds :: Prelude.Maybe [Prelude.Text],
    -- | The date and time when the endpoint was created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The reasons why the endpoint has failed.
    failureReason :: Prelude.Maybe FailureReason
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Endpoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'endpoint_tags' - The tags of the endpoint.
--
-- 'name', 'endpoint_name' - The name of the endpoint.
--
-- 'type'', 'endpoint_type' - The type of the endpoint.
--
-- 'stateDetails', 'endpoint_stateDetails' - Additional details of the endpoint state.
--
-- 'securityGroup', 'endpoint_securityGroup' - The security group configuration of the endpoint.
--
-- 'releaseLabel', 'endpoint_releaseLabel' - The EMR release version to be used for the endpoint.
--
-- 'arn', 'endpoint_arn' - The ARN of the endpoint.
--
-- 'state', 'endpoint_state' - The state of the endpoint.
--
-- 'serverUrl', 'endpoint_serverUrl' - The server URL of the endpoint.
--
-- 'id', 'endpoint_id' - The ID of the endpoint.
--
-- 'certificateArn', 'endpoint_certificateArn' - The certificate ARN of the endpoint.
--
-- 'configurationOverrides', 'endpoint_configurationOverrides' - The configuration settings that are used to override existing
-- configurations for endpoints.
--
-- 'virtualClusterId', 'endpoint_virtualClusterId' - The ID of the endpoint\'s virtual cluster.
--
-- 'executionRoleArn', 'endpoint_executionRoleArn' - The execution role ARN of the endpoint.
--
-- 'subnetIds', 'endpoint_subnetIds' - The subnet IDs of the endpoint.
--
-- 'createdAt', 'endpoint_createdAt' - The date and time when the endpoint was created.
--
-- 'failureReason', 'endpoint_failureReason' - The reasons why the endpoint has failed.
newEndpoint ::
  Endpoint
newEndpoint =
  Endpoint'
    { tags = Prelude.Nothing,
      name = Prelude.Nothing,
      type' = Prelude.Nothing,
      stateDetails = Prelude.Nothing,
      securityGroup = Prelude.Nothing,
      releaseLabel = Prelude.Nothing,
      arn = Prelude.Nothing,
      state = Prelude.Nothing,
      serverUrl = Prelude.Nothing,
      id = Prelude.Nothing,
      certificateArn = Prelude.Nothing,
      configurationOverrides = Prelude.Nothing,
      virtualClusterId = Prelude.Nothing,
      executionRoleArn = Prelude.Nothing,
      subnetIds = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      failureReason = Prelude.Nothing
    }

-- | The tags of the endpoint.
endpoint_tags :: Lens.Lens' Endpoint (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
endpoint_tags = Lens.lens (\Endpoint' {tags} -> tags) (\s@Endpoint' {} a -> s {tags = a} :: Endpoint) Prelude.. Lens.mapping Lens.coerced

-- | The name of the endpoint.
endpoint_name :: Lens.Lens' Endpoint (Prelude.Maybe Prelude.Text)
endpoint_name = Lens.lens (\Endpoint' {name} -> name) (\s@Endpoint' {} a -> s {name = a} :: Endpoint)

-- | The type of the endpoint.
endpoint_type :: Lens.Lens' Endpoint (Prelude.Maybe Prelude.Text)
endpoint_type = Lens.lens (\Endpoint' {type'} -> type') (\s@Endpoint' {} a -> s {type' = a} :: Endpoint)

-- | Additional details of the endpoint state.
endpoint_stateDetails :: Lens.Lens' Endpoint (Prelude.Maybe Prelude.Text)
endpoint_stateDetails = Lens.lens (\Endpoint' {stateDetails} -> stateDetails) (\s@Endpoint' {} a -> s {stateDetails = a} :: Endpoint)

-- | The security group configuration of the endpoint.
endpoint_securityGroup :: Lens.Lens' Endpoint (Prelude.Maybe Prelude.Text)
endpoint_securityGroup = Lens.lens (\Endpoint' {securityGroup} -> securityGroup) (\s@Endpoint' {} a -> s {securityGroup = a} :: Endpoint)

-- | The EMR release version to be used for the endpoint.
endpoint_releaseLabel :: Lens.Lens' Endpoint (Prelude.Maybe Prelude.Text)
endpoint_releaseLabel = Lens.lens (\Endpoint' {releaseLabel} -> releaseLabel) (\s@Endpoint' {} a -> s {releaseLabel = a} :: Endpoint)

-- | The ARN of the endpoint.
endpoint_arn :: Lens.Lens' Endpoint (Prelude.Maybe Prelude.Text)
endpoint_arn = Lens.lens (\Endpoint' {arn} -> arn) (\s@Endpoint' {} a -> s {arn = a} :: Endpoint)

-- | The state of the endpoint.
endpoint_state :: Lens.Lens' Endpoint (Prelude.Maybe EndpointState)
endpoint_state = Lens.lens (\Endpoint' {state} -> state) (\s@Endpoint' {} a -> s {state = a} :: Endpoint)

-- | The server URL of the endpoint.
endpoint_serverUrl :: Lens.Lens' Endpoint (Prelude.Maybe Prelude.Text)
endpoint_serverUrl = Lens.lens (\Endpoint' {serverUrl} -> serverUrl) (\s@Endpoint' {} a -> s {serverUrl = a} :: Endpoint)

-- | The ID of the endpoint.
endpoint_id :: Lens.Lens' Endpoint (Prelude.Maybe Prelude.Text)
endpoint_id = Lens.lens (\Endpoint' {id} -> id) (\s@Endpoint' {} a -> s {id = a} :: Endpoint)

-- | The certificate ARN of the endpoint.
endpoint_certificateArn :: Lens.Lens' Endpoint (Prelude.Maybe Prelude.Text)
endpoint_certificateArn = Lens.lens (\Endpoint' {certificateArn} -> certificateArn) (\s@Endpoint' {} a -> s {certificateArn = a} :: Endpoint)

-- | The configuration settings that are used to override existing
-- configurations for endpoints.
endpoint_configurationOverrides :: Lens.Lens' Endpoint (Prelude.Maybe ConfigurationOverrides)
endpoint_configurationOverrides = Lens.lens (\Endpoint' {configurationOverrides} -> configurationOverrides) (\s@Endpoint' {} a -> s {configurationOverrides = a} :: Endpoint)

-- | The ID of the endpoint\'s virtual cluster.
endpoint_virtualClusterId :: Lens.Lens' Endpoint (Prelude.Maybe Prelude.Text)
endpoint_virtualClusterId = Lens.lens (\Endpoint' {virtualClusterId} -> virtualClusterId) (\s@Endpoint' {} a -> s {virtualClusterId = a} :: Endpoint)

-- | The execution role ARN of the endpoint.
endpoint_executionRoleArn :: Lens.Lens' Endpoint (Prelude.Maybe Prelude.Text)
endpoint_executionRoleArn = Lens.lens (\Endpoint' {executionRoleArn} -> executionRoleArn) (\s@Endpoint' {} a -> s {executionRoleArn = a} :: Endpoint)

-- | The subnet IDs of the endpoint.
endpoint_subnetIds :: Lens.Lens' Endpoint (Prelude.Maybe [Prelude.Text])
endpoint_subnetIds = Lens.lens (\Endpoint' {subnetIds} -> subnetIds) (\s@Endpoint' {} a -> s {subnetIds = a} :: Endpoint) Prelude.. Lens.mapping Lens.coerced

-- | The date and time when the endpoint was created.
endpoint_createdAt :: Lens.Lens' Endpoint (Prelude.Maybe Prelude.UTCTime)
endpoint_createdAt = Lens.lens (\Endpoint' {createdAt} -> createdAt) (\s@Endpoint' {} a -> s {createdAt = a} :: Endpoint) Prelude.. Lens.mapping Core._Time

-- | The reasons why the endpoint has failed.
endpoint_failureReason :: Lens.Lens' Endpoint (Prelude.Maybe FailureReason)
endpoint_failureReason = Lens.lens (\Endpoint' {failureReason} -> failureReason) (\s@Endpoint' {} a -> s {failureReason = a} :: Endpoint)

instance Core.FromJSON Endpoint where
  parseJSON =
    Core.withObject
      "Endpoint"
      ( \x ->
          Endpoint'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "type")
            Prelude.<*> (x Core..:? "stateDetails")
            Prelude.<*> (x Core..:? "securityGroup")
            Prelude.<*> (x Core..:? "releaseLabel")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "state")
            Prelude.<*> (x Core..:? "serverUrl")
            Prelude.<*> (x Core..:? "id")
            Prelude.<*> (x Core..:? "certificateArn")
            Prelude.<*> (x Core..:? "configurationOverrides")
            Prelude.<*> (x Core..:? "virtualClusterId")
            Prelude.<*> (x Core..:? "executionRoleArn")
            Prelude.<*> (x Core..:? "subnetIds" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "createdAt")
            Prelude.<*> (x Core..:? "failureReason")
      )

instance Prelude.Hashable Endpoint where
  hashWithSalt _salt Endpoint' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` stateDetails
      `Prelude.hashWithSalt` securityGroup
      `Prelude.hashWithSalt` releaseLabel
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` serverUrl
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` certificateArn
      `Prelude.hashWithSalt` configurationOverrides
      `Prelude.hashWithSalt` virtualClusterId
      `Prelude.hashWithSalt` executionRoleArn
      `Prelude.hashWithSalt` subnetIds
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` failureReason

instance Prelude.NFData Endpoint where
  rnf Endpoint' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf stateDetails
      `Prelude.seq` Prelude.rnf securityGroup
      `Prelude.seq` Prelude.rnf releaseLabel
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf serverUrl
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf certificateArn
      `Prelude.seq` Prelude.rnf configurationOverrides
      `Prelude.seq` Prelude.rnf virtualClusterId
      `Prelude.seq` Prelude.rnf executionRoleArn
      `Prelude.seq` Prelude.rnf subnetIds
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf failureReason