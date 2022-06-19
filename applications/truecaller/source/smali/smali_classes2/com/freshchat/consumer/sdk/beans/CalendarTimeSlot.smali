.class public Lcom/freshchat/consumer/sdk/beans/CalendarTimeSlot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private from:J

.field private id:I

.field private prevTo:I

.field private to:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrom()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarTimeSlot;->from:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarTimeSlot;->id:I

    return v0
.end method

.method public getPrevTo()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarTimeSlot;->prevTo:I

    return v0
.end method

.method public getTo()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarTimeSlot;->to:J

    return-wide v0
.end method

.method public setFrom(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarTimeSlot;->from:J

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarTimeSlot;->id:I

    return-void
.end method

.method public setPrevTo(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarTimeSlot;->prevTo:I

    return-void
.end method

.method public setTo(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarTimeSlot;->to:J

    return-void
.end method
