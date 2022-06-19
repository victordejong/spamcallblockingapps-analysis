.class public Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/submitreport/j$a;


# instance fields
.field categoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903e8
    .end annotation
.end field

.field emptyMessage:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903e7
    .end annotation
.end field

.field l:Lcom/hiya/stingray/ui/submitreport/j;

.field m:Lcom/hiya/stingray/manager/e1;

.field private final n:Lcom/hiya/stingray/ui/submitreport/g;

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09044d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/submitreport/g;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/submitreport/g;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;->n:Lcom/hiya/stingray/ui/submitreport/g;

    return-void
.end method

.method private synthetic f1(Lcom/hiya/stingray/t/b1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/submitreport/ReportActivity;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/submitreport/ReportActivity;->S(Lcom/hiya/stingray/t/b1;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;->m:Lcom/hiya/stingray/manager/e1;

    new-instance v1, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v1}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v2, "select_category"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    invoke-virtual {p1}, Lcom/hiya/stingray/t/b1;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    const-string v1, "report_caller"

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public static h1()Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/b1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;->categoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;->emptyMessage:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;->n:Lcom/hiya/stingray/ui/submitreport/g;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/submitreport/g;->g(Ljava/util/List;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;->n:Lcom/hiya/stingray/ui/submitreport/g;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;->categoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;->n:Lcom/hiya/stingray/ui/submitreport/g;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method

.method public synthetic g1(Lcom/hiya/stingray/t/b1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;->f1(Lcom/hiya/stingray/t/b1;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;->categoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;->categoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/hiya/stingray/ui/common/p;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/hiya/stingray/ui/common/p;-><init>(Landroid/content/Context;I)V

    .line 5
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 6
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->b1()Li/c/b0/c/a;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;->n:Lcom/hiya/stingray/ui/submitreport/g;

    .line 7
    invoke-virtual {v0}, Lcom/hiya/stingray/ui/submitreport/g;->e()Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/ui/submitreport/a;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/submitreport/a;-><init>(Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 9
    iget-object p1, p0, Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;->l:Lcom/hiya/stingray/ui/submitreport/j;

    invoke-static {}, Lcom/hiya/stingray/util/p;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/submitreport/j;->c(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    const v1, 0x7f1102dd

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/hiya/stingray/util/e0;->r(Landroidx/appcompat/widget/Toolbar;Landroid/app/Activity;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->N(Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c008c

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    iget-object p2, p0, Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;->l:Lcom/hiya/stingray/ui/submitreport/j;

    invoke-virtual {p2, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->b1()Li/c/b0/c/a;

    move-result-object v0

    invoke-virtual {v0}, Li/c/b0/c/a;->d()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;->m:Lcom/hiya/stingray/manager/e1;

    new-instance v1, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v1}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v2, "report_caller"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "select_category"

    .line 4
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "view_screen"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method
