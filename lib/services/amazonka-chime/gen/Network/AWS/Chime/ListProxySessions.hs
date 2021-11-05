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
-- Module      : Network.AWS.Chime.ListProxySessions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the proxy sessions for the specified Amazon Chime Voice Connector.
module Network.AWS.Chime.ListProxySessions
  ( -- * Creating a Request
    ListProxySessions (..),
    newListProxySessions,

    -- * Request Lenses
    listProxySessions_status,
    listProxySessions_nextToken,
    listProxySessions_maxResults,
    listProxySessions_voiceConnectorId,

    -- * Destructuring the Response
    ListProxySessionsResponse (..),
    newListProxySessionsResponse,

    -- * Response Lenses
    listProxySessionsResponse_nextToken,
    listProxySessionsResponse_proxySessions,
    listProxySessionsResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListProxySessions' smart constructor.
data ListProxySessions = ListProxySessions'
  { -- | The proxy session status.
    status :: Prelude.Maybe ProxySessionStatus,
    -- | The token to use to retrieve the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return in a single call.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The Amazon Chime voice connector ID.
    voiceConnectorId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListProxySessions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'listProxySessions_status' - The proxy session status.
--
-- 'nextToken', 'listProxySessions_nextToken' - The token to use to retrieve the next page of results.
--
-- 'maxResults', 'listProxySessions_maxResults' - The maximum number of results to return in a single call.
--
-- 'voiceConnectorId', 'listProxySessions_voiceConnectorId' - The Amazon Chime voice connector ID.
newListProxySessions ::
  -- | 'voiceConnectorId'
  Prelude.Text ->
  ListProxySessions
newListProxySessions pVoiceConnectorId_ =
  ListProxySessions'
    { status = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      voiceConnectorId = pVoiceConnectorId_
    }

-- | The proxy session status.
listProxySessions_status :: Lens.Lens' ListProxySessions (Prelude.Maybe ProxySessionStatus)
listProxySessions_status = Lens.lens (\ListProxySessions' {status} -> status) (\s@ListProxySessions' {} a -> s {status = a} :: ListProxySessions)

-- | The token to use to retrieve the next page of results.
listProxySessions_nextToken :: Lens.Lens' ListProxySessions (Prelude.Maybe Prelude.Text)
listProxySessions_nextToken = Lens.lens (\ListProxySessions' {nextToken} -> nextToken) (\s@ListProxySessions' {} a -> s {nextToken = a} :: ListProxySessions)

-- | The maximum number of results to return in a single call.
listProxySessions_maxResults :: Lens.Lens' ListProxySessions (Prelude.Maybe Prelude.Natural)
listProxySessions_maxResults = Lens.lens (\ListProxySessions' {maxResults} -> maxResults) (\s@ListProxySessions' {} a -> s {maxResults = a} :: ListProxySessions)

-- | The Amazon Chime voice connector ID.
listProxySessions_voiceConnectorId :: Lens.Lens' ListProxySessions Prelude.Text
listProxySessions_voiceConnectorId = Lens.lens (\ListProxySessions' {voiceConnectorId} -> voiceConnectorId) (\s@ListProxySessions' {} a -> s {voiceConnectorId = a} :: ListProxySessions)

instance Core.AWSRequest ListProxySessions where
  type
    AWSResponse ListProxySessions =
      ListProxySessionsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListProxySessionsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "ProxySessions" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListProxySessions

instance Prelude.NFData ListProxySessions

instance Core.ToHeaders ListProxySessions where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListProxySessions where
  toPath ListProxySessions' {..} =
    Prelude.mconcat
      [ "/voice-connectors/",
        Core.toBS voiceConnectorId,
        "/proxy-sessions"
      ]

instance Core.ToQuery ListProxySessions where
  toQuery ListProxySessions' {..} =
    Prelude.mconcat
      [ "status" Core.=: status,
        "next-token" Core.=: nextToken,
        "max-results" Core.=: maxResults
      ]

-- | /See:/ 'newListProxySessionsResponse' smart constructor.
data ListProxySessionsResponse = ListProxySessionsResponse'
  { -- | The token to use to retrieve the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The proxy session details.
    proxySessions :: Prelude.Maybe [ProxySession],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListProxySessionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listProxySessionsResponse_nextToken' - The token to use to retrieve the next page of results.
--
-- 'proxySessions', 'listProxySessionsResponse_proxySessions' - The proxy session details.
--
-- 'httpStatus', 'listProxySessionsResponse_httpStatus' - The response's http status code.
newListProxySessionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListProxySessionsResponse
newListProxySessionsResponse pHttpStatus_ =
  ListProxySessionsResponse'
    { nextToken =
        Prelude.Nothing,
      proxySessions = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to use to retrieve the next page of results.
listProxySessionsResponse_nextToken :: Lens.Lens' ListProxySessionsResponse (Prelude.Maybe Prelude.Text)
listProxySessionsResponse_nextToken = Lens.lens (\ListProxySessionsResponse' {nextToken} -> nextToken) (\s@ListProxySessionsResponse' {} a -> s {nextToken = a} :: ListProxySessionsResponse)

-- | The proxy session details.
listProxySessionsResponse_proxySessions :: Lens.Lens' ListProxySessionsResponse (Prelude.Maybe [ProxySession])
listProxySessionsResponse_proxySessions = Lens.lens (\ListProxySessionsResponse' {proxySessions} -> proxySessions) (\s@ListProxySessionsResponse' {} a -> s {proxySessions = a} :: ListProxySessionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listProxySessionsResponse_httpStatus :: Lens.Lens' ListProxySessionsResponse Prelude.Int
listProxySessionsResponse_httpStatus = Lens.lens (\ListProxySessionsResponse' {httpStatus} -> httpStatus) (\s@ListProxySessionsResponse' {} a -> s {httpStatus = a} :: ListProxySessionsResponse)

instance Prelude.NFData ListProxySessionsResponse