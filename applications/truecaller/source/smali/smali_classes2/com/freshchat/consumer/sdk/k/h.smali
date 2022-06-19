.class public Lcom/freshchat/consumer/sdk/k/h;
.super Lcom/freshchat/consumer/sdk/k/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private D(Ljava/util/List;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/h;->F(Ljava/util/List;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/h;->G(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    move-result-object p1

    return-object p1
.end method

.method private E(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/b/k;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/b/k;->ne:Lcom/freshchat/consumer/sdk/b/k;

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/k/h;->F(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/freshchat/consumer/sdk/b/k;->jI:Lcom/freshchat/consumer/sdk/b/k;

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/h;->G(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/h;->c(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)Lcom/freshchat/consumer/sdk/b/k;

    move-result-object p1

    return-object p1
.end method

.method private F(Ljava/util/List;)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)",
            "Lcom/freshchat/consumer/sdk/beans/Message;"
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

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getReplyFragments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    return-object p1
.end method

.method private G(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getReplyFragments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getReplyFragments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)Lcom/freshchat/consumer/sdk/b/k;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/b/k;->ne:Lcom/freshchat/consumer/sdk/b/k;

    return-object p1

    :cond_0
    instance-of v0, p1, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyDropDownFragment;

    if-eqz v0, :cond_1

    sget-object p1, Lcom/freshchat/consumer/sdk/b/k;->nd:Lcom/freshchat/consumer/sdk/b/k;

    return-object p1

    :cond_1
    instance-of v0, p1, Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;

    if-eqz v0, :cond_2

    sget-object p1, Lcom/freshchat/consumer/sdk/b/k;->nc:Lcom/freshchat/consumer/sdk/b/k;

    return-object p1

    :cond_2
    instance-of p1, p1, Lcom/freshchat/consumer/sdk/beans/fragment/CarouselFragment;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/freshchat/consumer/sdk/b/k;->nG:Lcom/freshchat/consumer/sdk/b/k;

    return-object p1

    :cond_3
    sget-object p1, Lcom/freshchat/consumer/sdk/b/k;->ne:Lcom/freshchat/consumer/sdk/b/k;

    return-object p1
.end method


# virtual methods
.method public A(Ljava/util/List;)Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyDropDownFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)",
            "Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyDropDownFragment;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/h;->D(Ljava/util/List;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/freshchat/consumer/sdk/b/k;->nd:Lcom/freshchat/consumer/sdk/b/k;

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/h;->c(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)Lcom/freshchat/consumer/sdk/b/k;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyDropDownFragment;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public B(Ljava/util/List;)Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)",
            "Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/h;->D(Ljava/util/List;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/freshchat/consumer/sdk/b/k;->nc:Lcom/freshchat/consumer/sdk/b/k;

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/h;->c(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)Lcom/freshchat/consumer/sdk/b/k;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public C(Ljava/util/List;)Lcom/freshchat/consumer/sdk/b/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)",
            "Lcom/freshchat/consumer/sdk/b/k;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/k/h;->L(Ljava/util/List;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/h;->E(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/b/k;

    move-result-object p1

    return-object p1
.end method

.method public E(Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)J"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/h;->F(Ljava/util/List;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public F(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageFragments()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageFragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    instance-of v3, v3, Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;

    if-eqz v3, :cond_2

    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public L(Ljava/util/List;)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)",
            "Lcom/freshchat/consumer/sdk/beans/Message;"
        }
    .end annotation

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Message;

    return-object p1
.end method

.method public M(Ljava/util/List;)Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)",
            "Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/k/h;->L(Ljava/util/List;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/k/h;->F(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;

    move-result-object p1

    return-object p1
.end method
