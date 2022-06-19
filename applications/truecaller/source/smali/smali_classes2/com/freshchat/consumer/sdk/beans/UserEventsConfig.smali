.class public Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private maxAllowedEventsPerDay:J

.field private maxAllowedPropertiesPerEvent:J

.field private maxCharsPerEventName:I

.field private maxCharsPerEventPropertyName:I

.field private maxCharsPerEventPropertyValue:I

.field private maxDelayInMillisUntilUpload:J

.field private maxEventsPerBatch:J

.field private triggerUploadOnEventsCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxAllowedEventsPerDay()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->maxAllowedEventsPerDay:J

    return-wide v0
.end method

.method public getMaxAllowedPropertiesPerEvent()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->maxAllowedPropertiesPerEvent:J

    return-wide v0
.end method

.method public getMaxCharsPerEventName()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->maxCharsPerEventName:I

    return v0
.end method

.method public getMaxCharsPerEventPropertyName()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->maxCharsPerEventPropertyName:I

    return v0
.end method

.method public getMaxCharsPerEventPropertyValue()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->maxCharsPerEventPropertyValue:I

    return v0
.end method

.method public getMaxDelayInMillisUntilUpload()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->maxDelayInMillisUntilUpload:J

    return-wide v0
.end method

.method public getMaxEventsPerBatch()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->maxEventsPerBatch:J

    return-wide v0
.end method

.method public getTriggerUploadOnEventsCount()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->triggerUploadOnEventsCount:J

    return-wide v0
.end method

.method public setMaxAllowedEventsPerDay(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->maxAllowedEventsPerDay:J

    return-void
.end method

.method public setMaxAllowedPropertiesPerEvent(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->maxAllowedPropertiesPerEvent:J

    return-void
.end method

.method public setMaxCharsPerEventName(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->maxCharsPerEventName:I

    return-void
.end method

.method public setMaxCharsPerEventPropertyName(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->maxCharsPerEventPropertyName:I

    return-void
.end method

.method public setMaxCharsPerEventPropertyValue(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->maxCharsPerEventPropertyValue:I

    return-void
.end method

.method public setMaxDelayInMillisUntilUpload(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->maxDelayInMillisUntilUpload:J

    return-void
.end method

.method public setMaxEventsPerBatch(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->maxEventsPerBatch:J

    return-void
.end method

.method public setTriggerUploadOnEventsCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->triggerUploadOnEventsCount:J

    return-void
.end method
