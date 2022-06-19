.class public Lcom/freshchat/consumer/sdk/k/c;
.super Lcom/freshchat/consumer/sdk/k/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/k/c$a;
    }
.end annotation


# instance fields
.field private nq:J

.field private ok:J

.field private final qr:Lcom/freshchat/consumer/sdk/l/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/b;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/freshchat/consumer/sdk/l/c;

    invoke-direct {p1}, Lcom/freshchat/consumer/sdk/l/c;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/c;->qr:Lcom/freshchat/consumer/sdk/l/c;

    return-void
.end method

.method private c(Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;)Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;-><init>()V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;->setCalendarMessageMeta(Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;)V

    return-object v0
.end method


# virtual methods
.method public A(Lcom/freshchat/consumer/sdk/beans/Message;)V
    .locals 1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/cm;->t(Lcom/freshchat/consumer/sdk/beans/Message;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/bg;->J(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public B(Lcom/freshchat/consumer/sdk/beans/Message;)V
    .locals 1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/cm;->t(Lcom/freshchat/consumer/sdk/beans/Message;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/bg;->K(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public I(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/cm;->u(Lcom/freshchat/consumer/sdk/beans/Message;)Z

    move-result p1

    return p1
.end method

.method public K(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/cy;->aT(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 v3, 0x0

    if-ltz v0, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/cy;->aT(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v3

    :goto_1
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v0

    if-ge p1, v0, :cond_4

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/beans/Message;->getCreatedMillis()J

    move-result-wide v4

    invoke-static {v4, v5, p1}, Lcom/freshchat/consumer/sdk/j/cy;->a(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/freshchat/consumer/sdk/beans/Message;->setAlias(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/beans/Message;->setUploadState(I)V

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/beans/Message;->setRead(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public a(III)I
    .locals 0

    if-lt p1, p2, :cond_0

    move p1, p2

    :cond_0
    mul-int/2addr p1, p3

    return p1
.end method

.method public a(Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;JJ)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/freshchat/consumer/sdk/l/j;

    invoke-direct {v1}, Lcom/freshchat/consumer/sdk/l/j;-><init>()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/l/j;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    new-instance v5, Lcom/freshchat/consumer/sdk/beans/fragment/TextFragment;

    invoke-direct {v5}, Lcom/freshchat/consumer/sdk/beans/fragment/TextFragment;-><init>()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_calendar_cancel_invite_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->setContent(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    const-string v1, "text/html"

    invoke-virtual {v5, v1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->setContentType(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/c;->c(Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;)Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    move-result-object v1

    sget-object v6, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->MESSAGE_TYPE_CALENDER_INVITE_CANCELLED_BY_USER:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    const-wide/16 v11, -0x1

    move-object v3, p0

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-virtual/range {v3 .. v12}, Lcom/freshchat/consumer/sdk/k/c;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;Lcom/freshchat/consumer/sdk/beans/Message$MessageType;JJJ)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v2, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->setInternalMeta(Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;)V

    return-object v2
.end method

.method public a(Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;IJJ)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 14

    move-object v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/freshchat/consumer/sdk/l/j;

    invoke-direct {v2}, Lcom/freshchat/consumer/sdk/l/j;-><init>()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/freshchat/consumer/sdk/l/j;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;

    invoke-direct {v6}, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->getFromMillis()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->setStartMillis(J)V

    invoke-virtual/range {p2 .. p2}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->getToMillis()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->setEndMillis(J)V

    move/from16 v3, p3

    invoke-virtual {v6, v3}, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->setEventProviderType(I)V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ct;->hX()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->setUserTimeZone(Ljava/lang/String;)V

    sget-object v7, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->MESSAGE_TYPE_NORMAL:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    const-wide/16 v12, -0x1

    move-object v4, p0

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v4 .. v13}, Lcom/freshchat/consumer/sdk/k/c;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;Lcom/freshchat/consumer/sdk/beans/Message$MessageType;JJJ)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/c;->c(Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;)Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/freshchat/consumer/sdk/l/j;->cd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->setCalendarBookingEmail(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->setInternalMeta(Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;)V

    return-object v3

    :cond_2
    :goto_0
    return-object v1
.end method

.method public a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;JJJ)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 10

    sget-object v3, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->MESSAGE_TYPE_NORMAL:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/freshchat/consumer/sdk/k/c;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;Lcom/freshchat/consumer/sdk/beans/Message$MessageType;JJJ)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;Lcom/freshchat/consumer/sdk/beans/Message$MessageType;JJJ)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p9}, Lcom/freshchat/consumer/sdk/service/d/c;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;Lcom/freshchat/consumer/sdk/beans/Message$MessageType;JJJ)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public a(Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/Participant;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->getCalendarAgentAlias()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Participant;

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Participant;->getProfilePicUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public a(JLcom/freshchat/consumer/sdk/l/c$b;)V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/c;->qr:Lcom/freshchat/consumer/sdk/l/c;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/freshchat/consumer/sdk/l/c;->a(Landroid/content/Context;JLcom/freshchat/consumer/sdk/l/c$b;)V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;",
            "Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/k/h;->L(Ljava/util/List;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)Ln3/b0/a/h$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)",
            "Ln3/b0/a/h$d;"
        }
    .end annotation

    new-instance v0, Lcom/freshchat/consumer/sdk/k/c$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/freshchat/consumer/sdk/k/c$a;-><init>(Lcom/freshchat/consumer/sdk/k/c;Ljava/util/List;Ljava/util/List;)V

    const/4 p1, 0x1

    .line 1
    invoke-static {v0, p1}, Ln3/b0/a/h;->a(Ln3/b0/a/h$b;Z)Ln3/b0/a/h$d;

    move-result-object p1

    return-object p1
.end method

.method public w(Lcom/freshchat/consumer/sdk/beans/Message;)Landroid/net/Uri;
    .locals 0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/cm;->w(Lcom/freshchat/consumer/sdk/beans/Message;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public x(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;
    .locals 0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getInternalMeta()Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;->getCalendarMessageMeta()Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    move-result-object p1

    return-object p1
.end method

.method public x(J)V
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/k/c;->nq:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/b;->ha()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/k/c;->nq:J

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/bg;->bY(Landroid/content/Context;)V

    return-void
.end method

.method public y(J)V
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/k/c;->ok:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/b;->ha()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/k/c;->ok:J

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/bg;->bZ(Landroid/content/Context;)V

    return-void
.end method

.method public z(Lcom/freshchat/consumer/sdk/beans/Message;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/cm;->g(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public z(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/be;->eC()Lcom/freshchat/consumer/sdk/j/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/be;->gZ()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/k/d;

    invoke-direct {v1, p0, p1}, Lcom/freshchat/consumer/sdk/k/d;-><init>(Lcom/freshchat/consumer/sdk/k/c;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
