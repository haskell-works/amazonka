{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.Amazonka.Gen.Braket
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.Amazonka.Gen.Braket where

import Amazonka.Braket
import qualified Data.Proxy as Proxy
import Test.Amazonka.Braket.Internal
import Test.Amazonka.Fixture
import Test.Amazonka.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestCancelQuantumTask $
--             newCancelQuantumTask
--
--         , requestCreateQuantumTask $
--             newCreateQuantumTask
--
--         , requestGetDevice $
--             newGetDevice
--
--         , requestGetQuantumTask $
--             newGetQuantumTask
--
--         , requestListTagsForResource $
--             newListTagsForResource
--
--         , requestSearchDevices $
--             newSearchDevices
--
--         , requestSearchQuantumTasks $
--             newSearchQuantumTasks
--
--         , requestTagResource $
--             newTagResource
--
--         , requestUntagResource $
--             newUntagResource
--
--           ]

--     , testGroup "response"
--         [ responseCancelQuantumTask $
--             newCancelQuantumTaskResponse
--
--         , responseCreateQuantumTask $
--             newCreateQuantumTaskResponse
--
--         , responseGetDevice $
--             newGetDeviceResponse
--
--         , responseGetQuantumTask $
--             newGetQuantumTaskResponse
--
--         , responseListTagsForResource $
--             newListTagsForResourceResponse
--
--         , responseSearchDevices $
--             newSearchDevicesResponse
--
--         , responseSearchQuantumTasks $
--             newSearchQuantumTasksResponse
--
--         , responseTagResource $
--             newTagResourceResponse
--
--         , responseUntagResource $
--             newUntagResourceResponse
--
--           ]
--     ]

-- Requests

requestCancelQuantumTask :: CancelQuantumTask -> TestTree
requestCancelQuantumTask =
  req
    "CancelQuantumTask"
    "fixture/CancelQuantumTask.yaml"

requestCreateQuantumTask :: CreateQuantumTask -> TestTree
requestCreateQuantumTask =
  req
    "CreateQuantumTask"
    "fixture/CreateQuantumTask.yaml"

requestGetDevice :: GetDevice -> TestTree
requestGetDevice =
  req
    "GetDevice"
    "fixture/GetDevice.yaml"

requestGetQuantumTask :: GetQuantumTask -> TestTree
requestGetQuantumTask =
  req
    "GetQuantumTask"
    "fixture/GetQuantumTask.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestSearchDevices :: SearchDevices -> TestTree
requestSearchDevices =
  req
    "SearchDevices"
    "fixture/SearchDevices.yaml"

requestSearchQuantumTasks :: SearchQuantumTasks -> TestTree
requestSearchQuantumTasks =
  req
    "SearchQuantumTasks"
    "fixture/SearchQuantumTasks.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

-- Responses

responseCancelQuantumTask :: CancelQuantumTaskResponse -> TestTree
responseCancelQuantumTask =
  res
    "CancelQuantumTaskResponse"
    "fixture/CancelQuantumTaskResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy CancelQuantumTask)

responseCreateQuantumTask :: CreateQuantumTaskResponse -> TestTree
responseCreateQuantumTask =
  res
    "CreateQuantumTaskResponse"
    "fixture/CreateQuantumTaskResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy CreateQuantumTask)

responseGetDevice :: GetDeviceResponse -> TestTree
responseGetDevice =
  res
    "GetDeviceResponse"
    "fixture/GetDeviceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetDevice)

responseGetQuantumTask :: GetQuantumTaskResponse -> TestTree
responseGetQuantumTask =
  res
    "GetQuantumTaskResponse"
    "fixture/GetQuantumTaskResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetQuantumTask)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListTagsForResource)

responseSearchDevices :: SearchDevicesResponse -> TestTree
responseSearchDevices =
  res
    "SearchDevicesResponse"
    "fixture/SearchDevicesResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy SearchDevices)

responseSearchQuantumTasks :: SearchQuantumTasksResponse -> TestTree
responseSearchQuantumTasks =
  res
    "SearchQuantumTasksResponse"
    "fixture/SearchQuantumTasksResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy SearchQuantumTasks)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy TagResource)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy UntagResource)