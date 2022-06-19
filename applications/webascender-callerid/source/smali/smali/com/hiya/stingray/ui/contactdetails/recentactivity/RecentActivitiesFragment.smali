.class public Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/contactdetails/recentactivity/f;


# instance fields
.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m:Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;

.field n:Lcom/hiya/stingray/ui/contactdetails/recentactivity/e;

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090319
    .end annotation
.end field

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090159
    .end annotation
.end field

.field viewAllRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09047e
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    return-void
.end method

.method private synthetic f1(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public K()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/d0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->m:Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;->d(Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->m:Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;->f(Z)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->m:Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/ui/common/n$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/hiya/stingray/ui/common/n;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->m:Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;

    const v2, 0x7f06019a

    const v3, 0x7f0c0067

    const v4, 0x7f0903bb

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/ui/common/n;-><init>(Landroid/content/Context;IIILandroidx/recyclerview/widget/RecyclerView$g;)V

    .line 2
    invoke-virtual {v6, p1}, Lcom/hiya/stingray/ui/common/n;->h(Ljava/util/List;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/hiya/stingray/util/f0;->a(Landroid/content/Context;Lcom/hiya/stingray/ui/common/n;)Lcom/hiya/stingray/ui/common/o;

    move-result-object p1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/common/o;->g(Z)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->viewAllRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->viewAllRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method

.method public synthetic g1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->f1(Landroid/view/View;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f1102d7

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f080107

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f1103f7

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/contactdetails/recentactivity/a;-><init>(Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->l:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->n:Lcom/hiya/stingray/ui/contactdetails/recentactivity/e;

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->l:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/contactdetails/recentactivity/e;->t(Ljava/util/List;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "phone number is null/empty in recent activity"

    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "recent_list_phone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->l:Ljava/util/List;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->A(Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c014a

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const v0, -0x777778

    invoke-virtual {p2, v0, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 4
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->viewAllRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 5
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->viewAllRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->m:Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 6
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->n:Lcom/hiya/stingray/ui/contactdetails/recentactivity/e;

    invoke-virtual {p2, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    return-object p1
.end method
