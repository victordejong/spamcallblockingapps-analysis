.class public Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;
.super Lcom/freshchat/consumer/sdk/activity/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/activity/ah<",
        "Lcom/freshchat/consumer/sdk/k/t;",
        ">;"
    }
.end annotation


# instance fields
.field private ac:Landroid/view/View$OnClickListener;

.field private aj:Lcom/freshchat/consumer/sdk/a/b$a;

.field private pj:Landroidx/recyclerview/widget/RecyclerView;

.field private pk:Lcom/freshchat/consumer/sdk/a/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/freshchat/consumer/sdk/a/q<",
            "Lcom/freshchat/consumer/sdk/beans/FAQCategory;",
            ">;"
        }
    .end annotation
.end field

.field private po:Lcom/freshchat/consumer/sdk/f/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ah;-><init>()V

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/al;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/al;-><init>(Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->aj:Lcom/freshchat/consumer/sdk/a/b$a;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/am;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/am;-><init>(Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->ac:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/an;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/an;-><init>(Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->po:Lcom/freshchat/consumer/sdk/f/e;

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->s(Z)V

    return-void
.end method

.method private iA()Landroidx/recyclerview/widget/RecyclerView$o;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/t;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/n;->shouldShowFaqCategoriesAsGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->iB()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private iB()Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/t;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/k/t;->a(Landroid/view/WindowManager;)I

    move-result v0

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/freshchat/consumer/sdk/activity/ap;

    invoke-direct {v2, p0, v0}, Lcom/freshchat/consumer/sdk/activity/ap;-><init>(Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    return-object v1
.end method

.method private s(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/t;

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/k/o;->B(Z)Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->a(Lcom/freshchat/consumer/sdk/service/Status;)V

    return-void
.end method


# virtual methods
.method public U(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ah;->U(I)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast p1, Lcom/freshchat/consumer/sdk/k/t;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/n;->shouldShowFaqCategoriesAsGrid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->pj:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->iB()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->pk:Lcom/freshchat/consumer/sdk/a/q;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.freshchat.consumer.sdk.actions.FAQCategoriesFetched"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast p1, Lcom/freshchat/consumer/sdk/k/t;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/freshchat/consumer/sdk/k/t;->g(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->a(Lcom/freshchat/consumer/sdk/service/Status;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast p1, Lcom/freshchat/consumer/sdk/k/t;

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

    check-cast v0, Lcom/freshchat/consumer/sdk/k/t;

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/k/o;->b(Lcom/freshchat/consumer/sdk/service/Status;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ah;->a(Lcom/freshchat/consumer/sdk/service/Status;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->pk:Lcom/freshchat/consumer/sdk/a/q;

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/a/q;->setStatus(Lcom/freshchat/consumer/sdk/service/Status;)V

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

.method public dA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/t;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/t;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dh()V
    .locals 2

    new-instance v0, Lcom/freshchat/consumer/sdk/k/t;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/k/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/t;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/k/t;->j(Landroid/content/Intent;)V

    return-void
.end method

.method public hP()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->pk:Lcom/freshchat/consumer/sdk/a/q;

    sget-object v1, Lcom/freshchat/consumer/sdk/service/Status;->SUCCESS:Lcom/freshchat/consumer/sdk/service/Status;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/a/q;->setStatus(Lcom/freshchat/consumer/sdk/service/Status;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->pj:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ah;->i(Landroid/view/View;)V

    return-void
.end method

.method public hV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/t;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/t;->ju()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ie()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->s(Z)V

    return-void
.end method

.method public if()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->pj:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public ig()[Ljava/lang/String;
    .locals 1

    const-string v0, "com.freshchat.consumer.sdk.actions.FAQCategoriesFetched"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ah;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_activity_faq_categories:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->u()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast p1, Lcom/freshchat/consumer/sdk/k/t;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/t;->js()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->s(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Ln3/b/a/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$menu;->freshchat_faq:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_menu_item_contact_us:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/t;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/n;->shouldShowContactUsOnFaqScreens()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/t;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/n;->shouldShowContactUsOnAppBar()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_menu_item_contact_us:I

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast p1, Lcom/freshchat/consumer/sdk/k/t;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/n;->jg()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ah;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public u()V
    .locals 8

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_activity_category_list_recycler_view:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->pj:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->iA()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->pj:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/freshchat/consumer/sdk/activity/ao;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/activity/ao;-><init>(Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    new-instance v0, Lcom/freshchat/consumer/sdk/a/q;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v1, Lcom/freshchat/consumer/sdk/k/t;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/k/t;->jt()Ljava/util/List;

    move-result-object v4

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v1, Lcom/freshchat/consumer/sdk/k/t;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/k/n;->shouldShowFaqCategoriesAsGrid()Z

    move-result v5

    iget-object v6, p0, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->aj:Lcom/freshchat/consumer/sdk/a/b$a;

    iget-object v7, p0, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->po:Lcom/freshchat/consumer/sdk/f/e;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/freshchat/consumer/sdk/a/q;-><init>(Landroid/content/Context;Ljava/util/List;ZLcom/freshchat/consumer/sdk/a/b$a;Lcom/freshchat/consumer/sdk/f/e;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->pk:Lcom/freshchat/consumer/sdk/a/q;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->pj:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/ah;->u()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/t;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/n;->shouldShowContactUsOnFaqScreens()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/t;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/n;->shouldShowContactUsOnAppBar()Z

    move-result v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;->ac:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/activity/ah;->a(ZLandroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
