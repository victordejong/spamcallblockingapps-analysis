.class public Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/customblock/countrylist/g;
.implements Lcom/hiya/stingray/ui/customblock/countrylist/f;


# instance fields
.field l:Lcom/hiya/stingray/ui/customblock/countrylist/e;

.field m:Lcom/hiya/stingray/manager/e1;

.field n:Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090325
    .end annotation
.end field

.field searchText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903a8
    .end annotation
.end field

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090159
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    return-void
.end method

.method private synthetic f1(Ljava/lang/String;)Lkotlin/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->l:Lcom/hiya/stingray/ui/customblock/countrylist/e;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/customblock/countrylist/e;->x(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public G(Ljava/util/List;Lcom/hiya/stingray/t/l0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/l0;",
            ">;",
            "Lcom/hiya/stingray/t/l0;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->n:Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->k(Ljava/util/List;Lcom/hiya/stingray/t/l0;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->n:Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public J0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->n:Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->c()Lcom/hiya/stingray/t/l0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/l0;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->L0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public L0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->m:Lcom/hiya/stingray/manager/e1;

    new-instance v1, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v1}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v2, "choose_country"

    .line 2
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "add_to_block_list_choose_country"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "user_action"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "country_prefix"

    .line 7
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "country_code"

    .line 8
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    const/16 p2, 0x232a

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic g1(Ljava/lang/String;)Lkotlin/r;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->f1(Ljava/lang/String;)Lkotlin/r;

    move-result-object p1

    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment$a;-><init>(Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->Z(Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0c0054

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    iget-object p2, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 4
    iget-object p2, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->n:Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;

    invoke-virtual {p2, p0}, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->j(Lcom/hiya/stingray/ui/customblock/countrylist/g;)V

    .line 5
    iget-object p2, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->n:Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 6
    iget-object p2, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/hiya/stingray/ui/common/p;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p3, v0, v1}, Lcom/hiya/stingray/ui/common/p;-><init>(Landroid/content/Context;I)V

    .line 8
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 9
    iget-object p2, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->searchText:Landroid/widget/EditText;

    new-instance p3, Lcom/hiya/stingray/ui/customblock/countrylist/c;

    invoke-direct {p3, p0}, Lcom/hiya/stingray/ui/customblock/countrylist/c;-><init>(Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;)V

    invoke-static {p2, p3}, Lcom/hiya/stingray/util/e0;->a(Landroid/widget/EditText;Lkotlin/w/b/l;)V

    .line 10
    iget-object p2, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->l:Lcom/hiya/stingray/ui/customblock/countrylist/e;

    invoke-virtual {p2, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    return-object p1
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->m:Lcom/hiya/stingray/manager/e1;

    new-instance v1, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v1}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v2, "choose_country"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "add_to_block_list"

    .line 4
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "view_screen"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->l:Lcom/hiya/stingray/ui/customblock/countrylist/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/customblock/countrylist/e;->v()V

    return-void
.end method
