.class public Lcom/freshchat/consumer/sdk/j/cv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;ZZ)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getTranslatedContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getTranslatedContent()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->isUserMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getLiveTranslationConfig()Lcom/freshchat/consumer/sdk/beans/config/LiveTranslationConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/config/LiveTranslationConfig;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getShouldTranslate()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageFragments()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getTranslatedContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_5
    :goto_0
    return v0
.end method
