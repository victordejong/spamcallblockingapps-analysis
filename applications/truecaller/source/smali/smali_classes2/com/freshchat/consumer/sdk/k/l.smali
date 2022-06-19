.class public Lcom/freshchat/consumer/sdk/k/l;
.super Lcom/freshchat/consumer/sdk/k/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/k/l$a;
    }
.end annotation


# instance fields
.field private qd:Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;

.field private qe:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/p;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;)V
    .locals 5

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/l;->qd:Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->getStartMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->getEndMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;-><init>(JJ)V

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/k/p;->b(Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;)V

    return-void
.end method

.method public hZ()Lcom/freshchat/consumer/sdk/k/l$a;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/l;->qd:Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;

    if-nez v0, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/k/l$a;->qi:Lcom/freshchat/consumer/sdk/k/l$a;

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/k/l;->qe:Z

    if-nez v1, :cond_1

    sget-object v0, Lcom/freshchat/consumer/sdk/k/l$a;->qf:Lcom/freshchat/consumer/sdk/k/l$a;

    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/cm;->a(Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/freshchat/consumer/sdk/k/l$a;->qg:Lcom/freshchat/consumer/sdk/k/l$a;

    return-object v0

    :cond_2
    sget-object v0, Lcom/freshchat/consumer/sdk/k/l$a;->qh:Lcom/freshchat/consumer/sdk/k/l$a;

    return-object v0
.end method

.method public ia()Ljava/lang/String;
    .locals 7

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/p;->qq:Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_calendar_duration_place_holder:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/freshchat/consumer/sdk/R$string;->freshchat_calendar_duration:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/k/p;->qq:Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->getToMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/k/p;->qq:Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    invoke-virtual {v5}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->getFromMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xea60

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public y(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/k/l;->qe:Z

    return-void
.end method
