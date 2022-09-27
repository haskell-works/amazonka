{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.DrS.UpdateLaunchConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a LaunchConfiguration by Source Server ID.
module Amazonka.DrS.UpdateLaunchConfiguration
  ( -- * Creating a Request
    UpdateLaunchConfiguration (..),
    newUpdateLaunchConfiguration,

    -- * Request Lenses
    updateLaunchConfiguration_name,
    updateLaunchConfiguration_targetInstanceTypeRightSizingMethod,
    updateLaunchConfiguration_copyTags,
    updateLaunchConfiguration_launchDisposition,
    updateLaunchConfiguration_licensing,
    updateLaunchConfiguration_copyPrivateIp,
    updateLaunchConfiguration_sourceServerID,

    -- * Destructuring the Response
    LaunchConfiguration (..),
    newLaunchConfiguration,

    -- * Response Lenses
    launchConfiguration_name,
    launchConfiguration_targetInstanceTypeRightSizingMethod,
    launchConfiguration_copyTags,
    launchConfiguration_launchDisposition,
    launchConfiguration_ec2LaunchTemplateID,
    launchConfiguration_sourceServerID,
    launchConfiguration_licensing,
    launchConfiguration_copyPrivateIp,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DrS.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateLaunchConfiguration' smart constructor.
data UpdateLaunchConfiguration = UpdateLaunchConfiguration'
  { -- | The name of the launch configuration.
    name :: Prelude.Maybe Prelude.Text,
    -- | Whether Elastic Disaster Recovery should try to automatically choose the
    -- instance type that best matches the OS, CPU, and RAM of your Source
    -- Server.
    targetInstanceTypeRightSizingMethod :: Prelude.Maybe TargetInstanceTypeRightSizingMethod,
    -- | Whether we want to copy the tags of the Source Server to the EC2 machine
    -- of the Recovery Instance.
    copyTags :: Prelude.Maybe Prelude.Bool,
    -- | The state of the Recovery Instance in EC2 after the recovery operation.
    launchDisposition :: Prelude.Maybe LaunchDisposition,
    -- | The licensing configuration to be used for this launch configuration.
    licensing :: Prelude.Maybe Licensing,
    -- | Whether we should copy the Private IP of the Source Server to the
    -- Recovery Instance.
    copyPrivateIp :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the Source Server that we want to retrieve a Launch
    -- Configuration for.
    sourceServerID :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLaunchConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateLaunchConfiguration_name' - The name of the launch configuration.
--
-- 'targetInstanceTypeRightSizingMethod', 'updateLaunchConfiguration_targetInstanceTypeRightSizingMethod' - Whether Elastic Disaster Recovery should try to automatically choose the
-- instance type that best matches the OS, CPU, and RAM of your Source
-- Server.
--
-- 'copyTags', 'updateLaunchConfiguration_copyTags' - Whether we want to copy the tags of the Source Server to the EC2 machine
-- of the Recovery Instance.
--
-- 'launchDisposition', 'updateLaunchConfiguration_launchDisposition' - The state of the Recovery Instance in EC2 after the recovery operation.
--
-- 'licensing', 'updateLaunchConfiguration_licensing' - The licensing configuration to be used for this launch configuration.
--
-- 'copyPrivateIp', 'updateLaunchConfiguration_copyPrivateIp' - Whether we should copy the Private IP of the Source Server to the
-- Recovery Instance.
--
-- 'sourceServerID', 'updateLaunchConfiguration_sourceServerID' - The ID of the Source Server that we want to retrieve a Launch
-- Configuration for.
newUpdateLaunchConfiguration ::
  -- | 'sourceServerID'
  Prelude.Text ->
  UpdateLaunchConfiguration
newUpdateLaunchConfiguration pSourceServerID_ =
  UpdateLaunchConfiguration'
    { name = Prelude.Nothing,
      targetInstanceTypeRightSizingMethod =
        Prelude.Nothing,
      copyTags = Prelude.Nothing,
      launchDisposition = Prelude.Nothing,
      licensing = Prelude.Nothing,
      copyPrivateIp = Prelude.Nothing,
      sourceServerID = pSourceServerID_
    }

-- | The name of the launch configuration.
updateLaunchConfiguration_name :: Lens.Lens' UpdateLaunchConfiguration (Prelude.Maybe Prelude.Text)
updateLaunchConfiguration_name = Lens.lens (\UpdateLaunchConfiguration' {name} -> name) (\s@UpdateLaunchConfiguration' {} a -> s {name = a} :: UpdateLaunchConfiguration)

-- | Whether Elastic Disaster Recovery should try to automatically choose the
-- instance type that best matches the OS, CPU, and RAM of your Source
-- Server.
updateLaunchConfiguration_targetInstanceTypeRightSizingMethod :: Lens.Lens' UpdateLaunchConfiguration (Prelude.Maybe TargetInstanceTypeRightSizingMethod)
updateLaunchConfiguration_targetInstanceTypeRightSizingMethod = Lens.lens (\UpdateLaunchConfiguration' {targetInstanceTypeRightSizingMethod} -> targetInstanceTypeRightSizingMethod) (\s@UpdateLaunchConfiguration' {} a -> s {targetInstanceTypeRightSizingMethod = a} :: UpdateLaunchConfiguration)

-- | Whether we want to copy the tags of the Source Server to the EC2 machine
-- of the Recovery Instance.
updateLaunchConfiguration_copyTags :: Lens.Lens' UpdateLaunchConfiguration (Prelude.Maybe Prelude.Bool)
updateLaunchConfiguration_copyTags = Lens.lens (\UpdateLaunchConfiguration' {copyTags} -> copyTags) (\s@UpdateLaunchConfiguration' {} a -> s {copyTags = a} :: UpdateLaunchConfiguration)

-- | The state of the Recovery Instance in EC2 after the recovery operation.
updateLaunchConfiguration_launchDisposition :: Lens.Lens' UpdateLaunchConfiguration (Prelude.Maybe LaunchDisposition)
updateLaunchConfiguration_launchDisposition = Lens.lens (\UpdateLaunchConfiguration' {launchDisposition} -> launchDisposition) (\s@UpdateLaunchConfiguration' {} a -> s {launchDisposition = a} :: UpdateLaunchConfiguration)

-- | The licensing configuration to be used for this launch configuration.
updateLaunchConfiguration_licensing :: Lens.Lens' UpdateLaunchConfiguration (Prelude.Maybe Licensing)
updateLaunchConfiguration_licensing = Lens.lens (\UpdateLaunchConfiguration' {licensing} -> licensing) (\s@UpdateLaunchConfiguration' {} a -> s {licensing = a} :: UpdateLaunchConfiguration)

-- | Whether we should copy the Private IP of the Source Server to the
-- Recovery Instance.
updateLaunchConfiguration_copyPrivateIp :: Lens.Lens' UpdateLaunchConfiguration (Prelude.Maybe Prelude.Bool)
updateLaunchConfiguration_copyPrivateIp = Lens.lens (\UpdateLaunchConfiguration' {copyPrivateIp} -> copyPrivateIp) (\s@UpdateLaunchConfiguration' {} a -> s {copyPrivateIp = a} :: UpdateLaunchConfiguration)

-- | The ID of the Source Server that we want to retrieve a Launch
-- Configuration for.
updateLaunchConfiguration_sourceServerID :: Lens.Lens' UpdateLaunchConfiguration Prelude.Text
updateLaunchConfiguration_sourceServerID = Lens.lens (\UpdateLaunchConfiguration' {sourceServerID} -> sourceServerID) (\s@UpdateLaunchConfiguration' {} a -> s {sourceServerID = a} :: UpdateLaunchConfiguration)

instance Core.AWSRequest UpdateLaunchConfiguration where
  type
    AWSResponse UpdateLaunchConfiguration =
      LaunchConfiguration
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable UpdateLaunchConfiguration where
  hashWithSalt _salt UpdateLaunchConfiguration' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` targetInstanceTypeRightSizingMethod
      `Prelude.hashWithSalt` copyTags
      `Prelude.hashWithSalt` launchDisposition
      `Prelude.hashWithSalt` licensing
      `Prelude.hashWithSalt` copyPrivateIp
      `Prelude.hashWithSalt` sourceServerID

instance Prelude.NFData UpdateLaunchConfiguration where
  rnf UpdateLaunchConfiguration' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf targetInstanceTypeRightSizingMethod
      `Prelude.seq` Prelude.rnf copyTags
      `Prelude.seq` Prelude.rnf launchDisposition
      `Prelude.seq` Prelude.rnf licensing
      `Prelude.seq` Prelude.rnf copyPrivateIp
      `Prelude.seq` Prelude.rnf sourceServerID

instance Core.ToHeaders UpdateLaunchConfiguration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateLaunchConfiguration where
  toJSON UpdateLaunchConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("name" Core..=) Prelude.<$> name,
            ("targetInstanceTypeRightSizingMethod" Core..=)
              Prelude.<$> targetInstanceTypeRightSizingMethod,
            ("copyTags" Core..=) Prelude.<$> copyTags,
            ("launchDisposition" Core..=)
              Prelude.<$> launchDisposition,
            ("licensing" Core..=) Prelude.<$> licensing,
            ("copyPrivateIp" Core..=) Prelude.<$> copyPrivateIp,
            Prelude.Just
              ("sourceServerID" Core..= sourceServerID)
          ]
      )

instance Core.ToPath UpdateLaunchConfiguration where
  toPath = Prelude.const "/UpdateLaunchConfiguration"

instance Core.ToQuery UpdateLaunchConfiguration where
  toQuery = Prelude.const Prelude.mempty
