.class public Lcom/freshchat/consumer/sdk/k/v;
.super Lcom/freshchat/consumer/sdk/k/o;
.source "SourceFile"


# instance fields
.field private M:Ljava/lang/String;

.field private categoryId:Ljava/lang/String;

.field private categoryName:Ljava/lang/String;

.field private h:Landroid/os/Bundle;

.field private final ri:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/FAQ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/o;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/v;->h:Landroid/os/Bundle;

    const-string p1, ""

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/v;->M:Ljava/lang/String;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/v;->categoryName:Ljava/lang/String;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/v;->categoryId:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/v;->ri:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public aa(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/n;->jj()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/k/v;->categoryId:Ljava/lang/String;

    invoke-static {v1, p1, v2, v0}, Lcom/freshchat/consumer/sdk/j/b;->c(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public g(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/service/Status;
    .locals 2

    if-eqz p1, :cond_2

    :try_start_0
    const-string v0, "RESPONSE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/ai;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ag;->getStatus()Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/service/Status;->SUCCESS:Lcom/freshchat/consumer/sdk/service/Status;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ai;->iV()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->COMPLETE:Lcom/freshchat/consumer/sdk/service/Status;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/v;->ri:Ljava/util/List;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ai;->iV()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/o;->jn()V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "faqListFetchResponse cannot be null in FAQListViewModel::processResponse()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bundle cannot be null in FAQListViewModel::processResponse()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->ERROR:Lcom/freshchat/consumer/sdk/service/Status;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/k/o;->c(Lcom/freshchat/consumer/sdk/service/Status;)Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object p1

    return-object p1
.end method

.method public iV()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/FAQ;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/v;->ri:Ljava/util/List;

    return-object v0
.end method

.method public j(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/k/n;->j(Landroid/content/Intent;)V

    const-string v0, "category_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/k/v;->categoryName:Ljava/lang/String;

    :cond_0
    const-string v0, "category_ids"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/k/v;->categoryId:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/v;->h:Landroid/os/Bundle;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/k/v;->categoryName:Ljava/lang/String;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/k/v;->categoryName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_activity_title_article_list:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/v;->M:Ljava/lang/String;

    return-void
.end method

.method public jE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/v;->M:Ljava/lang/String;

    return-object v0
.end method

.method public jF()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_no_faqs:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/k/v;->M:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jG()V
    .locals 4

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/v;->categoryId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/k/v;->categoryName:Ljava/lang/String;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/k/n;->lE:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public jc()V
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/o;->jo()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/v;->ri:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public jk()Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/v;->ri:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public y(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/v;->h:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const-string v1, "article_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/k/v;->categoryId:Ljava/lang/String;

    const-string v1, "category_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "EXTRA_FAQ_VIEW_TITLE"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
