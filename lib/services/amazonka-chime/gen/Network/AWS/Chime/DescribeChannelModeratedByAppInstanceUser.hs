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
-- Module      : Network.AWS.Chime.DescribeChannelModeratedByAppInstanceUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the full details of a channel moderated by the specified
-- @AppInstanceUser@.
--
-- The @x-amz-chime-bearer@ request header is mandatory. Use the
-- @AppInstanceUserArn@ of the user that makes the API call as the value in
-- the header.
module Network.AWS.Chime.DescribeChannelModeratedByAppInstanceUser
  ( -- * Creating a Request
    DescribeChannelModeratedByAppInstanceUser (..),
    newDescribeChannelModeratedByAppInstanceUser,

    -- * Request Lenses
    describeChannelModeratedByAppInstanceUser_chimeBearer,
    describeChannelModeratedByAppInstanceUser_channelArn,
    describeChannelModeratedByAppInstanceUser_appInstanceUserArn,

    -- * Destructuring the Response
    DescribeChannelModeratedByAppInstanceUserResponse (..),
    newDescribeChannelModeratedByAppInstanceUserResponse,

    -- * Response Lenses
    describeChannelModeratedByAppInstanceUserResponse_channel,
    describeChannelModeratedByAppInstanceUserResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeChannelModeratedByAppInstanceUser' smart constructor.
data DescribeChannelModeratedByAppInstanceUser = DescribeChannelModeratedByAppInstanceUser'
  { -- | The @AppInstanceUserArn@ of the user that makes the API call.
    chimeBearer :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the moderated channel.
    channelArn :: Prelude.Text,
    -- | The ARN of the @AppInstanceUser@ in the moderated channel.
    appInstanceUserArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeChannelModeratedByAppInstanceUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'chimeBearer', 'describeChannelModeratedByAppInstanceUser_chimeBearer' - The @AppInstanceUserArn@ of the user that makes the API call.
--
-- 'channelArn', 'describeChannelModeratedByAppInstanceUser_channelArn' - The ARN of the moderated channel.
--
-- 'appInstanceUserArn', 'describeChannelModeratedByAppInstanceUser_appInstanceUserArn' - The ARN of the @AppInstanceUser@ in the moderated channel.
newDescribeChannelModeratedByAppInstanceUser ::
  -- | 'channelArn'
  Prelude.Text ->
  -- | 'appInstanceUserArn'
  Prelude.Text ->
  DescribeChannelModeratedByAppInstanceUser
newDescribeChannelModeratedByAppInstanceUser
  pChannelArn_
  pAppInstanceUserArn_ =
    DescribeChannelModeratedByAppInstanceUser'
      { chimeBearer =
          Prelude.Nothing,
        channelArn = pChannelArn_,
        appInstanceUserArn =
          pAppInstanceUserArn_
      }

-- | The @AppInstanceUserArn@ of the user that makes the API call.
describeChannelModeratedByAppInstanceUser_chimeBearer :: Lens.Lens' DescribeChannelModeratedByAppInstanceUser (Prelude.Maybe Prelude.Text)
describeChannelModeratedByAppInstanceUser_chimeBearer = Lens.lens (\DescribeChannelModeratedByAppInstanceUser' {chimeBearer} -> chimeBearer) (\s@DescribeChannelModeratedByAppInstanceUser' {} a -> s {chimeBearer = a} :: DescribeChannelModeratedByAppInstanceUser)

-- | The ARN of the moderated channel.
describeChannelModeratedByAppInstanceUser_channelArn :: Lens.Lens' DescribeChannelModeratedByAppInstanceUser Prelude.Text
describeChannelModeratedByAppInstanceUser_channelArn = Lens.lens (\DescribeChannelModeratedByAppInstanceUser' {channelArn} -> channelArn) (\s@DescribeChannelModeratedByAppInstanceUser' {} a -> s {channelArn = a} :: DescribeChannelModeratedByAppInstanceUser)

-- | The ARN of the @AppInstanceUser@ in the moderated channel.
describeChannelModeratedByAppInstanceUser_appInstanceUserArn :: Lens.Lens' DescribeChannelModeratedByAppInstanceUser Prelude.Text
describeChannelModeratedByAppInstanceUser_appInstanceUserArn = Lens.lens (\DescribeChannelModeratedByAppInstanceUser' {appInstanceUserArn} -> appInstanceUserArn) (\s@DescribeChannelModeratedByAppInstanceUser' {} a -> s {appInstanceUserArn = a} :: DescribeChannelModeratedByAppInstanceUser)

instance
  Core.AWSRequest
    DescribeChannelModeratedByAppInstanceUser
  where
  type
    AWSResponse
      DescribeChannelModeratedByAppInstanceUser =
      DescribeChannelModeratedByAppInstanceUserResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeChannelModeratedByAppInstanceUserResponse'
            Prelude.<$> (x Core..?> "Channel")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeChannelModeratedByAppInstanceUser

instance
  Prelude.NFData
    DescribeChannelModeratedByAppInstanceUser

instance
  Core.ToHeaders
    DescribeChannelModeratedByAppInstanceUser
  where
  toHeaders
    DescribeChannelModeratedByAppInstanceUser' {..} =
      Prelude.mconcat
        ["x-amz-chime-bearer" Core.=# chimeBearer]

instance
  Core.ToPath
    DescribeChannelModeratedByAppInstanceUser
  where
  toPath DescribeChannelModeratedByAppInstanceUser' {..} =
    Prelude.mconcat
      ["/channels/", Core.toBS channelArn]

instance
  Core.ToQuery
    DescribeChannelModeratedByAppInstanceUser
  where
  toQuery
    DescribeChannelModeratedByAppInstanceUser' {..} =
      Prelude.mconcat
        [ "app-instance-user-arn" Core.=: appInstanceUserArn,
          "scope=app-instance-user-moderated-channel"
        ]

-- | /See:/ 'newDescribeChannelModeratedByAppInstanceUserResponse' smart constructor.
data DescribeChannelModeratedByAppInstanceUserResponse = DescribeChannelModeratedByAppInstanceUserResponse'
  { -- | The moderated channel.
    channel :: Prelude.Maybe ChannelModeratedByAppInstanceUserSummary,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeChannelModeratedByAppInstanceUserResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'channel', 'describeChannelModeratedByAppInstanceUserResponse_channel' - The moderated channel.
--
-- 'httpStatus', 'describeChannelModeratedByAppInstanceUserResponse_httpStatus' - The response's http status code.
newDescribeChannelModeratedByAppInstanceUserResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeChannelModeratedByAppInstanceUserResponse
newDescribeChannelModeratedByAppInstanceUserResponse
  pHttpStatus_ =
    DescribeChannelModeratedByAppInstanceUserResponse'
      { channel =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | The moderated channel.
describeChannelModeratedByAppInstanceUserResponse_channel :: Lens.Lens' DescribeChannelModeratedByAppInstanceUserResponse (Prelude.Maybe ChannelModeratedByAppInstanceUserSummary)
describeChannelModeratedByAppInstanceUserResponse_channel = Lens.lens (\DescribeChannelModeratedByAppInstanceUserResponse' {channel} -> channel) (\s@DescribeChannelModeratedByAppInstanceUserResponse' {} a -> s {channel = a} :: DescribeChannelModeratedByAppInstanceUserResponse)

-- | The response's http status code.
describeChannelModeratedByAppInstanceUserResponse_httpStatus :: Lens.Lens' DescribeChannelModeratedByAppInstanceUserResponse Prelude.Int
describeChannelModeratedByAppInstanceUserResponse_httpStatus = Lens.lens (\DescribeChannelModeratedByAppInstanceUserResponse' {httpStatus} -> httpStatus) (\s@DescribeChannelModeratedByAppInstanceUserResponse' {} a -> s {httpStatus = a} :: DescribeChannelModeratedByAppInstanceUserResponse)

instance
  Prelude.NFData
    DescribeChannelModeratedByAppInstanceUserResponse