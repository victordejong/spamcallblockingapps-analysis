.class public Ln3/v/r0;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/v/r0$b;,
        Ln3/v/r0$a;
    }
.end annotation


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:Ln3/v/r0$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ln3/v/u$a;)V
    .locals 2

    .line 1
    instance-of v0, p0, Ln3/v/d0;

    const-string v1, "handleLifecycleEvent"

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ln3/v/d0;

    invoke-interface {p0}, Ln3/v/d0;->getLifecycle()Ln3/v/c0;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v1}, Ln3/v/c0;->d(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ln3/v/u$a;->a()Ln3/v/u$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln3/v/c0;->g(Ln3/v/u$b;)V

    return-void

    .line 5
    :cond_0
    instance-of v0, p0, Ln3/v/b0;

    if-eqz v0, :cond_1

    .line 6
    check-cast p0, Ln3/v/b0;

    invoke-interface {p0}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object p0

    .line 7
    instance-of v0, p0, Ln3/v/c0;

    if-eqz v0, :cond_1

    .line 8
    check-cast p0, Ln3/v/c0;

    .line 9
    invoke-virtual {p0, v1}, Ln3/v/c0;->d(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ln3/v/u$a;->a()Ln3/v/u$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln3/v/c0;->g(Ln3/v/u$b;)V

    :cond_1
    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Ln3/v/r0$b;->registerIn(Landroid/app/Activity;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Ln3/v/r0;

    invoke-direct {v2}, Ln3/v/r0;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 6
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Ln3/v/u$a;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Ln3/v/r0;->a(Landroid/app/Activity;Ln3/v/u$a;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Ln3/v/u$a;->ON_CREATE:Ln3/v/u$a;

    invoke-virtual {p0, p1}, Ln3/v/r0;->b(Ln3/v/u$a;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    sget-object v0, Ln3/v/u$a;->ON_DESTROY:Ln3/v/u$a;

    invoke-virtual {p0, v0}, Ln3/v/r0;->b(Ln3/v/u$a;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ln3/v/r0;->a:Ln3/v/r0$a;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2
    sget-object v0, Ln3/v/u$a;->ON_PAUSE:Ln3/v/u$a;

    invoke-virtual {p0, v0}, Ln3/v/r0;->b(Ln3/v/u$a;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Ln3/v/r0;->a:Ln3/v/r0$a;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Ln3/v/p0$b;

    .line 4
    iget-object v0, v0, Ln3/v/p0$b;->a:Ln3/v/p0;

    invoke-virtual {v0}, Ln3/v/p0;->a()V

    .line 5
    :cond_0
    sget-object v0, Ln3/v/u$a;->ON_RESUME:Ln3/v/u$a;

    invoke-virtual {p0, v0}, Ln3/v/r0;->b(Ln3/v/u$a;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Ln3/v/r0;->a:Ln3/v/r0$a;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Ln3/v/p0$b;

    .line 4
    iget-object v0, v0, Ln3/v/p0$b;->a:Ln3/v/p0;

    invoke-virtual {v0}, Ln3/v/p0;->b()V

    .line 5
    :cond_0
    sget-object v0, Ln3/v/u$a;->ON_START:Ln3/v/u$a;

    invoke-virtual {p0, v0}, Ln3/v/r0;->b(Ln3/v/u$a;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2
    sget-object v0, Ln3/v/u$a;->ON_STOP:Ln3/v/u$a;

    invoke-virtual {p0, v0}, Ln3/v/r0;->b(Ln3/v/u$a;)V

    return-void
.end method
