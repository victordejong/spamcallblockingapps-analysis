.class public Lcom/freshchat/consumer/sdk/k/q;
.super Lcom/freshchat/consumer/sdk/k/a;
.source "SourceFile"


# instance fields
.field private qs:Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/q;->qs:Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    return-void
.end method

.method public il()Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/q;->qs:Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    return-object v0
.end method

.method public im()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/q;->qs:Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/q;->qs:Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->getFromMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/n;->p(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
