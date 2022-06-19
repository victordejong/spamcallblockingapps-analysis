.class public abstract Ln3/z/f2;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:Ln3/z/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "Ln3/z/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/b0/a/h$e;Lq3/a/g0;Lq3/a/g0;I)V
    .locals 1

    and-int/lit8 p2, p4, 0x2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object p2, Lq3/a/y2/q;->c:Lq3/a/y1;

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 2
    sget-object p3, Lq3/a/t0;->b:Lq3/a/g0;

    :cond_1
    const-string p4, "diffCallback"

    .line 3
    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "mainDispatcher"

    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "workerDispatcher"

    invoke-static {p3, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 5
    new-instance p4, Ln3/z/g;

    .line 6
    new-instance v0, Ln3/b0/a/b;

    invoke-direct {v0, p0}, Ln3/b0/a/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 7
    invoke-direct {p4, p1, v0, p2, p3}, Ln3/z/g;-><init>(Ln3/b0/a/h$e;Ln3/b0/a/q;Lq3/a/g0;Lq3/a/g0;)V

    iput-object p4, p0, Ln3/z/f2;->b:Ln3/z/g;

    .line 8
    sget-object p1, Landroidx/recyclerview/widget/RecyclerView$g$a;->c:Landroidx/recyclerview/widget/RecyclerView$g$a;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->setStateRestorationPolicy(Landroidx/recyclerview/widget/RecyclerView$g$a;)V

    .line 9
    new-instance p1, Ln3/z/c2;

    invoke-direct {p1, p0}, Ln3/z/c2;-><init>(Ln3/z/f2;)V

    .line 10
    new-instance p2, Ln3/z/d2;

    invoke-direct {p2, p0, p1}, Ln3/z/d2;-><init>(Ln3/z/f2;Ln3/z/c2;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 11
    new-instance p2, Ln3/z/e2;

    invoke-direct {p2, p0, p1}, Ln3/z/e2;-><init>(Ln3/z/f2;Ln3/z/c2;)V

    invoke-virtual {p0, p2}, Ln3/z/f2;->e(Ls1/z/b/l;)V

    .line 12
    iget-object p1, p4, Ln3/z/g;->e:Lq3/a/x2/f;

    .line 13
    iput-object p1, p0, Ln3/z/f2;->c:Lq3/a/x2/f;

    return-void
.end method


# virtual methods
.method public final e(Ls1/z/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ln3/z/q;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Ln3/z/f2;->b:Ln3/z/g;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, v1, Ln3/z/g;->c:Ln3/z/g$a;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v1, Ln3/z/g2;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, v1, Ln3/z/g2;->c:Ln3/z/x0;

    invoke-virtual {v0}, Ln3/z/x0;->e()Ln3/z/q;

    move-result-object v0

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/z/f2;->b:Ln3/z/g;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    :try_start_0
    iput-boolean v1, v0, Ln3/z/g;->b:Z

    .line 4
    iget-object v1, v0, Ln3/z/g;->c:Ln3/z/g$a;

    invoke-virtual {v1, p1}, Ln3/z/g2;->a(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iput-boolean v2, v0, Ln3/z/g;->b:Z

    return-object p1

    :catchall_0
    move-exception p1

    iput-boolean v2, v0, Ln3/z/g;->b:Z

    throw p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/z/f2;->b:Ln3/z/g;

    .line 2
    iget-object v0, v0, Ln3/z/g;->c:Ln3/z/g$a;

    .line 3
    iget-object v0, v0, Ln3/z/g2;->a:Ln3/z/o1;

    invoke-virtual {v0}, Ln3/z/o1;->a()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final setHasStableIds(Z)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Stable ids are unsupported on PagingDataAdapter."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStateRestorationPolicy(Landroidx/recyclerview/widget/RecyclerView$g$a;)V
    .locals 1

    const-string v0, "strategy"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln3/z/f2;->a:Z

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->setStateRestorationPolicy(Landroidx/recyclerview/widget/RecyclerView$g$a;)V

    return-void
.end method
