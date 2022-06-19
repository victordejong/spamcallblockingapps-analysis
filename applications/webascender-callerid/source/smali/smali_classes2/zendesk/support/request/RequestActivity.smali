.class public Lzendesk/support/request/RequestActivity;
.super Landroidx/appcompat/app/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/RequestActivity$RefreshRequestActionHandler;,
        Lzendesk/support/request/RequestActivity$MoveUpWithSnackbarBehaviour;
    }
.end annotation


# instance fields
.field private accessibilityHerald:Lzendesk/support/request/RequestAccessibilityHerald;

.field actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

.field af:Lzendesk/support/request/ActionFactory;

.field headlessComponentListener:Lzendesk/support/request/HeadlessComponentListener;

.field picasso:Lg/i/a/d;

.field private refreshActionHandler:Lzendesk/support/request/RequestActivity$RefreshRequestActionHandler;

.field private requestComponent:Lzendesk/support/request/RequestComponent;

.field private requestRouter:Lzendesk/support/request/ComponentRequestRouter;

.field store:Lt/a/q;

.field private subscription:Lt/a/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/c;-><init>()V

    return-void
.end method

.method static synthetic access$001(Lzendesk/support/request/RequestActivity;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private bindComponents(Z)Lt/a/t;
    .locals 5

    .line 1
    invoke-direct {p0}, Lzendesk/support/request/RequestActivity;->bindToolbar()Lzendesk/support/request/ComponentToolbar;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lzendesk/support/request/RequestActivity;->store:Lt/a/q;

    iget-object v2, p0, Lzendesk/support/request/RequestActivity;->af:Lzendesk/support/request/ActionFactory;

    invoke-static {p0, v1, v2}, Lzendesk/support/request/ComponentError;->create(Landroid/app/Activity;Lt/a/f;Lzendesk/support/request/ActionFactory;)Lzendesk/support/request/ComponentError;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lzendesk/support/request/RequestActivity;->requestComponent:Lzendesk/support/request/RequestComponent;

    invoke-static {p0, p1, v2}, Lzendesk/support/request/ComponentRequestRouter;->create(Landroidx/appcompat/app/c;ZLzendesk/support/request/RequestComponent;)Lzendesk/support/request/ComponentRequestRouter;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/RequestActivity;->requestRouter:Lzendesk/support/request/ComponentRequestRouter;

    .line 4
    invoke-static {p0}, Lzendesk/support/request/RequestAccessibilityHerald;->create(Lzendesk/support/request/RequestActivity;)Lzendesk/support/request/RequestAccessibilityHerald;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/RequestActivity;->accessibilityHerald:Lzendesk/support/request/RequestAccessibilityHerald;

    .line 5
    iget-object p1, p0, Lzendesk/support/request/RequestActivity;->store:Lt/a/q;

    invoke-virtual {v0}, Lzendesk/support/request/ComponentToolbar;->getToolbarSelector()Lzendesk/support/request/ComponentToolbar$ToolbarSelector;

    move-result-object v2

    invoke-interface {p1, v2, v0}, Lt/a/q;->e(Lt/a/p;Lt/a/k;)Lt/a/t;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->store:Lt/a/q;

    iget-object v2, p0, Lzendesk/support/request/RequestActivity;->requestRouter:Lzendesk/support/request/ComponentRequestRouter;

    invoke-virtual {v2}, Lzendesk/support/request/ComponentRequestRouter;->getSelector()Lt/a/p;

    move-result-object v2

    iget-object v3, p0, Lzendesk/support/request/RequestActivity;->requestRouter:Lzendesk/support/request/ComponentRequestRouter;

    invoke-interface {v0, v2, v3}, Lt/a/q;->e(Lt/a/p;Lt/a/k;)Lt/a/t;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lzendesk/support/request/RequestActivity;->store:Lt/a/q;

    invoke-static {}, Lzendesk/support/request/ComponentError;->getSelector()Lt/a/p;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lt/a/q;->e(Lt/a/p;Lt/a/k;)Lt/a/t;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lzendesk/support/request/RequestActivity;->store:Lt/a/q;

    iget-object v3, p0, Lzendesk/support/request/RequestActivity;->accessibilityHerald:Lzendesk/support/request/RequestAccessibilityHerald;

    invoke-interface {v2, v3}, Lt/a/q;->d(Lt/a/k;)Lt/a/t;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Lt/a/t;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    const/4 p1, 0x2

    aput-object v1, v3, p1

    const/4 p1, 0x3

    aput-object v2, v3, p1

    .line 9
    invoke-static {v3}, Lt/a/d;->d([Lt/a/t;)Lt/a/t;

    move-result-object p1

    return-object p1
.end method

.method private bindToolbar()Lzendesk/support/request/ComponentToolbar;
    .locals 4

    .line 1
    sget v0, Lg/k/c/f;->k:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 2
    sget v1, Lg/k/c/f;->h:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/c;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/ViewAlmostRealProgressBar;

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 4
    new-instance v2, Lzendesk/support/request/RequestActivity$3;

    invoke-direct {v2, p0}, Lzendesk/support/request/RequestActivity$3;-><init>(Lzendesk/support/request/RequestActivity;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 6
    sget v2, Lg/k/c/f;->c:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/c;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    .line 7
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_0
    new-instance v2, Lzendesk/support/request/ComponentToolbar;

    iget-object v3, p0, Lzendesk/support/request/RequestActivity;->picasso:Lg/i/a/d;

    invoke-direct {v2, v3, v0, v1}, Lzendesk/support/request/ComponentToolbar;-><init>(Lg/i/a/d;Landroidx/appcompat/widget/Toolbar;Lzendesk/support/request/ViewAlmostRealProgressBar;)V

    return-object v2
.end method

.method public static builder()Lzendesk/support/request/RequestUiConfig$Builder;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/request/RequestUiConfig$Builder;

    invoke-direct {v0}, Lzendesk/support/request/RequestUiConfig$Builder;-><init>()V

    return-object v0
.end method

.method private initViews()V
    .locals 2

    .line 1
    sget v0, Lg/k/c/f;->j:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 3
    new-instance v1, Lzendesk/support/request/RequestActivity$MoveUpWithSnackbarBehaviour;

    invoke-direct {v1}, Lzendesk/support/request/RequestActivity$MoveUpWithSnackbarBehaviour;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->o(Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;)V

    return-void
.end method

.method private initializeStoreAndDependencies(Landroid/os/Bundle;Lzendesk/support/request/RequestUiConfig;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lzendesk/support/request/RequestActivity;->injectDependencies(Lzendesk/support/request/RequestUiConfig;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lzendesk/support/request/RequestActivity;->restoreState(Landroid/os/Bundle;)Lt/a/o;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Lzendesk/support/request/RequestActivity;->store:Lt/a/q;

    invoke-interface {p2, p1}, Lt/a/q;->b(Lt/a/o;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private injectDependencies(Lzendesk/support/request/RequestUiConfig;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    invoke-static {v0}, Lzendesk/support/request/HeadlessFragment;->getData(Landroidx/fragment/app/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/RequestComponent;

    iput-object v0, p0, Lzendesk/support/request/RequestActivity;->requestComponent:Lzendesk/support/request/RequestComponent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    sget-object v1, Lzendesk/support/SdkDependencyProvider;->INSTANCE:Lzendesk/support/SdkDependencyProvider;

    .line 3
    invoke-virtual {v1}, Lzendesk/support/SdkDependencyProvider;->provideSupportSdkComponent()Lzendesk/support/SupportSdkComponent;

    move-result-object v1

    new-instance v2, Lzendesk/support/request/RequestModule;

    invoke-direct {v2, p1}, Lzendesk/support/request/RequestModule;-><init>(Lzendesk/commonui/p;)V

    .line 4
    invoke-interface {v1, v2}, Lzendesk/support/SupportSdkComponent;->plus(Lzendesk/support/request/RequestModule;)Lzendesk/support/request/RequestComponent;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/RequestActivity;->requestComponent:Lzendesk/support/request/RequestComponent;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object p1

    iget-object v1, p0, Lzendesk/support/request/RequestActivity;->requestComponent:Lzendesk/support/request/RequestComponent;

    invoke-static {p1, v1}, Lzendesk/support/request/HeadlessFragment;->install(Landroidx/fragment/app/n;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 6
    :goto_0
    iget-object p1, p0, Lzendesk/support/request/RequestActivity;->requestComponent:Lzendesk/support/request/RequestComponent;

    invoke-interface {p1, p0}, Lzendesk/support/request/RequestComponent;->inject(Lzendesk/support/request/RequestActivity;)V

    return v0
.end method

.method private restoreState(Landroid/os/Bundle;)Lt/a/o;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "saved_state"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lt/a/o;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->requestRouter:Lzendesk/support/request/ComponentRequestRouter;

    invoke-virtual {v0}, Lzendesk/support/request/ComponentRequestRouter;->getCurrentScreen()Lzendesk/support/request/RequestView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lzendesk/support/request/RequestView;->hasUnsavedInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroidx/appcompat/app/b$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    sget v1, Lg/k/c/j;->i:I

    .line 4
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->p(I)Landroidx/appcompat/app/b$a;

    sget v1, Lg/k/c/j;->f:I

    .line 5
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->g(I)Landroidx/appcompat/app/b$a;

    sget v1, Lg/k/c/j;->h:I

    new-instance v2, Lzendesk/support/request/RequestActivity$2;

    invoke-direct {v2, p0}, Lzendesk/support/request/RequestActivity$2;-><init>(Lzendesk/support/request/RequestActivity;)V

    .line 6
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/b$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    sget v1, Lg/k/c/j;->g:I

    new-instance v2, Lzendesk/support/request/RequestActivity$1;

    invoke-direct {v2, p0}, Lzendesk/support/request/RequestActivity$1;-><init>(Lzendesk/support/request/RequestActivity;)V

    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/b$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->s()Landroidx/appcompat/app/b;

    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lg/k/c/k;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 3
    sget v0, Lg/k/c/h;->b:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->setContentView(I)V

    .line 4
    invoke-static {p0}, Lzendesk/belvedere/b;->b(Landroidx/appcompat/app/c;)Lzendesk/belvedere/e;

    .line 5
    invoke-direct {p0}, Lzendesk/support/request/RequestActivity;->initViews()V

    .line 6
    sget-object v0, Lzendesk/support/SdkDependencyProvider;->INSTANCE:Lzendesk/support/SdkDependencyProvider;

    invoke-virtual {v0}, Lzendesk/support/SdkDependencyProvider;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RequestActivity"

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Zendesk is not initialized or no identity was set. Make sure Zendesk.INSTANCE.init(...), Zendesk.INSTANCE.setIdentity(...), Support.INSTANCE.init(...) was called "

    .line 7
    invoke-static {v2, v0, p1}, Lg/k/b/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-class v3, Lzendesk/support/request/RequestUiConfig;

    invoke-static {v0, v3}, Lzendesk/commonui/q;->f(Landroid/os/Bundle;Ljava/lang/Class;)Lzendesk/commonui/p;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/RequestUiConfig;

    if-nez v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "No configuration found. Please use RequestActivity.builder()"

    .line 10
    invoke-static {v2, v0, p1}, Lg/k/b/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 12
    :cond_1
    new-instance v1, Lzendesk/support/request/RequestActivity$RefreshRequestActionHandler;

    invoke-virtual {v0}, Lzendesk/support/request/RequestUiConfig;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lzendesk/support/request/RequestActivity$RefreshRequestActionHandler;-><init>(Lzendesk/support/request/RequestActivity;Ljava/lang/String;)V

    iput-object v1, p0, Lzendesk/support/request/RequestActivity;->refreshActionHandler:Lzendesk/support/request/RequestActivity$RefreshRequestActionHandler;

    .line 13
    invoke-direct {p0, p1, v0}, Lzendesk/support/request/RequestActivity;->initializeStoreAndDependencies(Landroid/os/Bundle;Lzendesk/support/request/RequestUiConfig;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iget-object v1, p0, Lzendesk/support/request/RequestActivity;->headlessComponentListener:Lzendesk/support/request/HeadlessComponentListener;

    iget-object v2, p0, Lzendesk/support/request/RequestActivity;->store:Lt/a/q;

    invoke-virtual {v1, v2}, Lzendesk/support/request/HeadlessComponentListener;->startListening(Lt/a/q;)V

    .line 15
    iget-object v1, p0, Lzendesk/support/request/RequestActivity;->store:Lt/a/q;

    iget-object v2, p0, Lzendesk/support/request/RequestActivity;->af:Lzendesk/support/request/ActionFactory;

    invoke-virtual {v2, v0}, Lzendesk/support/request/ActionFactory;->installStartConfigAsync(Lzendesk/support/request/RequestUiConfig;)Lt/a/a;

    move-result-object v0

    invoke-interface {v1, v0}, Lt/a/f;->c(Lt/a/a;)V

    .line 16
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->store:Lt/a/q;

    iget-object v1, p0, Lzendesk/support/request/RequestActivity;->af:Lzendesk/support/request/ActionFactory;

    invoke-virtual {v1}, Lzendesk/support/request/ActionFactory;->loadSettingsAsync()Lt/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lt/a/f;->c(Lt/a/a;)V

    .line 17
    :cond_2
    invoke-direct {p0, p1}, Lzendesk/support/request/RequestActivity;->bindComponents(Z)Lt/a/t;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/RequestActivity;->subscription:Lt/a/t;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->requestRouter:Lzendesk/support/request/ComponentRequestRouter;

    invoke-virtual {v0}, Lzendesk/support/request/ComponentRequestRouter;->getCurrentScreen()Lzendesk/support/request/RequestView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lzendesk/support/request/RequestView;->inflateMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->requestRouter:Lzendesk/support/request/ComponentRequestRouter;

    invoke-virtual {v0}, Lzendesk/support/request/ComponentRequestRouter;->getCurrentScreen()Lzendesk/support/request/RequestView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lzendesk/support/request/RequestView;->onOptionsItemClicked(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/e;->onPause()V

    .line 2
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->store:Lt/a/q;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lzendesk/support/request/RequestActivity;->af:Lzendesk/support/request/ActionFactory;

    invoke-virtual {v1}, Lzendesk/support/request/ActionFactory;->androidOnPause()Lt/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lt/a/f;->c(Lt/a/a;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->subscription:Lt/a/t;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lt/a/t;->c()V

    .line 6
    :cond_1
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p0, Lzendesk/support/request/RequestActivity;->refreshActionHandler:Lzendesk/support/request/RequestActivity$RefreshRequestActionHandler;

    invoke-interface {v0, v1}, Lzendesk/core/ActionHandlerRegistry;->remove(Lzendesk/core/ActionHandler;)V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/e;->onResume()V

    .line 2
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->store:Lt/a/q;

    iget-object v1, p0, Lzendesk/support/request/RequestActivity;->af:Lzendesk/support/request/ActionFactory;

    invoke-virtual {v1}, Lzendesk/support/request/ActionFactory;->androidOnResume()Lt/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lt/a/f;->c(Lt/a/a;)V

    .line 3
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->subscription:Lt/a/t;

    invoke-interface {v0}, Lt/a/t;->b()V

    .line 4
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->subscription:Lt/a/t;

    invoke-interface {v0}, Lt/a/t;->a()V

    .line 5
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    iget-object v1, p0, Lzendesk/support/request/RequestActivity;->refreshActionHandler:Lzendesk/support/request/RequestActivity$RefreshRequestActionHandler;

    invoke-interface {v0, v1}, Lzendesk/core/ActionHandlerRegistry;->add(Lzendesk/core/ActionHandler;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->store:Lt/a/q;

    invoke-interface {v0}, Lt/a/j;->getState()Lt/a/o;

    move-result-object v0

    const-string v1, "saved_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
