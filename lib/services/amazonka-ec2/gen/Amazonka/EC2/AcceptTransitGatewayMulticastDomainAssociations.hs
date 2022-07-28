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
-- Module      : Amazonka.EC2.AcceptTransitGatewayMulticastDomainAssociations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accepts a request to associate subnets with a transit gateway multicast
-- domain.
module Amazonka.EC2.AcceptTransitGatewayMulticastDomainAssociations
  ( -- * Creating a Request
    AcceptTransitGatewayMulticastDomainAssociations (..),
    newAcceptTransitGatewayMulticastDomainAssociations,

    -- * Request Lenses
    acceptTransitGatewayMulticastDomainAssociations_transitGatewayAttachmentId,
    acceptTransitGatewayMulticastDomainAssociations_dryRun,
    acceptTransitGatewayMulticastDomainAssociations_transitGatewayMulticastDomainId,
    acceptTransitGatewayMulticastDomainAssociations_subnetIds,

    -- * Destructuring the Response
    AcceptTransitGatewayMulticastDomainAssociationsResponse (..),
    newAcceptTransitGatewayMulticastDomainAssociationsResponse,

    -- * Response Lenses
    acceptTransitGatewayMulticastDomainAssociationsResponse_associations,
    acceptTransitGatewayMulticastDomainAssociationsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newAcceptTransitGatewayMulticastDomainAssociations' smart constructor.
data AcceptTransitGatewayMulticastDomainAssociations = AcceptTransitGatewayMulticastDomainAssociations'
  { -- | The ID of the transit gateway attachment.
    transitGatewayAttachmentId :: Prelude.Maybe Prelude.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the transit gateway multicast domain.
    transitGatewayMulticastDomainId :: Prelude.Maybe Prelude.Text,
    -- | The IDs of the subnets to associate with the transit gateway multicast
    -- domain.
    subnetIds :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AcceptTransitGatewayMulticastDomainAssociations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'transitGatewayAttachmentId', 'acceptTransitGatewayMulticastDomainAssociations_transitGatewayAttachmentId' - The ID of the transit gateway attachment.
--
-- 'dryRun', 'acceptTransitGatewayMulticastDomainAssociations_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'transitGatewayMulticastDomainId', 'acceptTransitGatewayMulticastDomainAssociations_transitGatewayMulticastDomainId' - The ID of the transit gateway multicast domain.
--
-- 'subnetIds', 'acceptTransitGatewayMulticastDomainAssociations_subnetIds' - The IDs of the subnets to associate with the transit gateway multicast
-- domain.
newAcceptTransitGatewayMulticastDomainAssociations ::
  AcceptTransitGatewayMulticastDomainAssociations
newAcceptTransitGatewayMulticastDomainAssociations =
  AcceptTransitGatewayMulticastDomainAssociations'
    { transitGatewayAttachmentId =
        Prelude.Nothing,
      dryRun = Prelude.Nothing,
      transitGatewayMulticastDomainId =
        Prelude.Nothing,
      subnetIds =
        Prelude.Nothing
    }

-- | The ID of the transit gateway attachment.
acceptTransitGatewayMulticastDomainAssociations_transitGatewayAttachmentId :: Lens.Lens' AcceptTransitGatewayMulticastDomainAssociations (Prelude.Maybe Prelude.Text)
acceptTransitGatewayMulticastDomainAssociations_transitGatewayAttachmentId = Lens.lens (\AcceptTransitGatewayMulticastDomainAssociations' {transitGatewayAttachmentId} -> transitGatewayAttachmentId) (\s@AcceptTransitGatewayMulticastDomainAssociations' {} a -> s {transitGatewayAttachmentId = a} :: AcceptTransitGatewayMulticastDomainAssociations)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
acceptTransitGatewayMulticastDomainAssociations_dryRun :: Lens.Lens' AcceptTransitGatewayMulticastDomainAssociations (Prelude.Maybe Prelude.Bool)
acceptTransitGatewayMulticastDomainAssociations_dryRun = Lens.lens (\AcceptTransitGatewayMulticastDomainAssociations' {dryRun} -> dryRun) (\s@AcceptTransitGatewayMulticastDomainAssociations' {} a -> s {dryRun = a} :: AcceptTransitGatewayMulticastDomainAssociations)

-- | The ID of the transit gateway multicast domain.
acceptTransitGatewayMulticastDomainAssociations_transitGatewayMulticastDomainId :: Lens.Lens' AcceptTransitGatewayMulticastDomainAssociations (Prelude.Maybe Prelude.Text)
acceptTransitGatewayMulticastDomainAssociations_transitGatewayMulticastDomainId = Lens.lens (\AcceptTransitGatewayMulticastDomainAssociations' {transitGatewayMulticastDomainId} -> transitGatewayMulticastDomainId) (\s@AcceptTransitGatewayMulticastDomainAssociations' {} a -> s {transitGatewayMulticastDomainId = a} :: AcceptTransitGatewayMulticastDomainAssociations)

-- | The IDs of the subnets to associate with the transit gateway multicast
-- domain.
acceptTransitGatewayMulticastDomainAssociations_subnetIds :: Lens.Lens' AcceptTransitGatewayMulticastDomainAssociations (Prelude.Maybe [Prelude.Text])
acceptTransitGatewayMulticastDomainAssociations_subnetIds = Lens.lens (\AcceptTransitGatewayMulticastDomainAssociations' {subnetIds} -> subnetIds) (\s@AcceptTransitGatewayMulticastDomainAssociations' {} a -> s {subnetIds = a} :: AcceptTransitGatewayMulticastDomainAssociations) Prelude.. Lens.mapping Lens.coerced

instance
  Core.AWSRequest
    AcceptTransitGatewayMulticastDomainAssociations
  where
  type
    AWSResponse
      AcceptTransitGatewayMulticastDomainAssociations =
      AcceptTransitGatewayMulticastDomainAssociationsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          AcceptTransitGatewayMulticastDomainAssociationsResponse'
            Prelude.<$> (x Core..@? "associations")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    AcceptTransitGatewayMulticastDomainAssociations
  where
  hashWithSalt
    _salt
    AcceptTransitGatewayMulticastDomainAssociations' {..} =
      _salt
        `Prelude.hashWithSalt` transitGatewayAttachmentId
        `Prelude.hashWithSalt` dryRun
        `Prelude.hashWithSalt` transitGatewayMulticastDomainId
        `Prelude.hashWithSalt` subnetIds

instance
  Prelude.NFData
    AcceptTransitGatewayMulticastDomainAssociations
  where
  rnf
    AcceptTransitGatewayMulticastDomainAssociations' {..} =
      Prelude.rnf transitGatewayAttachmentId
        `Prelude.seq` Prelude.rnf dryRun
        `Prelude.seq` Prelude.rnf transitGatewayMulticastDomainId
        `Prelude.seq` Prelude.rnf subnetIds

instance
  Core.ToHeaders
    AcceptTransitGatewayMulticastDomainAssociations
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    AcceptTransitGatewayMulticastDomainAssociations
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    AcceptTransitGatewayMulticastDomainAssociations
  where
  toQuery
    AcceptTransitGatewayMulticastDomainAssociations' {..} =
      Prelude.mconcat
        [ "Action"
            Core.=: ( "AcceptTransitGatewayMulticastDomainAssociations" ::
                        Prelude.ByteString
                    ),
          "Version"
            Core.=: ("2016-11-15" :: Prelude.ByteString),
          "TransitGatewayAttachmentId"
            Core.=: transitGatewayAttachmentId,
          "DryRun" Core.=: dryRun,
          "TransitGatewayMulticastDomainId"
            Core.=: transitGatewayMulticastDomainId,
          Core.toQuery
            (Core.toQueryList "SubnetIds" Prelude.<$> subnetIds)
        ]

-- | /See:/ 'newAcceptTransitGatewayMulticastDomainAssociationsResponse' smart constructor.
data AcceptTransitGatewayMulticastDomainAssociationsResponse = AcceptTransitGatewayMulticastDomainAssociationsResponse'
  { associations :: Prelude.Maybe TransitGatewayMulticastDomainAssociations,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AcceptTransitGatewayMulticastDomainAssociationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'associations', 'acceptTransitGatewayMulticastDomainAssociationsResponse_associations' - Undocumented member.
--
-- 'httpStatus', 'acceptTransitGatewayMulticastDomainAssociationsResponse_httpStatus' - The response's http status code.
newAcceptTransitGatewayMulticastDomainAssociationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AcceptTransitGatewayMulticastDomainAssociationsResponse
newAcceptTransitGatewayMulticastDomainAssociationsResponse
  pHttpStatus_ =
    AcceptTransitGatewayMulticastDomainAssociationsResponse'
      { associations =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | Undocumented member.
acceptTransitGatewayMulticastDomainAssociationsResponse_associations :: Lens.Lens' AcceptTransitGatewayMulticastDomainAssociationsResponse (Prelude.Maybe TransitGatewayMulticastDomainAssociations)
acceptTransitGatewayMulticastDomainAssociationsResponse_associations = Lens.lens (\AcceptTransitGatewayMulticastDomainAssociationsResponse' {associations} -> associations) (\s@AcceptTransitGatewayMulticastDomainAssociationsResponse' {} a -> s {associations = a} :: AcceptTransitGatewayMulticastDomainAssociationsResponse)

-- | The response's http status code.
acceptTransitGatewayMulticastDomainAssociationsResponse_httpStatus :: Lens.Lens' AcceptTransitGatewayMulticastDomainAssociationsResponse Prelude.Int
acceptTransitGatewayMulticastDomainAssociationsResponse_httpStatus = Lens.lens (\AcceptTransitGatewayMulticastDomainAssociationsResponse' {httpStatus} -> httpStatus) (\s@AcceptTransitGatewayMulticastDomainAssociationsResponse' {} a -> s {httpStatus = a} :: AcceptTransitGatewayMulticastDomainAssociationsResponse)

instance
  Prelude.NFData
    AcceptTransitGatewayMulticastDomainAssociationsResponse
  where
  rnf
    AcceptTransitGatewayMulticastDomainAssociationsResponse' {..} =
      Prelude.rnf associations
        `Prelude.seq` Prelude.rnf httpStatus