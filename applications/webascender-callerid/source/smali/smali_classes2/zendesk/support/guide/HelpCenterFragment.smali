.class public Lzendesk/support/guide/HelpCenterFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private adapter:Lzendesk/support/guide/HelpRecyclerViewAdapter;

.field helpCenterProvider:Lzendesk/support/HelpCenterProvider;

.field networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

.field private presenter:Lzendesk/support/guide/HelpCenterMvp$Presenter;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lzendesk/support/guide/HelpCenterUiConfig;)Lzendesk/support/guide/HelpCenterFragment;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {v0, p0}, Lzendesk/commonui/q;->b(Landroid/os/Bundle;Lzendesk/commonui/p;)V

    .line 3
    new-instance p0, Lzendesk/support/guide/HelpCenterFragment;

    invoke-direct {p0}, Lzendesk/support/guide/HelpCenterFragment;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private setupRecyclerView()V
    .locals 5

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 4
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lzendesk/support/guide/SeparatorDecoration;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lg/k/c/e;->c:I

    invoke-static {v2, v3}, Landroidx/core/content/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lzendesk/support/guide/SeparatorDecoration;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 7
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lzendesk/support/guide/HelpCenterFragment;->adapter:Lzendesk/support/guide/HelpRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 3
    sget-object p1, Lzendesk/support/SdkDependencyProvider;->INSTANCE:Lzendesk/support/SdkDependencyProvider;

    invoke-virtual {p1}, Lzendesk/support/SdkDependencyProvider;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lzendesk/support/guide/HelpCenterUiConfig;

    invoke-static {v0, v1}, Lzendesk/commonui/q;->f(Landroid/os/Bundle;Ljava/lang/Class;)Lzendesk/commonui/p;

    move-result-object v0

    check-cast v0, Lzendesk/support/guide/HelpCenterUiConfig;

    .line 5
    invoke-virtual {p1}, Lzendesk/support/SdkDependencyProvider;->provideSupportSdkComponent()Lzendesk/support/SupportSdkComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lzendesk/support/SupportSdkComponent;->inject(Lzendesk/support/guide/HelpCenterFragment;)V

    .line 6
    new-instance p1, Lzendesk/support/guide/HelpRecyclerViewAdapter;

    iget-object v1, p0, Lzendesk/support/guide/HelpCenterFragment;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    iget-object v2, p0, Lzendesk/support/guide/HelpCenterFragment;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    invoke-direct {p1, v0, v1, v2}, Lzendesk/support/guide/HelpRecyclerViewAdapter;-><init>(Lzendesk/support/guide/HelpCenterUiConfig;Lzendesk/support/HelpCenterProvider;Lzendesk/core/NetworkInfoProvider;)V

    iput-object p1, p0, Lzendesk/support/guide/HelpCenterFragment;->adapter:Lzendesk/support/guide/HelpRecyclerViewAdapter;

    .line 7
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterFragment;->presenter:Lzendesk/support/guide/HelpCenterMvp$Presenter;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1, v0}, Lzendesk/support/guide/HelpRecyclerViewAdapter;->setContentUpdateListener(Lzendesk/support/guide/HelpCenterMvp$Presenter;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lg/k/c/h;->g:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    sget p2, Lg/k/c/f;->B:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lzendesk/support/guide/HelpCenterFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-direct {p0}, Lzendesk/support/guide/HelpCenterFragment;->setupRecyclerView()V

    return-object p1
.end method

.method public setPresenter(Lzendesk/support/guide/HelpCenterMvp$Presenter;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lzendesk/support/guide/HelpCenterFragment;->presenter:Lzendesk/support/guide/HelpCenterMvp$Presenter;

    .line 2
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterFragment;->adapter:Lzendesk/support/guide/HelpRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lzendesk/support/guide/HelpRecyclerViewAdapter;->setContentUpdateListener(Lzendesk/support/guide/HelpCenterMvp$Presenter;)V

    :cond_0
    return-void
.end method
