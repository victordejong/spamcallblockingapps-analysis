.class public Lcom/freshchat/consumer/sdk/activity/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/i/h;


# instance fields
.field public final synthetic ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ad;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ad;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Z)Z

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ad;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->b(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Z)Z

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ad;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->m(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ad;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    const-string v1, " "

    invoke-virtual {p1, v1}, Lcom/freshchat/consumer/sdk/activity/a;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ad;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/b;->finish()V

    :cond_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ad;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->n(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ad;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->k(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ad;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->l(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ad;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Z)Z

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ad;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->i(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 2
    instance-of v0, v0, Landroidx/appcompat/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ad;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    .line 4
    check-cast p1, Landroidx/appcompat/widget/SearchView;

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Landroidx/appcompat/widget/SearchView;)Landroidx/appcompat/widget/SearchView;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ad;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->j(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/SearchView;->B(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ad;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->j(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->performClick()Z

    :cond_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ad;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ad;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->k(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ad;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->l(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

    new-instance p1, Lcom/freshchat/consumer/sdk/service/d/b;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ad;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/freshchat/consumer/sdk/service/d/b$a;->fZ:Lcom/freshchat/consumer/sdk/service/d/b$a;

    invoke-direct {p1, v0, v2}, Lcom/freshchat/consumer/sdk/service/d/b;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/d/b$a;)V

    const-string v0, "source"

    const-string v2, "article_list"

    invoke-virtual {p1, v0, v2}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/d/b;->dB()V

    return v1
.end method
