.class public Lcom/freshchat/consumer/sdk/j/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static D(Lcom/freshchat/consumer/sdk/beans/Message;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageFragments()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    instance-of v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TextFragment;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/fragment/TextFragment;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/fragment/TextFragment;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    return v2
.end method

.method public static a(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result p0

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->AUDIO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->IMAGE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;)Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;->getAndroidUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContent()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

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
