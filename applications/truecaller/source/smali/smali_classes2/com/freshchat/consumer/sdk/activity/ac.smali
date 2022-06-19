.class public Lcom/freshchat/consumer/sdk/activity/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/w/a/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/w/a/a$a<",
        "Ljava/util/List<",
        "Lcom/freshchat/consumer/sdk/beans/Article;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/w/b/b;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/w/b/b<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->b(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/freshchat/consumer/sdk/g/b;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/g/b;->gE()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/b;->finish()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_faqs_reload_and_redirect:I

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    iget-object p2, p2, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/Freshchat;->showFAQs(Landroid/content/Context;Lcom/freshchat/consumer/sdk/FaqOptions;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/b;->finish()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Article;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Article;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->a(J)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->e(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->e(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->f(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Ln3/w/b/b;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Ln3/w/b/b<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;>;"
        }
    .end annotation

    if-eqz p2, :cond_4

    const-string p1, "search_key"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "FAQ_TAGS"

    const-string v2, "category_ids"

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    const-string v3, "article_search"

    invoke-static {v0, v3}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance p2, Lcom/freshchat/consumer/sdk/g/b;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v3, p2

    move-object v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/freshchat/consumer/sdk/g/b;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V

    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->b(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance p2, Lcom/freshchat/consumer/sdk/g/b;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v3, p2

    move-object v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/freshchat/consumer/sdk/g/b;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V

    return-object p2

    :cond_1
    new-instance p2, Lcom/freshchat/consumer/sdk/g/b;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/freshchat/consumer/sdk/g/b;-><init>(Landroid/content/Context;Ljava/lang/String;ZLjava/util/List;Z)V

    return-object p2

    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance p1, Lcom/freshchat/consumer/sdk/g/b;

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v9, 0x0

    const-string v8, ""

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/freshchat/consumer/sdk/g/b;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V

    return-object p1

    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->c(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Ljava/util/List;)Ljava/util/List;

    new-instance p1, Lcom/freshchat/consumer/sdk/g/b;

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;

    move-result-object v2

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->d(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, ""

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/freshchat/consumer/sdk/g/b;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V

    return-object p1

    :cond_4
    new-instance p1, Lcom/freshchat/consumer/sdk/g/b;

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/freshchat/consumer/sdk/g/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object p1
.end method

.method public synthetic onLoadFinished(Ln3/w/b/b;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/activity/ac;->a(Ln3/w/b/b;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Ln3/w/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/w/b/b<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->e(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ac;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->h(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Lcom/freshchat/consumer/sdk/a/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
