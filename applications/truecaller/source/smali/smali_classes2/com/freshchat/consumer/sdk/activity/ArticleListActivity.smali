.class public Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;
.super Lcom/freshchat/consumer/sdk/activity/b;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/String;

.field private J:Z

.field private K:Ljava/lang/String;

.field private L:Lcom/freshchat/consumer/sdk/a/a;

.field private M:Ljava/lang/String;

.field private N:Landroidx/core/widget/ContentLoadingProgressBar;

.field private O:Landroidx/appcompat/widget/SearchView;

.field private P:Landroid/widget/ListView;

.field private Q:Landroid/view/View;

.field private R:Landroid/view/Menu;

.field private S:Landroid/view/View;

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;"
        }
    .end annotation
.end field

.field private X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;"
        }
    .end annotation
.end field

.field private Y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public Z:Ln3/w/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/w/a/a$a<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;>;"
        }
    .end annotation
.end field

.field public aa:Ln3/k/i/h;

.field public ab:Landroid/widget/AdapterView$OnItemClickListener;

.field public ac:Landroid/view/View$OnClickListener;

.field public ad:Landroidx/appcompat/widget/SearchView$l;

.field private categoryId:Ljava/lang/String;

.field private categoryName:Ljava/lang/String;

.field private eM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/freshchat/consumer/sdk/FaqOptions;

.field private h:Landroid/os/Bundle;

.field private lE:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/b;-><init>()V

    new-instance v0, Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->h:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->J:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->K:Ljava/lang/String;

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->categoryId:Ljava/lang/String;

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->categoryName:Ljava/lang/String;

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->M:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->T:Z

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->U:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->W:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->X:Ljava/util/List;

    const-string v0, "article_list"

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->A:Ljava/lang/String;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ac;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ac;-><init>(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->Z:Ln3/w/a/a$a;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ad;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ad;-><init>(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->aa:Ln3/k/i/h;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ae;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ae;-><init>(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->ab:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/af;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/af;-><init>(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->ac:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ag;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ag;-><init>(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->ad:Landroidx/appcompat/widget/SearchView$l;

    return-void
.end method

.method private A()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->N:Landroidx/core/widget/ContentLoadingProgressBar;

    if-eqz v0, :cond_0

    .line 1
    new-instance v1, Ln3/k/j/b;

    invoke-direct {v1, v0}, Ln3/k/j/b;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Landroidx/appcompat/widget/SearchView;)Landroidx/appcompat/widget/SearchView;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->O:Landroidx/appcompat/widget/SearchView;

    return-object p1
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->A:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->X:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->eM:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/u;->d(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/FaqOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    const-string v0, "force_search_open"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->V:Z

    :cond_1
    const-string v0, "category_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->categoryName:Ljava/lang/String;

    :cond_2
    const-string v0, "category_ids"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->Y:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result p1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->Y:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->categoryId:Ljava/lang/String;

    :cond_3
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilterType()Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    move-result-object p1

    sget-object v0, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->ARTICLE:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilteredViewTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilteredViewTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->categoryName:Ljava/lang/String;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->categoryName:Ljava/lang/String;

    goto :goto_0

    :cond_5
    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_activity_title_article_list:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->M:Ljava/lang/String;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FaqOptions;->getTags()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput-boolean v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->T:Z

    :cond_6
    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->J:Z

    return p1
.end method

.method private aJ()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->R:Landroid/view/Menu;

    if-eqz v0, :cond_1

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_menu_item_contact_us:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->J:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnFaqScreens()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnAppBar()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->T:Z

    return p0
.end method

.method public static synthetic b(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->U:Z

    return p1
.end method

.method private bL()V
    .locals 2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->L:Lcom/freshchat/consumer/sdk/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->ab:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->K:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->z()V

    return-void
.end method

.method public static synthetic d(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->eM:Ljava/util/List;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->J:Z

    if-eqz v0, :cond_0

    const-string v0, "search_key"

    invoke-static {v0, p1}, Le/d/c/a/a;->X0(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0}, Ln3/r/a/l;->getSupportLoaderManager()Ln3/w/a/a;

    move-result-object v0

    const/16 v1, 0x6f

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->Z:Ln3/w/a/a$a;

    invoke-virtual {v0, v1, p1, v2}, Ln3/w/a/a;->d(ILandroid/os/Bundle;Ln3/w/a/a$a;)Ln3/w/b/b;

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->W:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic f(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->x()V

    return-void
.end method

.method public static synthetic g(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->bL()V

    return-void
.end method

.method private getEmptyView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->Q:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->empty:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->Q:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->Q:Landroid/view/View;

    return-object v0
.end method

.method private getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->P:Landroid/widget/ListView;

    if-nez v0, :cond_0

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->list:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->P:Landroid/widget/ListView;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->P:Landroid/widget/ListView;

    return-object v0
.end method

.method public static synthetic h(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Lcom/freshchat/consumer/sdk/a/a;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->L:Lcom/freshchat/consumer/sdk/a/a;

    return-object p0
.end method

.method public static synthetic i(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->U:Z

    return p0
.end method

.method public static synthetic j(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Landroidx/appcompat/widget/SearchView;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->O:Landroidx/appcompat/widget/SearchView;

    return-object p0
.end method

.method public static synthetic k(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->y()V

    return-void
.end method

.method public static synthetic l(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->aJ()V

    return-void
.end method

.method public static synthetic m(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->V:Z

    return p0
.end method

.method public static synthetic n(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->w()V

    return-void
.end method

.method public static synthetic o(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Lcom/freshchat/consumer/sdk/j/v;
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->r()Lcom/freshchat/consumer/sdk/j/v;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->K:Ljava/lang/String;

    return-object p0
.end method

.method private r()Lcom/freshchat/consumer/sdk/j/v;
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/FaqOptions;)Lcom/freshchat/consumer/sdk/j/v;

    move-result-object v0

    return-object v0
.end method

.method private u()V
    .locals 1

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_article_list_cl_progressbar:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/ContentLoadingProgressBar;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->N:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->y()V

    return-void
.end method

.method private v()V
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/service/d/b;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/freshchat/consumer/sdk/service/d/b$a;->fR:Lcom/freshchat/consumer/sdk/service/d/b$a;

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/service/d/b;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/d/b$a;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->categoryId:Ljava/lang/String;

    const-string v2, "category_id"

    invoke-virtual {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->categoryName:Ljava/lang/String;

    const-string v2, "category_name"

    invoke-virtual {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/d/b;->dB()V

    return-void
.end method

.method private w()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->Y:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->Y:Ljava/util/ArrayList;

    const-string v2, "category_ids"

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->getTags()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilterType()Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    move-result-object v1

    sget-object v2, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->ARTICLE:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/FaqOptions;->getTags()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "FAQ_TAGS"

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportLoaderManager()Ln3/w/a/a;

    move-result-object v1

    const/16 v2, 0x6f

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->Z:Ln3/w/a/a$a;

    invoke-virtual {v1, v2, v0, v3}, Ln3/w/a/a;->d(ILandroid/os/Bundle;Ln3/w/a/a$a;)Ln3/w/b/b;

    return-void
.end method

.method private declared-synchronized x()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->A()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->W:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->getEmptyView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->getEmptyView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private y()V
    .locals 3

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_contact_us_group:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->S:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->J:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnFaqNotHelpful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->S:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->S:Landroid/view/View;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->ac:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnFaqScreens()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnAppBar()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->S:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->S:Landroid/view/View;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->ac:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->S:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private z()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->N:Landroidx/core/widget/ContentLoadingProgressBar;

    if-eqz v0, :cond_0

    .line 1
    new-instance v1, Ln3/k/j/d;

    invoke-direct {v1, v0}, Ln3/k/j/d;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->K:Ljava/lang/String;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->K:Ljava/lang/String;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->W:Ljava/util/List;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Ljava/lang/String;IZ)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->h:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    const-string v1, "article_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->categoryName:Ljava/lang/String;

    const-string p2, "category_name"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->A:Ljava/lang/String;

    const-string p2, "EVENT_LAUNCH_SOURCE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->lE:[Ljava/lang/String;

    const-string p2, "INPUT_TAGS"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.freshchat.consumer.sdk.actions.SolutionsUpdated"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->w()V

    :cond_0
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 3

    const-string v0, "com.freshchat.consumer.sdk.actions.SolutionsUpdated"

    const-string v1, "com.freshchat.consumer.sdk.actions.TokenWaitTimeout"

    const-string v2, "com.freshchat.consumer.sdk.actions.FAQApiVersionChanged"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->V:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/b;->finish()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->J:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->R:Landroid/view/Menu;

    if-eqz v0, :cond_1

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_menu_item_search_solutions:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1
    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    goto :goto_0

    .line 2
    :cond_1
    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/b;->onBackPressed()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/a;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_activity_article_list:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->a(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->h:Landroid/os/Bundle;

    const-string v0, "INPUT_TAGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->lE:[Ljava/lang/String;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->M:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/activity/a;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->C()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->u()V

    new-instance p1, Lcom/freshchat/consumer/sdk/a/a;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->W:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/freshchat/consumer/sdk/a/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->L:Lcom/freshchat/consumer/sdk/a/a;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->bL()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->w()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->categoryId:Ljava/lang/String;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->v()V

    :cond_0
    iget-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->V:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->categoryId:Ljava/lang/String;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->categoryName:Ljava/lang/String;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->lE:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/f$a;->go:Lcom/freshchat/consumer/sdk/service/e/f$a;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/f$a;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Ln3/b/a/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$menu;->freshchat_articles_list:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->R:Landroid/view/Menu;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_menu_item_search_solutions:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 2
    check-cast v0, Landroidx/appcompat/widget/SearchView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->O:Landroidx/appcompat/widget/SearchView;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->ad:Landroidx/appcompat/widget/SearchView$l;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$l;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->O:Landroidx/appcompat/widget/SearchView;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_faq_search_query_hint:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->aa:Ln3/k/i/h;

    .line 3
    new-instance v1, Ln3/k/i/g;

    invoke-direct {v1, v0}, Ln3/k/i/g;-><init>(Ln3/k/i/h;)V

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 4
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->O:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroidx/appcompat/widget/SearchView;Ln3/b/a/a;)V

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->V:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->aJ()V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_menu_item_contact_us:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->r()Lcom/freshchat/consumer/sdk/j/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/v;->aE()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->U:Z

    invoke-super {p0}, Ln3/b/a/h;->invalidateOptionsMenu()V

    return-void
.end method
