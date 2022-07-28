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
-- Module      : Amazonka.CognitoIdentityProvider.UpdateUserPool
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified user pool with the specified attributes. You can
-- get a list of the current user pool settings using
-- <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_DescribeUserPool.html DescribeUserPool>.
-- If you don\'t provide a value for an attribute, it will be set to the
-- default value.
--
-- This action might generate an SMS text message. Starting June 1, 2021,
-- U.S. telecom carriers require that you register an origination phone
-- number before you can send SMS messages to U.S. phone numbers. If you
-- use SMS text messages in Amazon Cognito, you must register a phone
-- number with
-- <https://console.aws.amazon.com/pinpoint/home/ Amazon Pinpoint>. Cognito
-- will use the the registered number automatically. Otherwise, Cognito
-- users that must receive SMS messages might be unable to sign up,
-- activate their accounts, or sign in.
--
-- If you have never used SMS text messages with Amazon Cognito or any
-- other Amazon Web Service, Amazon SNS might place your account in SMS
-- sandbox. In
-- /<https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html sandbox mode>/
-- , you’ll have limitations, such as sending messages to only verified
-- phone numbers. After testing in the sandbox environment, you can move
-- out of the SMS sandbox and into production. For more information, see
-- <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html SMS message settings for Cognito User Pools>
-- in the /Amazon Cognito Developer Guide/.
module Amazonka.CognitoIdentityProvider.UpdateUserPool
  ( -- * Creating a Request
    UpdateUserPool (..),
    newUpdateUserPool,

    -- * Request Lenses
    updateUserPool_emailConfiguration,
    updateUserPool_adminCreateUserConfig,
    updateUserPool_verificationMessageTemplate,
    updateUserPool_deviceConfiguration,
    updateUserPool_mfaConfiguration,
    updateUserPool_autoVerifiedAttributes,
    updateUserPool_smsConfiguration,
    updateUserPool_policies,
    updateUserPool_smsVerificationMessage,
    updateUserPool_emailVerificationSubject,
    updateUserPool_accountRecoverySetting,
    updateUserPool_userPoolTags,
    updateUserPool_emailVerificationMessage,
    updateUserPool_smsAuthenticationMessage,
    updateUserPool_lambdaConfig,
    updateUserPool_userPoolAddOns,
    updateUserPool_userPoolId,

    -- * Destructuring the Response
    UpdateUserPoolResponse (..),
    newUpdateUserPoolResponse,

    -- * Response Lenses
    updateUserPoolResponse_httpStatus,
  )
where

import Amazonka.CognitoIdentityProvider.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Represents the request to update the user pool.
--
-- /See:/ 'newUpdateUserPool' smart constructor.
data UpdateUserPool = UpdateUserPool'
  { -- | Email configuration.
    emailConfiguration :: Prelude.Maybe EmailConfigurationType,
    -- | The configuration for @AdminCreateUser@ requests.
    adminCreateUserConfig :: Prelude.Maybe AdminCreateUserConfigType,
    -- | The template for verification messages.
    verificationMessageTemplate :: Prelude.Maybe VerificationMessageTemplateType,
    -- | Device configuration.
    deviceConfiguration :: Prelude.Maybe DeviceConfigurationType,
    -- | Can be one of the following values:
    --
    -- -   @OFF@ - MFA tokens are not required and cannot be specified during
    --     user registration.
    --
    -- -   @ON@ - MFA tokens are required for all user registrations. You can
    --     only specify ON when you are initially creating a user pool. You can
    --     use the
    --     <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SetUserPoolMfaConfig.html SetUserPoolMfaConfig>
    --     API operation to turn MFA \"ON\" for existing user pools.
    --
    -- -   @OPTIONAL@ - Users have the option when registering to create an MFA
    --     token.
    mfaConfiguration :: Prelude.Maybe UserPoolMfaType,
    -- | The attributes that are automatically verified when the Amazon Cognito
    -- service makes a request to update user pools.
    autoVerifiedAttributes :: Prelude.Maybe [VerifiedAttributeType],
    -- | SMS configuration.
    smsConfiguration :: Prelude.Maybe SmsConfigurationType,
    -- | A container with the policies you wish to update in a user pool.
    policies :: Prelude.Maybe UserPoolPolicyType,
    -- | A container with information about the SMS verification message.
    smsVerificationMessage :: Prelude.Maybe Prelude.Text,
    -- | The subject of the email verification message.
    emailVerificationSubject :: Prelude.Maybe Prelude.Text,
    -- | Use this setting to define which verified available method a user can
    -- use to recover their password when they call @ForgotPassword@. It allows
    -- you to define a preferred method when a user has more than one method
    -- available. With this setting, SMS does not qualify for a valid password
    -- recovery mechanism if the user also has SMS MFA enabled. In the absence
    -- of this setting, Cognito uses the legacy behavior to determine the
    -- recovery method where SMS is preferred over email.
    accountRecoverySetting :: Prelude.Maybe AccountRecoverySettingType,
    -- | The tag keys and values to assign to the user pool. A tag is a label
    -- that you can use to categorize and manage user pools in different ways,
    -- such as by purpose, owner, environment, or other criteria.
    userPoolTags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The contents of the email verification message.
    emailVerificationMessage :: Prelude.Maybe Prelude.Text,
    -- | The contents of the SMS authentication message.
    smsAuthenticationMessage :: Prelude.Maybe Prelude.Text,
    -- | The Lambda configuration information from the request to update the user
    -- pool.
    lambdaConfig :: Prelude.Maybe LambdaConfigType,
    -- | Used to enable advanced security risk detection. Set the key
    -- @AdvancedSecurityMode@ to the value \"AUDIT\".
    userPoolAddOns :: Prelude.Maybe UserPoolAddOnsType,
    -- | The user pool ID for the user pool you want to update.
    userPoolId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateUserPool' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'emailConfiguration', 'updateUserPool_emailConfiguration' - Email configuration.
--
-- 'adminCreateUserConfig', 'updateUserPool_adminCreateUserConfig' - The configuration for @AdminCreateUser@ requests.
--
-- 'verificationMessageTemplate', 'updateUserPool_verificationMessageTemplate' - The template for verification messages.
--
-- 'deviceConfiguration', 'updateUserPool_deviceConfiguration' - Device configuration.
--
-- 'mfaConfiguration', 'updateUserPool_mfaConfiguration' - Can be one of the following values:
--
-- -   @OFF@ - MFA tokens are not required and cannot be specified during
--     user registration.
--
-- -   @ON@ - MFA tokens are required for all user registrations. You can
--     only specify ON when you are initially creating a user pool. You can
--     use the
--     <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SetUserPoolMfaConfig.html SetUserPoolMfaConfig>
--     API operation to turn MFA \"ON\" for existing user pools.
--
-- -   @OPTIONAL@ - Users have the option when registering to create an MFA
--     token.
--
-- 'autoVerifiedAttributes', 'updateUserPool_autoVerifiedAttributes' - The attributes that are automatically verified when the Amazon Cognito
-- service makes a request to update user pools.
--
-- 'smsConfiguration', 'updateUserPool_smsConfiguration' - SMS configuration.
--
-- 'policies', 'updateUserPool_policies' - A container with the policies you wish to update in a user pool.
--
-- 'smsVerificationMessage', 'updateUserPool_smsVerificationMessage' - A container with information about the SMS verification message.
--
-- 'emailVerificationSubject', 'updateUserPool_emailVerificationSubject' - The subject of the email verification message.
--
-- 'accountRecoverySetting', 'updateUserPool_accountRecoverySetting' - Use this setting to define which verified available method a user can
-- use to recover their password when they call @ForgotPassword@. It allows
-- you to define a preferred method when a user has more than one method
-- available. With this setting, SMS does not qualify for a valid password
-- recovery mechanism if the user also has SMS MFA enabled. In the absence
-- of this setting, Cognito uses the legacy behavior to determine the
-- recovery method where SMS is preferred over email.
--
-- 'userPoolTags', 'updateUserPool_userPoolTags' - The tag keys and values to assign to the user pool. A tag is a label
-- that you can use to categorize and manage user pools in different ways,
-- such as by purpose, owner, environment, or other criteria.
--
-- 'emailVerificationMessage', 'updateUserPool_emailVerificationMessage' - The contents of the email verification message.
--
-- 'smsAuthenticationMessage', 'updateUserPool_smsAuthenticationMessage' - The contents of the SMS authentication message.
--
-- 'lambdaConfig', 'updateUserPool_lambdaConfig' - The Lambda configuration information from the request to update the user
-- pool.
--
-- 'userPoolAddOns', 'updateUserPool_userPoolAddOns' - Used to enable advanced security risk detection. Set the key
-- @AdvancedSecurityMode@ to the value \"AUDIT\".
--
-- 'userPoolId', 'updateUserPool_userPoolId' - The user pool ID for the user pool you want to update.
newUpdateUserPool ::
  -- | 'userPoolId'
  Prelude.Text ->
  UpdateUserPool
newUpdateUserPool pUserPoolId_ =
  UpdateUserPool'
    { emailConfiguration =
        Prelude.Nothing,
      adminCreateUserConfig = Prelude.Nothing,
      verificationMessageTemplate = Prelude.Nothing,
      deviceConfiguration = Prelude.Nothing,
      mfaConfiguration = Prelude.Nothing,
      autoVerifiedAttributes = Prelude.Nothing,
      smsConfiguration = Prelude.Nothing,
      policies = Prelude.Nothing,
      smsVerificationMessage = Prelude.Nothing,
      emailVerificationSubject = Prelude.Nothing,
      accountRecoverySetting = Prelude.Nothing,
      userPoolTags = Prelude.Nothing,
      emailVerificationMessage = Prelude.Nothing,
      smsAuthenticationMessage = Prelude.Nothing,
      lambdaConfig = Prelude.Nothing,
      userPoolAddOns = Prelude.Nothing,
      userPoolId = pUserPoolId_
    }

-- | Email configuration.
updateUserPool_emailConfiguration :: Lens.Lens' UpdateUserPool (Prelude.Maybe EmailConfigurationType)
updateUserPool_emailConfiguration = Lens.lens (\UpdateUserPool' {emailConfiguration} -> emailConfiguration) (\s@UpdateUserPool' {} a -> s {emailConfiguration = a} :: UpdateUserPool)

-- | The configuration for @AdminCreateUser@ requests.
updateUserPool_adminCreateUserConfig :: Lens.Lens' UpdateUserPool (Prelude.Maybe AdminCreateUserConfigType)
updateUserPool_adminCreateUserConfig = Lens.lens (\UpdateUserPool' {adminCreateUserConfig} -> adminCreateUserConfig) (\s@UpdateUserPool' {} a -> s {adminCreateUserConfig = a} :: UpdateUserPool)

-- | The template for verification messages.
updateUserPool_verificationMessageTemplate :: Lens.Lens' UpdateUserPool (Prelude.Maybe VerificationMessageTemplateType)
updateUserPool_verificationMessageTemplate = Lens.lens (\UpdateUserPool' {verificationMessageTemplate} -> verificationMessageTemplate) (\s@UpdateUserPool' {} a -> s {verificationMessageTemplate = a} :: UpdateUserPool)

-- | Device configuration.
updateUserPool_deviceConfiguration :: Lens.Lens' UpdateUserPool (Prelude.Maybe DeviceConfigurationType)
updateUserPool_deviceConfiguration = Lens.lens (\UpdateUserPool' {deviceConfiguration} -> deviceConfiguration) (\s@UpdateUserPool' {} a -> s {deviceConfiguration = a} :: UpdateUserPool)

-- | Can be one of the following values:
--
-- -   @OFF@ - MFA tokens are not required and cannot be specified during
--     user registration.
--
-- -   @ON@ - MFA tokens are required for all user registrations. You can
--     only specify ON when you are initially creating a user pool. You can
--     use the
--     <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SetUserPoolMfaConfig.html SetUserPoolMfaConfig>
--     API operation to turn MFA \"ON\" for existing user pools.
--
-- -   @OPTIONAL@ - Users have the option when registering to create an MFA
--     token.
updateUserPool_mfaConfiguration :: Lens.Lens' UpdateUserPool (Prelude.Maybe UserPoolMfaType)
updateUserPool_mfaConfiguration = Lens.lens (\UpdateUserPool' {mfaConfiguration} -> mfaConfiguration) (\s@UpdateUserPool' {} a -> s {mfaConfiguration = a} :: UpdateUserPool)

-- | The attributes that are automatically verified when the Amazon Cognito
-- service makes a request to update user pools.
updateUserPool_autoVerifiedAttributes :: Lens.Lens' UpdateUserPool (Prelude.Maybe [VerifiedAttributeType])
updateUserPool_autoVerifiedAttributes = Lens.lens (\UpdateUserPool' {autoVerifiedAttributes} -> autoVerifiedAttributes) (\s@UpdateUserPool' {} a -> s {autoVerifiedAttributes = a} :: UpdateUserPool) Prelude.. Lens.mapping Lens.coerced

-- | SMS configuration.
updateUserPool_smsConfiguration :: Lens.Lens' UpdateUserPool (Prelude.Maybe SmsConfigurationType)
updateUserPool_smsConfiguration = Lens.lens (\UpdateUserPool' {smsConfiguration} -> smsConfiguration) (\s@UpdateUserPool' {} a -> s {smsConfiguration = a} :: UpdateUserPool)

-- | A container with the policies you wish to update in a user pool.
updateUserPool_policies :: Lens.Lens' UpdateUserPool (Prelude.Maybe UserPoolPolicyType)
updateUserPool_policies = Lens.lens (\UpdateUserPool' {policies} -> policies) (\s@UpdateUserPool' {} a -> s {policies = a} :: UpdateUserPool)

-- | A container with information about the SMS verification message.
updateUserPool_smsVerificationMessage :: Lens.Lens' UpdateUserPool (Prelude.Maybe Prelude.Text)
updateUserPool_smsVerificationMessage = Lens.lens (\UpdateUserPool' {smsVerificationMessage} -> smsVerificationMessage) (\s@UpdateUserPool' {} a -> s {smsVerificationMessage = a} :: UpdateUserPool)

-- | The subject of the email verification message.
updateUserPool_emailVerificationSubject :: Lens.Lens' UpdateUserPool (Prelude.Maybe Prelude.Text)
updateUserPool_emailVerificationSubject = Lens.lens (\UpdateUserPool' {emailVerificationSubject} -> emailVerificationSubject) (\s@UpdateUserPool' {} a -> s {emailVerificationSubject = a} :: UpdateUserPool)

-- | Use this setting to define which verified available method a user can
-- use to recover their password when they call @ForgotPassword@. It allows
-- you to define a preferred method when a user has more than one method
-- available. With this setting, SMS does not qualify for a valid password
-- recovery mechanism if the user also has SMS MFA enabled. In the absence
-- of this setting, Cognito uses the legacy behavior to determine the
-- recovery method where SMS is preferred over email.
updateUserPool_accountRecoverySetting :: Lens.Lens' UpdateUserPool (Prelude.Maybe AccountRecoverySettingType)
updateUserPool_accountRecoverySetting = Lens.lens (\UpdateUserPool' {accountRecoverySetting} -> accountRecoverySetting) (\s@UpdateUserPool' {} a -> s {accountRecoverySetting = a} :: UpdateUserPool)

-- | The tag keys and values to assign to the user pool. A tag is a label
-- that you can use to categorize and manage user pools in different ways,
-- such as by purpose, owner, environment, or other criteria.
updateUserPool_userPoolTags :: Lens.Lens' UpdateUserPool (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
updateUserPool_userPoolTags = Lens.lens (\UpdateUserPool' {userPoolTags} -> userPoolTags) (\s@UpdateUserPool' {} a -> s {userPoolTags = a} :: UpdateUserPool) Prelude.. Lens.mapping Lens.coerced

-- | The contents of the email verification message.
updateUserPool_emailVerificationMessage :: Lens.Lens' UpdateUserPool (Prelude.Maybe Prelude.Text)
updateUserPool_emailVerificationMessage = Lens.lens (\UpdateUserPool' {emailVerificationMessage} -> emailVerificationMessage) (\s@UpdateUserPool' {} a -> s {emailVerificationMessage = a} :: UpdateUserPool)

-- | The contents of the SMS authentication message.
updateUserPool_smsAuthenticationMessage :: Lens.Lens' UpdateUserPool (Prelude.Maybe Prelude.Text)
updateUserPool_smsAuthenticationMessage = Lens.lens (\UpdateUserPool' {smsAuthenticationMessage} -> smsAuthenticationMessage) (\s@UpdateUserPool' {} a -> s {smsAuthenticationMessage = a} :: UpdateUserPool)

-- | The Lambda configuration information from the request to update the user
-- pool.
updateUserPool_lambdaConfig :: Lens.Lens' UpdateUserPool (Prelude.Maybe LambdaConfigType)
updateUserPool_lambdaConfig = Lens.lens (\UpdateUserPool' {lambdaConfig} -> lambdaConfig) (\s@UpdateUserPool' {} a -> s {lambdaConfig = a} :: UpdateUserPool)

-- | Used to enable advanced security risk detection. Set the key
-- @AdvancedSecurityMode@ to the value \"AUDIT\".
updateUserPool_userPoolAddOns :: Lens.Lens' UpdateUserPool (Prelude.Maybe UserPoolAddOnsType)
updateUserPool_userPoolAddOns = Lens.lens (\UpdateUserPool' {userPoolAddOns} -> userPoolAddOns) (\s@UpdateUserPool' {} a -> s {userPoolAddOns = a} :: UpdateUserPool)

-- | The user pool ID for the user pool you want to update.
updateUserPool_userPoolId :: Lens.Lens' UpdateUserPool Prelude.Text
updateUserPool_userPoolId = Lens.lens (\UpdateUserPool' {userPoolId} -> userPoolId) (\s@UpdateUserPool' {} a -> s {userPoolId = a} :: UpdateUserPool)

instance Core.AWSRequest UpdateUserPool where
  type
    AWSResponse UpdateUserPool =
      UpdateUserPoolResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateUserPoolResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateUserPool where
  hashWithSalt _salt UpdateUserPool' {..} =
    _salt `Prelude.hashWithSalt` emailConfiguration
      `Prelude.hashWithSalt` adminCreateUserConfig
      `Prelude.hashWithSalt` verificationMessageTemplate
      `Prelude.hashWithSalt` deviceConfiguration
      `Prelude.hashWithSalt` mfaConfiguration
      `Prelude.hashWithSalt` autoVerifiedAttributes
      `Prelude.hashWithSalt` smsConfiguration
      `Prelude.hashWithSalt` policies
      `Prelude.hashWithSalt` smsVerificationMessage
      `Prelude.hashWithSalt` emailVerificationSubject
      `Prelude.hashWithSalt` accountRecoverySetting
      `Prelude.hashWithSalt` userPoolTags
      `Prelude.hashWithSalt` emailVerificationMessage
      `Prelude.hashWithSalt` smsAuthenticationMessage
      `Prelude.hashWithSalt` lambdaConfig
      `Prelude.hashWithSalt` userPoolAddOns
      `Prelude.hashWithSalt` userPoolId

instance Prelude.NFData UpdateUserPool where
  rnf UpdateUserPool' {..} =
    Prelude.rnf emailConfiguration
      `Prelude.seq` Prelude.rnf adminCreateUserConfig
      `Prelude.seq` Prelude.rnf verificationMessageTemplate
      `Prelude.seq` Prelude.rnf deviceConfiguration
      `Prelude.seq` Prelude.rnf mfaConfiguration
      `Prelude.seq` Prelude.rnf autoVerifiedAttributes
      `Prelude.seq` Prelude.rnf smsConfiguration
      `Prelude.seq` Prelude.rnf policies
      `Prelude.seq` Prelude.rnf smsVerificationMessage
      `Prelude.seq` Prelude.rnf emailVerificationSubject
      `Prelude.seq` Prelude.rnf accountRecoverySetting
      `Prelude.seq` Prelude.rnf userPoolTags
      `Prelude.seq` Prelude.rnf emailVerificationMessage
      `Prelude.seq` Prelude.rnf smsAuthenticationMessage
      `Prelude.seq` Prelude.rnf lambdaConfig
      `Prelude.seq` Prelude.rnf userPoolAddOns
      `Prelude.seq` Prelude.rnf userPoolId

instance Core.ToHeaders UpdateUserPool where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSCognitoIdentityProviderService.UpdateUserPool" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateUserPool where
  toJSON UpdateUserPool' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("EmailConfiguration" Core..=)
              Prelude.<$> emailConfiguration,
            ("AdminCreateUserConfig" Core..=)
              Prelude.<$> adminCreateUserConfig,
            ("VerificationMessageTemplate" Core..=)
              Prelude.<$> verificationMessageTemplate,
            ("DeviceConfiguration" Core..=)
              Prelude.<$> deviceConfiguration,
            ("MfaConfiguration" Core..=)
              Prelude.<$> mfaConfiguration,
            ("AutoVerifiedAttributes" Core..=)
              Prelude.<$> autoVerifiedAttributes,
            ("SmsConfiguration" Core..=)
              Prelude.<$> smsConfiguration,
            ("Policies" Core..=) Prelude.<$> policies,
            ("SmsVerificationMessage" Core..=)
              Prelude.<$> smsVerificationMessage,
            ("EmailVerificationSubject" Core..=)
              Prelude.<$> emailVerificationSubject,
            ("AccountRecoverySetting" Core..=)
              Prelude.<$> accountRecoverySetting,
            ("UserPoolTags" Core..=) Prelude.<$> userPoolTags,
            ("EmailVerificationMessage" Core..=)
              Prelude.<$> emailVerificationMessage,
            ("SmsAuthenticationMessage" Core..=)
              Prelude.<$> smsAuthenticationMessage,
            ("LambdaConfig" Core..=) Prelude.<$> lambdaConfig,
            ("UserPoolAddOns" Core..=)
              Prelude.<$> userPoolAddOns,
            Prelude.Just ("UserPoolId" Core..= userPoolId)
          ]
      )

instance Core.ToPath UpdateUserPool where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateUserPool where
  toQuery = Prelude.const Prelude.mempty

-- | Represents the response from the server when you make a request to
-- update the user pool.
--
-- /See:/ 'newUpdateUserPoolResponse' smart constructor.
data UpdateUserPoolResponse = UpdateUserPoolResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateUserPoolResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateUserPoolResponse_httpStatus' - The response's http status code.
newUpdateUserPoolResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateUserPoolResponse
newUpdateUserPoolResponse pHttpStatus_ =
  UpdateUserPoolResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
updateUserPoolResponse_httpStatus :: Lens.Lens' UpdateUserPoolResponse Prelude.Int
updateUserPoolResponse_httpStatus = Lens.lens (\UpdateUserPoolResponse' {httpStatus} -> httpStatus) (\s@UpdateUserPoolResponse' {} a -> s {httpStatus = a} :: UpdateUserPoolResponse)

instance Prelude.NFData UpdateUserPoolResponse where
  rnf UpdateUserPoolResponse' {..} =
    Prelude.rnf httpStatus