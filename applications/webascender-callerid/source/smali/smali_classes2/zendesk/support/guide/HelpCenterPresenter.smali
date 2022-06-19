.class Lzendesk/support/guide/HelpCenterPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/guide/HelpCenterMvp$Presenter;
.implements Lzendesk/core/NetworkAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;
    }
.end annotation


# static fields
.field private static final NETWORK_AWARE_ID:Ljava/lang/Integer;

.field private static final RETRY_ACTION_ID:Ljava/lang/Integer;


# instance fields
.field private config:Lzendesk/support/guide/HelpCenterUiConfig;

.field private internalRetryActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lzendesk/core/RetryAction;",
            ">;"
        }
    .end annotation
.end field

.field private mobileSettings:Lzendesk/support/SupportSdkSettings;

.field private model:Lzendesk/support/guide/HelpCenterMvp$Model;

.field private networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

.field private networkPreviouslyUnavailable:Z

.field private view:Lzendesk/support/guide/HelpCenterMvp$View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lzendesk/support/guide/HelpCenterPresenter;->NETWORK_AWARE_ID:Ljava/lang/Integer;

    const/16 v0, 0x21c2

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lzendesk/support/guide/HelpCenterPresenter;->RETRY_ACTION_ID:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>(Lzendesk/support/guide/HelpCenterMvp$View;Lzendesk/support/guide/HelpCenterMvp$Model;Lzendesk/core/NetworkInfoProvider;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->internalRetryActions:Ljava/util/Set;

    .line 3
    iput-object p1, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    .line 4
    iput-object p2, p0, Lzendesk/support/guide/HelpCenterPresenter;->model:Lzendesk/support/guide/HelpCenterMvp$Model;

    .line 5
    iput-object p3, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    .line 6
    new-instance p1, Lzendesk/support/SupportSdkSettings;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Lzendesk/support/SupportSdkSettings;-><init>(Lzendesk/support/SupportSettings;Lzendesk/support/HelpCenterSettings;Lzendesk/core/AuthenticationType;)V

    iput-object p1, p0, Lzendesk/support/guide/HelpCenterPresenter;->mobileSettings:Lzendesk/support/SupportSdkSettings;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/guide/HelpCenterPresenter;)Lzendesk/support/guide/HelpCenterMvp$View;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/guide/HelpCenterPresenter;)Lzendesk/support/guide/HelpCenterUiConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/guide/HelpCenterPresenter;->config:Lzendesk/support/guide/HelpCenterUiConfig;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/support/guide/HelpCenterPresenter;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/guide/HelpCenterPresenter;->internalRetryActions:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$402(Lzendesk/support/guide/HelpCenterPresenter;Lzendesk/support/SupportSdkSettings;)Lzendesk/support/SupportSdkSettings;
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/guide/HelpCenterPresenter;->mobileSettings:Lzendesk/support/SupportSdkSettings;

    return-object p1
.end method

.method private invokeRetryActions()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->internalRetryActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/RetryAction;

    .line 2
    invoke-interface {v1}, Lzendesk/core/RetryAction;->onRetry()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->internalRetryActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method


# virtual methods
.method public init(Lzendesk/support/guide/HelpCenterUiConfig;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lzendesk/support/guide/HelpCenterPresenter;->config:Lzendesk/support/guide/HelpCenterUiConfig;

    .line 2
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->showLoadingState()V

    .line 3
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->model:Lzendesk/support/guide/HelpCenterMvp$Model;

    new-instance v1, Lzendesk/support/guide/HelpCenterPresenter$5;

    invoke-direct {v1, p0, p1}, Lzendesk/support/guide/HelpCenterPresenter$5;-><init>(Lzendesk/support/guide/HelpCenterPresenter;Lzendesk/support/guide/HelpCenterUiConfig;)V

    invoke-interface {v0, v1}, Lzendesk/support/guide/HelpCenterMvp$Model;->getSettings(Lcom/zendesk/service/f;)V

    return-void
.end method

.method public onErrorWithRetry(Lzendesk/support/guide/HelpCenterMvp$ErrorType;Lzendesk/core/RetryAction;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->isShowingHelp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->hideLoadingState()V

    .line 4
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    invoke-interface {v0, p1, p2}, Lzendesk/support/guide/HelpCenterMvp$View;->showLoadArticleErrorWithRetry(Lzendesk/support/guide/HelpCenterMvp$ErrorType;Lzendesk/core/RetryAction;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->internalRetryActions:Ljava/util/Set;

    new-instance v1, Lzendesk/support/guide/HelpCenterPresenter$3;

    invoke-direct {v1, p0, p1, p2}, Lzendesk/support/guide/HelpCenterPresenter$3;-><init>(Lzendesk/support/guide/HelpCenterPresenter;Lzendesk/support/guide/HelpCenterMvp$ErrorType;Lzendesk/core/RetryAction;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onLoad()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->config:Lzendesk/support/guide/HelpCenterUiConfig;

    invoke-virtual {v0}, Lzendesk/support/guide/HelpCenterUiConfig;->isContactUsButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->showContactUsButton()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->internalRetryActions:Ljava/util/Set;

    new-instance v1, Lzendesk/support/guide/HelpCenterPresenter$2;

    invoke-direct {v1, p0}, Lzendesk/support/guide/HelpCenterPresenter$2;-><init>(Lzendesk/support/guide/HelpCenterPresenter;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->announceContentLoaded()V

    :cond_2
    return-void
.end method

.method public onNetworkAvailable()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "HelpCenterActivity"

    const-string v3, "Network is available."

    .line 1
    invoke-static {v2, v3, v1}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-boolean v1, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkPreviouslyUnavailable:Z

    if-nez v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Network was not previously unavailable, no need to dismiss Snackbar"

    .line 3
    invoke-static {v2, v1, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    iput-boolean v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkPreviouslyUnavailable:Z

    .line 5
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Lzendesk/support/guide/HelpCenterMvp$View;->setSearchEnabled(Z)V

    .line 7
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->dismissError()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->internalRetryActions:Ljava/util/Set;

    new-instance v1, Lzendesk/support/guide/HelpCenterPresenter$4;

    invoke-direct {v1, p0}, Lzendesk/support/guide/HelpCenterPresenter$4;-><init>(Lzendesk/support/guide/HelpCenterPresenter;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onNetworkUnavailable()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "HelpCenterActivity"

    const-string v3, "Network is unavailable."

    .line 1
    invoke-static {v2, v3, v1}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkPreviouslyUnavailable:Z

    .line 3
    iget-object v1, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, v0}, Lzendesk/support/guide/HelpCenterMvp$View;->setSearchEnabled(Z)V

    .line 5
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->showNoConnectionError()V

    .line 6
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->hideLoadingState()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    .line 2
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    sget-object v1, Lzendesk/support/guide/HelpCenterPresenter;->NETWORK_AWARE_ID:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lzendesk/core/NetworkInfoProvider;->removeNetworkAwareListener(Ljava/lang/Integer;)V

    .line 3
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    sget-object v1, Lzendesk/support/guide/HelpCenterPresenter;->RETRY_ACTION_ID:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lzendesk/core/NetworkInfoProvider;->removeRetryAction(Ljava/lang/Integer;)V

    .line 4
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    invoke-interface {v0}, Lzendesk/core/NetworkInfoProvider;->unregister()V

    return-void
.end method

.method public onResume(Lzendesk/support/guide/HelpCenterMvp$View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    .line 2
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    sget-object v1, Lzendesk/support/guide/HelpCenterPresenter;->NETWORK_AWARE_ID:Ljava/lang/Integer;

    invoke-interface {v0, v1, p0}, Lzendesk/core/NetworkInfoProvider;->addNetworkAwareListener(Ljava/lang/Integer;Lzendesk/core/NetworkAware;)V

    .line 3
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    invoke-interface {v0}, Lzendesk/core/NetworkInfoProvider;->register()V

    .line 4
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    invoke-interface {v0}, Lzendesk/core/NetworkInfoProvider;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1}, Lzendesk/support/guide/HelpCenterMvp$View;->showNoConnectionError()V

    .line 6
    invoke-interface {p1}, Lzendesk/support/guide/HelpCenterMvp$View;->hideLoadingState()V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkPreviouslyUnavailable:Z

    .line 8
    :cond_0
    invoke-direct {p0}, Lzendesk/support/guide/HelpCenterPresenter;->invokeRetryActions()V

    return-void
.end method

.method public onSearchSubmit(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    invoke-interface {v0}, Lzendesk/core/NetworkInfoProvider;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->dismissError()V

    .line 3
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->showLoadingState()V

    .line 4
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->clearSearchResults()V

    .line 5
    iget-object v1, p0, Lzendesk/support/guide/HelpCenterPresenter;->model:Lzendesk/support/guide/HelpCenterMvp$Model;

    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->config:Lzendesk/support/guide/HelpCenterUiConfig;

    invoke-virtual {v0}, Lzendesk/support/guide/HelpCenterUiConfig;->getCategoryIds()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->config:Lzendesk/support/guide/HelpCenterUiConfig;

    invoke-virtual {v0}, Lzendesk/support/guide/HelpCenterUiConfig;->getSectionIds()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->config:Lzendesk/support/guide/HelpCenterUiConfig;

    .line 6
    invoke-virtual {v0}, Lzendesk/support/guide/HelpCenterUiConfig;->getLabelNames()[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;

    invoke-direct {v6, p0, p1}, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;-><init>(Lzendesk/support/guide/HelpCenterPresenter;Ljava/lang/String;)V

    move-object v4, p1

    .line 7
    invoke-interface/range {v1 .. v6}, Lzendesk/support/guide/HelpCenterMvp$Model;->search(Ljava/util/List;Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;Lcom/zendesk/service/f;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lzendesk/support/guide/HelpCenterPresenter$1;

    invoke-direct {v0, p0, p1}, Lzendesk/support/guide/HelpCenterPresenter$1;-><init>(Lzendesk/support/guide/HelpCenterPresenter;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    sget-object v1, Lzendesk/support/guide/HelpCenterPresenter;->RETRY_ACTION_ID:Ljava/lang/Integer;

    invoke-interface {p1, v1, v0}, Lzendesk/core/NetworkInfoProvider;->addRetryAction(Ljava/lang/Integer;Lzendesk/core/RetryAction;)V

    :goto_0
    return-void
.end method

.method public shouldShowConversationsMenuItem()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->mobileSettings:Lzendesk/support/SupportSdkSettings;

    invoke-virtual {v0}, Lzendesk/support/SupportSdkSettings;->isConversationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->config:Lzendesk/support/guide/HelpCenterUiConfig;

    invoke-virtual {v0}, Lzendesk/support/guide/HelpCenterUiConfig;->isShowConversationsMenuButton()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldShowSearchMenuItem()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->mobileSettings:Lzendesk/support/SupportSdkSettings;

    invoke-virtual {v0}, Lzendesk/support/SupportSdkSettings;->hasHelpCenterSettings()Z

    move-result v0

    return v0
.end method
