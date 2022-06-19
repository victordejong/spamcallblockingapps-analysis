.class public Lcom/freshchat/consumer/sdk/k/t;
.super Lcom/freshchat/consumer/sdk/k/o;
.source "SourceFile"


# instance fields
.field private M:Ljava/lang/String;

.field private final ry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/FAQCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/o;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/t;->ry:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/WindowManager;)I
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/p;->a(Landroid/content/Context;Landroid/view/WindowManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc8

    goto :goto_0

    :cond_0
    const/16 p1, 0x96

    :goto_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/p;->ar(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/af;->i(Landroid/content/Context;I)I

    move-result v0

    div-int/2addr v0, p1

    int-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public aa(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/n;->ji()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/freshchat/consumer/sdk/j/b;->b(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method public ab(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/n;->r()Lcom/freshchat/consumer/sdk/j/v;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/t;->jt()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/FAQCategory;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/FAQCategory;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/FAQCategory;->getTitle()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/k/n;->lE:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/freshchat/consumer/sdk/j/v;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public g(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/service/Status;
    .locals 2

    if-eqz p1, :cond_2

    :try_start_0
    const-string v0, "RESPONSE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/FAQCategoryFetchResponse;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ag;->getStatus()Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/service/Status;->SUCCESS:Lcom/freshchat/consumer/sdk/service/Status;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/FAQCategoryFetchResponse;->getCategoryList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->COMPLETE:Lcom/freshchat/consumer/sdk/service/Status;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/t;->ry:Ljava/util/List;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/FAQCategoryFetchResponse;->getCategoryList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/o;->jn()V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "faqCategoryFetchResponse cannot be null in FAQCategoriesViewModel::processResponse()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bundle cannot be null in FAQCategoriesViewModel::processResponse()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->ERROR:Lcom/freshchat/consumer/sdk/service/Status;

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/k/o;->c(Lcom/freshchat/consumer/sdk/service/Status;)Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object p1

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/t;->M:Ljava/lang/String;

    return-object v0
.end method

.method public j(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/k/n;->j(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/n;->getFilteredViewTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/n;->getFilteredViewTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_activity_title_category_list:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/t;->M:Ljava/lang/String;

    return-void
.end method

.method public jc()V
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/o;->jo()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/t;->ry:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public jk()Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/t;->ry:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public js()V
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/n;->lE:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/bg;->c(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public jt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/FAQCategory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/t;->ry:Ljava/util/List;

    return-object v0
.end method

.method public ju()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_no_faq_categories:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
