.class public abstract Le/a/e/w0;
.super Ln3/b/a/h;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/ui/components/ScrimInsetsFrameLayout$a;


# instance fields
.field public a:Landroidx/fragment/app/Fragment;

.field public b:Le/a/h5/w;

.field public c:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/e/w0;->qa()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/e/w0;->a:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Le/a/e/y0;

    if-eqz v1, :cond_1

    check-cast v0, Le/a/e/y0;

    .line 3
    invoke-interface {v0}, Le/a/e/y0;->or()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    :try_start_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-static {p0}, Le/a/j4/b/a/h;->D(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-super {p0, p1}, Ln3/b/a/h;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Le/a/j4/b/a/h;->D(Landroid/content/Context;)V

    if-nez p1, :cond_3

    .line 3
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object p1

    const-string v1, "AppUserInteraction.Context"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppUserInteraction.Action"

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-static {p1, v1, v2}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "openApp"

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/truecaller/ui/ContactsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "contactsIcon"

    .line 12
    invoke-static {p1, v0, v1}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "appIcon"

    .line 13
    invoke-static {p1, v0, v1}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_3
    :goto_0
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/j2;->u6()Le/a/h5/w;

    move-result-object p1

    iput-object p1, p0, Le/a/e/w0;->b:Le/a/h5/w;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onPause()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ln3/b/a/h;->onPostCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0392

    .line 2
    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->setOnInsetsCallback(Lcom/truecaller/ui/components/ScrimInsetsFrameLayout$a;)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/a/e/w0;->ta(Landroid/view/Menu;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onResume()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Le/a/e/w0;->ra()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/e/w0;->b:Le/a/h5/w;

    invoke-interface {v0}, Le/a/h5/w;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/truecaller/permission/RequiredPermissionsActivity;->qa(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Ln3/b/a/h;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStart()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStop()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public onSupportActionModeStarted(Ln3/b/e/a;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ln3/b/e/a;->e()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/e/w0;->ta(Landroid/view/Menu;)V

    .line 2
    invoke-super {p0, p1}, Ln3/b/a/h;->onSupportActionModeStarted(Ln3/b/e/a;)V

    return-void
.end method

.method public pa()I
    .locals 1

    const v0, 0x7f040729

    return v0
.end method

.method public qa()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ra()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public sa(Le/a/e/x0;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    .line 2
    new-instance v0, Ln3/r/a/a;

    invoke-direct {v0, p2}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const p2, 0x7f0a0485

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p2, p1, v1}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    invoke-virtual {v0}, Ln3/r/a/a;->f()I

    .line 4
    iput-object p1, p0, Le/a/e/w0;->a:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/w0;->c:Landroidx/appcompat/widget/Toolbar;

    .line 2
    invoke-super {p0, p1}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method

.method public final ta(Landroid/view/Menu;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Le/a/e/w0;->pa()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 4
    sget v3, Le/a/o5/j0;->b:I

    if-nez v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {p0, v3, v0}, Le/a/p5/s0/g;->p1(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 7
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
