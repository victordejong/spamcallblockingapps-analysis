.class Lzendesk/support/requestlist/RequestListPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;
    }
.end annotation


# instance fields
.field private final callbacks:Lzendesk/support/requestlist/CancelableCompositeCallback;

.field private final model:Lzendesk/support/requestlist/RequestListModel;

.field private final view:Lzendesk/support/requestlist/RequestListView;


# direct methods
.method public constructor <init>(Lzendesk/support/requestlist/RequestListView;Lzendesk/support/requestlist/RequestListModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lzendesk/support/requestlist/CancelableCompositeCallback;

    invoke-direct {v0}, Lzendesk/support/requestlist/CancelableCompositeCallback;-><init>()V

    iput-object v0, p0, Lzendesk/support/requestlist/RequestListPresenter;->callbacks:Lzendesk/support/requestlist/CancelableCompositeCallback;

    .line 3
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    .line 4
    iput-object p2, p0, Lzendesk/support/requestlist/RequestListPresenter;->model:Lzendesk/support/requestlist/RequestListModel;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/requestlist/RequestListPresenter;)Lzendesk/support/requestlist/RequestListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/requestlist/RequestListPresenter;Lzendesk/support/requestlist/RequestListView;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/requestlist/RequestListPresenter;->logoClicks(Lzendesk/support/requestlist/RequestListView;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lzendesk/support/requestlist/RequestListPresenter;ZLzendesk/support/SupportSdkSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lzendesk/support/requestlist/RequestListPresenter;->loadItems(ZLzendesk/support/SupportSdkSettings;)V

    return-void
.end method

.method static synthetic access$300(Lzendesk/support/requestlist/RequestListPresenter;)Lzendesk/support/requestlist/RequestListModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/requestlist/RequestListPresenter;->model:Lzendesk/support/requestlist/RequestListModel;

    return-object p0
.end method

.method private createTicketClicks(Lzendesk/support/requestlist/RequestListView;)V
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/requestlist/RequestListPresenter$9;

    invoke-direct {v0, p0, p1}, Lzendesk/support/requestlist/RequestListPresenter$9;-><init>(Lzendesk/support/requestlist/RequestListPresenter;Lzendesk/support/requestlist/RequestListView;)V

    .line 2
    invoke-virtual {p1, v0}, Lzendesk/support/requestlist/RequestListView;->setCreateRequestListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private errorClicks(Lzendesk/support/requestlist/RequestListView;)V
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/requestlist/RequestListPresenter$6;

    invoke-direct {v0, p0}, Lzendesk/support/requestlist/RequestListPresenter$6;-><init>(Lzendesk/support/requestlist/RequestListPresenter;)V

    .line 2
    invoke-virtual {p1, v0}, Lzendesk/support/requestlist/RequestListView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private itemClicks(Lzendesk/support/requestlist/RequestListView;)V
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/requestlist/RequestListPresenter$7;

    invoke-direct {v0, p0, p1}, Lzendesk/support/requestlist/RequestListPresenter$7;-><init>(Lzendesk/support/requestlist/RequestListPresenter;Lzendesk/support/requestlist/RequestListView;)V

    .line 2
    invoke-virtual {p1, v0}, Lzendesk/support/requestlist/RequestListView;->setItemClickListener(Lzendesk/support/requestlist/RequestListView$OnItemClick;)V

    return-void
.end method

.method private loadItems(ZLzendesk/support/SupportSdkSettings;)V
    .locals 3

    .line 1
    new-instance v0, Lzendesk/support/requestlist/RequestListPresenter$3;

    invoke-direct {v0, p0}, Lzendesk/support/requestlist/RequestListPresenter$3;-><init>(Lzendesk/support/requestlist/RequestListPresenter;)V

    .line 2
    iget-object v1, p0, Lzendesk/support/requestlist/RequestListPresenter;->callbacks:Lzendesk/support/requestlist/CancelableCompositeCallback;

    invoke-static {v0}, Lcom/zendesk/service/e;->a(Lcom/zendesk/service/f;)Lcom/zendesk/service/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzendesk/support/requestlist/CancelableCompositeCallback;->add(Lcom/zendesk/service/e;)V

    .line 3
    iget-object v1, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lzendesk/support/requestlist/RequestListView;->setLoading(Z)V

    .line 4
    iget-object v1, p0, Lzendesk/support/requestlist/RequestListPresenter;->model:Lzendesk/support/requestlist/RequestListModel;

    invoke-virtual {v1, p1, p2, v0}, Lzendesk/support/requestlist/RequestListModel;->loadItems(ZLzendesk/support/SupportSdkSettings;Lcom/zendesk/service/f;)V

    return-void
.end method

.method private loadSettings(Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListPresenter;->model:Lzendesk/support/requestlist/RequestListModel;

    invoke-virtual {v0}, Lzendesk/support/requestlist/RequestListModel;->getCachedSettings()Lzendesk/support/SupportSdkSettings;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lzendesk/support/requestlist/RequestListPresenter;->networkSettings(Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1, v0}, Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;->onSettings(Lzendesk/support/SupportSdkSettings;)V

    :goto_0
    return-void
.end method

.method private logoClicks(Lzendesk/support/requestlist/RequestListView;ZLjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/requestlist/RequestListPresenter$10;

    invoke-direct {v0, p0, p1, p3}, Lzendesk/support/requestlist/RequestListPresenter$10;-><init>(Lzendesk/support/requestlist/RequestListPresenter;Lzendesk/support/requestlist/RequestListView;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lzendesk/support/requestlist/RequestListView;->setLogoClickListener(ZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private navigationClicks(Lzendesk/support/requestlist/RequestListView;)V
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/requestlist/RequestListPresenter$5;

    invoke-direct {v0, p0, p1}, Lzendesk/support/requestlist/RequestListPresenter$5;-><init>(Lzendesk/support/requestlist/RequestListPresenter;Lzendesk/support/requestlist/RequestListView;)V

    .line 2
    invoke-virtual {p1, v0}, Lzendesk/support/requestlist/RequestListView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private networkSettings(Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/requestlist/RequestListPresenter$4;

    invoke-direct {v0, p0, p1}, Lzendesk/support/requestlist/RequestListPresenter$4;-><init>(Lzendesk/support/requestlist/RequestListPresenter;Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;)V

    .line 2
    invoke-static {v0}, Lcom/zendesk/service/e;->a(Lcom/zendesk/service/f;)Lcom/zendesk/service/e;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListPresenter;->callbacks:Lzendesk/support/requestlist/CancelableCompositeCallback;

    invoke-virtual {v0, p1}, Lzendesk/support/requestlist/CancelableCompositeCallback;->add(Lcom/zendesk/service/e;)V

    .line 4
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzendesk/support/requestlist/RequestListView;->setLoading(Z)V

    .line 5
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListPresenter;->model:Lzendesk/support/requestlist/RequestListModel;

    invoke-virtual {v0, p1}, Lzendesk/support/requestlist/RequestListModel;->loadSettings(Lcom/zendesk/service/f;)V

    return-void
.end method

.method private pullToRefresh(Lzendesk/support/requestlist/RequestListView;)V
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/requestlist/RequestListPresenter$8;

    invoke-direct {v0, p0}, Lzendesk/support/requestlist/RequestListPresenter$8;-><init>(Lzendesk/support/requestlist/RequestListPresenter;)V

    .line 2
    invoke-virtual {p1, v0}, Lzendesk/support/requestlist/RequestListView;->setSwipeRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    return-void
.end method


# virtual methods
.method onCreate(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    invoke-direct {p0, v0}, Lzendesk/support/requestlist/RequestListPresenter;->itemClicks(Lzendesk/support/requestlist/RequestListView;)V

    .line 2
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    invoke-direct {p0, v0}, Lzendesk/support/requestlist/RequestListPresenter;->pullToRefresh(Lzendesk/support/requestlist/RequestListView;)V

    .line 3
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    invoke-direct {p0, v0}, Lzendesk/support/requestlist/RequestListPresenter;->navigationClicks(Lzendesk/support/requestlist/RequestListView;)V

    .line 4
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    invoke-direct {p0, v0}, Lzendesk/support/requestlist/RequestListPresenter;->errorClicks(Lzendesk/support/requestlist/RequestListView;)V

    .line 5
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    invoke-direct {p0, v0}, Lzendesk/support/requestlist/RequestListPresenter;->createTicketClicks(Lzendesk/support/requestlist/RequestListView;)V

    .line 6
    new-instance v0, Lzendesk/support/requestlist/RequestListPresenter$1;

    invoke-direct {v0, p0, p1}, Lzendesk/support/requestlist/RequestListPresenter$1;-><init>(Lzendesk/support/requestlist/RequestListPresenter;Z)V

    invoke-direct {p0, v0}, Lzendesk/support/requestlist/RequestListPresenter;->loadSettings(Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;)V

    return-void
.end method

.method onDestroy(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListPresenter;->model:Lzendesk/support/requestlist/RequestListModel;

    invoke-virtual {p1}, Lzendesk/support/requestlist/RequestListModel;->cleanup()V

    .line 2
    :cond_0
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListPresenter;->callbacks:Lzendesk/support/requestlist/CancelableCompositeCallback;

    invoke-virtual {p1}, Lzendesk/support/requestlist/CancelableCompositeCallback;->cancel()V

    return-void
.end method

.method refresh()V
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/requestlist/RequestListPresenter$2;

    invoke-direct {v0, p0}, Lzendesk/support/requestlist/RequestListPresenter$2;-><init>(Lzendesk/support/requestlist/RequestListPresenter;)V

    invoke-direct {p0, v0}, Lzendesk/support/requestlist/RequestListPresenter;->loadSettings(Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;)V

    return-void
.end method
