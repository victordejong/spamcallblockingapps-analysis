.class public Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/e/k;


# instance fields
.field private bufferTime:I

.field private calendarTimeSlots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/CalendarTimeSlot;",
            ">;"
        }
    .end annotation
.end field

.field private calendarType:I

.field private id:Ljava/lang/String;

.field private meetingLength:I

.field private minNoticeTime:I

.field private processedCalendarDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/CalendarDay;",
            ">;"
        }
    .end annotation
.end field

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBufferTime()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->bufferTime:I

    return v0
.end method

.method public getCalendarTimeSlots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/CalendarTimeSlot;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->calendarTimeSlots:Ljava/util/List;

    return-object v0
.end method

.method public getCalendarType()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->calendarType:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMeetingLength()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->meetingLength:I

    return v0
.end method

.method public getMinNoticeTime()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->minNoticeTime:I

    return v0
.end method

.method public getProcessedCalendarDataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/CalendarDay;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->processedCalendarDataMap:Ljava/util/Map;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->success:Z

    return v0
.end method

.method public setBufferTime(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->bufferTime:I

    return-void
.end method

.method public setCalendarTimeSlots(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/CalendarTimeSlot;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->calendarTimeSlots:Ljava/util/List;

    return-void
.end method

.method public setCalendarType(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->calendarType:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->id:Ljava/lang/String;

    return-void
.end method

.method public setMeetingLength(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->meetingLength:I

    return-void
.end method

.method public setMinNoticeTime(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->minNoticeTime:I

    return-void
.end method

.method public setProcessedCalendarDataMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/CalendarDay;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->processedCalendarDataMap:Ljava/util/Map;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->success:Z

    return-void
.end method
