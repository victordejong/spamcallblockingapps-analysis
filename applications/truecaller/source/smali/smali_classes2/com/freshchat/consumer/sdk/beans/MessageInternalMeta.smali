.class public Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private calendarMessageMeta:Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCalendarMessageMeta()Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;->calendarMessageMeta:Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    return-object v0
.end method

.method public setCalendarMessageMeta(Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;->calendarMessageMeta:Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "MessageInternalMeta{calendarMessageMeta = "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;->calendarMessageMeta:Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
