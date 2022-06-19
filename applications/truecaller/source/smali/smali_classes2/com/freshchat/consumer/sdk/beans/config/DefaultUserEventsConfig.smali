.class public Lcom/freshchat/consumer/sdk/beans/config/DefaultUserEventsConfig;
.super Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;
.source "SourceFile"


# static fields
.field public static final MAX_ALLOWED_PER_DAY:J = 0x32L

.field public static final MAX_ALLOWED_PROPERTIES_PER_EVENT:J = 0x14L

.field public static final MAX_CHARACTERS_PER_EVENT_NAME:I = 0x20

.field public static final MAX_CHARACTERS_PER_EVENT_PROPERTY_NAME:I = 0x20

.field public static final MAX_CHARACTERS_PER_EVENT_PROPERTY_VALUE:I = 0x100

.field public static final MAX_DELAY_IN_MILLIS_UNTIL_UPLOAD:J = 0x3a98L

.field public static final MAX_EVENTS_PER_BATCH:J = 0xaL

.field public static final TRIGGER_UPLOAD_ON_EVENTS_COUNT:J = 0x5L


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;-><init>()V

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->setMaxAllowedEventsPerDay(J)V

    const-wide/16 v0, 0x3a98

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->setMaxDelayInMillisUntilUpload(J)V

    const-wide/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->setMaxEventsPerBatch(J)V

    const-wide/16 v0, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->setMaxAllowedPropertiesPerEvent(J)V

    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->setTriggerUploadOnEventsCount(J)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->setMaxCharsPerEventName(I)V

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->setMaxCharsPerEventPropertyName(I)V

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->setMaxCharsPerEventPropertyValue(I)V

    return-void
.end method
