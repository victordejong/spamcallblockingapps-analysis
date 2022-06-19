.class public final Le/a/o2/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o2/a;
.implements Le/a/o2/b;
.implements Le/a/o2/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PV:",
        "Ljava/lang/Object;",
        "ItemViewHolder:",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/o2/a;",
        "Le/a/o2/b<",
        "TPV;>;",
        "Le/a/o2/s;"
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:Le/a/o2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/o2/b<",
            "TPV;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Landroid/view/View;",
            "TItemViewHolder;>;"
        }
    .end annotation
.end field

.field public final e:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "TItemViewHolder;TPV;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Le/a/o2/e;


# direct methods
.method public constructor <init>(Le/a/o2/b;ILs1/z/b/l;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/o2/b<",
            "-TPV;>;I",
            "Ls1/z/b/l<",
            "-",
            "Landroid/view/View;",
            "+TItemViewHolder;>;",
            "Ls1/z/b/l<",
            "-TItemViewHolder;+TPV;>;)V"
        }
    .end annotation

    const-string v0, "adapterPresenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolderFactory"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/o2/e;

    invoke-direct {v0}, Le/a/o2/e;-><init>()V

    iput-object v0, p0, Le/a/o2/r;->f:Le/a/o2/e;

    iput-object p1, p0, Le/a/o2/r;->b:Le/a/o2/b;

    iput p2, p0, Le/a/o2/r;->c:I

    iput-object p3, p0, Le/a/o2/r;->d:Ls1/z/b/l;

    iput-object p4, p0, Le/a/o2/r;->e:Ls1/z/b/l;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPV;I)V"
        }
    .end annotation

    iget-object v0, p0, Le/a/o2/r;->b:Le/a/o2/b;

    invoke-interface {v0, p1, p2}, Le/a/o2/b;->G(Ljava/lang/Object;I)V

    return-void
.end method

.method public b(Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "unwrapper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/o2/r;->f:Le/a/o2/e;

    invoke-virtual {v0, p1}, Le/a/o2/e;->b(Ls1/z/b/l;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPV;)V"
        }
    .end annotation

    iget-object v0, p0, Le/a/o2/r;->b:Le/a/o2/b;

    invoke-interface {v0, p1}, Le/a/o2/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public f(Le/a/o2/a;Le/a/o2/t;)Le/a/o2/u;
    .locals 1

    const-string v0, "outerDelegate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wrapper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Le/m/d/y/n;->D1(Le/a/o2/a;Le/a/o2/a;Le/a/o2/t;)Le/a/o2/u;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/o2/r;->a:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/o2/r;->b:Le/a/o2/b;

    invoke-interface {v0}, Le/a/o2/b;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Le/a/o2/r;->b:Le/a/o2/b;

    invoke-interface {v0, p1}, Le/a/o2/b;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    iget p1, p0, Le/a/o2/r;->c:I

    return p1
.end method

.method public j(I)I
    .locals 1

    iget-object v0, p0, Le/a/o2/r;->f:Le/a/o2/e;

    invoke-virtual {v0, p1}, Le/a/o2/e;->j(I)I

    move-result p1

    return p1
.end method

.method public o(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPV;)V"
        }
    .end annotation

    iget-object v0, p0, Le/a/o2/r;->b:Le/a/o2/b;

    invoke-interface {v0, p1}, Le/a/o2/b;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/o2/r;->e:Ls1/z/b/l;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/a/o2/r;->b:Le/a/o2/b;

    invoke-interface {v0, p1, p2}, Le/a/o2/b;->G(Ljava/lang/Object;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Le/a/o2/r;->d:Ls1/z/b/l;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3
    iget v1, p0, Le/a/o2/r;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater\n         \u2026layoutRes, parent, false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$c0;

    .line 5
    iget-object p2, p0, Le/a/o2/r;->b:Le/a/o2/b;

    iget-object v0, p0, Le/a/o2/r;->e:Ls1/z/b/l;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Le/a/o2/b;->p(Ljava/lang/Object;)V

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/o2/r;->e:Ls1/z/b/l;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/a/o2/r;->b:Le/a/o2/b;

    invoke-interface {v0, p1}, Le/a/o2/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/o2/r;->e:Ls1/z/b/l;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/a/o2/r;->b:Le/a/o2/b;

    invoke-interface {v0, p1}, Le/a/o2/b;->y(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/o2/r;->e:Ls1/z/b/l;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/a/o2/r;->b:Le/a/o2/b;

    invoke-interface {v0, p1}, Le/a/o2/b;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public p(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPV;)V"
        }
    .end annotation

    iget-object v0, p0, Le/a/o2/r;->b:Le/a/o2/b;

    invoke-interface {v0, p1}, Le/a/o2/b;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public s(I)I
    .locals 0

    return p1
.end method

.method public t(Le/a/o2/h;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Le/a/o2/h;->b:I

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 2
    iget-object v0, p0, Le/a/o2/r;->b:Le/a/o2/b;

    instance-of v2, v0, Le/a/o2/l;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Le/a/o2/l;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Le/a/o2/l;->v(Le/a/o2/h;)Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public u(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/o2/r;->a:Z

    return-void
.end method

.method public v(I)Z
    .locals 1

    .line 1
    iget v0, p0, Le/a/o2/r;->c:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public y(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPV;)V"
        }
    .end annotation

    iget-object v0, p0, Le/a/o2/r;->b:Le/a/o2/b;

    invoke-interface {v0, p1}, Le/a/o2/b;->y(Ljava/lang/Object;)V

    return-void
.end method
