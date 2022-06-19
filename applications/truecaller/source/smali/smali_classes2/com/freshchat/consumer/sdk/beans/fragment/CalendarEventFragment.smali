.class public Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;
.super Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;
.source "SourceFile"


# instance fields
.field private endMillis:J

.field private eventId:Ljava/lang/String;

.field private eventProviderType:I

.field private participantIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private startMillis:J

.field private userTimeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->CALENDAR_EVENT:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getEndMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->endMillis:J

    return-wide v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getEventProviderType()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->eventProviderType:I

    return v0
.end method

.method public getParticipantIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->participantIds:Ljava/util/Set;

    return-object v0
.end method

.method public getStartMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->startMillis:J

    return-wide v0
.end method

.method public getUserTimeZone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->userTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public setEndMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->endMillis:J

    return-void
.end method

.method public setEventId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->eventId:Ljava/lang/String;

    return-void
.end method

.method public setEventProviderType(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->eventProviderType:I

    return-void
.end method

.method public setParticipantIds(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->participantIds:Ljava/util/Set;

    return-void
.end method

.method public setStartMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->startMillis:J

    return-void
.end method

.method public setUserTimeZone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->userTimeZone:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, "CalendarEventFragment{eventId=\'"

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->eventId:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", eventProviderType="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->eventProviderType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->startMillis:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->endMillis:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userTimeZone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->userTimeZone:Ljava/lang/String;

    const-string v3, ", participantIds="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->participantIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
