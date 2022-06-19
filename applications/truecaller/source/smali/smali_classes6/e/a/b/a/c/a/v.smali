.class public final Le/a/b/a/c/a/v;
.super Ln3/r/a/d0;
.source "SourceFile"


# instance fields
.field public final j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 3

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Ln3/r/a/d0;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 3
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Le/a/b/a/c/a/v;->j:Landroid/util/SparseArray;

    const/4 p1, 0x5

    new-array p1, p1, [Landroidx/fragment/app/Fragment;

    .line 4
    new-instance v1, Le/a/b/a/c/a/a/h;

    invoke-direct {v1}, Le/a/b/a/c/a/a/h;-><init>()V

    const/4 v2, 0x0

    aput-object v1, p1, v2

    .line 5
    new-instance v1, Le/a/b/a/c/a/a/e;

    invoke-direct {v1}, Le/a/b/a/c/a/a/e;-><init>()V

    aput-object v1, p1, v0

    .line 6
    new-instance v0, Le/a/b/a/c/a/a/k;

    invoke-direct {v0}, Le/a/b/a/c/a/a/k;-><init>()V

    const/4 v1, 0x2

    aput-object v0, p1, v1

    .line 7
    new-instance v0, Le/a/b/a/c/a/a/j;

    invoke-direct {v0}, Le/a/b/a/c/a/a/j;-><init>()V

    const/4 v1, 0x3

    aput-object v0, p1, v1

    .line 8
    new-instance v0, Le/a/b/a/c/a/a/c;

    invoke-direct {v0}, Le/a/b/a/c/a/a/c;-><init>()V

    const/4 v1, 0x4

    aput-object v0, p1, v1

    .line 9
    invoke-static {p1}, Ls1/u/i;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/a/b/a/c/a/v;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "container"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "object"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Le/a/b/a/c/a/v;->j:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 3
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 4
    iget-object p1, p0, Ln3/r/a/d0;->e:Ln3/r/a/f0;

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Ln3/r/a/d0;->c:Landroidx/fragment/app/FragmentManager;

    .line 6
    new-instance v0, Ln3/r/a/a;

    invoke-direct {v0, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 7
    iput-object v0, p0, Ln3/r/a/d0;->e:Ln3/r/a/f0;

    .line 8
    :cond_0
    :goto_0
    iget-object p1, p0, Ln3/r/a/d0;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gt p1, p2, :cond_1

    .line 9
    iget-object p1, p0, Ln3/r/a/d0;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Ln3/r/a/d0;->f:Ljava/util/ArrayList;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Ln3/r/a/d0;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, p3}, Landroidx/fragment/app/FragmentManager;->l0(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 12
    :goto_1
    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Ln3/r/a/d0;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Ln3/r/a/d0;->e:Ln3/r/a/f0;

    invoke-virtual {p1, p3}, Ln3/r/a/f0;->l(Landroidx/fragment/app/Fragment;)Ln3/r/a/f0;

    .line 15
    iget-object p1, p0, Ln3/r/a/d0;->h:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    iput-object v0, p0, Ln3/r/a/d0;->h:Landroidx/fragment/app/Fragment;

    :cond_3
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/a/c/a/v;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public f(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    const-string v0, "container"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ln3/r/a/d0;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 3
    iget-object v0, p0, Ln3/r/a/d0;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/r/a/d0;->e:Ln3/r/a/f0;

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Ln3/r/a/d0;->c:Landroidx/fragment/app/FragmentManager;

    .line 6
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, v0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 7
    iput-object v1, p0, Ln3/r/a/d0;->e:Ln3/r/a/f0;

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/b/a/c/a/v;->k:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 9
    iget-object v1, p0, Ln3/r/a/d0;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_2

    .line 10
    iget-object v1, p0, Ln3/r/a/d0;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment$SavedState;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V

    .line 12
    :cond_2
    :goto_0
    iget-object v1, p0, Ln3/r/a/d0;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_3

    .line 13
    iget-object v1, p0, Ln3/r/a/d0;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 15
    iget v2, p0, Ln3/r/a/d0;->d:I

    if-nez v2, :cond_4

    .line 16
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 17
    :cond_4
    iget-object v1, p0, Ln3/r/a/d0;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v1, p0, Ln3/r/a/d0;->e:Ln3/r/a/f0;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Ln3/r/a/f0;->b(ILandroidx/fragment/app/Fragment;)Ln3/r/a/f0;

    .line 19
    iget p1, p0, Ln3/r/a/d0;->d:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 20
    iget-object p1, p0, Ln3/r/a/d0;->e:Ln3/r/a/f0;

    sget-object v1, Ln3/v/u$b;->d:Ln3/v/u$b;

    invoke-virtual {p1, v0, v1}, Ln3/r/a/f0;->p(Landroidx/fragment/app/Fragment;Ln3/v/u$b;)Ln3/r/a/f0;

    .line 21
    :cond_5
    :goto_1
    iget-object p1, p0, Le/a/b/a/c/a/v;->j:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method
