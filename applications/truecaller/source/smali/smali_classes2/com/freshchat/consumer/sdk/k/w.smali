.class public Lcom/freshchat/consumer/sdk/k/w;
.super Lcom/freshchat/consumer/sdk/k/o;
.source "SourceFile"


# instance fields
.field private h:Landroid/os/Bundle;

.field private final rB:I

.field private final rC:Lcom/freshchat/consumer/sdk/i/d;

.field private final ri:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/FAQ;",
            ">;"
        }
    .end annotation
.end field

.field private rj:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/o;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/w;->h:Landroid/os/Bundle;

    const/16 p1, 0xfa

    iput p1, p0, Lcom/freshchat/consumer/sdk/k/w;->rB:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/w;->ri:Ljava/util/List;

    new-instance p1, Lcom/freshchat/consumer/sdk/k/x;

    const-wide/16 v0, 0xfa

    invoke-direct {p1, p0, v0, v1}, Lcom/freshchat/consumer/sdk/k/x;-><init>(Lcom/freshchat/consumer/sdk/k/w;J)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/w;->rC:Lcom/freshchat/consumer/sdk/i/d;

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/k/w;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/k/w;->rj:Ljava/lang/String;

    return-object p0
.end method

.method private jI()Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/w;->rj:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/k/w;->bz(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public C(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/w;->rj:Ljava/lang/String;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/k/w;->ri:Ljava/util/List;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public aa(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/n;->jj()Ljava/util/List;

    move-result-object v0

    const-string v1, "fetchPageData called for search term : "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/k/w;->rj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " page index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FAQSearchViewModel"

    invoke-static {v2, v1}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/k/w;->rj:Ljava/lang/String;

    invoke-static {v1, v2, p1, v0}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Ljava/lang/String;ILjava/util/List;)V

    return-void
.end method

.method public ac(I)Landroid/content/Intent;
    .locals 3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/w;->iV()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/FAQ;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/w;->h:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/FAQ;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "article_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/FAQ;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "category_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/FAQ;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v1, "EXTRA_FAQ_VIEW_TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public bA(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->aH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/w;->rj:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/k/w;->bz(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bB(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/w;->rj:Ljava/lang/String;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->aH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bC(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/w;->rj:Ljava/lang/String;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/w;->rj:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/k/w;->C(Z)V

    :cond_0
    return-void
.end method

.method public bz(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->b(Ljava/lang/CharSequence;)J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/service/Status;
    .locals 4

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/k/w;->jI()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "processResponse called for search string  : "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/k/w;->rj:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FAQSearchViewModel"

    invoke-static {v2, v0}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    :try_start_0
    const-string v0, "SEARCH_TERM"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/k/w;->rj:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/freshchat/consumer/sdk/j/as;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "RESPONSE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/ai;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ag;->getStatus()Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/service/Status;->SUCCESS:Lcom/freshchat/consumer/sdk/service/Status;

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ai;->iV()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->COMPLETE:Lcom/freshchat/consumer/sdk/service/Status;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/w;->ri:Ljava/util/List;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ai;->iV()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " process result list size  : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ai;->iV()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/o;->jn()V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "faqListFetchResponse cannot be null in FAQSearchViewModel::processResponse()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bundle cannot be null in FAQSearchViewModel::processResponse()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->ERROR:Lcom/freshchat/consumer/sdk/service/Status;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
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

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/w;->ri:Ljava/util/List;

    return-object v0
.end method

.method public j(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/k/n;->j(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/k/w;->h:Landroid/os/Bundle;

    const-string v0, "search_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/w;->rj:Ljava/lang/String;

    return-void
.end method

.method public jH()Lcom/freshchat/consumer/sdk/service/Status;
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/w;->rC:Lcom/freshchat/consumer/sdk/i/d;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/i/d;->run()V

    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->INIT_LOADING:Lcom/freshchat/consumer/sdk/service/Status;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/k/o;->c(Lcom/freshchat/consumer/sdk/service/Status;)Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->NO_INTERNET:Lcom/freshchat/consumer/sdk/service/Status;

    goto :goto_0
.end method

.method public jJ()V
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/o;->jo()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/w;->ri:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/n;->je()V

    return-void
.end method

.method public jK()Z
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/w;->jk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/n;->rr:Lcom/freshchat/consumer/sdk/service/Status;

    sget-object v1, Lcom/freshchat/consumer/sdk/service/Status;->COMPLETE:Lcom/freshchat/consumer/sdk/service/Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jc()V
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/o;->jo()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/w;->ri:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public jk()Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/w;->ri:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
