.class public final Le/a/o2/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o2/a;
.implements Le/a/o2/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/o2/u$a;
    }
.end annotation


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public d:Z

.field public final e:Le/a/o2/a;

.field public final f:Le/a/o2/a;

.field public final g:Le/a/o2/t;

.field public final h:Z

.field public final synthetic i:Le/a/o2/e;


# direct methods
.method public constructor <init>(Le/a/o2/a;Le/a/o2/a;Le/a/o2/t;ZI)V
    .locals 1

    and-int/lit8 p5, p5, 0x8

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    move p4, v0

    :cond_0
    const-string p5, "outerDelegate"

    .line 1
    invoke-static {p1, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "innerDelegate"

    invoke-static {p2, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "wrapper"

    invoke-static {p3, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p5, Le/a/o2/e;

    invoke-direct {p5}, Le/a/o2/e;-><init>()V

    iput-object p5, p0, Le/a/o2/u;->i:Le/a/o2/e;

    iput-object p1, p0, Le/a/o2/u;->e:Le/a/o2/a;

    iput-object p2, p0, Le/a/o2/u;->f:Le/a/o2/a;

    iput-object p3, p0, Le/a/o2/u;->g:Le/a/o2/t;

    iput-boolean p4, p0, Le/a/o2/u;->h:Z

    .line 4
    sget-object p3, Le/a/o2/w;->b:Le/a/o2/w;

    invoke-static {p3}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p3

    iput-object p3, p0, Le/a/o2/u;->a:Ls1/g;

    .line 5
    new-instance p3, Lw1;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p0}, Lw1;-><init>(ILjava/lang/Object;)V

    invoke-static {p3}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p3

    iput-object p3, p0, Le/a/o2/u;->b:Ls1/g;

    .line 6
    new-instance p3, Lw1;

    invoke-direct {p3, v0, p0}, Lw1;-><init>(ILjava/lang/Object;)V

    invoke-static {p3}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p3

    iput-object p3, p0, Le/a/o2/u;->c:Ls1/g;

    .line 7
    new-instance p3, Le3;

    invoke-direct {p3, p4, p0}, Le3;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p3}, Le/a/o2/s;->b(Ls1/z/b/l;)V

    .line 8
    new-instance p1, Le3;

    invoke-direct {p1, v0, p0}, Le3;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, p1}, Le/a/o2/s;->b(Ls1/z/b/l;)V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/o2/u;->g:Le/a/o2/t;

    iget-object v1, p0, Le/a/o2/u;->e:Le/a/o2/a;

    invoke-interface {v1}, Le/a/o2/a;->getItemCount()I

    move-result v1

    iget-object v2, p0, Le/a/o2/u;->f:Le/a/o2/a;

    invoke-interface {v2}, Le/a/o2/a;->getItemCount()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Le/a/o2/t;->c(III)Z

    move-result p1

    return p1
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

    iget-object v0, p0, Le/a/o2/u;->i:Le/a/o2/e;

    invoke-virtual {v0, p1}, Le/a/o2/e;->b(Ls1/z/b/l;)V

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
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/a/o2/u;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/o2/u;->g:Le/a/o2/t;

    iget-object v1, p0, Le/a/o2/u;->e:Le/a/o2/a;

    invoke-interface {v1}, Le/a/o2/a;->getItemCount()I

    move-result v1

    iget-object v2, p0, Le/a/o2/u;->f:Le/a/o2/a;

    invoke-interface {v2}, Le/a/o2/a;->getItemCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Le/a/o2/t;->d(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 8

    .line 1
    iget-boolean v0, p0, Le/a/o2/u;->h:Z

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0, p1}, Le/a/o2/u;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/o2/u;->e:Le/a/o2/a;

    .line 4
    iget-object v1, p0, Le/a/o2/u;->g:Le/a/o2/t;

    .line 5
    invoke-interface {v0}, Le/a/o2/a;->getItemCount()I

    move-result v2

    .line 6
    iget-object v3, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 7
    invoke-interface {v3}, Le/a/o2/a;->getItemCount()I

    move-result v3

    .line 8
    invoke-interface {v1, p1, v2, v3}, Le/a/o2/t;->e(III)I

    move-result v1

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 10
    iget-object v1, p0, Le/a/o2/u;->g:Le/a/o2/t;

    .line 11
    iget-object v2, p0, Le/a/o2/u;->e:Le/a/o2/a;

    .line 12
    invoke-interface {v2}, Le/a/o2/a;->getItemCount()I

    move-result v2

    .line 13
    iget-object v3, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 14
    invoke-interface {v3}, Le/a/o2/a;->getItemCount()I

    move-result v3

    .line 15
    invoke-interface {v1, p1, v2, v3}, Le/a/o2/t;->f(III)I

    move-result v1

    .line 16
    :goto_0
    invoke-interface {v0, v1}, Le/a/o2/a;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto/16 :goto_4

    .line 17
    :cond_1
    invoke-virtual {p0, p1}, Le/a/o2/u;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    iget-object p1, p0, Le/a/o2/u;->c:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/o2/u$a;

    goto :goto_1

    .line 19
    :cond_2
    iget-object p1, p0, Le/a/o2/u;->b:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/o2/u$a;

    .line 20
    :goto_1
    iget-object v2, p1, Le/a/o2/u$a;->a:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    :cond_3
    iget-object v2, p1, Le/a/o2/u$a;->c:Ls1/z/b/a;

    invoke-interface {v2}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 21
    iget-object v5, p1, Le/a/o2/u$a;->a:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object p1, p1, Le/a/o2/u$a;->b:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_2
    move-wide v2, v0

    goto :goto_4

    .line 24
    :cond_4
    invoke-virtual {p0, p1}, Le/a/o2/u;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    iget-object v0, p0, Le/a/o2/u;->e:Le/a/o2/a;

    .line 26
    iget-object v1, p0, Le/a/o2/u;->g:Le/a/o2/t;

    .line 27
    invoke-interface {v0}, Le/a/o2/a;->getItemCount()I

    move-result v2

    .line 28
    iget-object v3, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 29
    invoke-interface {v3}, Le/a/o2/a;->getItemCount()I

    move-result v3

    .line 30
    invoke-interface {v1, p1, v2, v3}, Le/a/o2/t;->e(III)I

    move-result p1

    goto :goto_3

    .line 31
    :cond_5
    iget-object v0, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 32
    iget-object v1, p0, Le/a/o2/u;->g:Le/a/o2/t;

    .line 33
    iget-object v2, p0, Le/a/o2/u;->e:Le/a/o2/a;

    .line 34
    invoke-interface {v2}, Le/a/o2/a;->getItemCount()I

    move-result v2

    .line 35
    iget-object v3, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 36
    invoke-interface {v3}, Le/a/o2/a;->getItemCount()I

    move-result v3

    .line 37
    invoke-interface {v1, p1, v2, v3}, Le/a/o2/t;->f(III)I

    move-result p1

    .line 38
    :goto_3
    invoke-interface {v0, p1}, Le/a/o2/a;->getItemId(I)J

    move-result-wide v0

    goto :goto_2

    :goto_4
    return-wide v2
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Le/a/o2/u;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/o2/u;->e:Le/a/o2/a;

    .line 3
    iget-object v1, p0, Le/a/o2/u;->g:Le/a/o2/t;

    .line 4
    invoke-interface {v0}, Le/a/o2/a;->getItemCount()I

    move-result v2

    .line 5
    iget-object v3, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 6
    invoke-interface {v3}, Le/a/o2/a;->getItemCount()I

    move-result v3

    .line 7
    invoke-interface {v1, p1, v2, v3}, Le/a/o2/t;->e(III)I

    move-result p1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 9
    iget-object v1, p0, Le/a/o2/u;->g:Le/a/o2/t;

    .line 10
    iget-object v2, p0, Le/a/o2/u;->e:Le/a/o2/a;

    .line 11
    invoke-interface {v2}, Le/a/o2/a;->getItemCount()I

    move-result v2

    .line 12
    iget-object v3, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 13
    invoke-interface {v3}, Le/a/o2/a;->getItemCount()I

    move-result v3

    .line 14
    invoke-interface {v1, p1, v2, v3}, Le/a/o2/t;->f(III)I

    move-result p1

    .line 15
    :goto_0
    invoke-interface {v0, p1}, Le/a/o2/a;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public j(I)I
    .locals 1

    iget-object v0, p0, Le/a/o2/u;->i:Le/a/o2/e;

    invoke-virtual {v0, p1}, Le/a/o2/e;->j(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Le/a/o2/u;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/o2/u;->e:Le/a/o2/a;

    .line 3
    iget-object v1, p0, Le/a/o2/u;->g:Le/a/o2/t;

    .line 4
    invoke-interface {v0}, Le/a/o2/a;->getItemCount()I

    move-result v2

    .line 5
    iget-object v3, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 6
    invoke-interface {v3}, Le/a/o2/a;->getItemCount()I

    move-result v3

    .line 7
    invoke-interface {v1, p2, v2, v3}, Le/a/o2/t;->e(III)I

    move-result p2

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 9
    iget-object v1, p0, Le/a/o2/u;->g:Le/a/o2/t;

    .line 10
    iget-object v2, p0, Le/a/o2/u;->e:Le/a/o2/a;

    .line 11
    invoke-interface {v2}, Le/a/o2/a;->getItemCount()I

    move-result v2

    .line 12
    iget-object v3, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 13
    invoke-interface {v3}, Le/a/o2/a;->getItemCount()I

    move-result v3

    .line 14
    invoke-interface {v1, p2, v2, v3}, Le/a/o2/t;->f(III)I

    move-result p2

    .line 15
    :goto_0
    invoke-interface {v0, p1, p2}, Le/a/o2/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/o2/u;->e:Le/a/o2/a;

    .line 2
    invoke-interface {v0, p2}, Le/a/o2/a;->v(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/o2/u;->e:Le/a/o2/a;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 5
    :goto_0
    invoke-interface {v0, p1, p2}, Le/a/o2/a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object p1

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getItemViewType()I

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/o2/u;->e:Le/a/o2/a;

    .line 3
    invoke-interface {v1, v0}, Le/a/o2/a;->v(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/o2/u;->e:Le/a/o2/a;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 6
    :goto_0
    invoke-interface {v0, p1}, Le/a/o2/a;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getItemViewType()I

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/o2/u;->e:Le/a/o2/a;

    .line 3
    invoke-interface {v1, v0}, Le/a/o2/a;->v(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/o2/u;->e:Le/a/o2/a;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 6
    :goto_0
    invoke-interface {v0, p1}, Le/a/o2/a;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getItemViewType()I

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/o2/u;->e:Le/a/o2/a;

    .line 3
    invoke-interface {v1, v0}, Le/a/o2/a;->v(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/o2/u;->e:Le/a/o2/a;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 6
    :goto_0
    invoke-interface {v0, p1}, Le/a/o2/a;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public s(I)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Le/a/o2/u;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/o2/u;->e:Le/a/o2/a;

    .line 3
    iget-object v1, p0, Le/a/o2/u;->g:Le/a/o2/t;

    .line 4
    invoke-interface {v0}, Le/a/o2/a;->getItemCount()I

    move-result v2

    .line 5
    iget-object v3, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 6
    invoke-interface {v3}, Le/a/o2/a;->getItemCount()I

    move-result v3

    .line 7
    invoke-interface {v1, p1, v2, v3}, Le/a/o2/t;->e(III)I

    move-result p1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 9
    iget-object v1, p0, Le/a/o2/u;->g:Le/a/o2/t;

    .line 10
    iget-object v2, p0, Le/a/o2/u;->e:Le/a/o2/a;

    .line 11
    invoke-interface {v2}, Le/a/o2/a;->getItemCount()I

    move-result v2

    .line 12
    iget-object v3, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 13
    invoke-interface {v3}, Le/a/o2/a;->getItemCount()I

    move-result v3

    .line 14
    invoke-interface {v1, p1, v2, v3}, Le/a/o2/t;->f(III)I

    move-result p1

    .line 15
    :goto_0
    invoke-interface {v0, p1}, Le/a/o2/a;->s(I)I

    move-result p1

    return p1
.end method

.method public t(Le/a/o2/h;)Z
    .locals 10

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Le/a/o2/h;->b:I

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-boolean v1, p0, Le/a/o2/u;->h:Z

    if-eqz v1, :cond_3

    .line 3
    iget-wide v1, p1, Le/a/o2/h;->c:J

    .line 4
    invoke-virtual {p0, v0}, Le/a/o2/u;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Le/a/o2/u;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o2/u$a;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/o2/u;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o2/u$a;

    .line 7
    :goto_0
    iget-object v0, v0, Le/a/o2/u$a;->b:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_1

    .line 9
    :cond_3
    iget-wide v0, p1, Le/a/o2/h;->c:J

    :goto_1
    move-wide v5, v0

    .line 10
    iget v0, p1, Le/a/o2/h;->b:I

    .line 11
    invoke-virtual {p0, v0}, Le/a/o2/u;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    iget-object v1, p0, Le/a/o2/u;->e:Le/a/o2/a;

    .line 13
    iget-object v2, p0, Le/a/o2/u;->g:Le/a/o2/t;

    .line 14
    invoke-interface {v1}, Le/a/o2/a;->getItemCount()I

    move-result v3

    .line 15
    iget-object v4, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 16
    invoke-interface {v4}, Le/a/o2/a;->getItemCount()I

    move-result v4

    .line 17
    invoke-interface {v2, v0, v3, v4}, Le/a/o2/t;->e(III)I

    move-result v0

    goto :goto_2

    .line 18
    :cond_4
    iget-object v1, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 19
    iget-object v2, p0, Le/a/o2/u;->g:Le/a/o2/t;

    .line 20
    iget-object v3, p0, Le/a/o2/u;->e:Le/a/o2/a;

    .line 21
    invoke-interface {v3}, Le/a/o2/a;->getItemCount()I

    move-result v3

    .line 22
    iget-object v4, p0, Le/a/o2/u;->f:Le/a/o2/a;

    .line 23
    invoke-interface {v4}, Le/a/o2/a;->getItemCount()I

    move-result v4

    .line 24
    invoke-interface {v2, v0, v3, v4}, Le/a/o2/t;->f(III)I

    move-result v0

    :goto_2
    move v4, v0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x19

    move-object v2, p1

    .line 25
    invoke-static/range {v2 .. v9}, Le/a/o2/h;->a(Le/a/o2/h;Ljava/lang/String;IJLandroid/view/View;Ljava/lang/Object;I)Le/a/o2/h;

    move-result-object p1

    invoke-interface {v1, p1}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    move-result p1

    return p1
.end method

.method public u(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/o2/u;->d:Z

    return-void
.end method

.method public v(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o2/u;->e:Le/a/o2/a;

    invoke-interface {v0, p1}, Le/a/o2/a;->v(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/o2/u;->f:Le/a/o2/a;

    invoke-interface {v0, p1}, Le/a/o2/a;->v(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
