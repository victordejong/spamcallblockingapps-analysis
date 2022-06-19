.class public Lcom/freshchat/consumer/sdk/j/cm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/util/Map;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/freshchat/consumer/sdk/beans/Message;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/beans/Message;

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/freshchat/consumer/sdk/beans/Message;->setResponded(Z)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/util/Map;Lcom/freshchat/consumer/sdk/beans/Message;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/Participant;",
            ">;",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getInternalMeta()Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;->getCalendarMessageMeta()Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->getCalendarAgentAlias()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/Participant;

    if-nez p0, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Participant;->getProfilePicUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;J)V
    .locals 2

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/cm;->v(Lcom/freshchat/consumer/sdk/beans/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/be;->eC()Lcom/freshchat/consumer/sdk/j/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/be;->gx()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/j/cn;

    invoke-direct {v1, p1, p0, p2, p3}, Lcom/freshchat/consumer/sdk/j/cn;-><init>(Lcom/freshchat/consumer/sdk/beans/Message;Landroid/content/Context;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;J)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/cm;->ch(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/c/g;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/freshchat/consumer/sdk/c/g;->A(J)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-static {v0, p3}, Lcom/freshchat/consumer/sdk/j/cm;->b(Ljava/util/Map;Lcom/freshchat/consumer/sdk/beans/Message;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-static {p3}, Lcom/freshchat/consumer/sdk/j/cm;->u(Lcom/freshchat/consumer/sdk/beans/Message;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2, p3}, Lcom/freshchat/consumer/sdk/j/cm;->b(Ljava/util/Map;Lcom/freshchat/consumer/sdk/beans/Message;)V

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lcom/freshchat/consumer/sdk/j/cm;->v(Lcom/freshchat/consumer/sdk/beans/Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p3}, Lcom/freshchat/consumer/sdk/j/cm;->t(Lcom/freshchat/consumer/sdk/beans/Message;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v0, p3}, Lcom/freshchat/consumer/sdk/j/cm;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Lcom/freshchat/consumer/sdk/c/g;->b(Lcom/freshchat/consumer/sdk/beans/Message;)Z

    goto :goto_1

    :cond_4
    invoke-static {p2, p3}, Lcom/freshchat/consumer/sdk/j/cm;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message;

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static a(Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->getEventId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/util/Map;Lcom/freshchat/consumer/sdk/beans/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/cm;->t(Lcom/freshchat/consumer/sdk/beans/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static ch(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/c/g;
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/c/g;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/c/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static g(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/cm;->s(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->getStartMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0, v1, v2}, Lcom/freshchat/consumer/sdk/j/n;->o(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageFragments()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static t(Lcom/freshchat/consumer/sdk/beans/Message;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/cm;->x(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->getCalendarInviteId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static u(Lcom/freshchat/consumer/sdk/beans/Message;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageType()I

    move-result p0

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->MESSAGE_TYPE_CALENDER_INVITE_SENT_BY_AGENT:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->getIntValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static v(Lcom/freshchat/consumer/sdk/beans/Message;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageType()I

    move-result v0

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->MESSAGE_TYPE_CALENDER_INVITE_CANCELLED_BY_USER:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->getIntValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/cm;->s(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Lcom/freshchat/consumer/sdk/beans/Message;)Landroid/net/Uri;
    .locals 2

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/cm;->x(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->getCalendarEventLink()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static x(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getInternalMeta()Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getInternalMeta()Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    move-result-object p0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;->getCalendarMessageMeta()Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static y(Lcom/freshchat/consumer/sdk/beans/Message;)Z
    .locals 0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/cm;->x(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->isRetryCalendarEvent()Z

    move-result p0

    return p0
.end method
