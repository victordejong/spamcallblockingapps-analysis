.class public final Le/a/h/b/d/a/a/o;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/d/a/a/m;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Le/a/o2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/o2/r<",
            "Le/a/h/b/d/a/a/s;",
            "Le/a/h/b/d/a/a/p;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/o2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/o2/r<",
            "Le/a/h/b/d/a/a/w;",
            "Le/a/h/b/d/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/o2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/o2/r<",
            "Le/a/h/b/d/a/a/d;",
            "Le/a/h/b/d/a/a/f;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/o2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/o2/r<",
            "Le/a/h/b/d/a/a/i;",
            "Le/a/h/b/d/a/a/k;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/o2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/o2/r<",
            "Le/a/h/b/d/a/a/a0;",
            "Le/a/h/b/d/a/a/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/a/o2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/o2/r<",
            "Le/a/h/b/d/a/a/e0/f;",
            "Le/a/h/b/d/a/a/e0/h;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/a/o2/g;

.field public final j:Le/a/o2/f;

.field public k:Landroid/os/Parcelable;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/p5/c;Le/a/l4/c;Le/a/h/b/d/a/a/r;Le/a/h/b/d/a/a/v;Le/a/h/b/d/a/a/c;Le/a/h/b/d/a/a/h;Le/a/h/b/d/a/a/z;Le/a/h/b/d/a/a/e0/e;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suggestedContactsPresenter"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suggestedPremiumPresenter"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emergencyContactPresenter"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "govServicesPresenter"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerIdOnboardingPresenter"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hotlinePresenter"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0e06

    .line 2
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/h/b/d/a/a/o;->a:Ls1/g;

    const v0, 0x7f0a0b11

    .line 3
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/h/b/d/a/a/o;->b:Ls1/g;

    .line 4
    new-instance v0, Le/a/o2/r;

    .line 5
    new-instance v1, Le/a/h/b/d/a/a/o$a;

    invoke-direct {v1, p0, p3, p2}, Le/a/h/b/d/a/a/o$a;-><init>(Le/a/h/b/d/a/a/o;Le/a/l4/c;Le/a/p5/c;)V

    .line 6
    sget-object p2, Le/a/h/b/d/a/a/o$b;->b:Le/a/h/b/d/a/a/o$b;

    const p3, 0x7f0d0351

    .line 7
    invoke-direct {v0, p4, p3, v1, p2}, Le/a/o2/r;-><init>(Le/a/o2/b;ILs1/z/b/l;Ls1/z/b/l;)V

    iput-object v0, p0, Le/a/h/b/d/a/a/o;->c:Le/a/o2/r;

    .line 8
    new-instance p2, Le/a/o2/r;

    .line 9
    new-instance p3, Le/a/h/b/d/a/a/o$i;

    invoke-direct {p3, p0}, Le/a/h/b/d/a/a/o$i;-><init>(Le/a/h/b/d/a/a/o;)V

    .line 10
    sget-object p4, Le/a/h/b/d/a/a/o$j;->b:Le/a/h/b/d/a/a/o$j;

    const v1, 0x7f0d0352

    .line 11
    invoke-direct {p2, p5, v1, p3, p4}, Le/a/o2/r;-><init>(Le/a/o2/b;ILs1/z/b/l;Ls1/z/b/l;)V

    iput-object p2, p0, Le/a/h/b/d/a/a/o;->d:Le/a/o2/r;

    .line 12
    new-instance p3, Le/a/o2/r;

    .line 13
    new-instance p4, Le/a/h/b/d/a/a/o$c;

    invoke-direct {p4, p0}, Le/a/h/b/d/a/a/o$c;-><init>(Le/a/h/b/d/a/a/o;)V

    .line 14
    sget-object p5, Le/a/h/b/d/a/a/o$d;->b:Le/a/h/b/d/a/a/o$d;

    const v1, 0x7f0d034c

    .line 15
    invoke-direct {p3, p6, v1, p4, p5}, Le/a/o2/r;-><init>(Le/a/o2/b;ILs1/z/b/l;Ls1/z/b/l;)V

    iput-object p3, p0, Le/a/h/b/d/a/a/o;->e:Le/a/o2/r;

    .line 16
    new-instance p4, Le/a/o2/r;

    .line 17
    new-instance p5, Le/a/h/b/d/a/a/o$e;

    invoke-direct {p5, p0}, Le/a/h/b/d/a/a/o$e;-><init>(Le/a/h/b/d/a/a/o;)V

    .line 18
    sget-object p6, Le/a/h/b/d/a/a/o$f;->b:Le/a/h/b/d/a/a/o$f;

    const v1, 0x7f0d034d

    .line 19
    invoke-direct {p4, p7, v1, p5, p6}, Le/a/o2/r;-><init>(Le/a/o2/b;ILs1/z/b/l;Ls1/z/b/l;)V

    iput-object p4, p0, Le/a/h/b/d/a/a/o;->f:Le/a/o2/r;

    .line 20
    new-instance p5, Le/a/o2/r;

    .line 21
    new-instance p6, Le/a/h/b/d/a/a/o$l;

    invoke-direct {p6, p0}, Le/a/h/b/d/a/a/o$l;-><init>(Le/a/h/b/d/a/a/o;)V

    .line 22
    sget-object p7, Le/a/h/b/d/a/a/o$m;->b:Le/a/h/b/d/a/a/o$m;

    const v1, 0x7f0d0354

    .line 23
    invoke-direct {p5, p8, v1, p6, p7}, Le/a/o2/r;-><init>(Le/a/o2/b;ILs1/z/b/l;Ls1/z/b/l;)V

    iput-object p5, p0, Le/a/h/b/d/a/a/o;->g:Le/a/o2/r;

    .line 24
    new-instance p6, Le/a/o2/r;

    .line 25
    new-instance p7, Le/a/h/b/d/a/a/o$g;

    invoke-direct {p7, p0}, Le/a/h/b/d/a/a/o$g;-><init>(Le/a/h/b/d/a/a/o;)V

    .line 26
    sget-object p8, Le/a/h/b/d/a/a/o$h;->b:Le/a/h/b/d/a/a/o$h;

    const v1, 0x7f0d034e

    .line 27
    invoke-direct {p6, p9, v1, p7, p8}, Le/a/o2/r;-><init>(Le/a/o2/b;ILs1/z/b/l;Ls1/z/b/l;)V

    iput-object p6, p0, Le/a/h/b/d/a/a/o;->h:Le/a/o2/r;

    .line 28
    new-instance p7, Le/a/o2/g;

    const/4 p8, 0x0

    const/4 p9, 0x1

    invoke-direct {p7, p8, p9}, Le/a/o2/g;-><init>(II)V

    iput-object p7, p0, Le/a/h/b/d/a/a/o;->i:Le/a/o2/g;

    .line 29
    new-instance v1, Le/a/o2/f;

    .line 30
    invoke-virtual {v0, p4, p7}, Le/a/o2/r;->f(Le/a/o2/a;Le/a/o2/t;)Le/a/o2/u;

    move-result-object p4

    .line 31
    invoke-virtual {p4, p3, p7}, Le/a/o2/u;->f(Le/a/o2/a;Le/a/o2/t;)Le/a/o2/u;

    move-result-object p3

    .line 32
    invoke-virtual {p3, p2, p7}, Le/a/o2/u;->f(Le/a/o2/a;Le/a/o2/t;)Le/a/o2/u;

    move-result-object p2

    .line 33
    invoke-virtual {p2, p5, p7}, Le/a/o2/u;->f(Le/a/o2/a;Le/a/o2/t;)Le/a/o2/u;

    move-result-object p2

    .line 34
    invoke-virtual {p2, p6, p7}, Le/a/o2/u;->f(Le/a/o2/a;Le/a/o2/t;)Le/a/o2/u;

    move-result-object p2

    .line 35
    invoke-direct {v1, p2}, Le/a/o2/f;-><init>(Le/a/o2/a;)V

    .line 36
    invoke-virtual {v1, p9}, Landroidx/recyclerview/widget/RecyclerView$g;->setHasStableIds(Z)V

    iput-object v1, p0, Le/a/h/b/d/a/a/o;->j:Le/a/o2/f;

    .line 37
    invoke-virtual {p0}, Le/a/h/b/d/a/a/o;->N4()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    const-string p3, "recycleView"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p4, p1, p8, p8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 38
    invoke-virtual {p0}, Le/a/h/b/d/a/a/o;->N4()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method


# virtual methods
.method public B0()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/o;->j:Le/a/o2/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 2
    iget-object v0, p0, Le/a/h/b/d/a/a/o;->c:Le/a/o2/r;

    invoke-virtual {v0}, Le/a/o2/r;->getItemCount()I

    move-result v0

    return v0
.end method

.method public E0(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/h/b/v0/a;",
            ">;",
            "Ljava/util/List<",
            "Le/a/h/b/v0/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "oldItems"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItems"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/o;->f:Le/a/o2/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/a/o2/r;->j(I)I

    move-result v0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object p1, p0, Le/a/h/b/d/a/a/o;->j:Le/a/o2/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemInserted(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p1, p2, :cond_1

    iget-object p1, p0, Le/a/h/b/d/a/a/o;->j:Le/a/o2/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRemoved(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/h/b/d/a/a/o;->j:Le/a/o2/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    :goto_0
    return-void
.end method

.method public H0(Le/a/h/b/z0/a;Le/a/h/b/z0/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/o;->g:Le/a/o2/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/a/o2/r;->j(I)I

    move-result v0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Le/a/h/b/d/a/a/o;->j:Le/a/o2/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemInserted(I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Le/a/h/b/d/a/a/o;->j:Le/a/o2/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRemoved(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/h/b/d/a/a/o;->j:Le/a/o2/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    :goto_0
    return-void
.end method

.method public K4()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/a/o;->N4()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const-string v1, "recycleView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Le/a/h/b/d/a/a/o;->k:Landroid/os/Parcelable;

    return-void
.end method

.method public M3(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/a/o;->N4()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const-string v1, "recycleView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 2
    iget-object v0, p0, Le/a/h/b/d/a/a/o;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "emptyStateLinearLayout"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public final N4()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Le/a/h/b/d/a/a/o;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public S3()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/o;->k:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/a/h/b/d/a/a/o;->N4()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    const-string v2, "recycleView"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/a/h/b/d/a/a/o;->k:Landroid/os/Parcelable;

    :cond_1
    return-void
.end method

.method public Y0(Le/a/h/b/d/a/a/e0/a;Le/a/h/b/d/a/a/e0/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/o;->h:Le/a/o2/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/a/o2/r;->j(I)I

    move-result v0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Le/a/h/b/d/a/a/o;->j:Le/a/o2/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemInserted(I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Le/a/h/b/d/a/a/o;->j:Le/a/o2/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRemoved(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/h/b/d/a/a/o;->j:Le/a/o2/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    :goto_0
    return-void
.end method

.method public d1(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/h/b/x0/a;",
            ">;",
            "Ljava/util/List<",
            "Le/a/h/b/x0/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "oldItems"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItems"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/o;->d:Le/a/o2/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/a/o2/r;->j(I)I

    move-result v0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object p1, p0, Le/a/h/b/d/a/a/o;->j:Le/a/o2/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemInserted(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p1, p2, :cond_1

    iget-object p1, p0, Le/a/h/b/d/a/a/o;->j:Le/a/o2/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRemoved(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/h/b/d/a/a/o;->j:Le/a/o2/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    :goto_0
    return-void
.end method

.method public g3(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/h/b/u0/a;",
            ">;",
            "Ljava/util/List<",
            "Le/a/h/b/u0/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "oldItems"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItems"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/o;->e:Le/a/o2/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/a/o2/r;->j(I)I

    move-result v0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object p1, p0, Le/a/h/b/d/a/a/o;->j:Le/a/o2/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemInserted(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p1, p2, :cond_1

    iget-object p1, p0, Le/a/h/b/d/a/a/o;->j:Le/a/o2/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRemoved(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/h/b/d/a/a/o;->j:Le/a/o2/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    :goto_0
    return-void
.end method

.method public o1(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemPositions"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/h/b/d/a/a/o;->j:Le/a/o2/f;

    iget-object v2, p0, Le/a/h/b/d/a/a/o;->c:Le/a/o2/r;

    invoke-virtual {v2, v0}, Le/a/o2/r;->j(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r0(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/a/o;->N4()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Le/a/h/b/d/a/a/o$k;

    invoke-direct {v1, p0, p1}, Le/a/h/b/d/a/a/o$k;-><init>(Le/a/h/b/d/a/a/o;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
