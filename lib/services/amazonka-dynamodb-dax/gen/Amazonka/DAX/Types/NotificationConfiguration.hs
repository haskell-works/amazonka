{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.DAX.Types.NotificationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DAX.Types.NotificationConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a notification topic and its status. Notification topics are
-- used for publishing DAX events to subscribers using Amazon Simple
-- Notification Service (SNS).
--
-- /See:/ 'newNotificationConfiguration' smart constructor.
data NotificationConfiguration = NotificationConfiguration'
  { -- | The current state of the topic. A value of “active” means that
    -- notifications will be sent to the topic. A value of “inactive” means
    -- that notifications will not be sent to the topic.
    topicStatus :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) that identifies the topic.
    topicArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NotificationConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'topicStatus', 'notificationConfiguration_topicStatus' - The current state of the topic. A value of “active” means that
-- notifications will be sent to the topic. A value of “inactive” means
-- that notifications will not be sent to the topic.
--
-- 'topicArn', 'notificationConfiguration_topicArn' - The Amazon Resource Name (ARN) that identifies the topic.
newNotificationConfiguration ::
  NotificationConfiguration
newNotificationConfiguration =
  NotificationConfiguration'
    { topicStatus =
        Prelude.Nothing,
      topicArn = Prelude.Nothing
    }

-- | The current state of the topic. A value of “active” means that
-- notifications will be sent to the topic. A value of “inactive” means
-- that notifications will not be sent to the topic.
notificationConfiguration_topicStatus :: Lens.Lens' NotificationConfiguration (Prelude.Maybe Prelude.Text)
notificationConfiguration_topicStatus = Lens.lens (\NotificationConfiguration' {topicStatus} -> topicStatus) (\s@NotificationConfiguration' {} a -> s {topicStatus = a} :: NotificationConfiguration)

-- | The Amazon Resource Name (ARN) that identifies the topic.
notificationConfiguration_topicArn :: Lens.Lens' NotificationConfiguration (Prelude.Maybe Prelude.Text)
notificationConfiguration_topicArn = Lens.lens (\NotificationConfiguration' {topicArn} -> topicArn) (\s@NotificationConfiguration' {} a -> s {topicArn = a} :: NotificationConfiguration)

instance Core.FromJSON NotificationConfiguration where
  parseJSON =
    Core.withObject
      "NotificationConfiguration"
      ( \x ->
          NotificationConfiguration'
            Prelude.<$> (x Core..:? "TopicStatus")
            Prelude.<*> (x Core..:? "TopicArn")
      )

instance Prelude.Hashable NotificationConfiguration where
  hashWithSalt _salt NotificationConfiguration' {..} =
    _salt `Prelude.hashWithSalt` topicStatus
      `Prelude.hashWithSalt` topicArn

instance Prelude.NFData NotificationConfiguration where
  rnf NotificationConfiguration' {..} =
    Prelude.rnf topicStatus
      `Prelude.seq` Prelude.rnf topicArn