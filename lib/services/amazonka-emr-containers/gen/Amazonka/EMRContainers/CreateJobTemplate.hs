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
-- Module      : Amazonka.EMRContainers.CreateJobTemplate
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a job template. Job template stores values of StartJobRun API
-- request in a template and can be used to start a job run. Job template
-- allows two use cases: avoid repeating recurring StartJobRun API request
-- values, enforcing certain values in StartJobRun API request.
module Amazonka.EMRContainers.CreateJobTemplate
  ( -- * Creating a Request
    CreateJobTemplate (..),
    newCreateJobTemplate,

    -- * Request Lenses
    createJobTemplate_tags,
    createJobTemplate_kmsKeyArn,
    createJobTemplate_name,
    createJobTemplate_clientToken,
    createJobTemplate_jobTemplateData,

    -- * Destructuring the Response
    CreateJobTemplateResponse (..),
    newCreateJobTemplateResponse,

    -- * Response Lenses
    createJobTemplateResponse_name,
    createJobTemplateResponse_arn,
    createJobTemplateResponse_id,
    createJobTemplateResponse_createdAt,
    createJobTemplateResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.EMRContainers.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateJobTemplate' smart constructor.
data CreateJobTemplate = CreateJobTemplate'
  { -- | The tags that are associated with the job template.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The KMS key ARN used to encrypt the job template.
    kmsKeyArn :: Prelude.Maybe Prelude.Text,
    -- | The specified name of the job template.
    name :: Prelude.Text,
    -- | The client token of the job template.
    clientToken :: Prelude.Text,
    -- | The job template data which holds values of StartJobRun API request.
    jobTemplateData :: JobTemplateData
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateJobTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createJobTemplate_tags' - The tags that are associated with the job template.
--
-- 'kmsKeyArn', 'createJobTemplate_kmsKeyArn' - The KMS key ARN used to encrypt the job template.
--
-- 'name', 'createJobTemplate_name' - The specified name of the job template.
--
-- 'clientToken', 'createJobTemplate_clientToken' - The client token of the job template.
--
-- 'jobTemplateData', 'createJobTemplate_jobTemplateData' - The job template data which holds values of StartJobRun API request.
newCreateJobTemplate ::
  -- | 'name'
  Prelude.Text ->
  -- | 'clientToken'
  Prelude.Text ->
  -- | 'jobTemplateData'
  JobTemplateData ->
  CreateJobTemplate
newCreateJobTemplate
  pName_
  pClientToken_
  pJobTemplateData_ =
    CreateJobTemplate'
      { tags = Prelude.Nothing,
        kmsKeyArn = Prelude.Nothing,
        name = pName_,
        clientToken = pClientToken_,
        jobTemplateData = pJobTemplateData_
      }

-- | The tags that are associated with the job template.
createJobTemplate_tags :: Lens.Lens' CreateJobTemplate (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createJobTemplate_tags = Lens.lens (\CreateJobTemplate' {tags} -> tags) (\s@CreateJobTemplate' {} a -> s {tags = a} :: CreateJobTemplate) Prelude.. Lens.mapping Lens.coerced

-- | The KMS key ARN used to encrypt the job template.
createJobTemplate_kmsKeyArn :: Lens.Lens' CreateJobTemplate (Prelude.Maybe Prelude.Text)
createJobTemplate_kmsKeyArn = Lens.lens (\CreateJobTemplate' {kmsKeyArn} -> kmsKeyArn) (\s@CreateJobTemplate' {} a -> s {kmsKeyArn = a} :: CreateJobTemplate)

-- | The specified name of the job template.
createJobTemplate_name :: Lens.Lens' CreateJobTemplate Prelude.Text
createJobTemplate_name = Lens.lens (\CreateJobTemplate' {name} -> name) (\s@CreateJobTemplate' {} a -> s {name = a} :: CreateJobTemplate)

-- | The client token of the job template.
createJobTemplate_clientToken :: Lens.Lens' CreateJobTemplate Prelude.Text
createJobTemplate_clientToken = Lens.lens (\CreateJobTemplate' {clientToken} -> clientToken) (\s@CreateJobTemplate' {} a -> s {clientToken = a} :: CreateJobTemplate)

-- | The job template data which holds values of StartJobRun API request.
createJobTemplate_jobTemplateData :: Lens.Lens' CreateJobTemplate JobTemplateData
createJobTemplate_jobTemplateData = Lens.lens (\CreateJobTemplate' {jobTemplateData} -> jobTemplateData) (\s@CreateJobTemplate' {} a -> s {jobTemplateData = a} :: CreateJobTemplate)

instance Core.AWSRequest CreateJobTemplate where
  type
    AWSResponse CreateJobTemplate =
      CreateJobTemplateResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateJobTemplateResponse'
            Prelude.<$> (x Core..?> "name")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "id")
            Prelude.<*> (x Core..?> "createdAt")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateJobTemplate where
  hashWithSalt _salt CreateJobTemplate' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` kmsKeyArn
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` jobTemplateData

instance Prelude.NFData CreateJobTemplate where
  rnf CreateJobTemplate' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf kmsKeyArn
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf jobTemplateData

instance Core.ToHeaders CreateJobTemplate where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateJobTemplate where
  toJSON CreateJobTemplate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("kmsKeyArn" Core..=) Prelude.<$> kmsKeyArn,
            Prelude.Just ("name" Core..= name),
            Prelude.Just ("clientToken" Core..= clientToken),
            Prelude.Just
              ("jobTemplateData" Core..= jobTemplateData)
          ]
      )

instance Core.ToPath CreateJobTemplate where
  toPath = Prelude.const "/jobtemplates"

instance Core.ToQuery CreateJobTemplate where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateJobTemplateResponse' smart constructor.
data CreateJobTemplateResponse = CreateJobTemplateResponse'
  { -- | This output displays the name of the created job template.
    name :: Prelude.Maybe Prelude.Text,
    -- | This output display the ARN of the created job template.
    arn :: Prelude.Maybe Prelude.Text,
    -- | This output display the created job template ID.
    id :: Prelude.Maybe Prelude.Text,
    -- | This output displays the date and time when the job template was
    -- created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateJobTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'createJobTemplateResponse_name' - This output displays the name of the created job template.
--
-- 'arn', 'createJobTemplateResponse_arn' - This output display the ARN of the created job template.
--
-- 'id', 'createJobTemplateResponse_id' - This output display the created job template ID.
--
-- 'createdAt', 'createJobTemplateResponse_createdAt' - This output displays the date and time when the job template was
-- created.
--
-- 'httpStatus', 'createJobTemplateResponse_httpStatus' - The response's http status code.
newCreateJobTemplateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateJobTemplateResponse
newCreateJobTemplateResponse pHttpStatus_ =
  CreateJobTemplateResponse'
    { name = Prelude.Nothing,
      arn = Prelude.Nothing,
      id = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | This output displays the name of the created job template.
createJobTemplateResponse_name :: Lens.Lens' CreateJobTemplateResponse (Prelude.Maybe Prelude.Text)
createJobTemplateResponse_name = Lens.lens (\CreateJobTemplateResponse' {name} -> name) (\s@CreateJobTemplateResponse' {} a -> s {name = a} :: CreateJobTemplateResponse)

-- | This output display the ARN of the created job template.
createJobTemplateResponse_arn :: Lens.Lens' CreateJobTemplateResponse (Prelude.Maybe Prelude.Text)
createJobTemplateResponse_arn = Lens.lens (\CreateJobTemplateResponse' {arn} -> arn) (\s@CreateJobTemplateResponse' {} a -> s {arn = a} :: CreateJobTemplateResponse)

-- | This output display the created job template ID.
createJobTemplateResponse_id :: Lens.Lens' CreateJobTemplateResponse (Prelude.Maybe Prelude.Text)
createJobTemplateResponse_id = Lens.lens (\CreateJobTemplateResponse' {id} -> id) (\s@CreateJobTemplateResponse' {} a -> s {id = a} :: CreateJobTemplateResponse)

-- | This output displays the date and time when the job template was
-- created.
createJobTemplateResponse_createdAt :: Lens.Lens' CreateJobTemplateResponse (Prelude.Maybe Prelude.UTCTime)
createJobTemplateResponse_createdAt = Lens.lens (\CreateJobTemplateResponse' {createdAt} -> createdAt) (\s@CreateJobTemplateResponse' {} a -> s {createdAt = a} :: CreateJobTemplateResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
createJobTemplateResponse_httpStatus :: Lens.Lens' CreateJobTemplateResponse Prelude.Int
createJobTemplateResponse_httpStatus = Lens.lens (\CreateJobTemplateResponse' {httpStatus} -> httpStatus) (\s@CreateJobTemplateResponse' {} a -> s {httpStatus = a} :: CreateJobTemplateResponse)

instance Prelude.NFData CreateJobTemplateResponse where
  rnf CreateJobTemplateResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf httpStatus
