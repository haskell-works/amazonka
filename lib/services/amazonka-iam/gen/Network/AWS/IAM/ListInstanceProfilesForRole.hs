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
-- Module      : Network.AWS.IAM.ListInstanceProfilesForRole
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the instance profiles that have the specified associated IAM role.
-- If there are none, the operation returns an empty list. For more
-- information about instance profiles, go to
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html About instance profiles>.
--
-- You can paginate the results using the @MaxItems@ and @Marker@
-- parameters.
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListInstanceProfilesForRole
  ( -- * Creating a Request
    ListInstanceProfilesForRole (..),
    newListInstanceProfilesForRole,

    -- * Request Lenses
    listInstanceProfilesForRole_marker,
    listInstanceProfilesForRole_maxItems,
    listInstanceProfilesForRole_roleName,

    -- * Destructuring the Response
    ListInstanceProfilesForRoleResponse (..),
    newListInstanceProfilesForRoleResponse,

    -- * Response Lenses
    listInstanceProfilesForRoleResponse_marker,
    listInstanceProfilesForRoleResponse_isTruncated,
    listInstanceProfilesForRoleResponse_httpStatus,
    listInstanceProfilesForRoleResponse_instanceProfiles,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IAM.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListInstanceProfilesForRole' smart constructor.
data ListInstanceProfilesForRole = ListInstanceProfilesForRole'
  { -- | Use this parameter only when paginating results and only after you
    -- receive a response indicating that the results are truncated. Set it to
    -- the value of the @Marker@ element in the response that you received to
    -- indicate where the next call should start.
    marker :: Prelude.Maybe Prelude.Text,
    -- | Use this only when paginating results to indicate the maximum number of
    -- items you want in the response. If additional items exist beyond the
    -- maximum you specify, the @IsTruncated@ response element is @true@.
    --
    -- If you do not include this parameter, the number of items defaults to
    -- 100. Note that IAM might return fewer results, even when there are more
    -- results available. In that case, the @IsTruncated@ response element
    -- returns @true@, and @Marker@ contains a value to include in the
    -- subsequent call that tells the service where to continue from.
    maxItems :: Prelude.Maybe Prelude.Natural,
    -- | The name of the role to list instance profiles for.
    --
    -- This parameter allows (through its
    -- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
    -- consisting of upper and lowercase alphanumeric characters with no
    -- spaces. You can also include any of the following characters: _+=,.\@-
    roleName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListInstanceProfilesForRole' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'listInstanceProfilesForRole_marker' - Use this parameter only when paginating results and only after you
-- receive a response indicating that the results are truncated. Set it to
-- the value of the @Marker@ element in the response that you received to
-- indicate where the next call should start.
--
-- 'maxItems', 'listInstanceProfilesForRole_maxItems' - Use this only when paginating results to indicate the maximum number of
-- items you want in the response. If additional items exist beyond the
-- maximum you specify, the @IsTruncated@ response element is @true@.
--
-- If you do not include this parameter, the number of items defaults to
-- 100. Note that IAM might return fewer results, even when there are more
-- results available. In that case, the @IsTruncated@ response element
-- returns @true@, and @Marker@ contains a value to include in the
-- subsequent call that tells the service where to continue from.
--
-- 'roleName', 'listInstanceProfilesForRole_roleName' - The name of the role to list instance profiles for.
--
-- This parameter allows (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- consisting of upper and lowercase alphanumeric characters with no
-- spaces. You can also include any of the following characters: _+=,.\@-
newListInstanceProfilesForRole ::
  -- | 'roleName'
  Prelude.Text ->
  ListInstanceProfilesForRole
newListInstanceProfilesForRole pRoleName_ =
  ListInstanceProfilesForRole'
    { marker =
        Prelude.Nothing,
      maxItems = Prelude.Nothing,
      roleName = pRoleName_
    }

-- | Use this parameter only when paginating results and only after you
-- receive a response indicating that the results are truncated. Set it to
-- the value of the @Marker@ element in the response that you received to
-- indicate where the next call should start.
listInstanceProfilesForRole_marker :: Lens.Lens' ListInstanceProfilesForRole (Prelude.Maybe Prelude.Text)
listInstanceProfilesForRole_marker = Lens.lens (\ListInstanceProfilesForRole' {marker} -> marker) (\s@ListInstanceProfilesForRole' {} a -> s {marker = a} :: ListInstanceProfilesForRole)

-- | Use this only when paginating results to indicate the maximum number of
-- items you want in the response. If additional items exist beyond the
-- maximum you specify, the @IsTruncated@ response element is @true@.
--
-- If you do not include this parameter, the number of items defaults to
-- 100. Note that IAM might return fewer results, even when there are more
-- results available. In that case, the @IsTruncated@ response element
-- returns @true@, and @Marker@ contains a value to include in the
-- subsequent call that tells the service where to continue from.
listInstanceProfilesForRole_maxItems :: Lens.Lens' ListInstanceProfilesForRole (Prelude.Maybe Prelude.Natural)
listInstanceProfilesForRole_maxItems = Lens.lens (\ListInstanceProfilesForRole' {maxItems} -> maxItems) (\s@ListInstanceProfilesForRole' {} a -> s {maxItems = a} :: ListInstanceProfilesForRole)

-- | The name of the role to list instance profiles for.
--
-- This parameter allows (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- consisting of upper and lowercase alphanumeric characters with no
-- spaces. You can also include any of the following characters: _+=,.\@-
listInstanceProfilesForRole_roleName :: Lens.Lens' ListInstanceProfilesForRole Prelude.Text
listInstanceProfilesForRole_roleName = Lens.lens (\ListInstanceProfilesForRole' {roleName} -> roleName) (\s@ListInstanceProfilesForRole' {} a -> s {roleName = a} :: ListInstanceProfilesForRole)

instance Core.AWSPager ListInstanceProfilesForRole where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listInstanceProfilesForRoleResponse_isTruncated
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.isNothing
        ( rs
            Lens.^? listInstanceProfilesForRoleResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listInstanceProfilesForRole_marker
          Lens..~ rs
          Lens.^? listInstanceProfilesForRoleResponse_marker
            Prelude.. Lens._Just

instance Core.AWSRequest ListInstanceProfilesForRole where
  type
    AWSResponse ListInstanceProfilesForRole =
      ListInstanceProfilesForRoleResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "ListInstanceProfilesForRoleResult"
      ( \s h x ->
          ListInstanceProfilesForRoleResponse'
            Prelude.<$> (x Core..@? "Marker")
            Prelude.<*> (x Core..@? "IsTruncated")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..@? "InstanceProfiles"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.parseXMLList "member"
                        )
      )

instance Prelude.Hashable ListInstanceProfilesForRole

instance Prelude.NFData ListInstanceProfilesForRole

instance Core.ToHeaders ListInstanceProfilesForRole where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListInstanceProfilesForRole where
  toPath = Prelude.const "/"

instance Core.ToQuery ListInstanceProfilesForRole where
  toQuery ListInstanceProfilesForRole' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "ListInstanceProfilesForRole" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2010-05-08" :: Prelude.ByteString),
        "Marker" Core.=: marker,
        "MaxItems" Core.=: maxItems,
        "RoleName" Core.=: roleName
      ]

-- | Contains the response to a successful ListInstanceProfilesForRole
-- request.
--
-- /See:/ 'newListInstanceProfilesForRoleResponse' smart constructor.
data ListInstanceProfilesForRoleResponse = ListInstanceProfilesForRoleResponse'
  { -- | When @IsTruncated@ is @true@, this element is present and contains the
    -- value to use for the @Marker@ parameter in a subsequent pagination
    -- request.
    marker :: Prelude.Maybe Prelude.Text,
    -- | A flag that indicates whether there are more items to return. If your
    -- results were truncated, you can make a subsequent pagination request
    -- using the @Marker@ request parameter to retrieve more items. Note that
    -- IAM might return fewer than the @MaxItems@ number of results even when
    -- there are more results available. We recommend that you check
    -- @IsTruncated@ after every call to ensure that you receive all your
    -- results.
    isTruncated :: Prelude.Maybe Prelude.Bool,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of instance profiles.
    instanceProfiles :: [InstanceProfile]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListInstanceProfilesForRoleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'listInstanceProfilesForRoleResponse_marker' - When @IsTruncated@ is @true@, this element is present and contains the
-- value to use for the @Marker@ parameter in a subsequent pagination
-- request.
--
-- 'isTruncated', 'listInstanceProfilesForRoleResponse_isTruncated' - A flag that indicates whether there are more items to return. If your
-- results were truncated, you can make a subsequent pagination request
-- using the @Marker@ request parameter to retrieve more items. Note that
-- IAM might return fewer than the @MaxItems@ number of results even when
-- there are more results available. We recommend that you check
-- @IsTruncated@ after every call to ensure that you receive all your
-- results.
--
-- 'httpStatus', 'listInstanceProfilesForRoleResponse_httpStatus' - The response's http status code.
--
-- 'instanceProfiles', 'listInstanceProfilesForRoleResponse_instanceProfiles' - A list of instance profiles.
newListInstanceProfilesForRoleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListInstanceProfilesForRoleResponse
newListInstanceProfilesForRoleResponse pHttpStatus_ =
  ListInstanceProfilesForRoleResponse'
    { marker =
        Prelude.Nothing,
      isTruncated = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      instanceProfiles = Prelude.mempty
    }

-- | When @IsTruncated@ is @true@, this element is present and contains the
-- value to use for the @Marker@ parameter in a subsequent pagination
-- request.
listInstanceProfilesForRoleResponse_marker :: Lens.Lens' ListInstanceProfilesForRoleResponse (Prelude.Maybe Prelude.Text)
listInstanceProfilesForRoleResponse_marker = Lens.lens (\ListInstanceProfilesForRoleResponse' {marker} -> marker) (\s@ListInstanceProfilesForRoleResponse' {} a -> s {marker = a} :: ListInstanceProfilesForRoleResponse)

-- | A flag that indicates whether there are more items to return. If your
-- results were truncated, you can make a subsequent pagination request
-- using the @Marker@ request parameter to retrieve more items. Note that
-- IAM might return fewer than the @MaxItems@ number of results even when
-- there are more results available. We recommend that you check
-- @IsTruncated@ after every call to ensure that you receive all your
-- results.
listInstanceProfilesForRoleResponse_isTruncated :: Lens.Lens' ListInstanceProfilesForRoleResponse (Prelude.Maybe Prelude.Bool)
listInstanceProfilesForRoleResponse_isTruncated = Lens.lens (\ListInstanceProfilesForRoleResponse' {isTruncated} -> isTruncated) (\s@ListInstanceProfilesForRoleResponse' {} a -> s {isTruncated = a} :: ListInstanceProfilesForRoleResponse)

-- | The response's http status code.
listInstanceProfilesForRoleResponse_httpStatus :: Lens.Lens' ListInstanceProfilesForRoleResponse Prelude.Int
listInstanceProfilesForRoleResponse_httpStatus = Lens.lens (\ListInstanceProfilesForRoleResponse' {httpStatus} -> httpStatus) (\s@ListInstanceProfilesForRoleResponse' {} a -> s {httpStatus = a} :: ListInstanceProfilesForRoleResponse)

-- | A list of instance profiles.
listInstanceProfilesForRoleResponse_instanceProfiles :: Lens.Lens' ListInstanceProfilesForRoleResponse [InstanceProfile]
listInstanceProfilesForRoleResponse_instanceProfiles = Lens.lens (\ListInstanceProfilesForRoleResponse' {instanceProfiles} -> instanceProfiles) (\s@ListInstanceProfilesForRoleResponse' {} a -> s {instanceProfiles = a} :: ListInstanceProfilesForRoleResponse) Prelude.. Lens.coerced

instance
  Prelude.NFData
    ListInstanceProfilesForRoleResponse