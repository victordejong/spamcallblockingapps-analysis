.class public Lcom/freshchat/consumer/sdk/service/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final av:Lcom/freshchat/consumer/sdk/c/g;

.field private final eT:Lcom/freshchat/consumer/sdk/c/e;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/c/e;Lcom/freshchat/consumer/sdk/c/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/d/g;->eT:Lcom/freshchat/consumer/sdk/c/e;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/service/d/g;->av:Lcom/freshchat/consumer/sdk/c/g;

    return-void
.end method

.method private f(Lcom/freshchat/consumer/sdk/beans/Channel;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getFlowMessagesJson()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/freshchat/consumer/sdk/service/d/h;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/service/d/h;-><init>(Lcom/freshchat/consumer/sdk/service/d/g;)V

    invoke-virtual {v1}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ab;->in()Lcom/freshchat/consumer/sdk/j/ab;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Channel;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/service/d/g;->eT:Lcom/freshchat/consumer/sdk/c/e;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Channel;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/freshchat/consumer/sdk/c/e;->f(J)Lcom/freshchat/consumer/sdk/beans/Conversation;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "FRESHCHAT"

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getStatus()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Conversation;->hasPendingCsat()Z

    move-result v5

    if-nez v4, :cond_2

    const-string p1, "Bot: Conversation Not resolved. shouldDisplayFlowMessages false"

    :goto_1
    invoke-static {v3, p1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    if-eqz v5, :cond_4

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v4

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/au;->a(Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;)Z

    move-result v5

    const-string v6, "Bot: Conversation Has pending CSAT. shouldDisplayFlowMessages false"

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getCsat()Lcom/freshchat/consumer/sdk/beans/Csat;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/freshchat/consumer/sdk/j/au;->a(Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;Lcom/freshchat/consumer/sdk/beans/Csat;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v3, v6}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    invoke-static {v3, v6}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/service/d/g;->av:Lcom/freshchat/consumer/sdk/c/g;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Channel;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/freshchat/consumer/sdk/c/g;->E(J)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "Bot: Has messages to upload. shouldDisplayFlowMessages false"

    goto :goto_1

    :cond_5
    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/service/d/g;->f(Lcom/freshchat/consumer/sdk/beans/Channel;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    :cond_6
    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Channel;->getFlowBusinessHourType()Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

    move-result-object v1

    sget-object v3, Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;->BUSINESS_HOUR_ALWAYS:Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

    if-ne v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Channel;->getOperatingHoursId()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/freshchat/consumer/sdk/service/d/i;->r(Landroid/content/Context;J)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;->BUSINESS_HOUR_OUTSIDE:Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

    if-ne v1, p1, :cond_8

    move v0, v2

    :cond_8
    return v0

    :cond_9
    sget-object p1, Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;->BUSINESS_HOUR_INSIDE:Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

    if-ne v1, p1, :cond_a

    move v0, v2

    :cond_a
    return v0
.end method
