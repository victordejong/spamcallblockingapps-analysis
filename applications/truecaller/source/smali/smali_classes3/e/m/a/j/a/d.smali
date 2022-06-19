.class public Le/m/a/j/a/d;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Le/m/a/j/a/c$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/j/a/d$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/a/j/a/d$a;

.field public b:Landroid/os/Bundle;

.field public c:Le/m/a/j/a/g;

.field public d:Ljava/lang/String;

.field public e:Le/m/a/j/a/c$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Le/m/a/j/a/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/m/a/j/a/d$a;-><init>(Le/m/a/j/a/d;B)V

    iput-object v0, p0, Le/m/a/j/a/d;->a:Le/m/a/j/a/d$a;

    return-void
.end method


# virtual methods
.method public final OA()V
    .locals 7

    iget-object v0, p0, Le/m/a/j/a/d;->c:Le/m/a/j/a/g;

    if-eqz v0, :cond_2

    iget-object v1, p0, Le/m/a/j/a/d;->e:Le/m/a/j/a/c$a;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Le/m/a/j/a/g;->k:Z

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v2

    iget-object v3, p0, Le/m/a/j/a/d;->d:Ljava/lang/String;

    iget-object v4, p0, Le/m/a/j/a/d;->e:Le/m/a/j/a/c$a;

    iget-object v5, p0, Le/m/a/j/a/d;->b:Landroid/os/Bundle;

    .line 3
    iget-object v6, v0, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    if-nez v6, :cond_1

    iget-object v6, v0, Le/m/a/j/a/g;->j:Le/m/a/j/a/c$a;

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "activity cannot be null"

    invoke-static {v2, v6}, Ln3/g0/y;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "provider cannot be null"

    invoke-static {p0, v6}, Ln3/g0/y;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p0, v0, Le/m/a/j/a/g;->h:Le/m/a/j/a/c$c;

    const-string v6, "listener cannot be null"

    invoke-static {v4, v6}, Ln3/g0/y;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v0, Le/m/a/j/a/g;->j:Le/m/a/j/a/c$a;

    iput-object v5, v0, Le/m/a/j/a/g;->i:Landroid/os/Bundle;

    iget-object v4, v0, Le/m/a/j/a/g;->g:Le/m/a/j/a/h/h;

    .line 4
    iget-object v5, v4, Le/m/a/j/a/h/h;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, v4, Le/m/a/j/a/h/h;->b:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    sget-object v1, Le/m/a/j/a/h/a;->a:Le/m/a/j/a/h/a;

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Le/m/a/j/a/e;

    invoke-direct {v5, v0, v2}, Le/m/a/j/a/e;-><init>(Le/m/a/j/a/g;Landroid/app/Activity;)V

    new-instance v2, Le/m/a/j/a/f;

    invoke-direct {v2, v0}, Le/m/a/j/a/f;-><init>(Le/m/a/j/a/g;)V

    invoke-virtual {v1, v4, v3, v5, v2}, Le/m/a/j/a/h/a;->a(Landroid/content/Context;Ljava/lang/String;Le/m/a/j/a/h/m$a;Le/m/a/j/a/h/m$b;)Le/m/a/j/a/h/c;

    move-result-object v1

    iput-object v1, v0, Le/m/a/j/a/g;->d:Le/m/a/j/a/h/c;

    invoke-interface {v1}, Le/m/a/j/a/h/m;->e()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Le/m/a/j/a/d;->b:Landroid/os/Bundle;

    iput-object v0, p0, Le/m/a/j/a/d;->e:Le/m/a/j/a/c$a;

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "YouTubePlayerSupportFragment.KEY_PLAYER_VIEW_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Le/m/a/j/a/d;->b:Landroid/os/Bundle;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    new-instance p1, Le/m/a/j/a/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p2

    iget-object p3, p0, Le/m/a/j/a/d;->a:Le/m/a/j/a/d$a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1, p3}, Le/m/a/j/a/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILe/m/a/j/a/g$b;)V

    iput-object p1, p0, Le/m/a/j/a/d;->c:Le/m/a/j/a/g;

    invoke-virtual {p0}, Le/m/a/j/a/d;->OA()V

    iget-object p1, p0, Le/m/a/j/a/d;->c:Le/m/a/j/a/g;

    return-object p1
.end method

.method public onDestroy()V
    .locals 4

    iget-object v0, p0, Le/m/a/j/a/d;->c:Le/m/a/j/a/g;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    iget-object v1, p0, Le/m/a/j/a/d;->c:Le/m/a/j/a/g;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1
    :goto_1
    iget-object v3, v1, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    if-eqz v3, :cond_2

    .line 2
    :try_start_0
    iget-object v3, v3, Le/m/a/j/a/h/l;->b:Le/m/a/j/a/h/e;

    invoke-interface {v3, v0}, Le/m/a/j/a/h/e;->A1(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iput-boolean v2, v1, Le/m/a/j/a/g;->l:Z

    iget-object v1, v1, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Le/m/a/j/a/h/l;->a(Z)V

    goto :goto_2

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Le/m/a/j/a/h/j;

    invoke-direct {v1, v0}, Le/m/a/j/a/h/j;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 5
    :cond_2
    :goto_2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    iget-object v0, p0, Le/m/a/j/a/d;->c:Le/m/a/j/a/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    const/4 v2, 0x1

    .line 1
    iput-boolean v2, v0, Le/m/a/j/a/g;->l:Z

    iget-object v0, v0, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Le/m/a/j/a/h/l;->a(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/m/a/j/a/d;->c:Le/m/a/j/a/g;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Le/m/a/j/a/d;->c:Le/m/a/j/a/g;

    .line 1
    iget-object v0, v0, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, v0, Le/m/a/j/a/h/l;->b:Le/m/a/j/a/h/e;

    invoke-interface {v0}, Le/m/a/j/a/h/e;->t()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Le/m/a/j/a/h/j;

    invoke-direct {v1, v0}, Le/m/a/j/a/h/j;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 3
    :cond_0
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Le/m/a/j/a/d;->c:Le/m/a/j/a/g;

    .line 1
    iget-object v0, v0, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, v0, Le/m/a/j/a/h/l;->b:Le/m/a/j/a/h/e;

    invoke-interface {v0}, Le/m/a/j/a/h/e;->p()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Le/m/a/j/a/h/j;

    invoke-direct {v1, v0}, Le/m/a/j/a/h/j;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Le/m/a/j/a/d;->c:Le/m/a/j/a/g;

    if-eqz v0, :cond_1

    .line 1
    iget-object v1, v0, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    if-nez v1, :cond_0

    iget-object v0, v0, Le/m/a/j/a/g;->i:Landroid/os/Bundle;

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, v1, Le/m/a/j/a/h/l;->b:Le/m/a/j/a/h/e;

    invoke-interface {v0}, Le/m/a/j/a/h/e;->F()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Le/m/a/j/a/h/j;

    invoke-direct {v0, p1}, Le/m/a/j/a/h/j;-><init>(Landroid/os/RemoteException;)V

    throw v0

    .line 3
    :cond_1
    iget-object v0, p0, Le/m/a/j/a/d;->b:Landroid/os/Bundle;

    :goto_0
    const-string v1, "YouTubePlayerSupportFragment.KEY_PLAYER_VIEW_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Le/m/a/j/a/d;->c:Le/m/a/j/a/g;

    .line 1
    iget-object v0, v0, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, v0, Le/m/a/j/a/h/l;->b:Le/m/a/j/a/h/e;

    invoke-interface {v0}, Le/m/a/j/a/h/e;->m()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Le/m/a/j/a/h/j;

    invoke-direct {v1, v0}, Le/m/a/j/a/h/j;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Le/m/a/j/a/d;->c:Le/m/a/j/a/g;

    .line 1
    iget-object v0, v0, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, v0, Le/m/a/j/a/h/l;->b:Le/m/a/j/a/h/e;

    invoke-interface {v0}, Le/m/a/j/a/h/e;->x()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Le/m/a/j/a/h/j;

    invoke-direct {v1, v0}, Le/m/a/j/a/h/j;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 3
    :cond_0
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method
