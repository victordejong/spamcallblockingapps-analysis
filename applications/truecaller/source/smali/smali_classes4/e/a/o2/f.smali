.class public final Le/a/o2/f;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"

# interfaces
.implements Le/a/o2/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;",
        "Le/a/o2/a;"
    }
.end annotation


# instance fields
.field public final a:Le/a/o2/a;


# direct methods
.method public constructor <init>(Le/a/o2/a;)V
    .locals 1

    const-string v0, "adapterDelegate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/o2/f;->a:Le/a/o2/a;

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Le/a/o2/f;->a:Le/a/o2/a;

    invoke-interface {v0, p1}, Le/a/o2/s;->b(Ls1/z/b/l;)V

    return-void
.end method

.method public f(Le/a/o2/a;Le/a/o2/t;)Le/a/o2/u;
    .locals 1

    const-string v0, "outerDelegate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wrapper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/o2/f;->a:Le/a/o2/a;

    invoke-interface {v0, p1, p2}, Le/a/o2/a;->f(Le/a/o2/a;Le/a/o2/t;)Le/a/o2/u;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Le/a/o2/f;->a:Le/a/o2/a;

    invoke-interface {v0}, Le/a/o2/a;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o2/f;->a:Le/a/o2/a;

    invoke-interface {v0, p1}, Le/a/o2/a;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o2/f;->a:Le/a/o2/a;

    invoke-interface {v0, p1}, Le/a/o2/a;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public j(I)I
    .locals 1

    iget-object v0, p0, Le/a/o2/f;->a:Le/a/o2/a;

    invoke-interface {v0, p1}, Le/a/o2/s;->j(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/o2/f;->a:Le/a/o2/a;

    invoke-interface {v0, p1, p2}, Le/a/o2/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/o2/f;->a:Le/a/o2/a;

    invoke-interface {v0, p1, p2}, Le/a/o2/a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object p1

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/o2/f;->a:Le/a/o2/a;

    invoke-interface {v0, p1}, Le/a/o2/a;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/o2/f;->a:Le/a/o2/a;

    invoke-interface {v0, p1}, Le/a/o2/a;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/o2/f;->a:Le/a/o2/a;

    invoke-interface {v0, p1}, Le/a/o2/a;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public s(I)I
    .locals 1

    iget-object v0, p0, Le/a/o2/f;->a:Le/a/o2/a;

    invoke-interface {v0, p1}, Le/a/o2/a;->s(I)I

    move-result p1

    return p1
.end method

.method public t(Le/a/o2/h;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/o2/f;->a:Le/a/o2/a;

    invoke-interface {v0, p1}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    move-result p1

    return p1
.end method

.method public u(Z)V
    .locals 1

    iget-object v0, p0, Le/a/o2/f;->a:Le/a/o2/a;

    invoke-interface {v0, p1}, Le/a/o2/a;->u(Z)V

    return-void
.end method

.method public v(I)Z
    .locals 1

    iget-object v0, p0, Le/a/o2/f;->a:Le/a/o2/a;

    invoke-interface {v0, p1}, Le/a/o2/a;->v(I)Z

    move-result p1

    return p1
.end method
