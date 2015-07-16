{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DeviceFarm.Types
    (
    -- * Service
      DeviceFarm

    -- * Errors
    , _IdempotencyException
    , _NotFoundException
    , _ArgumentException
    , _ServiceAccountException
    , _LimitExceededException

    -- * ArtifactCategory
    , ArtifactCategory (..)

    -- * ArtifactType
    , ArtifactType (..)

    -- * DeviceAttribute
    , DeviceAttribute (..)

    -- * DeviceFormFactor
    , DeviceFormFactor (..)

    -- * DevicePlatform
    , DevicePlatform (..)

    -- * DevicePoolType
    , DevicePoolType (..)

    -- * ExecutionResult
    , ExecutionResult (..)

    -- * ExecutionStatus
    , ExecutionStatus (..)

    -- * RuleOperator
    , RuleOperator (..)

    -- * SampleType
    , SampleType (..)

    -- * TestType
    , TestType (..)

    -- * UploadStatus
    , UploadStatus (..)

    -- * UploadType
    , UploadType (..)

    -- * Artifact
    , Artifact
    , artifact
    , artArn
    , artUrl
    , artExtension
    , artName
    , artType

    -- * CPU
    , CPU
    , cpu
    , cpuFrequency
    , cpuClock
    , cpuArchitecture

    -- * Counters
    , Counters
    , counters
    , couPassed
    , couSkipped
    , couWarned
    , couStopped
    , couTotal
    , couFailed
    , couErrored

    -- * Device
    , Device
    , device
    , devCarrier
    , devImage
    , devManufacturer
    , devPlatform
    , devArn
    , devFormFactor
    , devResolution
    , devMemory
    , devRadio
    , devOs
    , devName
    , devModel
    , devCpu
    , devHeapSize

    -- * DevicePool
    , DevicePool
    , devicePool
    , dpArn
    , dpRules
    , dpName
    , dpType
    , dpDescription

    -- * DevicePoolCompatibilityResult
    , DevicePoolCompatibilityResult
    , devicePoolCompatibilityResult
    , dpcrDevice
    , dpcrCompatible
    , dpcrIncompatibilityMessages

    -- * IncompatibilityMessage
    , IncompatibilityMessage
    , incompatibilityMessage
    , imType
    , imMessage

    -- * Job
    , Job
    , job
    , jobStatus
    , jobCounters
    , jobArn
    , jobCreated
    , jobDevice
    , jobStopped
    , jobResult
    , jobName
    , jobType
    , jobMessage
    , jobStarted

    -- * Location
    , Location
    , location
    , locLatitude
    , locLongitude

    -- * Problem
    , Problem
    , problem
    , proDevice
    , proTest
    , proResult
    , proRun
    , proJob
    , proMessage
    , proSuite

    -- * ProblemDetail
    , ProblemDetail
    , problemDetail
    , pdArn
    , pdName

    -- * Project
    , Project
    , project
    , proArn
    , proCreated
    , proName

    -- * Radios
    , Radios
    , radios
    , radNfc
    , radGps
    , radBluetooth
    , radWifi

    -- * Resolution
    , Resolution
    , resolution
    , resHeight
    , resWidth

    -- * Rule
    , Rule
    , rule
    , rulAttribute
    , rulOperator
    , rulValue

    -- * Run
    , Run
    , run
    , runStatus
    , runCounters
    , runPlatform
    , runArn
    , runCreated
    , runCompletedJobs
    , runStopped
    , runResult
    , runName
    , runType
    , runMessage
    , runTotalJobs
    , runStarted

    -- * Sample
    , Sample
    , sample
    , samArn
    , samUrl
    , samType

    -- * ScheduleRunConfiguration
    , ScheduleRunConfiguration
    , scheduleRunConfiguration
    , srcRadios
    , srcLocation
    , srcLocale
    , srcNetworkProfileARN
    , srcExtraDataPackageARN
    , srcAuxiliaryApps

    -- * ScheduleRunTest
    , ScheduleRunTest
    , scheduleRunTest
    , srtTestPackageARN
    , srtParameters
    , srtFilter
    , srtType

    -- * Suite
    , Suite
    , suite
    , suiStatus
    , suiCounters
    , suiArn
    , suiCreated
    , suiStopped
    , suiResult
    , suiName
    , suiType
    , suiMessage
    , suiStarted

    -- * Test
    , Test
    , test
    , tesStatus
    , tesCounters
    , tesArn
    , tesCreated
    , tesStopped
    , tesResult
    , tesName
    , tesType
    , tesMessage
    , tesStarted

    -- * UniqueProblem
    , UniqueProblem
    , uniqueProblem
    , upProblems
    , upMessage

    -- * Upload
    , Upload
    , upload
    , uplStatus
    , uplArn
    , uplCreated
    , uplUrl
    , uplName
    , uplMetadata
    , uplType
    , uplMessage
    , uplContentType
    ) where

import           Network.AWS.Prelude
import           Network.AWS.Sign.V4

-- | Version @2015-06-23@ of the Amazon Device Farm SDK.
data DeviceFarm

instance AWSService DeviceFarm where
    type Sg DeviceFarm = V4
    service = const svc
      where
        svc =
            Service
            { _svcAbbrev = "DeviceFarm"
            , _svcPrefix = "devicefarm"
            , _svcVersion = "2015-06-23"
            , _svcEndpoint = defaultEndpoint svc
            , _svcTimeout = Just 70000000
            , _svcStatus = statusSuccess
            , _svcError = parseJSONError
            , _svcRetry = retry
            }
        retry =
            Exponential
            { _retryBase = 5.0e-2
            , _retryGrowth = 2
            , _retryAttempts = 5
            , _retryCheck = check
            }
        check e
          | has (hasCode "ThrottlingException" . hasStatus 400) e =
              Just "throttling_exception"
          | has (hasCode "Throttling" . hasStatus 400) e = Just "throttling"
          | has (hasStatus 503) e = Just "service_unavailable"
          | has (hasStatus 500) e = Just "general_server_error"
          | has (hasStatus 509) e = Just "limit_exceeded"
          | otherwise = Nothing

-- | An entity with the same name already exists.
_IdempotencyException :: AWSError a => Getting (First ServiceError) a ServiceError
_IdempotencyException = _ServiceError . hasCode "IdempotencyException"

-- | The specified entity was not found.
_NotFoundException :: AWSError a => Getting (First ServiceError) a ServiceError
_NotFoundException = _ServiceError . hasCode "NotFoundException"

-- | An invalid argument was specified.
_ArgumentException :: AWSError a => Getting (First ServiceError) a ServiceError
_ArgumentException = _ServiceError . hasCode "ArgumentException"

-- | There was a problem with the service account.
_ServiceAccountException :: AWSError a => Getting (First ServiceError) a ServiceError
_ServiceAccountException = _ServiceError . hasCode "ServiceAccountException"

-- | A limit was exceeded.
_LimitExceededException :: AWSError a => Getting (First ServiceError) a ServiceError
_LimitExceededException = _ServiceError . hasCode "LimitExceededException"

data ArtifactCategory
    = ACFile
    | ACLog
    | ACScreenshot
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText ArtifactCategory where
    parser = takeLowerText >>= \case
        "file" -> pure ACFile
        "log" -> pure ACLog
        "screenshot" -> pure ACScreenshot
        e -> fromTextError $ "Failure parsing ArtifactCategory from value: '" <> e
           <> "'. Accepted values: file, log, screenshot"

instance ToText ArtifactCategory where
    toText = \case
        ACFile -> "file"
        ACLog -> "log"
        ACScreenshot -> "screenshot"

instance Hashable ArtifactCategory
instance ToQuery ArtifactCategory
instance ToHeader ArtifactCategory

instance ToJSON ArtifactCategory where
    toJSON = toJSONText

data ArtifactType
    = DeviceLog
    | Screenshot
    | MessageLog
    | AppiumServerOutput
    | CalabashJavaXMLOutput
    | Unknown
    | ExerciserMonkeyOutput
    | CalabashPrettyOutput
    | InstrumentationOutput
    | AppiumJavaXMLOutput
    | ResultLog
    | CalabashJSONOutput
    | AutomationOutput
    | CalabashStandardOutput
    | AppiumJavaOutput
    | ServiceLog
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText ArtifactType where
    parser = takeLowerText >>= \case
        "appium_java_output" -> pure AppiumJavaOutput
        "appium_java_xml_output" -> pure AppiumJavaXMLOutput
        "appium_server_output" -> pure AppiumServerOutput
        "automation_output" -> pure AutomationOutput
        "calabash_json_output" -> pure CalabashJSONOutput
        "calabash_java_xml_output" -> pure CalabashJavaXMLOutput
        "calabash_pretty_output" -> pure CalabashPrettyOutput
        "calabash_standard_output" -> pure CalabashStandardOutput
        "device_log" -> pure DeviceLog
        "exerciser_monkey_output" -> pure ExerciserMonkeyOutput
        "instrumentation_output" -> pure InstrumentationOutput
        "message_log" -> pure MessageLog
        "result_log" -> pure ResultLog
        "screenshot" -> pure Screenshot
        "service_log" -> pure ServiceLog
        "unknown" -> pure Unknown
        e -> fromTextError $ "Failure parsing ArtifactType from value: '" <> e
           <> "'. Accepted values: appium_java_output, appium_java_xml_output, appium_server_output, automation_output, calabash_json_output, calabash_java_xml_output, calabash_pretty_output, calabash_standard_output, device_log, exerciser_monkey_output, instrumentation_output, message_log, result_log, screenshot, service_log, unknown"

instance ToText ArtifactType where
    toText = \case
        AppiumJavaOutput -> "appium_java_output"
        AppiumJavaXMLOutput -> "appium_java_xml_output"
        AppiumServerOutput -> "appium_server_output"
        AutomationOutput -> "automation_output"
        CalabashJSONOutput -> "calabash_json_output"
        CalabashJavaXMLOutput -> "calabash_java_xml_output"
        CalabashPrettyOutput -> "calabash_pretty_output"
        CalabashStandardOutput -> "calabash_standard_output"
        DeviceLog -> "device_log"
        ExerciserMonkeyOutput -> "exerciser_monkey_output"
        InstrumentationOutput -> "instrumentation_output"
        MessageLog -> "message_log"
        ResultLog -> "result_log"
        Screenshot -> "screenshot"
        ServiceLog -> "service_log"
        Unknown -> "unknown"

instance Hashable ArtifactType
instance ToQuery ArtifactType
instance ToHeader ArtifactType

instance FromJSON ArtifactType where
    parseJSON = parseJSONText "ArtifactType"

data DeviceAttribute
    = Platform
    | Manufacturer
    | ARN
    | FormFactor
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText DeviceAttribute where
    parser = takeLowerText >>= \case
        "arn" -> pure ARN
        "form_factor" -> pure FormFactor
        "manufacturer" -> pure Manufacturer
        "platform" -> pure Platform
        e -> fromTextError $ "Failure parsing DeviceAttribute from value: '" <> e
           <> "'. Accepted values: arn, form_factor, manufacturer, platform"

instance ToText DeviceAttribute where
    toText = \case
        ARN -> "arn"
        FormFactor -> "form_factor"
        Manufacturer -> "manufacturer"
        Platform -> "platform"

instance Hashable DeviceAttribute
instance ToQuery DeviceAttribute
instance ToHeader DeviceAttribute

instance ToJSON DeviceAttribute where
    toJSON = toJSONText

instance FromJSON DeviceAttribute where
    parseJSON = parseJSONText "DeviceAttribute"

data DeviceFormFactor
    = Phone
    | Tablet
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText DeviceFormFactor where
    parser = takeLowerText >>= \case
        "phone" -> pure Phone
        "tablet" -> pure Tablet
        e -> fromTextError $ "Failure parsing DeviceFormFactor from value: '" <> e
           <> "'. Accepted values: phone, tablet"

instance ToText DeviceFormFactor where
    toText = \case
        Phone -> "phone"
        Tablet -> "tablet"

instance Hashable DeviceFormFactor
instance ToQuery DeviceFormFactor
instance ToHeader DeviceFormFactor

instance FromJSON DeviceFormFactor where
    parseJSON = parseJSONText "DeviceFormFactor"

data DevicePlatform =
    Android
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText DevicePlatform where
    parser = takeLowerText >>= \case
        "android" -> pure Android
        e -> fromTextError $ "Failure parsing DevicePlatform from value: '" <> e
           <> "'. Accepted values: android"

instance ToText DevicePlatform where
    toText = \case
        Android -> "android"

instance Hashable DevicePlatform
instance ToQuery DevicePlatform
instance ToHeader DevicePlatform

instance FromJSON DevicePlatform where
    parseJSON = parseJSONText "DevicePlatform"

data DevicePoolType
    = Private
    | Curated
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText DevicePoolType where
    parser = takeLowerText >>= \case
        "curated" -> pure Curated
        "private" -> pure Private
        e -> fromTextError $ "Failure parsing DevicePoolType from value: '" <> e
           <> "'. Accepted values: curated, private"

instance ToText DevicePoolType where
    toText = \case
        Curated -> "curated"
        Private -> "private"

instance Hashable DevicePoolType
instance ToQuery DevicePoolType
instance ToHeader DevicePoolType

instance ToJSON DevicePoolType where
    toJSON = toJSONText

instance FromJSON DevicePoolType where
    parseJSON = parseJSONText "DevicePoolType"

data ExecutionResult
    = ERFailed
    | ERSkipped
    | ERPending
    | ERErrored
    | ERWarned
    | ERPassed
    | ERStopped
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText ExecutionResult where
    parser = takeLowerText >>= \case
        "errored" -> pure ERErrored
        "failed" -> pure ERFailed
        "passed" -> pure ERPassed
        "pending" -> pure ERPending
        "skipped" -> pure ERSkipped
        "stopped" -> pure ERStopped
        "warned" -> pure ERWarned
        e -> fromTextError $ "Failure parsing ExecutionResult from value: '" <> e
           <> "'. Accepted values: errored, failed, passed, pending, skipped, stopped, warned"

instance ToText ExecutionResult where
    toText = \case
        ERErrored -> "errored"
        ERFailed -> "failed"
        ERPassed -> "passed"
        ERPending -> "pending"
        ERSkipped -> "skipped"
        ERStopped -> "stopped"
        ERWarned -> "warned"

instance Hashable ExecutionResult
instance ToQuery ExecutionResult
instance ToHeader ExecutionResult

instance FromJSON ExecutionResult where
    parseJSON = parseJSONText "ExecutionResult"

data ExecutionStatus
    = Pending
    | Running
    | Completed
    | Scheduling
    | Processing
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText ExecutionStatus where
    parser = takeLowerText >>= \case
        "completed" -> pure Completed
        "pending" -> pure Pending
        "processing" -> pure Processing
        "running" -> pure Running
        "scheduling" -> pure Scheduling
        e -> fromTextError $ "Failure parsing ExecutionStatus from value: '" <> e
           <> "'. Accepted values: completed, pending, processing, running, scheduling"

instance ToText ExecutionStatus where
    toText = \case
        Completed -> "completed"
        Pending -> "pending"
        Processing -> "processing"
        Running -> "running"
        Scheduling -> "scheduling"

instance Hashable ExecutionStatus
instance ToQuery ExecutionStatus
instance ToHeader ExecutionStatus

instance FromJSON ExecutionStatus where
    parseJSON = parseJSONText "ExecutionStatus"

data RuleOperator
    = LessThan
    | IN
    | Equals
    | NotIn
    | GreaterThan
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText RuleOperator where
    parser = takeLowerText >>= \case
        "equals" -> pure Equals
        "greater_than" -> pure GreaterThan
        "in" -> pure IN
        "less_than" -> pure LessThan
        "not_in" -> pure NotIn
        e -> fromTextError $ "Failure parsing RuleOperator from value: '" <> e
           <> "'. Accepted values: equals, greater_than, in, less_than, not_in"

instance ToText RuleOperator where
    toText = \case
        Equals -> "equals"
        GreaterThan -> "greater_than"
        IN -> "in"
        LessThan -> "less_than"
        NotIn -> "not_in"

instance Hashable RuleOperator
instance ToQuery RuleOperator
instance ToHeader RuleOperator

instance ToJSON RuleOperator where
    toJSON = toJSONText

instance FromJSON RuleOperator where
    parseJSON = parseJSONText "RuleOperator"

data SampleType
    = TX
    | NativeAvgDrawtime
    | NativeFps
    | RX
    | OpenglFps
    | OpenglAvgDrawtime
    | NativeMaxDrawtime
    | TxRate
    | NativeMinDrawtime
    | Memory
    | NativeFrames
    | Threads
    | RxRate
    | OpenglMinDrawtime
    | CPU
    | OpenglMaxDrawtime
    | OpenglFrames
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText SampleType where
    parser = takeLowerText >>= \case
        "cpu" -> pure CPU
        "memory" -> pure Memory
        "native_avg_drawtime" -> pure NativeAvgDrawtime
        "native_fps" -> pure NativeFps
        "native_frames" -> pure NativeFrames
        "native_max_drawtime" -> pure NativeMaxDrawtime
        "native_min_drawtime" -> pure NativeMinDrawtime
        "opengl_avg_drawtime" -> pure OpenglAvgDrawtime
        "opengl_fps" -> pure OpenglFps
        "opengl_frames" -> pure OpenglFrames
        "opengl_max_drawtime" -> pure OpenglMaxDrawtime
        "opengl_min_drawtime" -> pure OpenglMinDrawtime
        "rx" -> pure RX
        "rx_rate" -> pure RxRate
        "tx" -> pure TX
        "threads" -> pure Threads
        "tx_rate" -> pure TxRate
        e -> fromTextError $ "Failure parsing SampleType from value: '" <> e
           <> "'. Accepted values: cpu, memory, native_avg_drawtime, native_fps, native_frames, native_max_drawtime, native_min_drawtime, opengl_avg_drawtime, opengl_fps, opengl_frames, opengl_max_drawtime, opengl_min_drawtime, rx, rx_rate, tx, threads, tx_rate"

instance ToText SampleType where
    toText = \case
        CPU -> "cpu"
        Memory -> "memory"
        NativeAvgDrawtime -> "native_avg_drawtime"
        NativeFps -> "native_fps"
        NativeFrames -> "native_frames"
        NativeMaxDrawtime -> "native_max_drawtime"
        NativeMinDrawtime -> "native_min_drawtime"
        OpenglAvgDrawtime -> "opengl_avg_drawtime"
        OpenglFps -> "opengl_fps"
        OpenglFrames -> "opengl_frames"
        OpenglMaxDrawtime -> "opengl_max_drawtime"
        OpenglMinDrawtime -> "opengl_min_drawtime"
        RX -> "rx"
        RxRate -> "rx_rate"
        TX -> "tx"
        Threads -> "threads"
        TxRate -> "tx_rate"

instance Hashable SampleType
instance ToQuery SampleType
instance ToHeader SampleType

instance FromJSON SampleType where
    parseJSON = parseJSONText "SampleType"

data TestType
    = Calabash
    | Instrumentation
    | AppiumJavaJunit
    | AppiumJavaTestng
    | Uiautomator
    | BuiltinExplorer
    | BuiltinFuzz
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText TestType where
    parser = takeLowerText >>= \case
        "appium_java_junit" -> pure AppiumJavaJunit
        "appium_java_testng" -> pure AppiumJavaTestng
        "builtin_explorer" -> pure BuiltinExplorer
        "builtin_fuzz" -> pure BuiltinFuzz
        "calabash" -> pure Calabash
        "instrumentation" -> pure Instrumentation
        "uiautomator" -> pure Uiautomator
        e -> fromTextError $ "Failure parsing TestType from value: '" <> e
           <> "'. Accepted values: appium_java_junit, appium_java_testng, builtin_explorer, builtin_fuzz, calabash, instrumentation, uiautomator"

instance ToText TestType where
    toText = \case
        AppiumJavaJunit -> "appium_java_junit"
        AppiumJavaTestng -> "appium_java_testng"
        BuiltinExplorer -> "builtin_explorer"
        BuiltinFuzz -> "builtin_fuzz"
        Calabash -> "calabash"
        Instrumentation -> "instrumentation"
        Uiautomator -> "uiautomator"

instance Hashable TestType
instance ToQuery TestType
instance ToHeader TestType

instance ToJSON TestType where
    toJSON = toJSONText

instance FromJSON TestType where
    parseJSON = parseJSONText "TestType"

data UploadStatus
    = USInitialized
    | USFailed
    | USProcessing
    | USSucceeded
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText UploadStatus where
    parser = takeLowerText >>= \case
        "failed" -> pure USFailed
        "initialized" -> pure USInitialized
        "processing" -> pure USProcessing
        "succeeded" -> pure USSucceeded
        e -> fromTextError $ "Failure parsing UploadStatus from value: '" <> e
           <> "'. Accepted values: failed, initialized, processing, succeeded"

instance ToText UploadStatus where
    toText = \case
        USFailed -> "failed"
        USInitialized -> "initialized"
        USProcessing -> "processing"
        USSucceeded -> "succeeded"

instance Hashable UploadStatus
instance ToQuery UploadStatus
instance ToHeader UploadStatus

instance FromJSON UploadStatus where
    parseJSON = parseJSONText "UploadStatus"

data UploadType
    = AppiumJavaJunitTestPackage
    | InstrumentationTestPackage
    | AndroidApp
    | ExternalData
    | AppiumJavaTestngTestPackage
    | UiautomatorTestPackage
    | CalabashTestPackage
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText UploadType where
    parser = takeLowerText >>= \case
        "android_app" -> pure AndroidApp
        "appium_java_junit_test_package" -> pure AppiumJavaJunitTestPackage
        "appium_java_testng_test_package" -> pure AppiumJavaTestngTestPackage
        "calabash_test_package" -> pure CalabashTestPackage
        "external_data" -> pure ExternalData
        "instrumentation_test_package" -> pure InstrumentationTestPackage
        "uiautomator_test_package" -> pure UiautomatorTestPackage
        e -> fromTextError $ "Failure parsing UploadType from value: '" <> e
           <> "'. Accepted values: android_app, appium_java_junit_test_package, appium_java_testng_test_package, calabash_test_package, external_data, instrumentation_test_package, uiautomator_test_package"

instance ToText UploadType where
    toText = \case
        AndroidApp -> "android_app"
        AppiumJavaJunitTestPackage -> "appium_java_junit_test_package"
        AppiumJavaTestngTestPackage -> "appium_java_testng_test_package"
        CalabashTestPackage -> "calabash_test_package"
        ExternalData -> "external_data"
        InstrumentationTestPackage -> "instrumentation_test_package"
        UiautomatorTestPackage -> "uiautomator_test_package"

instance Hashable UploadType
instance ToQuery UploadType
instance ToHeader UploadType

instance ToJSON UploadType where
    toJSON = toJSONText

instance FromJSON UploadType where
    parseJSON = parseJSONText "UploadType"

-- | Represents the output of a test. Examples of artifacts include logs and
-- screenshots.
--
-- /See:/ 'artifact' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'artArn'
--
-- * 'artUrl'
--
-- * 'artExtension'
--
-- * 'artName'
--
-- * 'artType'
data Artifact = Artifact'
    { _artArn       :: !(Maybe Text)
    , _artUrl       :: !(Maybe Text)
    , _artExtension :: !(Maybe Text)
    , _artName      :: !(Maybe Text)
    , _artType      :: !(Maybe ArtifactType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'Artifact' smart constructor.
artifact :: Artifact
artifact =
    Artifact'
    { _artArn = Nothing
    , _artUrl = Nothing
    , _artExtension = Nothing
    , _artName = Nothing
    , _artType = Nothing
    }

-- | The artifact\'s ARN.
artArn :: Lens' Artifact (Maybe Text)
artArn = lens _artArn (\ s a -> s{_artArn = a});

-- | The pre-signed Amazon S3 URL that can be used with a corresponding GET
-- request to download the artifact\'s file.
artUrl :: Lens' Artifact (Maybe Text)
artUrl = lens _artUrl (\ s a -> s{_artUrl = a});

-- | The artifact\'s file extension.
artExtension :: Lens' Artifact (Maybe Text)
artExtension = lens _artExtension (\ s a -> s{_artExtension = a});

-- | The artifact\'s name.
artName :: Lens' Artifact (Maybe Text)
artName = lens _artName (\ s a -> s{_artName = a});

-- | The artifact\'s type.
--
-- Allowed values include the following:
--
-- -   APPIUM_JAVA_OUTPUT: The Appium Java output type.
--
-- -   APPIUM_JAVA_XML_OUTPUT: The Appium Java XML output type.
--
-- -   APPIUM_SERVER_OUTPUT: The Appium server output type.
--
-- -   AUTOMATION_OUTPUT: The automation output type.
--
-- -   CALABASH_JSON_OUTPUT: The Calabash JSON output type.
--
-- -   CALABASH_JAVA_XML_OUTPUT: The Calabash Java XML output type.
--
-- -   CALABASH_PRETTY_OUTPUT: The Calabash pretty output type.
--
-- -   CALABASH_STANDARD_OUTPUT: The Calabash standard output type.
--
-- -   DEVICE_LOG: The device log type.
--
-- -   EXERCISER_MONKEY_OUTPUT: The artifact (log) generated by a fuzz
--     test.
--
-- -   INSTRUMENTATION_OUTPUT: The instrumentation type.
--
-- -   MESSAGE_LOG: The message log type.
--
-- -   RESULT_LOG: The result log type.
--
-- -   SCREENSHOT: The screenshot type.
--
-- -   SERVICE_LOG: The service log type.
--
-- -   UNKNOWN: An unknown type.
--
artType :: Lens' Artifact (Maybe ArtifactType)
artType = lens _artType (\ s a -> s{_artType = a});

instance FromJSON Artifact where
        parseJSON
          = withObject "Artifact"
              (\ x ->
                 Artifact' <$>
                   (x .:? "arn") <*> (x .:? "url") <*>
                     (x .:? "extension")
                     <*> (x .:? "name")
                     <*> (x .:? "type"))

-- | Represents the amount of CPU that an app is using on a physical device.
--
-- Note that this does not represent system-wide CPU usage.
--
-- /See:/ 'cpu' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'cpuFrequency'
--
-- * 'cpuClock'
--
-- * 'cpuArchitecture'
data CPU = CPU'
    { _cpuFrequency    :: !(Maybe Text)
    , _cpuClock        :: !(Maybe Double)
    , _cpuArchitecture :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'CPU' smart constructor.
cpu :: CPU
cpu =
    CPU'
    { _cpuFrequency = Nothing
    , _cpuClock = Nothing
    , _cpuArchitecture = Nothing
    }

-- | The CPU\'s frequency.
cpuFrequency :: Lens' CPU (Maybe Text)
cpuFrequency = lens _cpuFrequency (\ s a -> s{_cpuFrequency = a});

-- | The clock speed of the device\'s CPU, expressed in hertz (Hz). For
-- example, a 1.2 GHz CPU is expressed as 1200000000.
cpuClock :: Lens' CPU (Maybe Double)
cpuClock = lens _cpuClock (\ s a -> s{_cpuClock = a});

-- | The CPU\'s architecture, for example x86 or ARM.
cpuArchitecture :: Lens' CPU (Maybe Text)
cpuArchitecture = lens _cpuArchitecture (\ s a -> s{_cpuArchitecture = a});

instance FromJSON CPU where
        parseJSON
          = withObject "CPU"
              (\ x ->
                 CPU' <$>
                   (x .:? "frequency") <*> (x .:? "clock") <*>
                     (x .:? "architecture"))

-- | Represents entity counters.
--
-- /See:/ 'counters' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'couPassed'
--
-- * 'couSkipped'
--
-- * 'couWarned'
--
-- * 'couStopped'
--
-- * 'couTotal'
--
-- * 'couFailed'
--
-- * 'couErrored'
data Counters = Counters'
    { _couPassed  :: !(Maybe Int)
    , _couSkipped :: !(Maybe Int)
    , _couWarned  :: !(Maybe Int)
    , _couStopped :: !(Maybe Int)
    , _couTotal   :: !(Maybe Int)
    , _couFailed  :: !(Maybe Int)
    , _couErrored :: !(Maybe Int)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'Counters' smart constructor.
counters :: Counters
counters =
    Counters'
    { _couPassed = Nothing
    , _couSkipped = Nothing
    , _couWarned = Nothing
    , _couStopped = Nothing
    , _couTotal = Nothing
    , _couFailed = Nothing
    , _couErrored = Nothing
    }

-- | The number of passed entities.
couPassed :: Lens' Counters (Maybe Int)
couPassed = lens _couPassed (\ s a -> s{_couPassed = a});

-- | The number of skipped entities.
couSkipped :: Lens' Counters (Maybe Int)
couSkipped = lens _couSkipped (\ s a -> s{_couSkipped = a});

-- | The number of warned entities.
couWarned :: Lens' Counters (Maybe Int)
couWarned = lens _couWarned (\ s a -> s{_couWarned = a});

-- | The number of stopped entities.
couStopped :: Lens' Counters (Maybe Int)
couStopped = lens _couStopped (\ s a -> s{_couStopped = a});

-- | The total number of entities.
couTotal :: Lens' Counters (Maybe Int)
couTotal = lens _couTotal (\ s a -> s{_couTotal = a});

-- | The number of failed entities.
couFailed :: Lens' Counters (Maybe Int)
couFailed = lens _couFailed (\ s a -> s{_couFailed = a});

-- | The number of errored entities.
couErrored :: Lens' Counters (Maybe Int)
couErrored = lens _couErrored (\ s a -> s{_couErrored = a});

instance FromJSON Counters where
        parseJSON
          = withObject "Counters"
              (\ x ->
                 Counters' <$>
                   (x .:? "passed") <*> (x .:? "skipped") <*>
                     (x .:? "warned")
                     <*> (x .:? "stopped")
                     <*> (x .:? "total")
                     <*> (x .:? "failed")
                     <*> (x .:? "errored"))

-- | Represents a device type that an app is tested against.
--
-- /See:/ 'device' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'devCarrier'
--
-- * 'devImage'
--
-- * 'devManufacturer'
--
-- * 'devPlatform'
--
-- * 'devArn'
--
-- * 'devFormFactor'
--
-- * 'devResolution'
--
-- * 'devMemory'
--
-- * 'devRadio'
--
-- * 'devOs'
--
-- * 'devName'
--
-- * 'devModel'
--
-- * 'devCpu'
--
-- * 'devHeapSize'
data Device = Device'
    { _devCarrier      :: !(Maybe Text)
    , _devImage        :: !(Maybe Text)
    , _devManufacturer :: !(Maybe Text)
    , _devPlatform     :: !(Maybe DevicePlatform)
    , _devArn          :: !(Maybe Text)
    , _devFormFactor   :: !(Maybe DeviceFormFactor)
    , _devResolution   :: !(Maybe Resolution)
    , _devMemory       :: !(Maybe Integer)
    , _devRadio        :: !(Maybe Text)
    , _devOs           :: !(Maybe Text)
    , _devName         :: !(Maybe Text)
    , _devModel        :: !(Maybe Text)
    , _devCpu          :: !(Maybe CPU)
    , _devHeapSize     :: !(Maybe Integer)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'Device' smart constructor.
device :: Device
device =
    Device'
    { _devCarrier = Nothing
    , _devImage = Nothing
    , _devManufacturer = Nothing
    , _devPlatform = Nothing
    , _devArn = Nothing
    , _devFormFactor = Nothing
    , _devResolution = Nothing
    , _devMemory = Nothing
    , _devRadio = Nothing
    , _devOs = Nothing
    , _devName = Nothing
    , _devModel = Nothing
    , _devCpu = Nothing
    , _devHeapSize = Nothing
    }

-- | The device\'s carrier.
devCarrier :: Lens' Device (Maybe Text)
devCarrier = lens _devCarrier (\ s a -> s{_devCarrier = a});

-- | The device\'s image name.
devImage :: Lens' Device (Maybe Text)
devImage = lens _devImage (\ s a -> s{_devImage = a});

-- | The device\'s manufacturer name.
devManufacturer :: Lens' Device (Maybe Text)
devManufacturer = lens _devManufacturer (\ s a -> s{_devManufacturer = a});

-- | The device\'s platform.
--
-- Allowed values include:
--
-- -   ANDROID: The Android platform.
--
devPlatform :: Lens' Device (Maybe DevicePlatform)
devPlatform = lens _devPlatform (\ s a -> s{_devPlatform = a});

-- | The device\'s ARN.
devArn :: Lens' Device (Maybe Text)
devArn = lens _devArn (\ s a -> s{_devArn = a});

-- | The device\'s form factor.
--
-- Allowed values include:
--
-- -   PHONE: The phone form factor.
--
-- -   TABLET: The tablet form factor.
--
devFormFactor :: Lens' Device (Maybe DeviceFormFactor)
devFormFactor = lens _devFormFactor (\ s a -> s{_devFormFactor = a});

-- | FIXME: Undocumented member.
devResolution :: Lens' Device (Maybe Resolution)
devResolution = lens _devResolution (\ s a -> s{_devResolution = a});

-- | The device\'s total memory size, expressed in bytes.
devMemory :: Lens' Device (Maybe Integer)
devMemory = lens _devMemory (\ s a -> s{_devMemory = a});

-- | The device\'s radio.
devRadio :: Lens' Device (Maybe Text)
devRadio = lens _devRadio (\ s a -> s{_devRadio = a});

-- | The device\'s operating system type.
devOs :: Lens' Device (Maybe Text)
devOs = lens _devOs (\ s a -> s{_devOs = a});

-- | The device\'s display name.
devName :: Lens' Device (Maybe Text)
devName = lens _devName (\ s a -> s{_devName = a});

-- | The device\'s model name.
devModel :: Lens' Device (Maybe Text)
devModel = lens _devModel (\ s a -> s{_devModel = a});

-- | Information about the device\'s CPU.
devCpu :: Lens' Device (Maybe CPU)
devCpu = lens _devCpu (\ s a -> s{_devCpu = a});

-- | The device\'s heap size, expressed in bytes.
devHeapSize :: Lens' Device (Maybe Integer)
devHeapSize = lens _devHeapSize (\ s a -> s{_devHeapSize = a});

instance FromJSON Device where
        parseJSON
          = withObject "Device"
              (\ x ->
                 Device' <$>
                   (x .:? "carrier") <*> (x .:? "image") <*>
                     (x .:? "manufacturer")
                     <*> (x .:? "platform")
                     <*> (x .:? "arn")
                     <*> (x .:? "formFactor")
                     <*> (x .:? "resolution")
                     <*> (x .:? "memory")
                     <*> (x .:? "radio")
                     <*> (x .:? "os")
                     <*> (x .:? "name")
                     <*> (x .:? "model")
                     <*> (x .:? "cpu")
                     <*> (x .:? "heapSize"))

-- | Represents a collection of device types.
--
-- /See:/ 'devicePool' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dpArn'
--
-- * 'dpRules'
--
-- * 'dpName'
--
-- * 'dpType'
--
-- * 'dpDescription'
data DevicePool = DevicePool'
    { _dpArn         :: !(Maybe Text)
    , _dpRules       :: !(Maybe [Rule])
    , _dpName        :: !(Maybe Text)
    , _dpType        :: !(Maybe DevicePoolType)
    , _dpDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DevicePool' smart constructor.
devicePool :: DevicePool
devicePool =
    DevicePool'
    { _dpArn = Nothing
    , _dpRules = Nothing
    , _dpName = Nothing
    , _dpType = Nothing
    , _dpDescription = Nothing
    }

-- | The device pool\'s ARN.
dpArn :: Lens' DevicePool (Maybe Text)
dpArn = lens _dpArn (\ s a -> s{_dpArn = a});

-- | Information about the device pool\'s rules.
dpRules :: Lens' DevicePool [Rule]
dpRules = lens _dpRules (\ s a -> s{_dpRules = a}) . _Default;

-- | The device pool\'s name.
dpName :: Lens' DevicePool (Maybe Text)
dpName = lens _dpName (\ s a -> s{_dpName = a});

-- | The device pool\'s type.
--
-- Allowed values include:
--
-- -   CURATED: A device pool that is created and managed by AWS Device
--     Farm.
--
-- -   PRIVATE: A device pool that is created and managed by the device
--     pool developer.
--
dpType :: Lens' DevicePool (Maybe DevicePoolType)
dpType = lens _dpType (\ s a -> s{_dpType = a});

-- | The device pool\'s description.
dpDescription :: Lens' DevicePool (Maybe Text)
dpDescription = lens _dpDescription (\ s a -> s{_dpDescription = a});

instance FromJSON DevicePool where
        parseJSON
          = withObject "DevicePool"
              (\ x ->
                 DevicePool' <$>
                   (x .:? "arn") <*> (x .:? "rules" .!= mempty) <*>
                     (x .:? "name")
                     <*> (x .:? "type")
                     <*> (x .:? "description"))

-- | Represents a device pool compatibility result.
--
-- /See:/ 'devicePoolCompatibilityResult' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dpcrDevice'
--
-- * 'dpcrCompatible'
--
-- * 'dpcrIncompatibilityMessages'
data DevicePoolCompatibilityResult = DevicePoolCompatibilityResult'
    { _dpcrDevice                  :: !(Maybe Device)
    , _dpcrCompatible              :: !(Maybe Bool)
    , _dpcrIncompatibilityMessages :: !(Maybe [IncompatibilityMessage])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DevicePoolCompatibilityResult' smart constructor.
devicePoolCompatibilityResult :: DevicePoolCompatibilityResult
devicePoolCompatibilityResult =
    DevicePoolCompatibilityResult'
    { _dpcrDevice = Nothing
    , _dpcrCompatible = Nothing
    , _dpcrIncompatibilityMessages = Nothing
    }

-- | FIXME: Undocumented member.
dpcrDevice :: Lens' DevicePoolCompatibilityResult (Maybe Device)
dpcrDevice = lens _dpcrDevice (\ s a -> s{_dpcrDevice = a});

-- | Whether the result was compatible with the device pool.
dpcrCompatible :: Lens' DevicePoolCompatibilityResult (Maybe Bool)
dpcrCompatible = lens _dpcrCompatible (\ s a -> s{_dpcrCompatible = a});

-- | Information about the compatibility.
dpcrIncompatibilityMessages :: Lens' DevicePoolCompatibilityResult [IncompatibilityMessage]
dpcrIncompatibilityMessages = lens _dpcrIncompatibilityMessages (\ s a -> s{_dpcrIncompatibilityMessages = a}) . _Default;

instance FromJSON DevicePoolCompatibilityResult where
        parseJSON
          = withObject "DevicePoolCompatibilityResult"
              (\ x ->
                 DevicePoolCompatibilityResult' <$>
                   (x .:? "device") <*> (x .:? "compatible") <*>
                     (x .:? "incompatibilityMessages" .!= mempty))

-- | Represents information about incompatibility.
--
-- /See:/ 'incompatibilityMessage' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'imType'
--
-- * 'imMessage'
data IncompatibilityMessage = IncompatibilityMessage'
    { _imType    :: !(Maybe DeviceAttribute)
    , _imMessage :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'IncompatibilityMessage' smart constructor.
incompatibilityMessage :: IncompatibilityMessage
incompatibilityMessage =
    IncompatibilityMessage'
    { _imType = Nothing
    , _imMessage = Nothing
    }

-- | The type of incompatibility.
--
-- Allowed values include:
--
-- -   ARN: The ARN.
--
-- -   FORM_FACTOR: The form factor (for example, phone or tablet).
--
-- -   MANUFACTURER: The manufacturer.
--
-- -   PLATFORM: The platform.
--
imType :: Lens' IncompatibilityMessage (Maybe DeviceAttribute)
imType = lens _imType (\ s a -> s{_imType = a});

-- | A message about the incompatibility.
imMessage :: Lens' IncompatibilityMessage (Maybe Text)
imMessage = lens _imMessage (\ s a -> s{_imMessage = a});

instance FromJSON IncompatibilityMessage where
        parseJSON
          = withObject "IncompatibilityMessage"
              (\ x ->
                 IncompatibilityMessage' <$>
                   (x .:? "type") <*> (x .:? "message"))

-- | Represents a device.
--
-- /See:/ 'job' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'jobStatus'
--
-- * 'jobCounters'
--
-- * 'jobArn'
--
-- * 'jobCreated'
--
-- * 'jobDevice'
--
-- * 'jobStopped'
--
-- * 'jobResult'
--
-- * 'jobName'
--
-- * 'jobType'
--
-- * 'jobMessage'
--
-- * 'jobStarted'
data Job = Job'
    { _jobStatus   :: !(Maybe ExecutionStatus)
    , _jobCounters :: !(Maybe Counters)
    , _jobArn      :: !(Maybe Text)
    , _jobCreated  :: !(Maybe POSIX)
    , _jobDevice   :: !(Maybe Device)
    , _jobStopped  :: !(Maybe POSIX)
    , _jobResult   :: !(Maybe ExecutionResult)
    , _jobName     :: !(Maybe Text)
    , _jobType     :: !(Maybe TestType)
    , _jobMessage  :: !(Maybe Text)
    , _jobStarted  :: !(Maybe POSIX)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'Job' smart constructor.
job :: Job
job =
    Job'
    { _jobStatus = Nothing
    , _jobCounters = Nothing
    , _jobArn = Nothing
    , _jobCreated = Nothing
    , _jobDevice = Nothing
    , _jobStopped = Nothing
    , _jobResult = Nothing
    , _jobName = Nothing
    , _jobType = Nothing
    , _jobMessage = Nothing
    , _jobStarted = Nothing
    }

-- | The job\'s status.
--
-- Allowed values include:
--
-- -   COMPLETED: A completed status.
--
-- -   PENDING: A pending status.
--
-- -   PROCESSING: A processing status.
--
-- -   RUNNING: A running status.
--
-- -   SCHEDULING: A scheduling status.
--
jobStatus :: Lens' Job (Maybe ExecutionStatus)
jobStatus = lens _jobStatus (\ s a -> s{_jobStatus = a});

-- | The job\'s result counters.
jobCounters :: Lens' Job (Maybe Counters)
jobCounters = lens _jobCounters (\ s a -> s{_jobCounters = a});

-- | The job\'s ARN.
jobArn :: Lens' Job (Maybe Text)
jobArn = lens _jobArn (\ s a -> s{_jobArn = a});

-- | When the job was created.
jobCreated :: Lens' Job (Maybe UTCTime)
jobCreated = lens _jobCreated (\ s a -> s{_jobCreated = a}) . mapping _Time;

-- | FIXME: Undocumented member.
jobDevice :: Lens' Job (Maybe Device)
jobDevice = lens _jobDevice (\ s a -> s{_jobDevice = a});

-- | The job\'s stop time.
jobStopped :: Lens' Job (Maybe UTCTime)
jobStopped = lens _jobStopped (\ s a -> s{_jobStopped = a}) . mapping _Time;

-- | The job\'s result.
--
-- Allowed values include:
--
-- -   ERRORED: An error condition.
--
-- -   FAILED: A failed condition.
--
-- -   SKIPPED: A skipped condition.
--
-- -   STOPPED: A stopped condition.
--
-- -   PASSED: A passing condition.
--
-- -   PENDING: A pending condition.
--
-- -   WARNED: A warning condition.
--
jobResult :: Lens' Job (Maybe ExecutionResult)
jobResult = lens _jobResult (\ s a -> s{_jobResult = a});

-- | The job\'s name.
jobName :: Lens' Job (Maybe Text)
jobName = lens _jobName (\ s a -> s{_jobName = a});

-- | The job\'s type.
--
-- Allowed values include the following:
--
-- -   APPIUM_JAVA_JUNIT: The Appium Java JUnit type.
--
-- -   APPIUM_JAVA_TESTNG: The Appium Java TestNG type.
--
-- -   BUILTIN_EXPLORER: An app explorer that will traverse an app,
--     interacting with it and capturing screenshots at the same time.
--
-- -   BUILTIN_FUZZ: The built-in fuzz type.
--
-- -   CALABASH: The Calabash type.
--
-- -   INSTRUMENTATION: The Instrumentation type.
--
-- -   UIAUTOMATOR: The uiautomator type.
--
jobType :: Lens' Job (Maybe TestType)
jobType = lens _jobType (\ s a -> s{_jobType = a});

-- | A message about the job\'s result.
jobMessage :: Lens' Job (Maybe Text)
jobMessage = lens _jobMessage (\ s a -> s{_jobMessage = a});

-- | The job\'s start time.
jobStarted :: Lens' Job (Maybe UTCTime)
jobStarted = lens _jobStarted (\ s a -> s{_jobStarted = a}) . mapping _Time;

instance FromJSON Job where
        parseJSON
          = withObject "Job"
              (\ x ->
                 Job' <$>
                   (x .:? "status") <*> (x .:? "counters") <*>
                     (x .:? "arn")
                     <*> (x .:? "created")
                     <*> (x .:? "device")
                     <*> (x .:? "stopped")
                     <*> (x .:? "result")
                     <*> (x .:? "name")
                     <*> (x .:? "type")
                     <*> (x .:? "message")
                     <*> (x .:? "started"))

-- | Represents a latitude and longitude pair, expressed in geographic
-- coordinate system degrees (for example 47.6204, -122.3491).
--
-- Elevation is currently not supported.
--
-- /See:/ 'location' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'locLatitude'
--
-- * 'locLongitude'
data Location = Location'
    { _locLatitude  :: !Double
    , _locLongitude :: !Double
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'Location' smart constructor.
location :: Double -> Double -> Location
location pLatitude pLongitude =
    Location'
    { _locLatitude = pLatitude
    , _locLongitude = pLongitude
    }

-- | The latitude.
locLatitude :: Lens' Location Double
locLatitude = lens _locLatitude (\ s a -> s{_locLatitude = a});

-- | The longitude.
locLongitude :: Lens' Location Double
locLongitude = lens _locLongitude (\ s a -> s{_locLongitude = a});

instance ToJSON Location where
        toJSON Location'{..}
          = object
              ["latitude" .= _locLatitude,
               "longitude" .= _locLongitude]

-- | Represents a specific warning or failure.
--
-- /See:/ 'problem' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'proDevice'
--
-- * 'proTest'
--
-- * 'proResult'
--
-- * 'proRun'
--
-- * 'proJob'
--
-- * 'proMessage'
--
-- * 'proSuite'
data Problem = Problem'
    { _proDevice  :: !(Maybe Device)
    , _proTest    :: !(Maybe ProblemDetail)
    , _proResult  :: !(Maybe ExecutionResult)
    , _proRun     :: !(Maybe ProblemDetail)
    , _proJob     :: !(Maybe ProblemDetail)
    , _proMessage :: !(Maybe Text)
    , _proSuite   :: !(Maybe ProblemDetail)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'Problem' smart constructor.
problem :: Problem
problem =
    Problem'
    { _proDevice = Nothing
    , _proTest = Nothing
    , _proResult = Nothing
    , _proRun = Nothing
    , _proJob = Nothing
    , _proMessage = Nothing
    , _proSuite = Nothing
    }

-- | Information about the associated device.
proDevice :: Lens' Problem (Maybe Device)
proDevice = lens _proDevice (\ s a -> s{_proDevice = a});

-- | Information about the associated test.
proTest :: Lens' Problem (Maybe ProblemDetail)
proTest = lens _proTest (\ s a -> s{_proTest = a});

-- | The problem\'s result.
--
-- Allowed values include:
--
-- -   ERRORED: An error condition.
--
-- -   FAILED: A failed condition.
--
-- -   SKIPPED: A skipped condition.
--
-- -   STOPPED: A stopped condition.
--
-- -   PASSED: A passing condition.
--
-- -   PENDING: A pending condition.
--
-- -   WARNED: A warning condition.
--
proResult :: Lens' Problem (Maybe ExecutionResult)
proResult = lens _proResult (\ s a -> s{_proResult = a});

-- | Information about the associated run.
proRun :: Lens' Problem (Maybe ProblemDetail)
proRun = lens _proRun (\ s a -> s{_proRun = a});

-- | Information about the associated job.
proJob :: Lens' Problem (Maybe ProblemDetail)
proJob = lens _proJob (\ s a -> s{_proJob = a});

-- | A message about the problem\'s result.
proMessage :: Lens' Problem (Maybe Text)
proMessage = lens _proMessage (\ s a -> s{_proMessage = a});

-- | Information about the associated suite.
proSuite :: Lens' Problem (Maybe ProblemDetail)
proSuite = lens _proSuite (\ s a -> s{_proSuite = a});

instance FromJSON Problem where
        parseJSON
          = withObject "Problem"
              (\ x ->
                 Problem' <$>
                   (x .:? "device") <*> (x .:? "test") <*>
                     (x .:? "result")
                     <*> (x .:? "run")
                     <*> (x .:? "job")
                     <*> (x .:? "message")
                     <*> (x .:? "suite"))

-- | Information about a problem detail.
--
-- /See:/ 'problemDetail' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'pdArn'
--
-- * 'pdName'
data ProblemDetail = ProblemDetail'
    { _pdArn  :: !(Maybe Text)
    , _pdName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'ProblemDetail' smart constructor.
problemDetail :: ProblemDetail
problemDetail =
    ProblemDetail'
    { _pdArn = Nothing
    , _pdName = Nothing
    }

-- | The problem detail\'s ARN.
pdArn :: Lens' ProblemDetail (Maybe Text)
pdArn = lens _pdArn (\ s a -> s{_pdArn = a});

-- | The problem detail\'s name.
pdName :: Lens' ProblemDetail (Maybe Text)
pdName = lens _pdName (\ s a -> s{_pdName = a});

instance FromJSON ProblemDetail where
        parseJSON
          = withObject "ProblemDetail"
              (\ x ->
                 ProblemDetail' <$> (x .:? "arn") <*> (x .:? "name"))

-- | Represents an operating-system neutral workspace for running and
-- managing tests.
--
-- /See:/ 'project' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'proArn'
--
-- * 'proCreated'
--
-- * 'proName'
data Project = Project'
    { _proArn     :: !(Maybe Text)
    , _proCreated :: !(Maybe POSIX)
    , _proName    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'Project' smart constructor.
project :: Project
project =
    Project'
    { _proArn = Nothing
    , _proCreated = Nothing
    , _proName = Nothing
    }

-- | The project\'s ARN.
proArn :: Lens' Project (Maybe Text)
proArn = lens _proArn (\ s a -> s{_proArn = a});

-- | When the project was created.
proCreated :: Lens' Project (Maybe UTCTime)
proCreated = lens _proCreated (\ s a -> s{_proCreated = a}) . mapping _Time;

-- | The project\'s name.
proName :: Lens' Project (Maybe Text)
proName = lens _proName (\ s a -> s{_proName = a});

instance FromJSON Project where
        parseJSON
          = withObject "Project"
              (\ x ->
                 Project' <$>
                   (x .:? "arn") <*> (x .:? "created") <*>
                     (x .:? "name"))

-- | Represents the set of radios and their states on a device. Examples of
-- radios include Wi-Fi, GPS, Bluetooth, and NFC.
--
-- /See:/ 'radios' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'radNfc'
--
-- * 'radGps'
--
-- * 'radBluetooth'
--
-- * 'radWifi'
data Radios = Radios'
    { _radNfc       :: !(Maybe Bool)
    , _radGps       :: !(Maybe Bool)
    , _radBluetooth :: !(Maybe Bool)
    , _radWifi      :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'Radios' smart constructor.
radios :: Radios
radios =
    Radios'
    { _radNfc = Nothing
    , _radGps = Nothing
    , _radBluetooth = Nothing
    , _radWifi = Nothing
    }

-- | True if NFC is enabled at the beginning of the test; otherwise, false.
radNfc :: Lens' Radios (Maybe Bool)
radNfc = lens _radNfc (\ s a -> s{_radNfc = a});

-- | True if GPS is enabled at the beginning of the test; otherwise, false.
radGps :: Lens' Radios (Maybe Bool)
radGps = lens _radGps (\ s a -> s{_radGps = a});

-- | True if Bluetooth is enabled at the beginning of the test; otherwise,
-- false.
radBluetooth :: Lens' Radios (Maybe Bool)
radBluetooth = lens _radBluetooth (\ s a -> s{_radBluetooth = a});

-- | True if Wi-Fi is enabled at the beginning of the test; otherwise, false.
radWifi :: Lens' Radios (Maybe Bool)
radWifi = lens _radWifi (\ s a -> s{_radWifi = a});

instance ToJSON Radios where
        toJSON Radios'{..}
          = object
              ["nfc" .= _radNfc, "gps" .= _radGps,
               "bluetooth" .= _radBluetooth, "wifi" .= _radWifi]

-- | Represents the screen resolution of a device in height and width,
-- expressed in pixels.
--
-- /See:/ 'resolution' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'resHeight'
--
-- * 'resWidth'
data Resolution = Resolution'
    { _resHeight :: !(Maybe Int)
    , _resWidth  :: !(Maybe Int)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'Resolution' smart constructor.
resolution :: Resolution
resolution =
    Resolution'
    { _resHeight = Nothing
    , _resWidth = Nothing
    }

-- | The screen resolution\'s height, expressed in pixels.
resHeight :: Lens' Resolution (Maybe Int)
resHeight = lens _resHeight (\ s a -> s{_resHeight = a});

-- | The screen resolution\'s width, expressed in pixels.
resWidth :: Lens' Resolution (Maybe Int)
resWidth = lens _resWidth (\ s a -> s{_resWidth = a});

instance FromJSON Resolution where
        parseJSON
          = withObject "Resolution"
              (\ x ->
                 Resolution' <$> (x .:? "height") <*> (x .:? "width"))

-- | Represents a condition for a device pool.
--
-- /See:/ 'rule' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'rulAttribute'
--
-- * 'rulOperator'
--
-- * 'rulValue'
data Rule = Rule'
    { _rulAttribute :: !(Maybe DeviceAttribute)
    , _rulOperator  :: !(Maybe RuleOperator)
    , _rulValue     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'Rule' smart constructor.
rule :: Rule
rule =
    Rule'
    { _rulAttribute = Nothing
    , _rulOperator = Nothing
    , _rulValue = Nothing
    }

-- | The rule\'s attribute.
--
-- Allowed values include:
--
-- -   ARN: The ARN.
--
-- -   FORM_FACTOR: The form factor (for example, phone or tablet).
--
-- -   MANUFACTURER: The manufacturer.
--
-- -   PLATFORM: The platform.
--
rulAttribute :: Lens' Rule (Maybe DeviceAttribute)
rulAttribute = lens _rulAttribute (\ s a -> s{_rulAttribute = a});

-- | The rule\'s operator.
--
-- -   EQUAL: The equals operator.
--
-- -   GREATER_THAN: The greater-than operator.
--
-- -   IN: The in operator.
--
-- -   LESS_THAN: The less-than operator.
--
-- -   NOT_IN: The not-in operator.
--
rulOperator :: Lens' Rule (Maybe RuleOperator)
rulOperator = lens _rulOperator (\ s a -> s{_rulOperator = a});

-- | The rule\'s value.
rulValue :: Lens' Rule (Maybe Text)
rulValue = lens _rulValue (\ s a -> s{_rulValue = a});

instance FromJSON Rule where
        parseJSON
          = withObject "Rule"
              (\ x ->
                 Rule' <$>
                   (x .:? "attribute") <*> (x .:? "operator") <*>
                     (x .:? "value"))

instance ToJSON Rule where
        toJSON Rule'{..}
          = object
              ["attribute" .= _rulAttribute,
               "operator" .= _rulOperator, "value" .= _rulValue]

-- | Represents an app on a set of devices with a specific test and
-- configuration.
--
-- /See:/ 'run' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'runStatus'
--
-- * 'runCounters'
--
-- * 'runPlatform'
--
-- * 'runArn'
--
-- * 'runCreated'
--
-- * 'runCompletedJobs'
--
-- * 'runStopped'
--
-- * 'runResult'
--
-- * 'runName'
--
-- * 'runType'
--
-- * 'runMessage'
--
-- * 'runTotalJobs'
--
-- * 'runStarted'
data Run = Run'
    { _runStatus        :: !(Maybe ExecutionStatus)
    , _runCounters      :: !(Maybe Counters)
    , _runPlatform      :: !(Maybe DevicePlatform)
    , _runArn           :: !(Maybe Text)
    , _runCreated       :: !(Maybe POSIX)
    , _runCompletedJobs :: !(Maybe Int)
    , _runStopped       :: !(Maybe POSIX)
    , _runResult        :: !(Maybe ExecutionResult)
    , _runName          :: !(Maybe Text)
    , _runType          :: !(Maybe TestType)
    , _runMessage       :: !(Maybe Text)
    , _runTotalJobs     :: !(Maybe Int)
    , _runStarted       :: !(Maybe POSIX)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'Run' smart constructor.
run :: Run
run =
    Run'
    { _runStatus = Nothing
    , _runCounters = Nothing
    , _runPlatform = Nothing
    , _runArn = Nothing
    , _runCreated = Nothing
    , _runCompletedJobs = Nothing
    , _runStopped = Nothing
    , _runResult = Nothing
    , _runName = Nothing
    , _runType = Nothing
    , _runMessage = Nothing
    , _runTotalJobs = Nothing
    , _runStarted = Nothing
    }

-- | The run\'s status.
--
-- Allowed values include:
--
-- -   COMPLETED: A completed status.
--
-- -   PENDING: A pending status.
--
-- -   PROCESSING: A processing status.
--
-- -   RUNNING: A running status.
--
-- -   SCHEDULING: A scheduling status.
--
runStatus :: Lens' Run (Maybe ExecutionStatus)
runStatus = lens _runStatus (\ s a -> s{_runStatus = a});

-- | The run\'s result counters.
runCounters :: Lens' Run (Maybe Counters)
runCounters = lens _runCounters (\ s a -> s{_runCounters = a});

-- | The run\'s platform.
--
-- Allowed values include:
--
-- -   ANDROID: The Android platform.
--
runPlatform :: Lens' Run (Maybe DevicePlatform)
runPlatform = lens _runPlatform (\ s a -> s{_runPlatform = a});

-- | The run\'s ARN.
runArn :: Lens' Run (Maybe Text)
runArn = lens _runArn (\ s a -> s{_runArn = a});

-- | When the run was created.
runCreated :: Lens' Run (Maybe UTCTime)
runCreated = lens _runCreated (\ s a -> s{_runCreated = a}) . mapping _Time;

-- | The total number of completed jobs.
runCompletedJobs :: Lens' Run (Maybe Int)
runCompletedJobs = lens _runCompletedJobs (\ s a -> s{_runCompletedJobs = a});

-- | The run\'s stop time.
runStopped :: Lens' Run (Maybe UTCTime)
runStopped = lens _runStopped (\ s a -> s{_runStopped = a}) . mapping _Time;

-- | The run\'s result.
--
-- Allowed values include:
--
-- -   ERRORED: An error condition.
--
-- -   FAILED: A failed condition.
--
-- -   SKIPPED: A skipped condition.
--
-- -   STOPPED: A stopped condition.
--
-- -   PASSED: A passing condition.
--
-- -   PENDING: A pending condition.
--
-- -   WARNED: A warning condition.
--
runResult :: Lens' Run (Maybe ExecutionResult)
runResult = lens _runResult (\ s a -> s{_runResult = a});

-- | The run\'s name.
runName :: Lens' Run (Maybe Text)
runName = lens _runName (\ s a -> s{_runName = a});

-- | The run\'s type.
--
-- Must be one of the following values:
--
-- -   APPIUM_JAVA_JUNIT: The Appium Java JUnit type.
--
-- -   APPIUM_JAVA_TESTNG: The Appium Java TestNG type.
--
-- -   BUILTIN_EXPLORER: An app explorer that will traverse an app,
--     interacting with it and capturing screenshots at the same time.
--
-- -   BUILTIN_FUZZ: The built-in fuzz type.
--
-- -   CALABASH: The Calabash type.
--
-- -   INSTRUMENTATION: The Instrumentation type.
--
-- -   UIAUTOMATOR: The uiautomator type.
--
runType :: Lens' Run (Maybe TestType)
runType = lens _runType (\ s a -> s{_runType = a});

-- | A message about the run\'s result.
runMessage :: Lens' Run (Maybe Text)
runMessage = lens _runMessage (\ s a -> s{_runMessage = a});

-- | The total number of jobs for the run.
runTotalJobs :: Lens' Run (Maybe Int)
runTotalJobs = lens _runTotalJobs (\ s a -> s{_runTotalJobs = a});

-- | The run\'s start time.
runStarted :: Lens' Run (Maybe UTCTime)
runStarted = lens _runStarted (\ s a -> s{_runStarted = a}) . mapping _Time;

instance FromJSON Run where
        parseJSON
          = withObject "Run"
              (\ x ->
                 Run' <$>
                   (x .:? "status") <*> (x .:? "counters") <*>
                     (x .:? "platform")
                     <*> (x .:? "arn")
                     <*> (x .:? "created")
                     <*> (x .:? "completedJobs")
                     <*> (x .:? "stopped")
                     <*> (x .:? "result")
                     <*> (x .:? "name")
                     <*> (x .:? "type")
                     <*> (x .:? "message")
                     <*> (x .:? "totalJobs")
                     <*> (x .:? "started"))

-- | Represents a sample of performance data.
--
-- /See:/ 'sample' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'samArn'
--
-- * 'samUrl'
--
-- * 'samType'
data Sample = Sample'
    { _samArn  :: !(Maybe Text)
    , _samUrl  :: !(Maybe Text)
    , _samType :: !(Maybe SampleType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'Sample' smart constructor.
sample :: Sample
sample =
    Sample'
    { _samArn = Nothing
    , _samUrl = Nothing
    , _samType = Nothing
    }

-- | The sample\'s ARN.
samArn :: Lens' Sample (Maybe Text)
samArn = lens _samArn (\ s a -> s{_samArn = a});

-- | The pre-signed Amazon S3 URL that can be used with a corresponding GET
-- request to download the sample\'s file.
samUrl :: Lens' Sample (Maybe Text)
samUrl = lens _samUrl (\ s a -> s{_samUrl = a});

-- | The sample\'s type.
--
-- Must be one of the following values:
--
-- -   CPU: A CPU sample type. This is expressed as the app processing CPU
--     time (including child processes) as reported by process, as a
--     percentage.
--
-- -   MEMORY: A memory usage sample type. This is expressed as the total
--     proportional set size of an app process, in kilobytes.
--
-- -   NATIVE_AVG_DRAWTIME
--
-- -   NATIVE_FPS
--
-- -   NATIVE_FRAMES
--
-- -   NATIVE_MAX_DRAWTIME
--
-- -   NATIVE_MIN_DRAWTIME
--
-- -   OPENGL_AVG_DRAWTIME
--
-- -   OPENGL_FPS
--
-- -   OPENGL_FRAMES
--
-- -   OPENGL_MAX_DRAWTIME
--
-- -   OPENGL_MIN_DRAWTIME
--
-- -   RX
--
-- -   RX_RATE: The total number of bytes per second (TCP and UDP) that are
--     sent, by app process.
--
-- -   THREADS: A threads sample type. This is expressed as the total
--     number of threads per app process.
--
-- -   TX
--
-- -   TX_RATE: The total number of bytes per second (TCP and UDP) that are
--     received, by app process.
--
samType :: Lens' Sample (Maybe SampleType)
samType = lens _samType (\ s a -> s{_samType = a});

instance FromJSON Sample where
        parseJSON
          = withObject "Sample"
              (\ x ->
                 Sample' <$>
                   (x .:? "arn") <*> (x .:? "url") <*> (x .:? "type"))

-- | Represents the settings for a run. Includes things like location, radio
-- states, auxiliary apps, and network profiles.
--
-- /See:/ 'scheduleRunConfiguration' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'srcRadios'
--
-- * 'srcLocation'
--
-- * 'srcLocale'
--
-- * 'srcNetworkProfileARN'
--
-- * 'srcExtraDataPackageARN'
--
-- * 'srcAuxiliaryApps'
data ScheduleRunConfiguration = ScheduleRunConfiguration'
    { _srcRadios              :: !(Maybe Radios)
    , _srcLocation            :: !(Maybe Location)
    , _srcLocale              :: !(Maybe Text)
    , _srcNetworkProfileARN   :: !(Maybe Text)
    , _srcExtraDataPackageARN :: !(Maybe Text)
    , _srcAuxiliaryApps       :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'ScheduleRunConfiguration' smart constructor.
scheduleRunConfiguration :: ScheduleRunConfiguration
scheduleRunConfiguration =
    ScheduleRunConfiguration'
    { _srcRadios = Nothing
    , _srcLocation = Nothing
    , _srcLocale = Nothing
    , _srcNetworkProfileARN = Nothing
    , _srcExtraDataPackageARN = Nothing
    , _srcAuxiliaryApps = Nothing
    }

-- | Information about the radio states for the run.
srcRadios :: Lens' ScheduleRunConfiguration (Maybe Radios)
srcRadios = lens _srcRadios (\ s a -> s{_srcRadios = a});

-- | Information about the location that is used for the run.
srcLocation :: Lens' ScheduleRunConfiguration (Maybe Location)
srcLocation = lens _srcLocation (\ s a -> s{_srcLocation = a});

-- | Information about the locale that is used for the run.
srcLocale :: Lens' ScheduleRunConfiguration (Maybe Text)
srcLocale = lens _srcLocale (\ s a -> s{_srcLocale = a});

-- | Reserved for internal use.
srcNetworkProfileARN :: Lens' ScheduleRunConfiguration (Maybe Text)
srcNetworkProfileARN = lens _srcNetworkProfileARN (\ s a -> s{_srcNetworkProfileARN = a});

-- | The ARN of the extra data for the run. The extra data is a .zip file
-- that AWS Device Farm will extract to external data.
srcExtraDataPackageARN :: Lens' ScheduleRunConfiguration (Maybe Text)
srcExtraDataPackageARN = lens _srcExtraDataPackageARN (\ s a -> s{_srcExtraDataPackageARN = a});

-- | A list of auxiliary apps for the run.
srcAuxiliaryApps :: Lens' ScheduleRunConfiguration [Text]
srcAuxiliaryApps = lens _srcAuxiliaryApps (\ s a -> s{_srcAuxiliaryApps = a}) . _Default;

instance ToJSON ScheduleRunConfiguration where
        toJSON ScheduleRunConfiguration'{..}
          = object
              ["radios" .= _srcRadios, "location" .= _srcLocation,
               "locale" .= _srcLocale,
               "networkProfileArn" .= _srcNetworkProfileARN,
               "extraDataPackageArn" .= _srcExtraDataPackageARN,
               "auxiliaryApps" .= _srcAuxiliaryApps]

-- | Represents additional test settings.
--
-- /See:/ 'scheduleRunTest' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'srtTestPackageARN'
--
-- * 'srtParameters'
--
-- * 'srtFilter'
--
-- * 'srtType'
data ScheduleRunTest = ScheduleRunTest'
    { _srtTestPackageARN :: !(Maybe Text)
    , _srtParameters     :: !(Maybe (Map Text Text))
    , _srtFilter         :: !(Maybe Text)
    , _srtType           :: !TestType
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'ScheduleRunTest' smart constructor.
scheduleRunTest :: TestType -> ScheduleRunTest
scheduleRunTest pType =
    ScheduleRunTest'
    { _srtTestPackageARN = Nothing
    , _srtParameters = Nothing
    , _srtFilter = Nothing
    , _srtType = pType
    }

-- | The ARN of the uploaded test that will be run.
srtTestPackageARN :: Lens' ScheduleRunTest (Maybe Text)
srtTestPackageARN = lens _srtTestPackageARN (\ s a -> s{_srtTestPackageARN = a});

-- | The test\'s parameters, such as test framework parameters and fixture
-- settings.
srtParameters :: Lens' ScheduleRunTest (HashMap Text Text)
srtParameters = lens _srtParameters (\ s a -> s{_srtParameters = a}) . _Default . _Map;

-- | The test\'s filter.
srtFilter :: Lens' ScheduleRunTest (Maybe Text)
srtFilter = lens _srtFilter (\ s a -> s{_srtFilter = a});

-- | The test\'s type.
--
-- Must be one of the following values:
--
-- -   APPIUM_JAVA_JUNIT: The Appium Java JUnit type.
--
-- -   APPIUM_JAVA_TESTNG: The Appium Java TestNG type.
--
-- -   BUILTIN_EXPLORER: An app explorer that will traverse an app,
--     interacting with it and capturing screenshots at the same time.
--
-- -   BUILTIN_FUZZ: The built-in fuzz type.
--
-- -   CALABASH: The Calabash type.
--
-- -   INSTRUMENTATION: The Instrumentation type.
--
-- -   UIAUTOMATOR: The uiautomator type.
--
srtType :: Lens' ScheduleRunTest TestType
srtType = lens _srtType (\ s a -> s{_srtType = a});

instance ToJSON ScheduleRunTest where
        toJSON ScheduleRunTest'{..}
          = object
              ["testPackageArn" .= _srtTestPackageARN,
               "parameters" .= _srtParameters,
               "filter" .= _srtFilter, "type" .= _srtType]

-- | Represents a collection of one or more tests.
--
-- /See:/ 'suite' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'suiStatus'
--
-- * 'suiCounters'
--
-- * 'suiArn'
--
-- * 'suiCreated'
--
-- * 'suiStopped'
--
-- * 'suiResult'
--
-- * 'suiName'
--
-- * 'suiType'
--
-- * 'suiMessage'
--
-- * 'suiStarted'
data Suite = Suite'
    { _suiStatus   :: !(Maybe ExecutionStatus)
    , _suiCounters :: !(Maybe Counters)
    , _suiArn      :: !(Maybe Text)
    , _suiCreated  :: !(Maybe POSIX)
    , _suiStopped  :: !(Maybe POSIX)
    , _suiResult   :: !(Maybe ExecutionResult)
    , _suiName     :: !(Maybe Text)
    , _suiType     :: !(Maybe TestType)
    , _suiMessage  :: !(Maybe Text)
    , _suiStarted  :: !(Maybe POSIX)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'Suite' smart constructor.
suite :: Suite
suite =
    Suite'
    { _suiStatus = Nothing
    , _suiCounters = Nothing
    , _suiArn = Nothing
    , _suiCreated = Nothing
    , _suiStopped = Nothing
    , _suiResult = Nothing
    , _suiName = Nothing
    , _suiType = Nothing
    , _suiMessage = Nothing
    , _suiStarted = Nothing
    }

-- | The suite\'s status.
--
-- Allowed values include:
--
-- -   COMPLETED: A completed status.
--
-- -   PENDING: A pending status.
--
-- -   PROCESSING: A processing status.
--
-- -   RUNNING: A running status.
--
-- -   SCHEDULING: A scheduling status.
--
suiStatus :: Lens' Suite (Maybe ExecutionStatus)
suiStatus = lens _suiStatus (\ s a -> s{_suiStatus = a});

-- | The suite\'s result counters.
suiCounters :: Lens' Suite (Maybe Counters)
suiCounters = lens _suiCounters (\ s a -> s{_suiCounters = a});

-- | The suite\'s ARN.
suiArn :: Lens' Suite (Maybe Text)
suiArn = lens _suiArn (\ s a -> s{_suiArn = a});

-- | When the suite was created.
suiCreated :: Lens' Suite (Maybe UTCTime)
suiCreated = lens _suiCreated (\ s a -> s{_suiCreated = a}) . mapping _Time;

-- | The suite\'s stop time.
suiStopped :: Lens' Suite (Maybe UTCTime)
suiStopped = lens _suiStopped (\ s a -> s{_suiStopped = a}) . mapping _Time;

-- | The suite\'s result.
--
-- Allowed values include:
--
-- -   ERRORED: An error condition.
--
-- -   FAILED: A failed condition.
--
-- -   SKIPPED: A skipped condition.
--
-- -   STOPPED: A stopped condition.
--
-- -   PASSED: A passing condition.
--
-- -   PENDING: A pending condition.
--
-- -   WARNED: A warning condition.
--
suiResult :: Lens' Suite (Maybe ExecutionResult)
suiResult = lens _suiResult (\ s a -> s{_suiResult = a});

-- | The suite\'s name.
suiName :: Lens' Suite (Maybe Text)
suiName = lens _suiName (\ s a -> s{_suiName = a});

-- | The suite\'s type.
--
-- Must be one of the following values:
--
-- -   APPIUM_JAVA_JUNIT: The Appium Java JUnit type.
--
-- -   APPIUM_JAVA_TESTNG: The Appium Java TestNG type.
--
-- -   BUILTIN_EXPLORER: An app explorer that will traverse an app,
--     interacting with it and capturing screenshots at the same time.
--
-- -   BUILTIN_FUZZ: The built-in fuzz type.
--
-- -   CALABASH: The Calabash type.
--
-- -   INSTRUMENTATION: The Instrumentation type.
--
-- -   UIAUTOMATOR: The uiautomator type.
--
suiType :: Lens' Suite (Maybe TestType)
suiType = lens _suiType (\ s a -> s{_suiType = a});

-- | A message about the suite\'s result.
suiMessage :: Lens' Suite (Maybe Text)
suiMessage = lens _suiMessage (\ s a -> s{_suiMessage = a});

-- | The suite\'s start time.
suiStarted :: Lens' Suite (Maybe UTCTime)
suiStarted = lens _suiStarted (\ s a -> s{_suiStarted = a}) . mapping _Time;

instance FromJSON Suite where
        parseJSON
          = withObject "Suite"
              (\ x ->
                 Suite' <$>
                   (x .:? "status") <*> (x .:? "counters") <*>
                     (x .:? "arn")
                     <*> (x .:? "created")
                     <*> (x .:? "stopped")
                     <*> (x .:? "result")
                     <*> (x .:? "name")
                     <*> (x .:? "type")
                     <*> (x .:? "message")
                     <*> (x .:? "started"))

-- | Represents a condition that is evaluated.
--
-- /See:/ 'test' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'tesStatus'
--
-- * 'tesCounters'
--
-- * 'tesArn'
--
-- * 'tesCreated'
--
-- * 'tesStopped'
--
-- * 'tesResult'
--
-- * 'tesName'
--
-- * 'tesType'
--
-- * 'tesMessage'
--
-- * 'tesStarted'
data Test = Test'
    { _tesStatus   :: !(Maybe ExecutionStatus)
    , _tesCounters :: !(Maybe Counters)
    , _tesArn      :: !(Maybe Text)
    , _tesCreated  :: !(Maybe POSIX)
    , _tesStopped  :: !(Maybe POSIX)
    , _tesResult   :: !(Maybe ExecutionResult)
    , _tesName     :: !(Maybe Text)
    , _tesType     :: !(Maybe TestType)
    , _tesMessage  :: !(Maybe Text)
    , _tesStarted  :: !(Maybe POSIX)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'Test' smart constructor.
test :: Test
test =
    Test'
    { _tesStatus = Nothing
    , _tesCounters = Nothing
    , _tesArn = Nothing
    , _tesCreated = Nothing
    , _tesStopped = Nothing
    , _tesResult = Nothing
    , _tesName = Nothing
    , _tesType = Nothing
    , _tesMessage = Nothing
    , _tesStarted = Nothing
    }

-- | The test\'s status.
--
-- Allowed values include:
--
-- -   COMPLETED: A completed status.
--
-- -   PENDING: A pending status.
--
-- -   PROCESSING: A processing status.
--
-- -   RUNNING: A running status.
--
-- -   SCHEDULING: A scheduling status.
--
tesStatus :: Lens' Test (Maybe ExecutionStatus)
tesStatus = lens _tesStatus (\ s a -> s{_tesStatus = a});

-- | The test\'s result counters.
tesCounters :: Lens' Test (Maybe Counters)
tesCounters = lens _tesCounters (\ s a -> s{_tesCounters = a});

-- | The test\'s ARN.
tesArn :: Lens' Test (Maybe Text)
tesArn = lens _tesArn (\ s a -> s{_tesArn = a});

-- | When the test was created.
tesCreated :: Lens' Test (Maybe UTCTime)
tesCreated = lens _tesCreated (\ s a -> s{_tesCreated = a}) . mapping _Time;

-- | The test\'s stop time.
tesStopped :: Lens' Test (Maybe UTCTime)
tesStopped = lens _tesStopped (\ s a -> s{_tesStopped = a}) . mapping _Time;

-- | The test\'s result.
--
-- Allowed values include:
--
-- -   ERRORED: An error condition.
--
-- -   FAILED: A failed condition.
--
-- -   SKIPPED: A skipped condition.
--
-- -   STOPPED: A stopped condition.
--
-- -   PASSED: A passing condition.
--
-- -   PENDING: A pending condition.
--
-- -   WARNED: A warning condition.
--
tesResult :: Lens' Test (Maybe ExecutionResult)
tesResult = lens _tesResult (\ s a -> s{_tesResult = a});

-- | The test\'s name.
tesName :: Lens' Test (Maybe Text)
tesName = lens _tesName (\ s a -> s{_tesName = a});

-- | The test\'s type.
--
-- Must be one of the following values:
--
-- -   APPIUM_JAVA_JUNIT: The Appium Java JUnit type.
--
-- -   APPIUM_JAVA_TESTNG: The Appium Java TestNG type.
--
-- -   BUILTIN_EXPLORER: An app explorer that will traverse an app,
--     interacting with it and capturing screenshots at the same time.
--
-- -   BUILTIN_FUZZ: The built-in fuzz type.
--
-- -   CALABASH: The Calabash type.
--
-- -   INSTRUMENTATION: The Instrumentation type.
--
-- -   UIAUTOMATOR: The uiautomator type.
--
tesType :: Lens' Test (Maybe TestType)
tesType = lens _tesType (\ s a -> s{_tesType = a});

-- | A message about the test\'s result.
tesMessage :: Lens' Test (Maybe Text)
tesMessage = lens _tesMessage (\ s a -> s{_tesMessage = a});

-- | The test\'s start time.
tesStarted :: Lens' Test (Maybe UTCTime)
tesStarted = lens _tesStarted (\ s a -> s{_tesStarted = a}) . mapping _Time;

instance FromJSON Test where
        parseJSON
          = withObject "Test"
              (\ x ->
                 Test' <$>
                   (x .:? "status") <*> (x .:? "counters") <*>
                     (x .:? "arn")
                     <*> (x .:? "created")
                     <*> (x .:? "stopped")
                     <*> (x .:? "result")
                     <*> (x .:? "name")
                     <*> (x .:? "type")
                     <*> (x .:? "message")
                     <*> (x .:? "started"))

-- | A collection of one or more problems, grouped by their result.
--
-- /See:/ 'uniqueProblem' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'upProblems'
--
-- * 'upMessage'
data UniqueProblem = UniqueProblem'
    { _upProblems :: !(Maybe [Problem])
    , _upMessage  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'UniqueProblem' smart constructor.
uniqueProblem :: UniqueProblem
uniqueProblem =
    UniqueProblem'
    { _upProblems = Nothing
    , _upMessage = Nothing
    }

-- | Information about the problems.
upProblems :: Lens' UniqueProblem [Problem]
upProblems = lens _upProblems (\ s a -> s{_upProblems = a}) . _Default;

-- | A message about the unique problems\' result.
upMessage :: Lens' UniqueProblem (Maybe Text)
upMessage = lens _upMessage (\ s a -> s{_upMessage = a});

instance FromJSON UniqueProblem where
        parseJSON
          = withObject "UniqueProblem"
              (\ x ->
                 UniqueProblem' <$>
                   (x .:? "problems" .!= mempty) <*> (x .:? "message"))

-- | An app or a set of one or more tests to upload or that have been
-- uploaded.
--
-- /See:/ 'upload' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'uplStatus'
--
-- * 'uplArn'
--
-- * 'uplCreated'
--
-- * 'uplUrl'
--
-- * 'uplName'
--
-- * 'uplMetadata'
--
-- * 'uplType'
--
-- * 'uplMessage'
--
-- * 'uplContentType'
data Upload = Upload'
    { _uplStatus      :: !(Maybe UploadStatus)
    , _uplArn         :: !(Maybe Text)
    , _uplCreated     :: !(Maybe POSIX)
    , _uplUrl         :: !(Maybe Text)
    , _uplName        :: !(Maybe Text)
    , _uplMetadata    :: !(Maybe Text)
    , _uplType        :: !(Maybe UploadType)
    , _uplMessage     :: !(Maybe Text)
    , _uplContentType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'Upload' smart constructor.
upload :: Upload
upload =
    Upload'
    { _uplStatus = Nothing
    , _uplArn = Nothing
    , _uplCreated = Nothing
    , _uplUrl = Nothing
    , _uplName = Nothing
    , _uplMetadata = Nothing
    , _uplType = Nothing
    , _uplMessage = Nothing
    , _uplContentType = Nothing
    }

-- | The upload\'s status.
--
-- Must be one of the following values:
--
-- -   FAILED: A failed status.
--
-- -   INITIALIZED: An initialized status.
--
-- -   PROCESSING: A processing status.
--
-- -   SUCCEEDED: A succeeded status.
--
uplStatus :: Lens' Upload (Maybe UploadStatus)
uplStatus = lens _uplStatus (\ s a -> s{_uplStatus = a});

-- | The upload\'s ARN.
uplArn :: Lens' Upload (Maybe Text)
uplArn = lens _uplArn (\ s a -> s{_uplArn = a});

-- | When the upload was created.
uplCreated :: Lens' Upload (Maybe UTCTime)
uplCreated = lens _uplCreated (\ s a -> s{_uplCreated = a}) . mapping _Time;

-- | The pre-signed Amazon S3 URL that was used to store a file through a
-- corresponding PUT request.
uplUrl :: Lens' Upload (Maybe Text)
uplUrl = lens _uplUrl (\ s a -> s{_uplUrl = a});

-- | The upload\'s file name.
uplName :: Lens' Upload (Maybe Text)
uplName = lens _uplName (\ s a -> s{_uplName = a});

-- | The upload\'s metadata. This contains information that is parsed from
-- the manifest and is displayed in the AWS Device Farm console after the
-- associated app is uploaded.
uplMetadata :: Lens' Upload (Maybe Text)
uplMetadata = lens _uplMetadata (\ s a -> s{_uplMetadata = a});

-- | The upload\'s type.
--
-- Must be one of the following values:
--
-- -   ANDROID_APP: An Android upload.
--
-- -   APPIUM_JAVA_JUNIT_TEST_PACKAGE: An Appium Java JUnit test package
--     upload.
--
-- -   APPIUM_JAVA_TESTNG_TEST_PACKAGE: An Appium Java TestNG test package
--     upload.
--
-- -   CALABASH_TEST_PACKAGE: A Calabash test package upload.
--
-- -   EXTERNAL_DATA: An external data upload.
--
-- -   INSTRUMENTATION_TEST_PACKAGE: An instrumentation upload.
--
-- -   UIAUTOMATOR_TEST_PACKAGE: A uiautomator test package upload.
--
uplType :: Lens' Upload (Maybe UploadType)
uplType = lens _uplType (\ s a -> s{_uplType = a});

-- | A message about the upload\'s result.
uplMessage :: Lens' Upload (Maybe Text)
uplMessage = lens _uplMessage (\ s a -> s{_uplMessage = a});

-- | The upload\'s content type (for example, \"application\/octet-stream\").
uplContentType :: Lens' Upload (Maybe Text)
uplContentType = lens _uplContentType (\ s a -> s{_uplContentType = a});

instance FromJSON Upload where
        parseJSON
          = withObject "Upload"
              (\ x ->
                 Upload' <$>
                   (x .:? "status") <*> (x .:? "arn") <*>
                     (x .:? "created")
                     <*> (x .:? "url")
                     <*> (x .:? "name")
                     <*> (x .:? "metadata")
                     <*> (x .:? "type")
                     <*> (x .:? "message")
                     <*> (x .:? "contentType"))
