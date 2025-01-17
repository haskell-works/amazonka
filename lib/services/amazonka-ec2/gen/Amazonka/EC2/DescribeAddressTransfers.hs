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
-- Module      : Amazonka.EC2.DescribeAddressTransfers
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes an Elastic IP address transfer. For more information, see
-- <https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#transfer-EIPs-intro Transfer Elastic IP addresses>
-- in the /Amazon Virtual Private Cloud User Guide/.
--
-- This operation returns paginated results.
module Amazonka.EC2.DescribeAddressTransfers
  ( -- * Creating a Request
    DescribeAddressTransfers (..),
    newDescribeAddressTransfers,

    -- * Request Lenses
    describeAddressTransfers_allocationIds,
    describeAddressTransfers_nextToken,
    describeAddressTransfers_dryRun,
    describeAddressTransfers_maxResults,

    -- * Destructuring the Response
    DescribeAddressTransfersResponse (..),
    newDescribeAddressTransfersResponse,

    -- * Response Lenses
    describeAddressTransfersResponse_nextToken,
    describeAddressTransfersResponse_addressTransfers,
    describeAddressTransfersResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.EC2.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeAddressTransfers' smart constructor.
data DescribeAddressTransfers = DescribeAddressTransfers'
  { -- | The allocation IDs of Elastic IP addresses.
    allocationIds :: Prelude.Maybe [Prelude.Text],
    -- | Specify the pagination token from a previous request to retrieve the
    -- next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The maximum number of address transfers to return in one page of
    -- results.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAddressTransfers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'allocationIds', 'describeAddressTransfers_allocationIds' - The allocation IDs of Elastic IP addresses.
--
-- 'nextToken', 'describeAddressTransfers_nextToken' - Specify the pagination token from a previous request to retrieve the
-- next page of results.
--
-- 'dryRun', 'describeAddressTransfers_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'maxResults', 'describeAddressTransfers_maxResults' - The maximum number of address transfers to return in one page of
-- results.
newDescribeAddressTransfers ::
  DescribeAddressTransfers
newDescribeAddressTransfers =
  DescribeAddressTransfers'
    { allocationIds =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The allocation IDs of Elastic IP addresses.
describeAddressTransfers_allocationIds :: Lens.Lens' DescribeAddressTransfers (Prelude.Maybe [Prelude.Text])
describeAddressTransfers_allocationIds = Lens.lens (\DescribeAddressTransfers' {allocationIds} -> allocationIds) (\s@DescribeAddressTransfers' {} a -> s {allocationIds = a} :: DescribeAddressTransfers) Prelude.. Lens.mapping Lens.coerced

-- | Specify the pagination token from a previous request to retrieve the
-- next page of results.
describeAddressTransfers_nextToken :: Lens.Lens' DescribeAddressTransfers (Prelude.Maybe Prelude.Text)
describeAddressTransfers_nextToken = Lens.lens (\DescribeAddressTransfers' {nextToken} -> nextToken) (\s@DescribeAddressTransfers' {} a -> s {nextToken = a} :: DescribeAddressTransfers)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
describeAddressTransfers_dryRun :: Lens.Lens' DescribeAddressTransfers (Prelude.Maybe Prelude.Bool)
describeAddressTransfers_dryRun = Lens.lens (\DescribeAddressTransfers' {dryRun} -> dryRun) (\s@DescribeAddressTransfers' {} a -> s {dryRun = a} :: DescribeAddressTransfers)

-- | The maximum number of address transfers to return in one page of
-- results.
describeAddressTransfers_maxResults :: Lens.Lens' DescribeAddressTransfers (Prelude.Maybe Prelude.Natural)
describeAddressTransfers_maxResults = Lens.lens (\DescribeAddressTransfers' {maxResults} -> maxResults) (\s@DescribeAddressTransfers' {} a -> s {maxResults = a} :: DescribeAddressTransfers)

instance Core.AWSPager DescribeAddressTransfers where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeAddressTransfersResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeAddressTransfersResponse_addressTransfers
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeAddressTransfers_nextToken
          Lens..~ rs
          Lens.^? describeAddressTransfersResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeAddressTransfers where
  type
    AWSResponse DescribeAddressTransfers =
      DescribeAddressTransfersResponse
  request overrides =
    Request.postQuery (overrides defaultService)
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeAddressTransfersResponse'
            Prelude.<$> (x Core..@? "nextToken")
            Prelude.<*> ( x Core..@? "addressTransferSet"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeAddressTransfers where
  hashWithSalt _salt DescribeAddressTransfers' {..} =
    _salt `Prelude.hashWithSalt` allocationIds
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData DescribeAddressTransfers where
  rnf DescribeAddressTransfers' {..} =
    Prelude.rnf allocationIds
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders DescribeAddressTransfers where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeAddressTransfers where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeAddressTransfers where
  toQuery DescribeAddressTransfers' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeAddressTransfers" :: Prelude.ByteString),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        Core.toQuery
          ( Core.toQueryList "AllocationId"
              Prelude.<$> allocationIds
          ),
        "NextToken" Core.=: nextToken,
        "DryRun" Core.=: dryRun,
        "MaxResults" Core.=: maxResults
      ]

-- | /See:/ 'newDescribeAddressTransfersResponse' smart constructor.
data DescribeAddressTransfersResponse = DescribeAddressTransfersResponse'
  { -- | Specify the pagination token from a previous request to retrieve the
    -- next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The Elastic IP address transfer.
    addressTransfers :: Prelude.Maybe [AddressTransfer],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAddressTransfersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeAddressTransfersResponse_nextToken' - Specify the pagination token from a previous request to retrieve the
-- next page of results.
--
-- 'addressTransfers', 'describeAddressTransfersResponse_addressTransfers' - The Elastic IP address transfer.
--
-- 'httpStatus', 'describeAddressTransfersResponse_httpStatus' - The response's http status code.
newDescribeAddressTransfersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeAddressTransfersResponse
newDescribeAddressTransfersResponse pHttpStatus_ =
  DescribeAddressTransfersResponse'
    { nextToken =
        Prelude.Nothing,
      addressTransfers = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Specify the pagination token from a previous request to retrieve the
-- next page of results.
describeAddressTransfersResponse_nextToken :: Lens.Lens' DescribeAddressTransfersResponse (Prelude.Maybe Prelude.Text)
describeAddressTransfersResponse_nextToken = Lens.lens (\DescribeAddressTransfersResponse' {nextToken} -> nextToken) (\s@DescribeAddressTransfersResponse' {} a -> s {nextToken = a} :: DescribeAddressTransfersResponse)

-- | The Elastic IP address transfer.
describeAddressTransfersResponse_addressTransfers :: Lens.Lens' DescribeAddressTransfersResponse (Prelude.Maybe [AddressTransfer])
describeAddressTransfersResponse_addressTransfers = Lens.lens (\DescribeAddressTransfersResponse' {addressTransfers} -> addressTransfers) (\s@DescribeAddressTransfersResponse' {} a -> s {addressTransfers = a} :: DescribeAddressTransfersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeAddressTransfersResponse_httpStatus :: Lens.Lens' DescribeAddressTransfersResponse Prelude.Int
describeAddressTransfersResponse_httpStatus = Lens.lens (\DescribeAddressTransfersResponse' {httpStatus} -> httpStatus) (\s@DescribeAddressTransfersResponse' {} a -> s {httpStatus = a} :: DescribeAddressTransfersResponse)

instance
  Prelude.NFData
    DescribeAddressTransfersResponse
  where
  rnf DescribeAddressTransfersResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf addressTransfers
      `Prelude.seq` Prelude.rnf httpStatus
