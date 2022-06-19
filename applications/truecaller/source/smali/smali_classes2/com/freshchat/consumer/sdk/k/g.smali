.class public Lcom/freshchat/consumer/sdk/k/g;
.super Lcom/freshchat/consumer/sdk/k/a;
.source "SourceFile"


# instance fields
.field private nx:Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyDropDownFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private hd()V
    .locals 5

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/g;->nx:Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyDropDownFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/g;->nx:Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyDropDownFragment;

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->DROP_DOWN_OPTIONS:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->getFragmentsForSection(Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    instance-of v3, v2, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    check-cast v2, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;->getCustomReplyText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/g;->nx:Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyDropDownFragment;

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->DROP_DOWN_OPTIONS:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    invoke-virtual {v1, v2, v0}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->replaceSection(Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyDropDownFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/g;->nx:Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyDropDownFragment;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/k/g;->hd()V

    return-void
.end method

.method public he()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/g;->nx:Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyDropDownFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v1, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->DROP_DOWN_OPTIONS:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->getFragmentsForSection(Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hf()I
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/g;->nx:Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyDropDownFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v1, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->DROP_DOWN_OPTIONS:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->getFragmentsForSection(Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method
