.class public abstract Lcom/freshchat/consumer/sdk/k/n;
.super Lcom/freshchat/consumer/sdk/k/a;
.source "SourceFile"


# instance fields
.field private g:Lcom/freshchat/consumer/sdk/FaqOptions;

.field public lE:[Ljava/lang/String;

.field private rq:Ljava/lang/String;

.field public rr:Lcom/freshchat/consumer/sdk/service/Status;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/a;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-direct {p1}, Lcom/freshchat/consumer/sdk/FaqOptions;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/n;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    return-void
.end method


# virtual methods
.method public getFilteredViewTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/n;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilteredViewTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/u;->d(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/FaqOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/k/n;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    const-string v0, "INPUT_TAGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/n;->lE:[Ljava/lang/String;

    return-void
.end method

.method public abstract jc()V
.end method

.method public abstract jd()Lcom/freshchat/consumer/sdk/service/Status;
.end method

.method public je()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/k/n;->rr:Lcom/freshchat/consumer/sdk/service/Status;

    return-void
.end method

.method public jf()Lcom/freshchat/consumer/sdk/service/Status;
    .locals 3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/ah;->bc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/n;->rq:Ljava/lang/String;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/k/n;->rq:Ljava/lang/String;

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/n;->rq:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    iput-object v0, p0, Lcom/freshchat/consumer/sdk/k/n;->rq:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/n;->jc()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/n;->je()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/n;->jd()Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object v0

    return-object v0
.end method

.method public jg()V
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/n;->r()Lcom/freshchat/consumer/sdk/j/v;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/v;->aE()V

    :cond_0
    return-void
.end method

.method public jh()V
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/n;->r()Lcom/freshchat/consumer/sdk/j/v;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/v;->iZ()V

    :cond_0
    return-void
.end method

.method public ji()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/n;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getTags()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/n;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilterType()Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->CATEGORY:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/n;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->getTags()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public jj()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/n;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getTags()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/n;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilterType()Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->ARTICLE:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/n;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->getTags()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public r()Lcom/freshchat/consumer/sdk/j/v;
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/n;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/FaqOptions;)Lcom/freshchat/consumer/sdk/j/v;

    move-result-object v0

    return-object v0
.end method

.method public shouldShowContactUsOnAppBar()Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/n;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnAppBar()Z

    move-result v0

    return v0
.end method

.method public shouldShowContactUsOnFaqNotHelpful()Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/n;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnFaqNotHelpful()Z

    move-result v0

    return v0
.end method

.method public shouldShowContactUsOnFaqScreens()Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/n;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnFaqScreens()Z

    move-result v0

    return v0
.end method

.method public shouldShowFaqCategoriesAsGrid()Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/n;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowFaqCategoriesAsGrid()Z

    move-result v0

    return v0
.end method
