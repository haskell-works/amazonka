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
-- Module      : Amazonka.PersonalizeEvents.Types.Event
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.PersonalizeEvents.Types.Event where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.PersonalizeEvents.Types.MetricAttribution
import qualified Amazonka.Prelude as Prelude

-- | Represents user interaction event information sent using the @PutEvents@
-- API.
--
-- /See:/ 'newEvent' smart constructor.
data Event = Event'
  { -- | A string map of event-specific data that you might choose to record. For
    -- example, if a user rates a movie on your site, other than movie ID
    -- (@itemId@) and rating (@eventValue@) , you might also send the number of
    -- movie ratings made by the user.
    --
    -- Each item in the map consists of a key-value pair. For example,
    --
    -- @{\"numberOfRatings\": \"12\"}@
    --
    -- The keys use camel case names that match the fields in the Interactions
    -- schema. In the above example, the @numberOfRatings@ would match the
    -- \'NUMBER_OF_RATINGS\' field defined in the Interactions schema.
    properties :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The ID of the list of recommendations that contains the item the user
    -- interacted with. Provide a @recommendationId@ to have Amazon Personalize
    -- implicitly record the recommendations you show your user as impressions
    -- data. Or provide a @recommendationId@ if you use a metric attribution to
    -- measure the impact of recommendations.
    --
    -- For more information on recording impressions data, see
    -- <https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html#putevents-including-impressions-data Recording impressions data>.
    -- For more information on creating a metric attribution see
    -- <https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html Measuring impact of recommendations>.
    recommendationId :: Prelude.Maybe Prelude.Text,
    -- | The event value that corresponds to the @EVENT_VALUE@ field of the
    -- Interactions schema.
    eventValue :: Prelude.Maybe Prelude.Double,
    -- | An ID associated with the event. If an event ID is not provided, Amazon
    -- Personalize generates a unique ID for the event. An event ID is not used
    -- as an input to the model. Amazon Personalize uses the event ID to
    -- distinquish unique events. Any subsequent events after the first with
    -- the same event ID are not used in model training.
    eventId :: Prelude.Maybe Prelude.Text,
    -- | A list of item IDs that represents the sequence of items you have shown
    -- the user. For example, @[\"itemId1\", \"itemId2\", \"itemId3\"]@.
    -- Provide a list of items to manually record impressions data for an
    -- event. For more information on recording impressions data, see
    -- <https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html#putevents-including-impressions-data Recording impressions data>.
    impression :: Prelude.Maybe (Prelude.NonEmpty (Core.Sensitive Prelude.Text)),
    -- | Contains information about the metric attribution associated with an
    -- event. For more information about metric attributions, see
    -- <https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html Measuring impact of recommendations>.
    metricAttribution :: Prelude.Maybe MetricAttribution,
    -- | The item ID key that corresponds to the @ITEM_ID@ field of the
    -- Interactions schema.
    itemId :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The type of event, such as click or download. This property corresponds
    -- to the @EVENT_TYPE@ field of your Interactions schema and depends on the
    -- types of events you are tracking.
    eventType :: Prelude.Text,
    -- | The timestamp (in Unix time) on the client side when the event occurred.
    sentAt :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Event' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'properties', 'event_properties' - A string map of event-specific data that you might choose to record. For
-- example, if a user rates a movie on your site, other than movie ID
-- (@itemId@) and rating (@eventValue@) , you might also send the number of
-- movie ratings made by the user.
--
-- Each item in the map consists of a key-value pair. For example,
--
-- @{\"numberOfRatings\": \"12\"}@
--
-- The keys use camel case names that match the fields in the Interactions
-- schema. In the above example, the @numberOfRatings@ would match the
-- \'NUMBER_OF_RATINGS\' field defined in the Interactions schema.
--
-- 'recommendationId', 'event_recommendationId' - The ID of the list of recommendations that contains the item the user
-- interacted with. Provide a @recommendationId@ to have Amazon Personalize
-- implicitly record the recommendations you show your user as impressions
-- data. Or provide a @recommendationId@ if you use a metric attribution to
-- measure the impact of recommendations.
--
-- For more information on recording impressions data, see
-- <https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html#putevents-including-impressions-data Recording impressions data>.
-- For more information on creating a metric attribution see
-- <https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html Measuring impact of recommendations>.
--
-- 'eventValue', 'event_eventValue' - The event value that corresponds to the @EVENT_VALUE@ field of the
-- Interactions schema.
--
-- 'eventId', 'event_eventId' - An ID associated with the event. If an event ID is not provided, Amazon
-- Personalize generates a unique ID for the event. An event ID is not used
-- as an input to the model. Amazon Personalize uses the event ID to
-- distinquish unique events. Any subsequent events after the first with
-- the same event ID are not used in model training.
--
-- 'impression', 'event_impression' - A list of item IDs that represents the sequence of items you have shown
-- the user. For example, @[\"itemId1\", \"itemId2\", \"itemId3\"]@.
-- Provide a list of items to manually record impressions data for an
-- event. For more information on recording impressions data, see
-- <https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html#putevents-including-impressions-data Recording impressions data>.
--
-- 'metricAttribution', 'event_metricAttribution' - Contains information about the metric attribution associated with an
-- event. For more information about metric attributions, see
-- <https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html Measuring impact of recommendations>.
--
-- 'itemId', 'event_itemId' - The item ID key that corresponds to the @ITEM_ID@ field of the
-- Interactions schema.
--
-- 'eventType', 'event_eventType' - The type of event, such as click or download. This property corresponds
-- to the @EVENT_TYPE@ field of your Interactions schema and depends on the
-- types of events you are tracking.
--
-- 'sentAt', 'event_sentAt' - The timestamp (in Unix time) on the client side when the event occurred.
newEvent ::
  -- | 'eventType'
  Prelude.Text ->
  -- | 'sentAt'
  Prelude.UTCTime ->
  Event
newEvent pEventType_ pSentAt_ =
  Event'
    { properties = Prelude.Nothing,
      recommendationId = Prelude.Nothing,
      eventValue = Prelude.Nothing,
      eventId = Prelude.Nothing,
      impression = Prelude.Nothing,
      metricAttribution = Prelude.Nothing,
      itemId = Prelude.Nothing,
      eventType = pEventType_,
      sentAt = Core._Time Lens.# pSentAt_
    }

-- | A string map of event-specific data that you might choose to record. For
-- example, if a user rates a movie on your site, other than movie ID
-- (@itemId@) and rating (@eventValue@) , you might also send the number of
-- movie ratings made by the user.
--
-- Each item in the map consists of a key-value pair. For example,
--
-- @{\"numberOfRatings\": \"12\"}@
--
-- The keys use camel case names that match the fields in the Interactions
-- schema. In the above example, the @numberOfRatings@ would match the
-- \'NUMBER_OF_RATINGS\' field defined in the Interactions schema.
event_properties :: Lens.Lens' Event (Prelude.Maybe Prelude.Text)
event_properties = Lens.lens (\Event' {properties} -> properties) (\s@Event' {} a -> s {properties = a} :: Event) Prelude.. Lens.mapping Core._Sensitive

-- | The ID of the list of recommendations that contains the item the user
-- interacted with. Provide a @recommendationId@ to have Amazon Personalize
-- implicitly record the recommendations you show your user as impressions
-- data. Or provide a @recommendationId@ if you use a metric attribution to
-- measure the impact of recommendations.
--
-- For more information on recording impressions data, see
-- <https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html#putevents-including-impressions-data Recording impressions data>.
-- For more information on creating a metric attribution see
-- <https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html Measuring impact of recommendations>.
event_recommendationId :: Lens.Lens' Event (Prelude.Maybe Prelude.Text)
event_recommendationId = Lens.lens (\Event' {recommendationId} -> recommendationId) (\s@Event' {} a -> s {recommendationId = a} :: Event)

-- | The event value that corresponds to the @EVENT_VALUE@ field of the
-- Interactions schema.
event_eventValue :: Lens.Lens' Event (Prelude.Maybe Prelude.Double)
event_eventValue = Lens.lens (\Event' {eventValue} -> eventValue) (\s@Event' {} a -> s {eventValue = a} :: Event)

-- | An ID associated with the event. If an event ID is not provided, Amazon
-- Personalize generates a unique ID for the event. An event ID is not used
-- as an input to the model. Amazon Personalize uses the event ID to
-- distinquish unique events. Any subsequent events after the first with
-- the same event ID are not used in model training.
event_eventId :: Lens.Lens' Event (Prelude.Maybe Prelude.Text)
event_eventId = Lens.lens (\Event' {eventId} -> eventId) (\s@Event' {} a -> s {eventId = a} :: Event)

-- | A list of item IDs that represents the sequence of items you have shown
-- the user. For example, @[\"itemId1\", \"itemId2\", \"itemId3\"]@.
-- Provide a list of items to manually record impressions data for an
-- event. For more information on recording impressions data, see
-- <https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html#putevents-including-impressions-data Recording impressions data>.
event_impression :: Lens.Lens' Event (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
event_impression = Lens.lens (\Event' {impression} -> impression) (\s@Event' {} a -> s {impression = a} :: Event) Prelude.. Lens.mapping Lens.coerced

-- | Contains information about the metric attribution associated with an
-- event. For more information about metric attributions, see
-- <https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html Measuring impact of recommendations>.
event_metricAttribution :: Lens.Lens' Event (Prelude.Maybe MetricAttribution)
event_metricAttribution = Lens.lens (\Event' {metricAttribution} -> metricAttribution) (\s@Event' {} a -> s {metricAttribution = a} :: Event)

-- | The item ID key that corresponds to the @ITEM_ID@ field of the
-- Interactions schema.
event_itemId :: Lens.Lens' Event (Prelude.Maybe Prelude.Text)
event_itemId = Lens.lens (\Event' {itemId} -> itemId) (\s@Event' {} a -> s {itemId = a} :: Event) Prelude.. Lens.mapping Core._Sensitive

-- | The type of event, such as click or download. This property corresponds
-- to the @EVENT_TYPE@ field of your Interactions schema and depends on the
-- types of events you are tracking.
event_eventType :: Lens.Lens' Event Prelude.Text
event_eventType = Lens.lens (\Event' {eventType} -> eventType) (\s@Event' {} a -> s {eventType = a} :: Event)

-- | The timestamp (in Unix time) on the client side when the event occurred.
event_sentAt :: Lens.Lens' Event Prelude.UTCTime
event_sentAt = Lens.lens (\Event' {sentAt} -> sentAt) (\s@Event' {} a -> s {sentAt = a} :: Event) Prelude.. Core._Time

instance Prelude.Hashable Event where
  hashWithSalt _salt Event' {..} =
    _salt `Prelude.hashWithSalt` properties
      `Prelude.hashWithSalt` recommendationId
      `Prelude.hashWithSalt` eventValue
      `Prelude.hashWithSalt` eventId
      `Prelude.hashWithSalt` impression
      `Prelude.hashWithSalt` metricAttribution
      `Prelude.hashWithSalt` itemId
      `Prelude.hashWithSalt` eventType
      `Prelude.hashWithSalt` sentAt

instance Prelude.NFData Event where
  rnf Event' {..} =
    Prelude.rnf properties
      `Prelude.seq` Prelude.rnf recommendationId
      `Prelude.seq` Prelude.rnf eventValue
      `Prelude.seq` Prelude.rnf eventId
      `Prelude.seq` Prelude.rnf impression
      `Prelude.seq` Prelude.rnf metricAttribution
      `Prelude.seq` Prelude.rnf itemId
      `Prelude.seq` Prelude.rnf eventType
      `Prelude.seq` Prelude.rnf sentAt

instance Core.ToJSON Event where
  toJSON Event' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("properties" Core..=) Prelude.<$> properties,
            ("recommendationId" Core..=)
              Prelude.<$> recommendationId,
            ("eventValue" Core..=) Prelude.<$> eventValue,
            ("eventId" Core..=) Prelude.<$> eventId,
            ("impression" Core..=) Prelude.<$> impression,
            ("metricAttribution" Core..=)
              Prelude.<$> metricAttribution,
            ("itemId" Core..=) Prelude.<$> itemId,
            Prelude.Just ("eventType" Core..= eventType),
            Prelude.Just ("sentAt" Core..= sentAt)
          ]
      )
