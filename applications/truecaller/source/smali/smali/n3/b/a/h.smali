.class public Ln3/b/a/h;
.super Ln3/r/a/l;
.source "SourceFile"

# interfaces
.implements Ln3/b/a/i;
.implements Ln3/k/a/c0$a;
.implements Ln3/b/a/c$b;


# static fields
.field private static final DELEGATE_TAG:Ljava/lang/String; = "androidx:appcompat"


# instance fields
.field private mDelegate:Ln3/b/a/j;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/r/a/l;-><init>()V

    .line 2
    invoke-direct {p0}, Ln3/b/a/h;->initDelegate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ln3/r/a/l;-><init>(I)V

    .line 4
    invoke-direct {p0}, Ln3/b/a/h;->initDelegate()V

    return-void
.end method

.method private initDelegate()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Ln3/d0/a;

    move-result-object v0

    new-instance v1, Ln3/b/a/h$a;

    invoke-direct {v1, p0}, Ln3/b/a/h$a;-><init>(Ln3/b/a/h;)V

    const-string v2, "androidx:appcompat"

    invoke-virtual {v0, v2, v1}, Ln3/d0/a;->b(Ljava/lang/String;Ln3/d0/a$b;)V

    .line 2
    new-instance v0, Ln3/b/a/h$b;

    invoke-direct {v0, p0}, Ln3/b/a/h$b;-><init>(Ln3/b/a/h;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Ln3/a/d/b;)V

    return-void
.end method

.method private initViewTreeOwners()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Landroidx/lifecycle/runtime/R$id;->view_tree_lifecycle_owner:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 4
    sget v1, Landroidx/lifecycle/viewmodel/R$id;->view_tree_view_model_store_owner:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 6
    sget v1, Landroidx/savedstate/R$id;->view_tree_saved_state_registry_owner:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private performMenuItemShortcut(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;->initViewTreeOwners()V

    .line 2
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ln3/b/a/j;->c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln3/b/a/j;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ln3/b/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Ln3/b/a/a;->k(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Ln3/k/a/f;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln3/b/a/j;->e(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getDelegate()Ln3/b/a/j;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/h;->mDelegate:Ln3/b/a/j;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ln3/b/a/j;->a:Ln3/g/c;

    .line 3
    new-instance v0, Ln3/b/a/k;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1, p0, p0}, Ln3/b/a/k;-><init>(Landroid/content/Context;Landroid/view/Window;Ln3/b/a/i;Ljava/lang/Object;)V

    .line 5
    iput-object v0, p0, Ln3/b/a/h;->mDelegate:Ln3/b/a/j;

    .line 6
    :cond_0
    iget-object v0, p0, Ln3/b/a/h;->mDelegate:Ln3/b/a/j;

    return-object v0
.end method

.method public getDrawerToggleDelegate()Ln3/b/a/c$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v0

    invoke-virtual {v0}, Ln3/b/a/j;->f()Ln3/b/a/c$a;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v0

    invoke-virtual {v0}, Ln3/b/a/j;->h()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/h;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    sget-boolean v1, Ln3/b/f/w0;->a:Z

    :cond_0
    if-nez v0, :cond_1

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSupportActionBar()Ln3/b/a/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v0

    invoke-virtual {v0}, Ln3/b/a/j;->i()Ln3/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->q0(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v0

    invoke-virtual {v0}, Ln3/b/a/j;->k()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Ln3/b/a/h;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4
    iget-object v1, p0, Ln3/b/a/h;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln3/b/a/j;->l(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln3/b/a/h;->onSupportContentChanged()V

    return-void
.end method

.method public onCreateSupportNavigateUpTaskStack(Ln3/k/a/c0;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p0}, Ln3/k/a/c0$a;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->q0(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p1, Ln3/k/a/c0;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 6
    :cond_1
    invoke-virtual {p1, v1}, Ln3/k/a/c0;->b(Landroid/content/ComponentName;)Ln3/k/a/c0;

    .line 7
    iget-object p1, p1, Ln3/k/a/c0;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v0

    invoke-virtual {v0}, Ln3/b/a/j;->n()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Ln3/b/a/h;->performMenuItemShortcut(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Ln3/r/a/l;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    .line 3
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x102002c

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ln3/b/a/a;->d()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Ln3/b/a/h;->onSupportNavigateUp()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onNightModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ln3/r/a/l;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln3/b/a/j;->o(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPostResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onPostResume()V

    .line 2
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v0

    invoke-virtual {v0}, Ln3/b/a/j;->p()V

    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Ln3/k/a/c0;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onStart()V

    .line 2
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v0

    invoke-virtual {v0}, Ln3/b/a/j;->r()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onStop()V

    .line 2
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v0

    invoke-virtual {v0}, Ln3/b/a/j;->s()V

    return-void
.end method

.method public onSupportActionModeFinished(Ln3/b/e/a;)V
    .locals 0

    return-void
.end method

.method public onSupportActionModeStarted(Ln3/b/e/a;)V
    .locals 0

    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Ln3/b/a/h;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Ln3/k/a/c0;

    invoke-direct {v0, p0}, Ln3/k/a/c0;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0, v0}, Ln3/b/a/h;->onCreateSupportNavigateUpTaskStack(Ln3/k/a/c0;)V

    .line 5
    invoke-virtual {p0, v0}, Ln3/b/a/h;->onPrepareSupportNavigateUpTaskStack(Ln3/k/a/c0;)V

    .line 6
    invoke-virtual {v0}, Ln3/k/a/c0;->e()V

    .line 7
    :try_start_0
    sget v0, Ln3/k/a/b;->c:I

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, v0}, Ln3/b/a/h;->supportNavigateUpTo(Landroid/content/Intent;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 2
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object p2

    invoke-virtual {p2, p1}, Ln3/b/a/j;->A(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWindowStartingSupportActionMode(Ln3/b/e/a$a;)Ln3/b/e/a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public openOptionsMenu()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ln3/b/a/a;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;->initViewTreeOwners()V

    .line 2
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln3/b/a/j;->v(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ln3/b/a/h;->initViewTreeOwners()V

    .line 4
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln3/b/a/j;->w(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ln3/b/a/h;->initViewTreeOwners()V

    .line 6
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ln3/b/a/j;->x(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln3/b/a/j;->y(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method

.method public setSupportProgress(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 2
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln3/b/a/j;->z(I)V

    return-void
.end method

.method public startSupportActionMode(Ln3/b/e/a$a;)Ln3/b/e/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln3/b/a/j;->B(Ln3/b/e/a$a;)Ln3/b/e/a;

    move-result-object p1

    return-object p1
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v0

    invoke-virtual {v0}, Ln3/b/a/j;->k()V

    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln3/b/a/j;->u(I)Z

    move-result p1

    return p1
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
