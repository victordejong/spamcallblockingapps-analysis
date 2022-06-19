.class public Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;
.super Lcom/freshchat/consumer/sdk/activity/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/activity/ah<",
        "Lcom/freshchat/consumer/sdk/k/w;",
        ">;"
    }
.end annotation


# instance fields
.field private final ac:Landroid/view/View$OnClickListener;

.field private final ad:Landroidx/appcompat/widget/SearchView$l;

.field private pT:Landroidx/recyclerview/widget/RecyclerView;

.field private po:Lcom/freshchat/consumer/sdk/f/e;

.field private final qK:Landroid/view/MenuItem$OnActionExpandListener;

.field private ql:Lcom/freshchat/consumer/sdk/a/s;

.field private final qm:Lcom/freshchat/consumer/sdk/a/s$b;

.field private qo:Landroid/view/View;

.field private qp:Landroid/widget/TextView;

.field private rE:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ah;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->rE:Z

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ba;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ba;-><init>(Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->qm:Lcom/freshchat/consumer/sdk/a/s$b;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/bb;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/bb;-><init>(Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->po:Lcom/freshchat/consumer/sdk/f/e;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/bd;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/bd;-><init>(Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->ad:Landroidx/appcompat/widget/SearchView$l;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/be;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/be;-><init>(Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->qK:Landroid/view/MenuItem$OnActionExpandListener;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/bf;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/bf;-><init>(Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->ac:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->bw(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->s(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->rE:Z

    return p1
.end method

.method private bw(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/w;

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/k/w;->bB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/w;

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/k/w;->bA(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast p1, Lcom/freshchat/consumer/sdk/k/w;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/w;->jJ()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->pT:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->ql:Lcom/freshchat/consumer/sdk/a/s;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast p1, Lcom/freshchat/consumer/sdk/k/w;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/w;->jH()Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->a(Lcom/freshchat/consumer/sdk/service/Status;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->qo:Landroid/view/View;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->A(Z)V

    :goto_0
    return-void
.end method

.method private s(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/w;

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/k/o;->B(Z)Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->a(Lcom/freshchat/consumer/sdk/service/Status;)V

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->hV()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_minimum_search_criteria:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->qo:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ah;->h(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->qp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public V(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/w;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/w;->iV()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/w;

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/k/w;->ac(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.freshchat.consumer.sdk.actions.FAQSearchResultFetched"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast p1, Lcom/freshchat/consumer/sdk/k/w;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/freshchat/consumer/sdk/k/w;->g(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->a(Lcom/freshchat/consumer/sdk/service/Status;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast p1, Lcom/freshchat/consumer/sdk/k/w;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/o;->jm()Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Lcom/freshchat/consumer/sdk/service/Status;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/w;

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/k/o;->b(Lcom/freshchat/consumer/sdk/service/Status;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ah;->a(Lcom/freshchat/consumer/sdk/service/Status;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->ql:Lcom/freshchat/consumer/sdk/a/s;

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/a/s;->setStatus(Lcom/freshchat/consumer/sdk/service/Status;)V

    :goto_0
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 2

    const-string v0, "com.freshchat.consumer.sdk.actions.TokenWaitTimeout"

    const-string v1, "com.freshchat.consumer.sdk.actions.FAQApiVersionChanged"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bv(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->rE:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->A(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->qo:Landroid/view/View;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ah;->bv(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public dA()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public dh()V
    .locals 2

    new-instance v0, Lcom/freshchat/consumer/sdk/k/w;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/k/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/w;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/k/w;->j(Landroid/content/Intent;)V

    return-void
.end method

.method public hP()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->qo:Landroid/view/View;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->ql:Lcom/freshchat/consumer/sdk/a/s;

    sget-object v1, Lcom/freshchat/consumer/sdk/service/Status;->SUCCESS:Lcom/freshchat/consumer/sdk/service/Status;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/a/s;->setStatus(Lcom/freshchat/consumer/sdk/service/Status;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->pT:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ah;->i(Landroid/view/View;)V

    return-void
.end method

.method public hV()Ljava/lang/String;
    .locals 1

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_no_articles_found:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ie()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->s(Z)V

    return-void
.end method

.method public if()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->pT:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public ig()[Ljava/lang/String;
    .locals 1

    const-string v0, "com.freshchat.consumer.sdk.actions.FAQSearchResultFetched"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ah;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_activity_faq_search:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->u()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-virtual {p0}, Ln3/b/a/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$menu;->freshchat_articles_list:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_menu_item_contact_us:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_menu_item_search_solutions:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SearchView;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->ad:Landroidx/appcompat/widget/SearchView$l;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$l;)V

    sget v2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_faq_search_query_hint:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/freshchat/consumer/sdk/activity/bc;

    invoke-direct {v2, p0}, Lcom/freshchat/consumer/sdk/activity/bc;-><init>(Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->qK:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroidx/appcompat/widget/SearchView;Ln3/b/a/a;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast p1, Lcom/freshchat/consumer/sdk/k/w;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/n;->shouldShowContactUsOnFaqScreens()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast p1, Lcom/freshchat/consumer/sdk/k/w;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/n;->shouldShowContactUsOnAppBar()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_categories_menu_item_contact_us:I

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast p1, Lcom/freshchat/consumer/sdk/k/w;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/n;->jg()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ah;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public u()V
    .locals 4

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/ah;->u()V

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->search_faq_recycler_view:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->pT:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    new-instance v0, Lcom/freshchat/consumer/sdk/a/s;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v1, Lcom/freshchat/consumer/sdk/k/w;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/k/w;->iV()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->qm:Lcom/freshchat/consumer/sdk/a/s$b;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->po:Lcom/freshchat/consumer/sdk/f/e;

    invoke-direct {v0, v1, v2, v3}, Lcom/freshchat/consumer/sdk/a/s;-><init>(Ljava/util/List;Lcom/freshchat/consumer/sdk/a/s$b;Lcom/freshchat/consumer/sdk/f/e;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->ql:Lcom/freshchat/consumer/sdk/a/s;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->pT:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->pT:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/freshchat/consumer/sdk/activity/az;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/activity/az;-><init>(Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->search_description_view:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->qo:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->search_description:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->qp:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/w;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/n;->shouldShowContactUsOnFaqScreens()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/w;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/n;->shouldShowContactUsOnAppBar()Z

    move-result v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->ac:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/activity/ah;->a(ZLandroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->A(Z)V

    return-void
.end method
