.class public abstract Le/a/r/a0/g;
.super Le/a/r/t/e;
.source "SourceFile"


# instance fields
.field public g:Landroid/content/ContextWrapper;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/r/t/e;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/a/r/a0/g;->h:Z

    return-void
.end method

.method private OA()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/a0/g;->g:Landroid/content/ContextWrapper;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Le/a/r/t/a;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    new-instance v1, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;

    invoke-direct {v1, v0, p0}, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    .line 4
    iput-object v1, p0, Le/a/r/a0/g;->g:Landroid/content/ContextWrapper;

    :cond_0
    return-void
.end method


# virtual methods
.method public PA()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/r/a0/g;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/a/r/a0/g;->h:Z

    .line 3
    invoke-interface {p0}, Lo3/b/b/b;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r/a0/v;

    move-object v1, p0

    check-cast v1, Le/a/r/a0/r;

    invoke-interface {v0, v1}, Le/a/r/a0/v;->J(Le/a/r/a0/r;)V

    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/r/t/a;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/r/a0/g;->g:Landroid/content/ContextWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0}, Le/a/r/a0/g;->OA()V

    .line 3
    iget-object v0, p0, Le/a/r/a0/g;->g:Landroid/content/ContextWrapper;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 4
    invoke-super {p0, p1}, Le/a/r/t/a;->onAttach(Landroid/app/Activity;)V

    .line 5
    iget-object v0, p0, Le/a/r/a0/g;->g:Landroid/content/ContextWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lo3/b/a/c/c/f;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "onAttach called multiple times with different Context! Hilt Fragments should not be retained."

    invoke-static {p1, v1, v0}, Le/q/f/a/d/a;->x(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Le/a/r/a0/g;->OA()V

    .line 7
    invoke-virtual {p0}, Le/a/r/a0/g;->PA()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/a/r/t/a;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Le/a/r/a0/g;->OA()V

    .line 3
    invoke-virtual {p0}, Le/a/r/a0/g;->PA()V

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Le/a/r/t/a;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 2
    new-instance v0, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;

    invoke-direct {v0, p1, p0}, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;-><init>(Landroid/view/LayoutInflater;Landroidx/fragment/app/Fragment;)V

    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method
