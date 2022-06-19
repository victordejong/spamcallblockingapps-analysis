.class Lzendesk/support/requestlist/RequestListView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/requestlist/RequestListView$SceneState;,
        Lzendesk/support/requestlist/RequestListView$OnItemClick;
    }
.end annotation


# instance fields
.field private final activity:Landroidx/appcompat/app/c;

.field private final adapter:Lzendesk/support/requestlist/RequestListAdapter;

.field private final config:Lzendesk/support/requestlist/RequestListUiConfig;

.field private final createTicketFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private final emptyScene:Lf/v/l;

.field private final fade:Lf/v/d;

.field private isLoading:Z

.field private isStopped:Z

.field private itemClickListener:Lzendesk/support/requestlist/RequestListView$OnItemClick;

.field private final listScene:Lf/v/l;

.field private final listSceneView:Landroid/view/View;

.field private final logoImage:Landroid/view/View;

.field private final logoImageEmpty:Landroid/view/View;

.field private final progressBar:Lzendesk/support/request/ViewAlmostRealProgressBar;

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private retryClickListener:Landroid/view/View$OnClickListener;

.field private final rootLayout:Landroid/view/ViewGroup;

.field private final sceneRoot:Landroid/view/ViewGroup;

.field private sceneState:Lzendesk/support/requestlist/RequestListView$SceneState;

.field snackbar:Lcom/google/android/material/snackbar/Snackbar;

.field private final startConversationButton:Landroid/view/View;

.field private final swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private final swipeRefreshLayoutEmpty:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private final toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/c;Lzendesk/support/requestlist/RequestListUiConfig;Lg/i/a/d;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lzendesk/support/requestlist/RequestListView$SceneState;->NONE:Lzendesk/support/requestlist/RequestListView$SceneState;

    iput-object v0, p0, Lzendesk/support/requestlist/RequestListView;->sceneState:Lzendesk/support/requestlist/RequestListView$SceneState;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lzendesk/support/requestlist/RequestListView;->itemClickListener:Lzendesk/support/requestlist/RequestListView$OnItemClick;

    .line 4
    iput-object v0, p0, Lzendesk/support/requestlist/RequestListView;->retryClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lzendesk/support/requestlist/RequestListView;->isLoading:Z

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lzendesk/support/requestlist/RequestListView;->isStopped:Z

    .line 7
    new-instance v2, Lf/v/d;

    invoke-direct {v2}, Lf/v/d;-><init>()V

    iput-object v2, p0, Lzendesk/support/requestlist/RequestListView;->fade:Lf/v/d;

    .line 8
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListView;->activity:Landroidx/appcompat/app/c;

    .line 9
    iput-object p2, p0, Lzendesk/support/requestlist/RequestListView;->config:Lzendesk/support/requestlist/RequestListUiConfig;

    .line 10
    sget p2, Lg/k/c/f;->C0:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 11
    sget p2, Lg/k/c/h;->c:I

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    sget p2, Lg/k/c/f;->y0:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lzendesk/support/requestlist/RequestListView;->sceneRoot:Landroid/view/ViewGroup;

    .line 13
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 14
    sget v3, Lg/k/c/h;->d:I

    invoke-virtual {v2, v3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lzendesk/support/requestlist/RequestListView;->listSceneView:Landroid/view/View;

    .line 15
    sget v4, Lg/k/c/h;->e:I

    invoke-virtual {v2, v4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 16
    new-instance v4, Lf/v/l;

    invoke-direct {v4, p2, v3}, Lf/v/l;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object v4, p0, Lzendesk/support/requestlist/RequestListView;->listScene:Lf/v/l;

    .line 17
    new-instance v4, Lf/v/l;

    invoke-direct {v4, p2, v2}, Lf/v/l;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object v4, p0, Lzendesk/support/requestlist/RequestListView;->emptyScene:Lf/v/l;

    .line 18
    sget p2, Lg/k/c/f;->w0:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lzendesk/support/request/ViewAlmostRealProgressBar;

    iput-object p2, p0, Lzendesk/support/requestlist/RequestListView;->progressBar:Lzendesk/support/request/ViewAlmostRealProgressBar;

    .line 19
    sget p2, Lg/k/c/f;->B0:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    iput-object p2, p0, Lzendesk/support/requestlist/RequestListView;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 20
    sget p2, Lg/k/c/f;->o0:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lzendesk/support/requestlist/RequestListView;->rootLayout:Landroid/view/ViewGroup;

    .line 21
    sget p2, Lg/k/c/f;->p0:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p2, p0, Lzendesk/support/requestlist/RequestListView;->createTicketFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 22
    sget v4, Lg/k/c/f;->D0:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lzendesk/support/requestlist/RequestListView;->logoImage:Landroid/view/View;

    .line 23
    sget v4, Lg/k/c/f;->x0:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, p0, Lzendesk/support/requestlist/RequestListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    sget v5, Lg/k/c/f;->z0:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v3, p0, Lzendesk/support/requestlist/RequestListView;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 25
    sget v5, Lg/k/c/f;->q0:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lzendesk/support/requestlist/RequestListView;->startConversationButton:Landroid/view/View;

    .line 26
    sget v5, Lg/k/c/f;->A0:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v5, p0, Lzendesk/support/requestlist/RequestListView;->swipeRefreshLayoutEmpty:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 27
    sget v6, Lg/k/c/f;->E0:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lzendesk/support/requestlist/RequestListView;->logoImageEmpty:Landroid/view/View;

    .line 28
    new-instance v2, Lzendesk/support/requestlist/RequestListView$1;

    invoke-direct {v2, p0}, Lzendesk/support/requestlist/RequestListView$1;-><init>(Lzendesk/support/requestlist/RequestListView;)V

    .line 29
    new-instance v6, Lzendesk/support/requestlist/RequestListAdapter;

    invoke-direct {v6, v2, p3}, Lzendesk/support/requestlist/RequestListAdapter;-><init>(Lzendesk/support/requestlist/RequestListView$OnItemClick;Lg/i/a/d;)V

    iput-object v6, p0, Lzendesk/support/requestlist/RequestListView;->adapter:Lzendesk/support/requestlist/RequestListAdapter;

    .line 30
    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 31
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 32
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 33
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p3, p1, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v4, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 34
    new-instance p3, Landroidx/recyclerview/widget/i;

    invoke-direct {p3, p1, v1}, Landroidx/recyclerview/widget/i;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, p3}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 35
    new-instance p1, Landroidx/recyclerview/widget/g;

    invoke-direct {p1}, Landroidx/recyclerview/widget/g;-><init>()V

    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 36
    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l()V

    .line 37
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    .line 38
    sget p1, Lg/k/c/f;->n0:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 40
    :cond_0
    sget p1, Lg/k/c/a;->a:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lg/k/c/c;->u:I

    invoke-static {p1, p2, p3}, Lzendesk/support/UiUtils;->themeAttributeToColor(ILandroid/content/Context;I)I

    move-result p1

    new-array p2, v1, [I

    aput p1, p2, v0

    .line 41
    invoke-virtual {v3, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    new-array p2, v1, [I

    aput p1, p2, v0

    .line 42
    invoke-virtual {v5, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/requestlist/RequestListView;)Lzendesk/support/requestlist/RequestListView$OnItemClick;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/requestlist/RequestListView;->itemClickListener:Lzendesk/support/requestlist/RequestListView$OnItemClick;

    return-object p0
.end method

.method private dismissSnackbar()V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->s()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lzendesk/support/requestlist/RequestListView;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    return-void
.end method

.method private isShowingSnackBar()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public announceAccessibility(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 4
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->activity:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->activity:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public finish(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RequestListActivity"

    .line 2
    invoke-static {v1, p1, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lzendesk/support/requestlist/RequestListView;->finish()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "is_showing_snackbar"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "request_list_view_superstate"

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lzendesk/support/requestlist/RequestListView;->showErrorMessage()V

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "request_list_view_superstate"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    invoke-direct {p0}, Lzendesk/support/requestlist/RequestListView;->isShowingSnackBar()Z

    move-result v1

    const-string v2, "is_showing_snackbar"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lzendesk/support/requestlist/RequestListView;->isStopped:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lzendesk/support/requestlist/RequestListView;->isStopped:Z

    .line 2
    invoke-direct {p0}, Lzendesk/support/requestlist/RequestListView;->dismissSnackbar()V

    return-void
.end method

.method public setBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCreateRequestListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->createTicketFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->startConversationButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setItemClickListener(Lzendesk/support/requestlist/RequestListView$OnItemClick;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListView;->itemClickListener:Lzendesk/support/requestlist/RequestListView$OnItemClick;

    return-void
.end method

.method public setLoading(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lzendesk/support/requestlist/RequestListView;->dismissSnackbar()V

    .line 2
    iget-boolean v0, p0, Lzendesk/support/requestlist/RequestListView;->isLoading:Z

    if-eq v0, p1, :cond_3

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->swipeRefreshLayoutEmpty:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    sget v0, Lg/k/c/j;->Z:I

    invoke-virtual {p0, v0}, Lzendesk/support/requestlist/RequestListView;->announceAccessibility(I)V

    .line 5
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->progressBar:Lzendesk/support/request/ViewAlmostRealProgressBar;

    sget-object v1, Lzendesk/support/request/ViewAlmostRealProgressBar;->DONT_STOP_MOVING:Ljava/util/List;

    invoke-virtual {v0, v1}, Lzendesk/support/request/ViewAlmostRealProgressBar;->start(Ljava/util/List;)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->swipeRefreshLayoutEmpty:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->progressBar:Lzendesk/support/request/ViewAlmostRealProgressBar;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lzendesk/support/request/ViewAlmostRealProgressBar;->stop(J)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 9
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->swipeRefreshLayoutEmpty:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 10
    :cond_3
    :goto_1
    iput-boolean p1, p0, Lzendesk/support/requestlist/RequestListView;->isLoading:Z

    return-void
.end method

.method public setLogoClickListener(ZLandroid/view/View$OnClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    const/4 p2, 0x0

    .line 1
    :goto_0
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->logoImage:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->logoImageEmpty:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListView;->logoImage:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListView;->logoImageEmpty:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRetryClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListView;->retryClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSwipeRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    .line 2
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->swipeRefreshLayoutEmpty:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    return-void
.end method

.method public showErrorMessage()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lzendesk/support/requestlist/RequestListView;->isStopped:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lzendesk/support/requestlist/RequestListView;->isShowingSnackBar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget v0, Lg/k/c/j;->W:I

    invoke-virtual {p0, v0}, Lzendesk/support/requestlist/RequestListView;->announceAccessibility(I)V

    .line 3
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->rootLayout:Landroid/view/ViewGroup;

    sget v1, Lg/k/c/j;->m:I

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->X(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    sget v1, Lg/k/c/j;->J:I

    iget-object v2, p0, Lzendesk/support/requestlist/RequestListView;->retryClickListener:Landroid/view/View$OnClickListener;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->a0(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    iput-object v0, p0, Lzendesk/support/requestlist/RequestListView;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->N()V

    :cond_0
    return-void
.end method

.method public showRequestList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/requestlist/RequestListItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lzendesk/support/requestlist/RequestListView;->dismissSnackbar()V

    .line 2
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->progressBar:Lzendesk/support/request/ViewAlmostRealProgressBar;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lzendesk/support/request/ViewAlmostRealProgressBar;->stop(J)V

    .line 3
    invoke-static {p1}, Lg/k/d/a;->g(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListView;->sceneState:Lzendesk/support/requestlist/RequestListView$SceneState;

    sget-object v0, Lzendesk/support/requestlist/RequestListView$SceneState;->EMPTY:Lzendesk/support/requestlist/RequestListView$SceneState;

    if-eq p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListView;->createTicketFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l()V

    .line 6
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListView;->emptyScene:Lf/v/l;

    iget-object v1, p0, Lzendesk/support/requestlist/RequestListView;->fade:Lf/v/d;

    invoke-static {p1, v1}, Lf/v/o;->e(Lf/v/l;Lf/v/m;)V

    .line 7
    sget p1, Lg/k/c/j;->Y:I

    invoke-virtual {p0, p1}, Lzendesk/support/requestlist/RequestListView;->announceAccessibility(I)V

    .line 8
    iput-object v0, p0, Lzendesk/support/requestlist/RequestListView;->sceneState:Lzendesk/support/requestlist/RequestListView$SceneState;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->adapter:Lzendesk/support/requestlist/RequestListAdapter;

    invoke-virtual {v0, p1}, Lzendesk/support/requestlist/RequestListAdapter;->swapRequests(Ljava/util/List;)V

    .line 10
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListView;->progressBar:Lzendesk/support/request/ViewAlmostRealProgressBar;

    invoke-virtual {p1, v1, v2}, Lzendesk/support/request/ViewAlmostRealProgressBar;->stop(J)V

    .line 11
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListView;->sceneState:Lzendesk/support/requestlist/RequestListView$SceneState;

    sget-object v0, Lzendesk/support/requestlist/RequestListView$SceneState;->LIST:Lzendesk/support/requestlist/RequestListView$SceneState;

    if-eq p1, v0, :cond_2

    .line 12
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListView;->createTicketFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()V

    .line 13
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListView;->listSceneView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    .line 14
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListView;->listScene:Lf/v/l;

    iget-object v1, p0, Lzendesk/support/requestlist/RequestListView;->fade:Lf/v/d;

    invoke-static {p1, v1}, Lf/v/o;->e(Lf/v/l;Lf/v/m;)V

    .line 15
    :cond_1
    sget p1, Lg/k/c/j;->X:I

    invoke-virtual {p0, p1}, Lzendesk/support/requestlist/RequestListView;->announceAccessibility(I)V

    .line 16
    iput-object v0, p0, Lzendesk/support/requestlist/RequestListView;->sceneState:Lzendesk/support/requestlist/RequestListView$SceneState;

    :cond_2
    :goto_0
    return-void
.end method

.method public startReferrerPage(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListView;->activity:Landroidx/appcompat/app/c;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startRequestActivity(Lzendesk/support/request/RequestUiConfig$Builder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView;->activity:Landroidx/appcompat/app/c;

    iget-object v1, p0, Lzendesk/support/requestlist/RequestListView;->config:Lzendesk/support/requestlist/RequestListUiConfig;

    invoke-virtual {v1}, Lzendesk/support/requestlist/RequestListUiConfig;->getUiConfigs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzendesk/support/request/RequestUiConfig$Builder;->show(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method
