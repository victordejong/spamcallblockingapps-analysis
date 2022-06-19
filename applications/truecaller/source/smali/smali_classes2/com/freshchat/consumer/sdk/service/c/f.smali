.class public Lcom/freshchat/consumer/sdk/service/c/f;
.super Lcom/freshchat/consumer/sdk/service/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/service/e/d;",
        "Lcom/freshchat/consumer/sdk/service/e/k;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/service/c/a;-><init>()V

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/service/e/d$a;)J
    .locals 4

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getRefreshIntervals()Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/service/e/d$a;->gj:Lcom/freshchat/consumer/sdk/service/e/d$a;

    const-wide/16 v2, 0x0

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/freshchat/consumer/sdk/service/e/d$a;->gk:Lcom/freshchat/consumer/sdk/service/e/d$a;

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getMsgFetchIntervalNormal()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/freshchat/consumer/sdk/service/e/d$a;->gl:Lcom/freshchat/consumer/sdk/service/e/d$a;

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getMsgFetchIntervalLaidback()J

    move-result-wide v2

    :cond_2
    :goto_0
    return-wide v2
.end method

.method private a(Ljava/util/Set;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private s(Ljava/util/List;)Ljava/util/List;
    .locals 3
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

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/Message;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/beans/Message;->setUploadState(I)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private y(Ljava/util/List;)Ljava/util/List;
    .locals 3
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

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Message;->isUserMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/beans/Message;->setRead(Z)V

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/d;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "FreshchatTest"

    new-instance v2, Lcom/freshchat/consumer/sdk/service/e/h;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "FetchMessagesRequest"

    invoke-static {v0, v5}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {p0 .. p1}, Lcom/freshchat/consumer/sdk/service/c/f;->b(Lcom/freshchat/consumer/sdk/service/e/d;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {v5}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v6, Lcom/freshchat/consumer/sdk/c/g;

    invoke-direct {v6, v5}, Lcom/freshchat/consumer/sdk/c/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/freshchat/consumer/sdk/c/g;->gr()I

    move-result v7

    new-instance v8, Lcom/freshchat/consumer/sdk/c/e;

    invoke-direct {v8, v5}, Lcom/freshchat/consumer/sdk/c/e;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v9

    invoke-virtual {v6}, Lcom/freshchat/consumer/sdk/c/g;->cD()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/freshchat/consumer/sdk/b/e;->bJ()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v12, "FRESHCHAT"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Messages firstTimeFetch:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v11

    invoke-virtual {v11}, Lcom/freshchat/consumer/sdk/b/e;->fi()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v10, "0"

    invoke-virtual/range {p0 .. p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/freshchat/consumer/sdk/b/e;->D(Z)V

    :cond_1
    new-instance v11, Lcom/freshchat/consumer/sdk/e/a;

    invoke-direct {v11, v5}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/service/e/d;->dE()I

    move-result v12

    invoke-virtual {v11, v10, v12}, Lcom/freshchat/consumer/sdk/e/a;->a(Ljava/lang/String;I)Lcom/freshchat/consumer/sdk/beans/reqres/ConversationsResponse;

    move-result-object v10

    const-string v11, "Message fetch"

    invoke-static {v0, v11}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/freshchat/consumer/sdk/beans/reqres/ConversationsResponse;->getConversations()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_d

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v10, "Message fetch - has updates"

    invoke-static {v0, v10}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Lcom/freshchat/consumer/sdk/c/e;->f(Ljava/util/List;)V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ap;->jP()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v4

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/freshchat/consumer/sdk/beans/Conversation;

    invoke-virtual {v12}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getConversationId()J

    move-result-wide v13

    invoke-virtual {v12}, Lcom/freshchat/consumer/sdk/beans/Conversation;->hasPendingCsat()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v8, v13, v14}, Lcom/freshchat/consumer/sdk/c/e;->g(J)Lcom/freshchat/consumer/sdk/beans/Csat;

    move-result-object v15

    if-nez v15, :cond_3

    move v15, v3

    goto :goto_1

    :cond_3
    move v15, v4

    :goto_1
    invoke-virtual {v12}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getCsat()Lcom/freshchat/consumer/sdk/beans/Csat;

    move-result-object v3

    if-eqz v15, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v15

    invoke-static {v15}, Lcom/freshchat/consumer/sdk/j/au;->a(Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;)Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-static {v15, v3}, Lcom/freshchat/consumer/sdk/j/au;->a(Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;Lcom/freshchat/consumer/sdk/beans/Csat;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v15, 0x1

    goto :goto_2

    :cond_4
    move v15, v4

    :goto_2
    if-nez v15, :cond_5

    invoke-virtual {v8, v13, v14, v3}, Lcom/freshchat/consumer/sdk/c/e;->a(JLcom/freshchat/consumer/sdk/beans/Csat;)V

    goto :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v16, v5

    invoke-virtual {v12}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getChannelId()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v13, v14}, Lcom/freshchat/consumer/sdk/j/bg;->c(Landroid/content/Context;JJ)V

    goto :goto_4

    :cond_6
    :goto_3
    move-object/from16 v16, v5

    goto :goto_4

    :cond_7
    move-object/from16 v16, v5

    invoke-virtual {v8, v13, v14}, Lcom/freshchat/consumer/sdk/c/e;->t(J)V

    :goto_4
    invoke-virtual {v12}, Lcom/freshchat/consumer/sdk/beans/Conversation;->isRequireDebugLog()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v12}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getLogId()J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Lcom/freshchat/consumer/sdk/b/e;->d(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/b;->R(Landroid/content/Context;)V

    :cond_8
    invoke-virtual {v12}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getMessages()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/freshchat/consumer/sdk/service/c/f;->a(Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {v12}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getMessages()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v5, v16

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v12}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getChannelId()J

    move-result-wide v13

    invoke-static {v4, v3, v13, v14}, Lcom/freshchat/consumer/sdk/j/cm;->a(Landroid/content/Context;Ljava/util/List;J)V

    invoke-direct {v1, v3}, Lcom/freshchat/consumer/sdk/service/c/f;->s(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/freshchat/consumer/sdk/service/c/f;->y(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v12}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getChannelId()J

    move-result-wide v4

    invoke-virtual {v6, v3, v4, v5}, Lcom/freshchat/consumer/sdk/c/g;->a(Ljava/util/List;J)Ljava/util/List;

    invoke-virtual {v12}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getChannelId()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Lcom/freshchat/consumer/sdk/c/g;->F(J)V

    move-object/from16 v5, v16

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_a
    move-object/from16 v16, v5

    if-eqz v11, :cond_b

    invoke-static/range {v16 .. v16}, Lcom/freshchat/consumer/sdk/b/a;->g(Landroid/content/Context;)V

    invoke-static/range {v16 .. v16}, Lcom/freshchat/consumer/sdk/b/a;->f(Landroid/content/Context;)V

    invoke-static/range {v16 .. v16}, Lcom/freshchat/consumer/sdk/b/a;->aJ(Landroid/content/Context;)V

    :cond_b
    invoke-virtual {v6}, Lcom/freshchat/consumer/sdk/c/g;->gr()I

    move-result v0

    if-le v0, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/bg;->bK(Landroid/content/Context;)V

    :cond_c
    invoke-virtual {v9}, Lcom/freshchat/consumer/sdk/b/e;->bK()V

    return-object v2

    :cond_d
    :goto_5
    move v3, v4

    invoke-virtual {v2, v3}, Lcom/freshchat/consumer/sdk/service/e/h;->setSuccess(Z)V

    invoke-virtual {v10}, Lcom/freshchat/consumer/sdk/beans/reqres/ConversationsResponse;->getStatusCode()I

    move-result v0

    const/16 v3, 0x19c

    if-eq v0, v3, :cond_e

    invoke-virtual {v10}, Lcom/freshchat/consumer/sdk/beans/reqres/ConversationsResponse;->getStatusCode()I

    move-result v0

    const/16 v3, 0x1ac

    if-eq v0, v3, :cond_e

    invoke-virtual {v9}, Lcom/freshchat/consumer/sdk/b/e;->bK()V
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_e
    :goto_6
    return-object v2

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    :goto_7
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/freshchat/consumer/sdk/service/e/h;->setSuccess(Z)V

    return-object v2
.end method

.method public synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/d;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/f;->a(Lcom/freshchat/consumer/sdk/service/e/d;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/freshchat/consumer/sdk/service/e/d;)Z
    .locals 10

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/w;->ay(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/w;->aA(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bl()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    return v3

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/d;->dD()Lcom/freshchat/consumer/sdk/service/e/d$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/f;->a(Lcom/freshchat/consumer/sdk/service/e/d$a;)J

    move-result-wide v8

    sub-long/2addr v4, v6

    cmp-long p1, v4, v8

    if-lez p1, :cond_4

    return v3

    :cond_4
    return v1
.end method
