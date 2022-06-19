.class public Lcom/freshchat/consumer/sdk/k/p;
.super Lcom/freshchat/consumer/sdk/k/a;
.source "SourceFile"


# instance fields
.field private calendarMessageMeta:Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

.field private calendarType:I

.field private oY:Ljava/lang/String;

.field public qq:Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/p;->qq:Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    return-void
.end method

.method public br(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/p;->oY:Ljava/lang/String;

    return-void
.end method

.method public getCalendarType()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/k/p;->calendarType:I

    return v0
.end method

.method public hL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/p;->oY:Ljava/lang/String;

    return-object v0
.end method

.method public ih()Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/p;->qq:Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    return-object v0
.end method

.method public ii()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/p;->qq:Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/p;->qq:Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->getFromMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/n;->p(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/k/p;->qq:Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->getToMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/freshchat/consumer/sdk/j/n;->p(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    const-string v2, " - "

    invoke-static {v0, v2, v1}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ij()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/p;->qq:Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/p;->qq:Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->getFromMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/n;->q(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ik()Z
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->isTeamMemberInfoVisible()Z

    move-result v0

    return v0
.end method

.method public setCalendarMessageMeta(Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/p;->calendarMessageMeta:Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    return-void
.end method

.method public setCalendarType(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/k/p;->calendarType:I

    return-void
.end method
