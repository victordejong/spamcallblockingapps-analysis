.class public Lzendesk/support/guide/HelpCenterActivity;
.super Landroidx/appcompat/app/c;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/guide/HelpCenterMvp$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;
    }
.end annotation


# instance fields
.field actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

.field private contactUsButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private conversationsMenuItem:Landroid/view/MenuItem;

.field private errorSnackbar:Lcom/google/android/material/snackbar/Snackbar;

.field helpCenterProvider:Lzendesk/support/HelpCenterProvider;

.field private helpCenterUiConfig:Lzendesk/support/guide/HelpCenterUiConfig;

.field private loadingView:Landroid/view/View;

.field networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

.field private presenter:Lzendesk/support/guide/HelpCenterMvp$Presenter;

.field private searchViewMenuItem:Landroid/view/MenuItem;

.field settingsProvider:Lzendesk/support/SupportSettingsProvider;

.field private snackbarStatus:Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/c;-><init>()V

    .line 2
    sget-object v0, Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;->NONE:Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    iput-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->snackbarStatus:Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/guide/HelpCenterActivity;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    invoke-direct {p0}, Lzendesk/support/guide/HelpCenterActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/guide/HelpCenterActivity;)Lzendesk/support/guide/HelpCenterMvp$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/guide/HelpCenterActivity;->presenter:Lzendesk/support/guide/HelpCenterMvp$Presenter;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/support/guide/HelpCenterActivity;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/guide/HelpCenterActivity;->errorSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    return-object p0
.end method

.method static synthetic access$302(Lzendesk/support/guide/HelpCenterActivity;Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;)Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/guide/HelpCenterActivity;->snackbarStatus:Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    return-object p1
.end method

.method private addFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object v0

    sget v1, Lg/k/c/f;->y:I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/y;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/y;

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/y;->i()I

    return-void
.end method

.method private addOnBackStackChangedListener()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    new-instance v1, Lzendesk/support/guide/HelpCenterActivity$2;

    invoke-direct {v1, p0}, Lzendesk/support/guide/HelpCenterActivity$2;-><init>(Lzendesk/support/guide/HelpCenterActivity;)V

    .line 2
    invoke-virtual {v0, v1}, Landroidx/fragment/app/n;->i(Landroidx/fragment/app/n$o;)V

    return-void
.end method

.method public static builder()Lzendesk/support/guide/HelpCenterUiConfig$Builder;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/guide/HelpCenterUiConfig$Builder;

    invoke-direct {v0}, Lzendesk/support/guide/HelpCenterUiConfig$Builder;-><init>()V

    return-object v0
.end method

.method private getCurrentFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    sget v1, Lg/k/c/f;->y:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/n;->i0(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private getSearchFragment()Lzendesk/support/guide/HelpSearchFragment;
    .locals 3

    .line 1
    invoke-direct {p0}, Lzendesk/support/guide/HelpCenterActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lzendesk/support/guide/HelpSearchFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "HelpCenterActivity"

    const-string v2, "showSearchResults: current fragment is a HelpSearchFragment"

    .line 2
    invoke-static {v1, v2, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Lzendesk/support/guide/HelpCenterActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lzendesk/support/guide/HelpSearchFragment;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->helpCenterUiConfig:Lzendesk/support/guide/HelpCenterUiConfig;

    iget-object v1, p0, Lzendesk/support/guide/HelpCenterActivity;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    .line 5
    invoke-static {v0, v1}, Lzendesk/support/guide/HelpSearchFragment;->newInstance(Lzendesk/support/guide/HelpCenterUiConfig;Lzendesk/support/HelpCenterProvider;)Lzendesk/support/guide/HelpSearchFragment;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object v1

    sget v2, Lg/k/c/f;->y:I

    .line 8
    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/y;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Landroidx/fragment/app/y;->g(Ljava/lang/String;)Landroidx/fragment/app/y;

    .line 10
    invoke-virtual {v1}, Landroidx/fragment/app/y;->i()I

    return-object v0
.end method

.method private initToolbar()Landroidx/appcompat/app/a;
    .locals 3

    .line 1
    sget v0, Lg/k/c/f;->Z0:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 3
    sget v1, Lg/k/c/f;->Y0:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/c;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getSupportActionBar()Landroidx/appcompat/app/a;

    move-result-object v0

    return-object v0
.end method

.method private noFragmentAdded()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lzendesk/support/guide/HelpCenterActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showCreateRequest(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    const-string v1, "action_contact_option"

    invoke-interface {v0, v1}, Lzendesk/core/ActionHandlerRegistry;->handlerByAction(Ljava/lang/String;)Lzendesk/core/ActionHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lzendesk/core/ActionHandler;->getActionDescription()Lzendesk/core/ActionDescription;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lzendesk/core/ActionDescription;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "HelpCenterActivity"

    const-string v3, "No Deflection ActionHandler Available, opening %s"

    .line 4
    invoke-static {v1, v3, v2}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0, p1, p0}, Lzendesk/core/ActionHandler;->handle(Ljava/util/Map;Landroid/content/Context;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public announceContentLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->contactUsButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget v1, Lg/k/c/j;->K:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public clearSearchResults()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lzendesk/support/guide/HelpCenterActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lzendesk/support/guide/HelpSearchFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lzendesk/support/guide/HelpCenterActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lzendesk/support/guide/HelpSearchFragment;

    invoke-virtual {v0}, Lzendesk/support/guide/HelpSearchFragment;->clearResults()V

    :cond_0
    return-void
.end method

.method public dismissError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->errorSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->s()V

    .line 3
    :cond_0
    sget-object v0, Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;->NONE:Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    iput-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->snackbarStatus:Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    return-void
.end method

.method public exitActivity()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public hideLoadingState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->loadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isShowingHelp()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lzendesk/support/guide/HelpCenterActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lzendesk/support/guide/HelpCenterFragment;

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "HelpCenterActivity"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-ge p1, v3, :cond_0

    .line 3
    invoke-static {}, Landroidx/appcompat/app/e;->p()Z

    move-result p1

    if-nez p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v3, "Setting AppCompatDelegate.setCompatVectorFromResourcesEnabled() to true"

    .line 4
    invoke-static {v0, v3, p1}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-static {v1}, Landroidx/appcompat/app/e;->B(Z)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 7
    sget v3, Lg/k/c/k;->a:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 8
    sget v3, Lg/k/c/k;->b:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 9
    sget p1, Lg/k/c/h;->a:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/c;->setContentView(I)V

    .line 10
    sget-object p1, Lzendesk/support/SdkDependencyProvider;->INSTANCE:Lzendesk/support/SdkDependencyProvider;

    invoke-virtual {p1}, Lzendesk/support/SdkDependencyProvider;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "Zendesk is not initialized or no identity was set. Make sure Zendesk.INSTANCE.init(...), Zendesk.INSTANCE.setIdentity(...), Support.INSTANCE.init(...) was called "

    .line 11
    invoke-static {v0, v1, p1}, Lg/k/b/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-class v4, Lzendesk/support/guide/HelpCenterUiConfig;

    invoke-static {v3, v4}, Lzendesk/commonui/q;->f(Landroid/os/Bundle;Ljava/lang/Class;)Lzendesk/commonui/p;

    move-result-object v3

    check-cast v3, Lzendesk/support/guide/HelpCenterUiConfig;

    iput-object v3, p0, Lzendesk/support/guide/HelpCenterActivity;->helpCenterUiConfig:Lzendesk/support/guide/HelpCenterUiConfig;

    if-nez v3, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "No configuration found. Please use HelpCenterActivity.builder()"

    .line 14
    invoke-static {v0, v1, p1}, Lg/k/b/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 16
    :cond_2
    invoke-virtual {p1}, Lzendesk/support/SdkDependencyProvider;->provideSupportSdkComponent()Lzendesk/support/SupportSdkComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lzendesk/support/SupportSdkComponent;->inject(Lzendesk/support/guide/HelpCenterActivity;)V

    .line 17
    invoke-direct {p0}, Lzendesk/support/guide/HelpCenterActivity;->initToolbar()Landroidx/appcompat/app/a;

    move-result-object p1

    .line 18
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a;->s(Z)V

    .line 19
    sget p1, Lg/k/c/f;->F:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/guide/HelpCenterActivity;->loadingView:Landroid/view/View;

    .line 20
    sget p1, Lg/k/c/f;->v:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p1, p0, Lzendesk/support/guide/HelpCenterActivity;->contactUsButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 21
    new-instance v0, Lzendesk/support/guide/HelpCenterActivity$1;

    invoke-direct {v0, p0}, Lzendesk/support/guide/HelpCenterActivity$1;-><init>(Lzendesk/support/guide/HelpCenterActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    new-instance p1, Lzendesk/support/guide/HelpCenterPresenter;

    new-instance v0, Lzendesk/support/guide/HelpCenterModel;

    iget-object v1, p0, Lzendesk/support/guide/HelpCenterActivity;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    iget-object v2, p0, Lzendesk/support/guide/HelpCenterActivity;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    invoke-direct {v0, v1, v2}, Lzendesk/support/guide/HelpCenterModel;-><init>(Lzendesk/support/HelpCenterProvider;Lzendesk/support/SupportSettingsProvider;)V

    iget-object v1, p0, Lzendesk/support/guide/HelpCenterActivity;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    invoke-direct {p1, p0, v0, v1}, Lzendesk/support/guide/HelpCenterPresenter;-><init>(Lzendesk/support/guide/HelpCenterMvp$View;Lzendesk/support/guide/HelpCenterMvp$Model;Lzendesk/core/NetworkInfoProvider;)V

    iput-object p1, p0, Lzendesk/support/guide/HelpCenterActivity;->presenter:Lzendesk/support/guide/HelpCenterMvp$Presenter;

    .line 23
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->helpCenterUiConfig:Lzendesk/support/guide/HelpCenterUiConfig;

    invoke-interface {p1, v0}, Lzendesk/support/guide/HelpCenterMvp$Presenter;->init(Lzendesk/support/guide/HelpCenterUiConfig;)V

    .line 24
    invoke-direct {p0}, Lzendesk/support/guide/HelpCenterActivity;->addOnBackStackChangedListener()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lg/k/c/i;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    sget v0, Lg/k/c/f;->z:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->conversationsMenuItem:Landroid/view/MenuItem;

    .line 3
    sget v0, Lg/k/c/f;->A:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/guide/HelpCenterActivity;->searchViewMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lzendesk/support/guide/HelpCenterActivity;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    invoke-interface {p1}, Lzendesk/core/NetworkInfoProvider;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lzendesk/support/guide/HelpCenterActivity;->searchViewMenuItem:Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 6
    :cond_0
    iget-object p1, p0, Lzendesk/support/guide/HelpCenterActivity;->searchViewMenuItem:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getImeOptions()I

    move-result v0

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setImeOptions(I)V

    .line 8
    new-instance v0, Lzendesk/support/guide/HelpCenterActivity$3;

    invoke-direct {v0, p0}, Lzendesk/support/guide/HelpCenterActivity$3;-><init>(Lzendesk/support/guide/HelpCenterActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$l;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    const v1, 0x102002c

    if-ne p1, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return v0

    .line 3
    :cond_0
    sget v1, Lg/k/c/f;->z:I

    if-ne p1, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lzendesk/support/guide/HelpCenterActivity;->showRequestList()V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/e;->onPause()V

    .line 2
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->presenter:Lzendesk/support/guide/HelpCenterMvp$Presenter;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$Presenter;->onPause()V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->presenter:Lzendesk/support/guide/HelpCenterMvp$Presenter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lzendesk/support/guide/HelpCenterActivity;->searchViewMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$Presenter;->shouldShowSearchMenuItem()Z

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3
    :cond_0
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->presenter:Lzendesk/support/guide/HelpCenterMvp$Presenter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lzendesk/support/guide/HelpCenterActivity;->conversationsMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$Presenter;->shouldShowConversationsMenuItem()Z

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/e;->onResume()V

    .line 2
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->presenter:Lzendesk/support/guide/HelpCenterMvp$Presenter;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lzendesk/support/guide/HelpCenterMvp$Presenter;->onResume(Lzendesk/support/guide/HelpCenterMvp$View;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/c;->onStart()V

    .line 2
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->snackbarStatus:Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    sget-object v1, Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;->NONE:Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->errorSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->N()V

    :cond_0
    return-void
.end method

.method public setSearchEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->searchViewMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public showContactUsButton()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->contactUsButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    return-void
.end method

.method public showContactZendesk()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lzendesk/support/guide/HelpCenterActivity;->helpCenterUiConfig:Lzendesk/support/guide/HelpCenterUiConfig;

    invoke-static {v0, v1}, Lzendesk/commonui/q;->d(Ljava/util/Map;Lzendesk/commonui/p;)V

    .line 3
    iget-object v1, p0, Lzendesk/support/guide/HelpCenterActivity;->helpCenterUiConfig:Lzendesk/support/guide/HelpCenterUiConfig;

    invoke-virtual {v1}, Lzendesk/support/guide/HelpCenterUiConfig;->isDeflectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lzendesk/support/guide/HelpCenterActivity;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    const-string v2, "action_deflection"

    invoke-interface {v1, v2}, Lzendesk/core/ActionHandlerRegistry;->handlerByAction(Ljava/lang/String;)Lzendesk/core/ActionHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "HelpCenterActivity"

    const-string v4, "Opening with deflectionActionHandler"

    .line 5
    invoke-static {v3, v4, v2}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-interface {v1, v0, p0}, Lzendesk/core/ActionHandler;->handle(Ljava/util/Map;Landroid/content/Context;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, v0}, Lzendesk/support/guide/HelpCenterActivity;->showCreateRequest(Ljava/util/Map;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, v0}, Lzendesk/support/guide/HelpCenterActivity;->showCreateRequest(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public showHelp(Lzendesk/support/guide/HelpCenterUiConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lzendesk/support/guide/HelpCenterActivity;->noFragmentAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lzendesk/support/guide/HelpCenterFragment;->newInstance(Lzendesk/support/guide/HelpCenterUiConfig;)Lzendesk/support/guide/HelpCenterFragment;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->presenter:Lzendesk/support/guide/HelpCenterMvp$Presenter;

    invoke-virtual {p1, v0}, Lzendesk/support/guide/HelpCenterFragment;->setPresenter(Lzendesk/support/guide/HelpCenterMvp$Presenter;)V

    .line 4
    invoke-direct {p0, p1}, Lzendesk/support/guide/HelpCenterActivity;->addFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lzendesk/support/guide/HelpCenterActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lzendesk/support/guide/HelpCenterFragment;

    if-eqz p1, :cond_1

    .line 6
    invoke-direct {p0}, Lzendesk/support/guide/HelpCenterActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lzendesk/support/guide/HelpCenterFragment;

    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->presenter:Lzendesk/support/guide/HelpCenterMvp$Presenter;

    invoke-virtual {p1, v0}, Lzendesk/support/guide/HelpCenterFragment;->setPresenter(Lzendesk/support/guide/HelpCenterMvp$Presenter;)V

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->invalidateOptionsMenu()V

    return-void
.end method

.method public showLoadArticleErrorWithRetry(Lzendesk/support/guide/HelpCenterMvp$ErrorType;Lzendesk/core/RetryAction;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "HelpCenterActivity"

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "ErrorType was null, falling back to \'retry\' as label"

    .line 1
    invoke-static {v1, v0, p1}, Lg/k/b/a;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget p1, Lg/k/c/j;->J:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lzendesk/support/guide/HelpCenterActivity$5;->$SwitchMap$zendesk$support$guide$HelpCenterMvp$ErrorType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Unknown or unhandled error type, falling back to error type name as label"

    .line 4
    invoke-static {v1, v2, v0}, Lg/k/b/a;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lg/k/c/j;->B:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    sget p1, Lg/k/c/j;->z:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_2
    sget p1, Lg/k/c/j;->E:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_3
    sget p1, Lg/k/c/j;->A:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_0
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->snackbarStatus:Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    sget-object v1, Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;->NONE:Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    if-ne v0, v1, :cond_4

    .line 10
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->contactUsButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, -0x2

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->Y(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/guide/HelpCenterActivity;->errorSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 11
    sget v0, Lg/k/c/j;->J:I

    new-instance v1, Lzendesk/support/guide/HelpCenterActivity$4;

    invoke-direct {v1, p0, p2}, Lzendesk/support/guide/HelpCenterActivity$4;-><init>(Lzendesk/support/guide/HelpCenterActivity;Lzendesk/core/RetryAction;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->a0(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 12
    iget-object p1, p0, Lzendesk/support/guide/HelpCenterActivity;->errorSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->N()V

    .line 13
    sget-object p1, Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;->CONTENT_ERROR:Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    iput-object p1, p0, Lzendesk/support/guide/HelpCenterActivity;->snackbarStatus:Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    :cond_4
    return-void
.end method

.method public showLoadingState()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lzendesk/support/guide/HelpCenterActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object v0

    .line 5
    invoke-direct {p0}, Lzendesk/support/guide/HelpCenterActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/y;->p(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/y;->i()I

    .line 7
    :cond_0
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->loadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showNoConnectionError()V
    .locals 4

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->snackbarStatus:Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    sget-object v1, Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;->NO_CONNECTION:Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->contactUsButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget v2, Lg/k/c/j;->I:I

    const/4 v3, -0x2

    invoke-static {v0, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->X(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/guide/HelpCenterActivity;->errorSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->N()V

    .line 4
    iput-object v1, p0, Lzendesk/support/guide/HelpCenterActivity;->snackbarStatus:Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    :cond_0
    return-void
.end method

.method public showRequestList()V
    .locals 2

    .line 1
    invoke-static {}, Lzendesk/support/requestlist/RequestListActivity;->builder()Lzendesk/support/requestlist/RequestListUiConfig$Builder;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/guide/HelpCenterActivity;->helpCenterUiConfig:Lzendesk/support/guide/HelpCenterUiConfig;

    .line 2
    invoke-virtual {v1}, Lzendesk/support/guide/HelpCenterUiConfig;->getUiConfigs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lzendesk/support/requestlist/RequestListUiConfig$Builder;->show(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public showSearchResults(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/SearchArticle;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lzendesk/support/guide/HelpCenterActivity;->getSearchFragment()Lzendesk/support/guide/HelpSearchFragment;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2}, Lzendesk/support/guide/HelpSearchFragment;->updateResults(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
