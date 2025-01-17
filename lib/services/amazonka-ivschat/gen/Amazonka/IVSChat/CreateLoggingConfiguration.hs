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
-- Module      : Amazonka.IVSChat.CreateLoggingConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a logging configuration that allows clients to store and record
-- sent messages.
module Amazonka.IVSChat.CreateLoggingConfiguration
  ( -- * Creating a Request
    CreateLoggingConfiguration (..),
    newCreateLoggingConfiguration,

    -- * Request Lenses
    createLoggingConfiguration_tags,
    createLoggingConfiguration_name,
    createLoggingConfiguration_destinationConfiguration,

    -- * Destructuring the Response
    CreateLoggingConfigurationResponse (..),
    newCreateLoggingConfigurationResponse,

    -- * Response Lenses
    createLoggingConfigurationResponse_tags,
    createLoggingConfigurationResponse_name,
    createLoggingConfigurationResponse_arn,
    createLoggingConfigurationResponse_state,
    createLoggingConfigurationResponse_id,
    createLoggingConfigurationResponse_updateTime,
    createLoggingConfigurationResponse_createTime,
    createLoggingConfigurationResponse_destinationConfiguration,
    createLoggingConfigurationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.IVSChat.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateLoggingConfiguration' smart constructor.
data CreateLoggingConfiguration = CreateLoggingConfiguration'
  { -- | Tags to attach to the resource. Array of maps, each of the form
    -- @string:string (key:value)@. See
    -- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources>
    -- for details, including restrictions that apply to tags and \"Tag naming
    -- limits and requirements\"; Amazon IVS Chat has no constraints on tags
    -- beyond what is documented there.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Logging-configuration name. The value does not need to be unique.
    name :: Prelude.Maybe Prelude.Text,
    -- | A complex type that contains a destination configuration for where chat
    -- content will be logged. There can be only one type of destination
    -- (@cloudWatchLogs@, @firehose@, or @s3@) in a @destinationConfiguration@.
    destinationConfiguration :: DestinationConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateLoggingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createLoggingConfiguration_tags' - Tags to attach to the resource. Array of maps, each of the form
-- @string:string (key:value)@. See
-- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources>
-- for details, including restrictions that apply to tags and \"Tag naming
-- limits and requirements\"; Amazon IVS Chat has no constraints on tags
-- beyond what is documented there.
--
-- 'name', 'createLoggingConfiguration_name' - Logging-configuration name. The value does not need to be unique.
--
-- 'destinationConfiguration', 'createLoggingConfiguration_destinationConfiguration' - A complex type that contains a destination configuration for where chat
-- content will be logged. There can be only one type of destination
-- (@cloudWatchLogs@, @firehose@, or @s3@) in a @destinationConfiguration@.
newCreateLoggingConfiguration ::
  -- | 'destinationConfiguration'
  DestinationConfiguration ->
  CreateLoggingConfiguration
newCreateLoggingConfiguration
  pDestinationConfiguration_ =
    CreateLoggingConfiguration'
      { tags = Prelude.Nothing,
        name = Prelude.Nothing,
        destinationConfiguration =
          pDestinationConfiguration_
      }

-- | Tags to attach to the resource. Array of maps, each of the form
-- @string:string (key:value)@. See
-- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources>
-- for details, including restrictions that apply to tags and \"Tag naming
-- limits and requirements\"; Amazon IVS Chat has no constraints on tags
-- beyond what is documented there.
createLoggingConfiguration_tags :: Lens.Lens' CreateLoggingConfiguration (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createLoggingConfiguration_tags = Lens.lens (\CreateLoggingConfiguration' {tags} -> tags) (\s@CreateLoggingConfiguration' {} a -> s {tags = a} :: CreateLoggingConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | Logging-configuration name. The value does not need to be unique.
createLoggingConfiguration_name :: Lens.Lens' CreateLoggingConfiguration (Prelude.Maybe Prelude.Text)
createLoggingConfiguration_name = Lens.lens (\CreateLoggingConfiguration' {name} -> name) (\s@CreateLoggingConfiguration' {} a -> s {name = a} :: CreateLoggingConfiguration)

-- | A complex type that contains a destination configuration for where chat
-- content will be logged. There can be only one type of destination
-- (@cloudWatchLogs@, @firehose@, or @s3@) in a @destinationConfiguration@.
createLoggingConfiguration_destinationConfiguration :: Lens.Lens' CreateLoggingConfiguration DestinationConfiguration
createLoggingConfiguration_destinationConfiguration = Lens.lens (\CreateLoggingConfiguration' {destinationConfiguration} -> destinationConfiguration) (\s@CreateLoggingConfiguration' {} a -> s {destinationConfiguration = a} :: CreateLoggingConfiguration)

instance Core.AWSRequest CreateLoggingConfiguration where
  type
    AWSResponse CreateLoggingConfiguration =
      CreateLoggingConfigurationResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateLoggingConfigurationResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "state")
            Prelude.<*> (x Core..?> "id")
            Prelude.<*> (x Core..?> "updateTime")
            Prelude.<*> (x Core..?> "createTime")
            Prelude.<*> (x Core..?> "destinationConfiguration")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateLoggingConfiguration where
  hashWithSalt _salt CreateLoggingConfiguration' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` destinationConfiguration

instance Prelude.NFData CreateLoggingConfiguration where
  rnf CreateLoggingConfiguration' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf destinationConfiguration

instance Core.ToHeaders CreateLoggingConfiguration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateLoggingConfiguration where
  toJSON CreateLoggingConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("name" Core..=) Prelude.<$> name,
            Prelude.Just
              ( "destinationConfiguration"
                  Core..= destinationConfiguration
              )
          ]
      )

instance Core.ToPath CreateLoggingConfiguration where
  toPath = Prelude.const "/CreateLoggingConfiguration"

instance Core.ToQuery CreateLoggingConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateLoggingConfigurationResponse' smart constructor.
data CreateLoggingConfigurationResponse = CreateLoggingConfigurationResponse'
  { -- | Tags attached to the resource, from the request (if specified). Array of
    -- maps, each of the form @string:string (key:value)@.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Logging-configuration name, from the request (if specified).
    name :: Prelude.Maybe Prelude.Text,
    -- | Logging-configuration ARN, assigned by the system.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The state of the logging configuration. When the state is @ACTIVE@, the
    -- configuration is ready to log chat content.
    state :: Prelude.Maybe CreateLoggingConfigurationState,
    -- | Logging-configuration ID, generated by the system. This is a relative
    -- identifier, the part of the ARN that uniquely identifies the logging
    -- configuration.
    id :: Prelude.Maybe Prelude.Text,
    -- | Time of the logging configuration’s last update. This is an ISO 8601
    -- timestamp; /note that this is returned as a string/.
    updateTime :: Prelude.Maybe Core.POSIX,
    -- | Time when the logging configuration was created. This is an ISO 8601
    -- timestamp; /note that this is returned as a string/.
    createTime :: Prelude.Maybe Core.POSIX,
    -- | A complex type that contains a destination configuration for where chat
    -- content will be logged, from the request. There is only one type of
    -- destination (@cloudWatchLogs@, @firehose@, or @s3@) in a
    -- @destinationConfiguration@.
    destinationConfiguration :: Prelude.Maybe DestinationConfiguration,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateLoggingConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createLoggingConfigurationResponse_tags' - Tags attached to the resource, from the request (if specified). Array of
-- maps, each of the form @string:string (key:value)@.
--
-- 'name', 'createLoggingConfigurationResponse_name' - Logging-configuration name, from the request (if specified).
--
-- 'arn', 'createLoggingConfigurationResponse_arn' - Logging-configuration ARN, assigned by the system.
--
-- 'state', 'createLoggingConfigurationResponse_state' - The state of the logging configuration. When the state is @ACTIVE@, the
-- configuration is ready to log chat content.
--
-- 'id', 'createLoggingConfigurationResponse_id' - Logging-configuration ID, generated by the system. This is a relative
-- identifier, the part of the ARN that uniquely identifies the logging
-- configuration.
--
-- 'updateTime', 'createLoggingConfigurationResponse_updateTime' - Time of the logging configuration’s last update. This is an ISO 8601
-- timestamp; /note that this is returned as a string/.
--
-- 'createTime', 'createLoggingConfigurationResponse_createTime' - Time when the logging configuration was created. This is an ISO 8601
-- timestamp; /note that this is returned as a string/.
--
-- 'destinationConfiguration', 'createLoggingConfigurationResponse_destinationConfiguration' - A complex type that contains a destination configuration for where chat
-- content will be logged, from the request. There is only one type of
-- destination (@cloudWatchLogs@, @firehose@, or @s3@) in a
-- @destinationConfiguration@.
--
-- 'httpStatus', 'createLoggingConfigurationResponse_httpStatus' - The response's http status code.
newCreateLoggingConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateLoggingConfigurationResponse
newCreateLoggingConfigurationResponse pHttpStatus_ =
  CreateLoggingConfigurationResponse'
    { tags =
        Prelude.Nothing,
      name = Prelude.Nothing,
      arn = Prelude.Nothing,
      state = Prelude.Nothing,
      id = Prelude.Nothing,
      updateTime = Prelude.Nothing,
      createTime = Prelude.Nothing,
      destinationConfiguration =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Tags attached to the resource, from the request (if specified). Array of
-- maps, each of the form @string:string (key:value)@.
createLoggingConfigurationResponse_tags :: Lens.Lens' CreateLoggingConfigurationResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createLoggingConfigurationResponse_tags = Lens.lens (\CreateLoggingConfigurationResponse' {tags} -> tags) (\s@CreateLoggingConfigurationResponse' {} a -> s {tags = a} :: CreateLoggingConfigurationResponse) Prelude.. Lens.mapping Lens.coerced

-- | Logging-configuration name, from the request (if specified).
createLoggingConfigurationResponse_name :: Lens.Lens' CreateLoggingConfigurationResponse (Prelude.Maybe Prelude.Text)
createLoggingConfigurationResponse_name = Lens.lens (\CreateLoggingConfigurationResponse' {name} -> name) (\s@CreateLoggingConfigurationResponse' {} a -> s {name = a} :: CreateLoggingConfigurationResponse)

-- | Logging-configuration ARN, assigned by the system.
createLoggingConfigurationResponse_arn :: Lens.Lens' CreateLoggingConfigurationResponse (Prelude.Maybe Prelude.Text)
createLoggingConfigurationResponse_arn = Lens.lens (\CreateLoggingConfigurationResponse' {arn} -> arn) (\s@CreateLoggingConfigurationResponse' {} a -> s {arn = a} :: CreateLoggingConfigurationResponse)

-- | The state of the logging configuration. When the state is @ACTIVE@, the
-- configuration is ready to log chat content.
createLoggingConfigurationResponse_state :: Lens.Lens' CreateLoggingConfigurationResponse (Prelude.Maybe CreateLoggingConfigurationState)
createLoggingConfigurationResponse_state = Lens.lens (\CreateLoggingConfigurationResponse' {state} -> state) (\s@CreateLoggingConfigurationResponse' {} a -> s {state = a} :: CreateLoggingConfigurationResponse)

-- | Logging-configuration ID, generated by the system. This is a relative
-- identifier, the part of the ARN that uniquely identifies the logging
-- configuration.
createLoggingConfigurationResponse_id :: Lens.Lens' CreateLoggingConfigurationResponse (Prelude.Maybe Prelude.Text)
createLoggingConfigurationResponse_id = Lens.lens (\CreateLoggingConfigurationResponse' {id} -> id) (\s@CreateLoggingConfigurationResponse' {} a -> s {id = a} :: CreateLoggingConfigurationResponse)

-- | Time of the logging configuration’s last update. This is an ISO 8601
-- timestamp; /note that this is returned as a string/.
createLoggingConfigurationResponse_updateTime :: Lens.Lens' CreateLoggingConfigurationResponse (Prelude.Maybe Prelude.UTCTime)
createLoggingConfigurationResponse_updateTime = Lens.lens (\CreateLoggingConfigurationResponse' {updateTime} -> updateTime) (\s@CreateLoggingConfigurationResponse' {} a -> s {updateTime = a} :: CreateLoggingConfigurationResponse) Prelude.. Lens.mapping Core._Time

-- | Time when the logging configuration was created. This is an ISO 8601
-- timestamp; /note that this is returned as a string/.
createLoggingConfigurationResponse_createTime :: Lens.Lens' CreateLoggingConfigurationResponse (Prelude.Maybe Prelude.UTCTime)
createLoggingConfigurationResponse_createTime = Lens.lens (\CreateLoggingConfigurationResponse' {createTime} -> createTime) (\s@CreateLoggingConfigurationResponse' {} a -> s {createTime = a} :: CreateLoggingConfigurationResponse) Prelude.. Lens.mapping Core._Time

-- | A complex type that contains a destination configuration for where chat
-- content will be logged, from the request. There is only one type of
-- destination (@cloudWatchLogs@, @firehose@, or @s3@) in a
-- @destinationConfiguration@.
createLoggingConfigurationResponse_destinationConfiguration :: Lens.Lens' CreateLoggingConfigurationResponse (Prelude.Maybe DestinationConfiguration)
createLoggingConfigurationResponse_destinationConfiguration = Lens.lens (\CreateLoggingConfigurationResponse' {destinationConfiguration} -> destinationConfiguration) (\s@CreateLoggingConfigurationResponse' {} a -> s {destinationConfiguration = a} :: CreateLoggingConfigurationResponse)

-- | The response's http status code.
createLoggingConfigurationResponse_httpStatus :: Lens.Lens' CreateLoggingConfigurationResponse Prelude.Int
createLoggingConfigurationResponse_httpStatus = Lens.lens (\CreateLoggingConfigurationResponse' {httpStatus} -> httpStatus) (\s@CreateLoggingConfigurationResponse' {} a -> s {httpStatus = a} :: CreateLoggingConfigurationResponse)

instance
  Prelude.NFData
    CreateLoggingConfigurationResponse
  where
  rnf CreateLoggingConfigurationResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf updateTime
      `Prelude.seq` Prelude.rnf createTime
      `Prelude.seq` Prelude.rnf destinationConfiguration
      `Prelude.seq` Prelude.rnf httpStatus
