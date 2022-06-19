.class public Lcom/freshchat/consumer/sdk/g/i;
.super Lcom/freshchat/consumer/sdk/g/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/g/c<",
        "Lcom/freshchat/consumer/sdk/beans/Message;",
        ">;"
    }
.end annotation


# instance fields
.field private aO:Z

.field private final av:Lcom/freshchat/consumer/sdk/c/g;

.field private final channelId:J

.field private final eT:Lcom/freshchat/consumer/sdk/c/e;

.field private final eU:Lcom/freshchat/consumer/sdk/c/c;

.field private final eW:Lcom/freshchat/consumer/sdk/c/h;

.field private final eX:J

.field private final jL:Lcom/freshchat/consumer/sdk/service/d/g;

.field private final jM:Z

.field private final jN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final jO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;"
        }
    .end annotation
.end field

.field private participants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Participant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/g/c;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/g/i;->aO:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/g/i;->jO:Ljava/util/HashMap;

    iput-wide p2, p0, Lcom/freshchat/consumer/sdk/g/i;->channelId:J

    new-instance p2, Lcom/freshchat/consumer/sdk/c/g;

    invoke-direct {p2, p1}, Lcom/freshchat/consumer/sdk/c/g;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/g/i;->av:Lcom/freshchat/consumer/sdk/c/g;

    new-instance p3, Lcom/freshchat/consumer/sdk/c/h;

    invoke-direct {p3, p1}, Lcom/freshchat/consumer/sdk/c/h;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/g/i;->eW:Lcom/freshchat/consumer/sdk/c/h;

    new-instance p3, Lcom/freshchat/consumer/sdk/c/c;

    invoke-direct {p3, p1}, Lcom/freshchat/consumer/sdk/c/c;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/g/i;->eU:Lcom/freshchat/consumer/sdk/c/c;

    new-instance p3, Lcom/freshchat/consumer/sdk/c/e;

    invoke-direct {p3, p1}, Lcom/freshchat/consumer/sdk/c/e;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/g/i;->eT:Lcom/freshchat/consumer/sdk/c/e;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getConversationConfig()Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->getActiveConvWindow()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freshchat/consumer/sdk/g/i;->eX:J

    iput-object p4, p0, Lcom/freshchat/consumer/sdk/g/i;->jN:Ljava/util/List;

    new-instance p1, Lcom/freshchat/consumer/sdk/service/d/g;

    invoke-direct {p1, p3, p2}, Lcom/freshchat/consumer/sdk/service/d/g;-><init>(Lcom/freshchat/consumer/sdk/c/e;Lcom/freshchat/consumer/sdk/c/g;)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/g/i;->jL:Lcom/freshchat/consumer/sdk/service/d/g;

    iput-boolean p5, p0, Lcom/freshchat/consumer/sdk/g/i;->jM:Z

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/g/i;->fn()V

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/Channel;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freshchat/consumer/sdk/beans/Channel;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "_welcome_message"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-eqz p1, :cond_3

    if-ne v0, v1, :cond_2

    invoke-static {p3}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    if-le v0, v1, :cond_3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageType()I

    move-result p1

    sget-object p3, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->FREDDY_BOT:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->getIntValue()I

    move-result p3

    if-ne p1, p3, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private d(Lcom/freshchat/consumer/sdk/beans/Channel;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/g/i;->jM:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getFlowBusinessHourType()Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/i;->jL:Lcom/freshchat/consumer/sdk/service/d/g;

    invoke-virtual {p0}, Ln3/w/b/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/freshchat/consumer/sdk/service/d/g;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Channel;)Z

    move-result p1

    return p1
.end method

.method private e(Lcom/freshchat/consumer/sdk/beans/Channel;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freshchat/consumer/sdk/beans/Channel;",
            ")",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getFlowMessagesJson()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lcom/freshchat/consumer/sdk/g/l;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/g/l;-><init>(Lcom/freshchat/consumer/sdk/g/i;)V

    invoke-virtual {v0}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ab;->in()Lcom/freshchat/consumer/sdk/j/ab;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-direct {p0, v3}, Lcom/freshchat/consumer/sdk/g/i;->r(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->FREDDY_BOT:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->getIntValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/freshchat/consumer/sdk/beans/Message;->setMessageType(I)V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/freshchat/consumer/sdk/beans/Message;->setMessageUserType(I)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getServiceAccountId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/freshchat/consumer/sdk/beans/Message;->setMessageUserAlias(Ljava/lang/String;)V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/n;->fP()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/freshchat/consumer/sdk/beans/Message;->setCreatedMillis(J)V

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Message;->getFlowStepId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/cy;->aS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/freshchat/consumer/sdk/beans/Message;->setAlias(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/freshchat/consumer/sdk/g/i;->channelId:J

    invoke-virtual {v3, v4, v5}, Lcom/freshchat/consumer/sdk/beans/Message;->setChannelId(J)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private fn()V
    .locals 4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/i;->jO:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/i;->jN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/Message;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/g/i;->jO:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private r(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/i;->jO:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getFlowStepId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/i;->jO:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getFlowStepId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/cy;->aS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Message;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public dd()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/i;->eU:Lcom/freshchat/consumer/sdk/c/c;

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/g/i;->channelId:J

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/c/c;->e(J)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/g/i;->av:Lcom/freshchat/consumer/sdk/c/g;

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/g/i;->channelId:J

    invoke-virtual {v1, v2, v3}, Lcom/freshchat/consumer/sdk/c/g;->k(J)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/g/i;->eW:Lcom/freshchat/consumer/sdk/c/h;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/c/h;->cH()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/freshchat/consumer/sdk/g/i;->participants:Ljava/util/List;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/g/i;->av:Lcom/freshchat/consumer/sdk/c/g;

    iget-wide v3, p0, Lcom/freshchat/consumer/sdk/g/i;->channelId:J

    iget-wide v5, p0, Lcom/freshchat/consumer/sdk/g/i;->eX:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/freshchat/consumer/sdk/c/g;->a(JJ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/freshchat/consumer/sdk/g/i;->aO:Z

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/g/i;->d(Lcom/freshchat/consumer/sdk/beans/Channel;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/g/i;->e(Lcom/freshchat/consumer/sdk/beans/Channel;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/freshchat/consumer/sdk/g/i;->a(Lcom/freshchat/consumer/sdk/beans/Channel;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v1
.end method

.method public di()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/g/i;->aO:Z

    return v0
.end method

.method public getParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Participant;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/i;->participants:Ljava/util/List;

    return-object v0
.end method
