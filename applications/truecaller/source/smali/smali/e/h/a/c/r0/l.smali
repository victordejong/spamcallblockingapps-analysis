.class public Le/h/a/c/r0/l;
.super Ln3/r/a/a0;
.source "SourceFile"


# instance fields
.field public final h:[Landroidx/fragment/app/Fragment;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln3/r/a/a0;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/h/a/c/r0/l;->i:Ljava/util/List;

    .line 3
    new-array p1, p2, [Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Le/h/a/c/r0/l;->h:[Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/h/a/c/r0/l;->h:[Landroidx/fragment/app/Fragment;

    array-length v0, v0

    return v0
.end method

.method public d(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Le/h/a/c/r0/l;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public f(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/r/a/a0;->e:Ln3/r/a/f0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/r/a/a0;->c:Landroidx/fragment/app/FragmentManager;

    .line 3
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, v0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 4
    iput-object v1, p0, Ln3/r/a/a0;->e:Ln3/r/a/f0;

    :cond_0
    int-to-long v0, p2

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2, v0, v1}, Ln3/r/a/a0;->m(IJ)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p0, Ln3/r/a/a0;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->K(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 7
    iget-object p1, p0, Ln3/r/a/a0;->e:Ln3/r/a/f0;

    .line 8
    new-instance v0, Ln3/r/a/f0$a;

    const/4 v1, 0x7

    invoke-direct {v0, v1, v2}, Ln3/r/a/f0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p1, v0}, Ln3/r/a/f0;->d(Ln3/r/a/f0$a;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v2, p0, Le/h/a/c/r0/l;->h:[Landroidx/fragment/app/Fragment;

    aget-object v2, v2, p2

    .line 10
    iget-object v4, p0, Ln3/r/a/a0;->e:Ln3/r/a/f0;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    .line 11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1, v0, v1}, Ln3/r/a/a0;->m(IJ)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {v4, v5, v2, p1, v3}, Ln3/r/a/f0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 13
    :goto_0
    iget-object p1, p0, Ln3/r/a/a0;->f:Landroidx/fragment/app/Fragment;

    if-eq v2, p1, :cond_3

    const/4 p1, 0x0

    .line 14
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 15
    iget v0, p0, Ln3/r/a/a0;->d:I

    if-ne v0, v3, :cond_2

    .line 16
    iget-object p1, p0, Ln3/r/a/a0;->e:Ln3/r/a/f0;

    sget-object v0, Ln3/v/u$b;->d:Ln3/v/u$b;

    invoke-virtual {p1, v2, v0}, Ln3/r/a/f0;->p(Landroidx/fragment/app/Fragment;Ln3/v/u$b;)Ln3/r/a/f0;

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 18
    :cond_3
    :goto_1
    iget-object p1, p0, Le/h/a/c/r0/l;->h:[Landroidx/fragment/app/Fragment;

    aput-object v2, p1, p2

    return-object v2
.end method
