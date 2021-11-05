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
-- Module      : Network.AWS.GlobalAccelerator.ListCustomRoutingPortMappings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a complete mapping from the public accelerator IP address and
-- port to destination EC2 instance IP addresses and ports in the virtual
-- public cloud (VPC) subnet endpoint for a custom routing accelerator. For
-- each subnet endpoint that you add, Global Accelerator creates a new
-- static port mapping for the accelerator. The port mappings don\'t change
-- after Global Accelerator generates them, so you can retrieve and cache
-- the full mapping on your servers.
--
-- If you remove a subnet from your accelerator, Global Accelerator removes
-- (reclaims) the port mappings. If you add a subnet to your accelerator,
-- Global Accelerator creates new port mappings (the existing ones don\'t
-- change). If you add or remove EC2 instances in your subnet, the port
-- mappings don\'t change, because the mappings are created when you add
-- the subnet to Global Accelerator.
--
-- The mappings also include a flag for each destination denoting which
-- destination IP addresses and ports are allowed or denied traffic.
--
-- This operation returns paginated results.
module Network.AWS.GlobalAccelerator.ListCustomRoutingPortMappings
  ( -- * Creating a Request
    ListCustomRoutingPortMappings (..),
    newListCustomRoutingPortMappings,

    -- * Request Lenses
    listCustomRoutingPortMappings_endpointGroupArn,
    listCustomRoutingPortMappings_nextToken,
    listCustomRoutingPortMappings_maxResults,
    listCustomRoutingPortMappings_acceleratorArn,

    -- * Destructuring the Response
    ListCustomRoutingPortMappingsResponse (..),
    newListCustomRoutingPortMappingsResponse,

    -- * Response Lenses
    listCustomRoutingPortMappingsResponse_portMappings,
    listCustomRoutingPortMappingsResponse_nextToken,
    listCustomRoutingPortMappingsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GlobalAccelerator.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListCustomRoutingPortMappings' smart constructor.
data ListCustomRoutingPortMappings = ListCustomRoutingPortMappings'
  { -- | The Amazon Resource Name (ARN) of the endpoint group to list the custom
    -- routing port mappings for.
    endpointGroupArn :: Prelude.Maybe Prelude.Text,
    -- | The token for the next set of results. You receive this token from a
    -- previous call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The number of destination port mappings that you want to return with
    -- this call. The default value is 10.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The Amazon Resource Name (ARN) of the accelerator to list the custom
    -- routing port mappings for.
    acceleratorArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCustomRoutingPortMappings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'endpointGroupArn', 'listCustomRoutingPortMappings_endpointGroupArn' - The Amazon Resource Name (ARN) of the endpoint group to list the custom
-- routing port mappings for.
--
-- 'nextToken', 'listCustomRoutingPortMappings_nextToken' - The token for the next set of results. You receive this token from a
-- previous call.
--
-- 'maxResults', 'listCustomRoutingPortMappings_maxResults' - The number of destination port mappings that you want to return with
-- this call. The default value is 10.
--
-- 'acceleratorArn', 'listCustomRoutingPortMappings_acceleratorArn' - The Amazon Resource Name (ARN) of the accelerator to list the custom
-- routing port mappings for.
newListCustomRoutingPortMappings ::
  -- | 'acceleratorArn'
  Prelude.Text ->
  ListCustomRoutingPortMappings
newListCustomRoutingPortMappings pAcceleratorArn_ =
  ListCustomRoutingPortMappings'
    { endpointGroupArn =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      acceleratorArn = pAcceleratorArn_
    }

-- | The Amazon Resource Name (ARN) of the endpoint group to list the custom
-- routing port mappings for.
listCustomRoutingPortMappings_endpointGroupArn :: Lens.Lens' ListCustomRoutingPortMappings (Prelude.Maybe Prelude.Text)
listCustomRoutingPortMappings_endpointGroupArn = Lens.lens (\ListCustomRoutingPortMappings' {endpointGroupArn} -> endpointGroupArn) (\s@ListCustomRoutingPortMappings' {} a -> s {endpointGroupArn = a} :: ListCustomRoutingPortMappings)

-- | The token for the next set of results. You receive this token from a
-- previous call.
listCustomRoutingPortMappings_nextToken :: Lens.Lens' ListCustomRoutingPortMappings (Prelude.Maybe Prelude.Text)
listCustomRoutingPortMappings_nextToken = Lens.lens (\ListCustomRoutingPortMappings' {nextToken} -> nextToken) (\s@ListCustomRoutingPortMappings' {} a -> s {nextToken = a} :: ListCustomRoutingPortMappings)

-- | The number of destination port mappings that you want to return with
-- this call. The default value is 10.
listCustomRoutingPortMappings_maxResults :: Lens.Lens' ListCustomRoutingPortMappings (Prelude.Maybe Prelude.Natural)
listCustomRoutingPortMappings_maxResults = Lens.lens (\ListCustomRoutingPortMappings' {maxResults} -> maxResults) (\s@ListCustomRoutingPortMappings' {} a -> s {maxResults = a} :: ListCustomRoutingPortMappings)

-- | The Amazon Resource Name (ARN) of the accelerator to list the custom
-- routing port mappings for.
listCustomRoutingPortMappings_acceleratorArn :: Lens.Lens' ListCustomRoutingPortMappings Prelude.Text
listCustomRoutingPortMappings_acceleratorArn = Lens.lens (\ListCustomRoutingPortMappings' {acceleratorArn} -> acceleratorArn) (\s@ListCustomRoutingPortMappings' {} a -> s {acceleratorArn = a} :: ListCustomRoutingPortMappings)

instance Core.AWSPager ListCustomRoutingPortMappings where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listCustomRoutingPortMappingsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listCustomRoutingPortMappingsResponse_portMappings
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listCustomRoutingPortMappings_nextToken
          Lens..~ rs
          Lens.^? listCustomRoutingPortMappingsResponse_nextToken
            Prelude.. Lens._Just

instance
  Core.AWSRequest
    ListCustomRoutingPortMappings
  where
  type
    AWSResponse ListCustomRoutingPortMappings =
      ListCustomRoutingPortMappingsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListCustomRoutingPortMappingsResponse'
            Prelude.<$> (x Core..?> "PortMappings" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListCustomRoutingPortMappings

instance Prelude.NFData ListCustomRoutingPortMappings

instance Core.ToHeaders ListCustomRoutingPortMappings where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "GlobalAccelerator_V20180706.ListCustomRoutingPortMappings" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListCustomRoutingPortMappings where
  toJSON ListCustomRoutingPortMappings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("EndpointGroupArn" Core..=)
              Prelude.<$> endpointGroupArn,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just
              ("AcceleratorArn" Core..= acceleratorArn)
          ]
      )

instance Core.ToPath ListCustomRoutingPortMappings where
  toPath = Prelude.const "/"

instance Core.ToQuery ListCustomRoutingPortMappings where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListCustomRoutingPortMappingsResponse' smart constructor.
data ListCustomRoutingPortMappingsResponse = ListCustomRoutingPortMappingsResponse'
  { -- | The port mappings for a custom routing accelerator.
    portMappings :: Prelude.Maybe [PortMapping],
    -- | The token for the next set of results. You receive this token from a
    -- previous call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCustomRoutingPortMappingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'portMappings', 'listCustomRoutingPortMappingsResponse_portMappings' - The port mappings for a custom routing accelerator.
--
-- 'nextToken', 'listCustomRoutingPortMappingsResponse_nextToken' - The token for the next set of results. You receive this token from a
-- previous call.
--
-- 'httpStatus', 'listCustomRoutingPortMappingsResponse_httpStatus' - The response's http status code.
newListCustomRoutingPortMappingsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListCustomRoutingPortMappingsResponse
newListCustomRoutingPortMappingsResponse pHttpStatus_ =
  ListCustomRoutingPortMappingsResponse'
    { portMappings =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The port mappings for a custom routing accelerator.
listCustomRoutingPortMappingsResponse_portMappings :: Lens.Lens' ListCustomRoutingPortMappingsResponse (Prelude.Maybe [PortMapping])
listCustomRoutingPortMappingsResponse_portMappings = Lens.lens (\ListCustomRoutingPortMappingsResponse' {portMappings} -> portMappings) (\s@ListCustomRoutingPortMappingsResponse' {} a -> s {portMappings = a} :: ListCustomRoutingPortMappingsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token for the next set of results. You receive this token from a
-- previous call.
listCustomRoutingPortMappingsResponse_nextToken :: Lens.Lens' ListCustomRoutingPortMappingsResponse (Prelude.Maybe Prelude.Text)
listCustomRoutingPortMappingsResponse_nextToken = Lens.lens (\ListCustomRoutingPortMappingsResponse' {nextToken} -> nextToken) (\s@ListCustomRoutingPortMappingsResponse' {} a -> s {nextToken = a} :: ListCustomRoutingPortMappingsResponse)

-- | The response's http status code.
listCustomRoutingPortMappingsResponse_httpStatus :: Lens.Lens' ListCustomRoutingPortMappingsResponse Prelude.Int
listCustomRoutingPortMappingsResponse_httpStatus = Lens.lens (\ListCustomRoutingPortMappingsResponse' {httpStatus} -> httpStatus) (\s@ListCustomRoutingPortMappingsResponse' {} a -> s {httpStatus = a} :: ListCustomRoutingPortMappingsResponse)

instance
  Prelude.NFData
    ListCustomRoutingPortMappingsResponse