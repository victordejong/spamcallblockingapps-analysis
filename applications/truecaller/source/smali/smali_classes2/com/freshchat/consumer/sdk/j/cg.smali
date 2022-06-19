.class public Lcom/freshchat/consumer/sdk/j/cg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/cg;->b(Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/cg;->b(Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    move-result-object p0

    const/4 p1, 0x0

    instance-of v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;->getLabel()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;->getLabel()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, p1

    :goto_1
    return-object p2
.end method

.method public static b(Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->getSingleFragmentFromSection(Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    move-result-object p0

    return-object p0
.end method
