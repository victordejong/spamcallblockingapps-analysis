.class public Lcom/freshchat/consumer/sdk/j/cf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/j/cf$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/freshchat/consumer/sdk/beans/Message;ZZ)Lcom/freshchat/consumer/sdk/j/cf$a;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lcom/freshchat/consumer/sdk/j/cf$a;->ob:Lcom/freshchat/consumer/sdk/j/cf$a;

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/cf;->l(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/fragment/CarouselFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/freshchat/consumer/sdk/j/cf$a;->nZ:Lcom/freshchat/consumer/sdk/j/cf$a;

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/cf;->m(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p0, Lcom/freshchat/consumer/sdk/j/cf$a;->oa:Lcom/freshchat/consumer/sdk/j/cf$a;

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/cm;->s(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/freshchat/consumer/sdk/j/cf$a;->pZ:Lcom/freshchat/consumer/sdk/j/cf$a;

    return-object p0

    :cond_3
    sget-object p0, Lcom/freshchat/consumer/sdk/j/cf$a;->ob:Lcom/freshchat/consumer/sdk/j/cf$a;

    return-object p0
.end method

.method public static k(Lcom/freshchat/consumer/sdk/beans/Message;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ")",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/cf;->l(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/fragment/CarouselFragment;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->CAROUSEL_CARDS:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->getFragmentsForSection(Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static l(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/fragment/CarouselFragment;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getReplyFragments()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getReplyFragments()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    instance-of v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CarouselFragment;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/fragment/CarouselFragment;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static m(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageFragments()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageFragments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    return-object p0

    :cond_1
    return-object v0
.end method
