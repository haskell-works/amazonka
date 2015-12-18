{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.DeletePolicy
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified policy.
--
-- A policy cannot be deleted if:
--
-- - it has non-default versions
--
-- - it is attached to any certificate
--
-- To delete a policy:
--
-- - First delete all the non-default versions of the policy using the
-- DeletePolicyVersion API.
--
-- - Detach it from any certificate using the DetachPrincipalPolicy API.
--
-- When a policy is deleted, its default version is deleted with it.
--
-- /See:/ <https://aws.amazon.com/iot#DeletePolicy.html AWS API Reference> for DeletePolicy.
module Network.AWS.IoT.DeletePolicy
    (
    -- * Creating a Request
      deletePolicy
    , DeletePolicy
    -- * Request Lenses
    , dpPolicyName

    -- * Destructuring the Response
    , deletePolicyResponse
    , DeletePolicyResponse
    ) where

import           Network.AWS.IoT.Types
import           Network.AWS.IoT.Types.Product
import           Network.AWS.Lens
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | The input for the DeletePolicy operation.
--
-- /See:/ 'deletePolicy' smart constructor.
newtype DeletePolicy = DeletePolicy'
    { _dpPolicyName :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeletePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpPolicyName'
deletePolicy
    :: Text -- ^ 'dpPolicyName'
    -> DeletePolicy
deletePolicy pPolicyName_ =
    DeletePolicy'
    { _dpPolicyName = pPolicyName_
    }

-- | The name of the policy to delete.
dpPolicyName :: Lens' DeletePolicy Text
dpPolicyName = lens _dpPolicyName (\ s a -> s{_dpPolicyName = a});

instance AWSRequest DeletePolicy where
        type Rs DeletePolicy = DeletePolicyResponse
        request = delete ioT
        response = receiveNull DeletePolicyResponse'

instance ToHeaders DeletePolicy where
        toHeaders = const mempty

instance ToPath DeletePolicy where
        toPath DeletePolicy'{..}
          = mconcat ["/policies/", toBS _dpPolicyName]

instance ToQuery DeletePolicy where
        toQuery = const mempty

-- | /See:/ 'deletePolicyResponse' smart constructor.
data DeletePolicyResponse =
    DeletePolicyResponse'
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeletePolicyResponse' with the minimum fields required to make a request.
--
deletePolicyResponse
    :: DeletePolicyResponse
deletePolicyResponse = DeletePolicyResponse'
