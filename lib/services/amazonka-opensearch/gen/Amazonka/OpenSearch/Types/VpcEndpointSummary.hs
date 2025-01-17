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
-- Module      : Amazonka.OpenSearch.Types.VpcEndpointSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.OpenSearch.Types.VpcEndpointSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.OpenSearch.Types.VpcEndpointStatus
import qualified Amazonka.Prelude as Prelude

-- | Summary information for an Amazon OpenSearch Service-managed VPC
-- endpoint.
--
-- /See:/ 'newVpcEndpointSummary' smart constructor.
data VpcEndpointSummary = VpcEndpointSummary'
  { -- | The creator of the endpoint.
    vpcEndpointOwner :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the domain associated with the
    -- endpoint.
    domainArn :: Prelude.Maybe Prelude.Text,
    -- | The current status of the endpoint.
    status :: Prelude.Maybe VpcEndpointStatus,
    -- | The unique identifier of the endpoint.
    vpcEndpointId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VpcEndpointSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vpcEndpointOwner', 'vpcEndpointSummary_vpcEndpointOwner' - The creator of the endpoint.
--
-- 'domainArn', 'vpcEndpointSummary_domainArn' - The Amazon Resource Name (ARN) of the domain associated with the
-- endpoint.
--
-- 'status', 'vpcEndpointSummary_status' - The current status of the endpoint.
--
-- 'vpcEndpointId', 'vpcEndpointSummary_vpcEndpointId' - The unique identifier of the endpoint.
newVpcEndpointSummary ::
  VpcEndpointSummary
newVpcEndpointSummary =
  VpcEndpointSummary'
    { vpcEndpointOwner =
        Prelude.Nothing,
      domainArn = Prelude.Nothing,
      status = Prelude.Nothing,
      vpcEndpointId = Prelude.Nothing
    }

-- | The creator of the endpoint.
vpcEndpointSummary_vpcEndpointOwner :: Lens.Lens' VpcEndpointSummary (Prelude.Maybe Prelude.Text)
vpcEndpointSummary_vpcEndpointOwner = Lens.lens (\VpcEndpointSummary' {vpcEndpointOwner} -> vpcEndpointOwner) (\s@VpcEndpointSummary' {} a -> s {vpcEndpointOwner = a} :: VpcEndpointSummary)

-- | The Amazon Resource Name (ARN) of the domain associated with the
-- endpoint.
vpcEndpointSummary_domainArn :: Lens.Lens' VpcEndpointSummary (Prelude.Maybe Prelude.Text)
vpcEndpointSummary_domainArn = Lens.lens (\VpcEndpointSummary' {domainArn} -> domainArn) (\s@VpcEndpointSummary' {} a -> s {domainArn = a} :: VpcEndpointSummary)

-- | The current status of the endpoint.
vpcEndpointSummary_status :: Lens.Lens' VpcEndpointSummary (Prelude.Maybe VpcEndpointStatus)
vpcEndpointSummary_status = Lens.lens (\VpcEndpointSummary' {status} -> status) (\s@VpcEndpointSummary' {} a -> s {status = a} :: VpcEndpointSummary)

-- | The unique identifier of the endpoint.
vpcEndpointSummary_vpcEndpointId :: Lens.Lens' VpcEndpointSummary (Prelude.Maybe Prelude.Text)
vpcEndpointSummary_vpcEndpointId = Lens.lens (\VpcEndpointSummary' {vpcEndpointId} -> vpcEndpointId) (\s@VpcEndpointSummary' {} a -> s {vpcEndpointId = a} :: VpcEndpointSummary)

instance Core.FromJSON VpcEndpointSummary where
  parseJSON =
    Core.withObject
      "VpcEndpointSummary"
      ( \x ->
          VpcEndpointSummary'
            Prelude.<$> (x Core..:? "VpcEndpointOwner")
            Prelude.<*> (x Core..:? "DomainArn")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "VpcEndpointId")
      )

instance Prelude.Hashable VpcEndpointSummary where
  hashWithSalt _salt VpcEndpointSummary' {..} =
    _salt `Prelude.hashWithSalt` vpcEndpointOwner
      `Prelude.hashWithSalt` domainArn
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` vpcEndpointId

instance Prelude.NFData VpcEndpointSummary where
  rnf VpcEndpointSummary' {..} =
    Prelude.rnf vpcEndpointOwner
      `Prelude.seq` Prelude.rnf domainArn
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf vpcEndpointId
