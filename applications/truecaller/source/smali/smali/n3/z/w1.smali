.class public abstract Ln3/z/w1;
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
.field public final a:Ln3/z/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ls1/z/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/p<",
            "Ln3/z/q1<",
            "TT;>;",
            "Ln3/z/q1<",
            "TT;>;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/b0/a/h$e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/b0/a/h$e<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "diffCallback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    new-instance v0, Ln3/z/v1;

    invoke-direct {v0, p0}, Ln3/z/v1;-><init>(Ln3/z/w1;)V

    iput-object v0, p0, Ln3/z/w1;->b:Ls1/z/b/p;

    .line 3
    new-instance v1, Ln3/z/b;

    invoke-direct {v1, p0, p1}, Ln3/z/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$g;Ln3/b0/a/h$e;)V

    iput-object v1, p0, Ln3/z/w1;->a:Ln3/z/b;

    const-string p1, "callback"

    .line 4
    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, v1, Ln3/z/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ln3/z/b$a;

    invoke-direct {v1, v0}, Ln3/z/b$a;-><init>(Ls1/z/b/p;)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public e(Ln3/z/q1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/q1<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v1, p0, Ln3/z/w1;->a:Ln3/z/b;

    .line 2
    iget v0, v1, Ln3/z/b;->g:I

    add-int/lit8 v4, v0, 0x1

    iput v4, v1, Ln3/z/b;->g:I

    .line 3
    iget-object v0, v1, Ln3/z/b;->e:Ln3/z/q1;

    if-ne p1, v0, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-virtual {v1}, Ln3/z/b;->a()Ln3/z/q1;

    move-result-object v0

    const-string v2, "updateCallback"

    const-string v3, "listener"

    const-string v5, "callback"

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_5

    .line 5
    invoke-virtual {v1}, Ln3/z/b;->a()Ln3/z/q1;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ln3/z/q1;->size()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v6

    .line 6
    :goto_0
    iget-object v4, v1, Ln3/z/b;->e:Ln3/z/q1;

    if-eqz v4, :cond_2

    .line 7
    iget-object v8, v1, Ln3/z/b;->k:Ln3/z/q1$b;

    .line 8
    invoke-static {v8, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v5, v4, Ln3/z/q1;->c:Ljava/util/List;

    new-instance v9, Ln3/z/t1;

    invoke-direct {v9, v8}, Ln3/z/t1;-><init>(Ln3/z/q1$b;)V

    invoke-static {v5, v9}, Ls1/u/i;->w0(Ljava/util/List;Ls1/z/b/l;)Z

    .line 10
    iget-object v5, v1, Ln3/z/b;->i:Ls1/a/f;

    check-cast v5, Ls1/z/b/p;

    .line 11
    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v3, v4, Ln3/z/q1;->d:Ljava/util/List;

    new-instance v4, Ln3/z/u1;

    invoke-direct {v4, v5}, Ln3/z/u1;-><init>(Ls1/z/b/p;)V

    invoke-static {v3, v4}, Ls1/u/i;->w0(Ljava/util/List;Ls1/z/b/l;)Z

    .line 13
    iput-object v7, v1, Ln3/z/b;->e:Ln3/z/q1;

    goto :goto_1

    .line 14
    :cond_2
    iget-object v3, v1, Ln3/z/b;->f:Ln3/z/q1;

    if-eqz v3, :cond_3

    .line 15
    iput-object v7, v1, Ln3/z/b;->f:Ln3/z/q1;

    .line 16
    :cond_3
    :goto_1
    iget-object v3, v1, Ln3/z/b;->a:Ln3/b0/a/q;

    if-eqz v3, :cond_4

    invoke-interface {v3, v6, p1}, Ln3/b0/a/q;->onRemoved(II)V

    .line 17
    invoke-virtual {v1, v0, v7, v7}, Ln3/z/b;->c(Ln3/z/q1;Ln3/z/q1;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 18
    :cond_4
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v7

    .line 19
    :cond_5
    invoke-virtual {v1}, Ln3/z/b;->a()Ln3/z/q1;

    move-result-object v0

    if-nez v0, :cond_7

    .line 20
    iput-object p1, v1, Ln3/z/b;->e:Ln3/z/q1;

    .line 21
    iget-object v0, v1, Ln3/z/b;->i:Ls1/a/f;

    check-cast v0, Ls1/z/b/p;

    invoke-virtual {p1, v0}, Ln3/z/q1;->d(Ls1/z/b/p;)V

    .line 22
    iget-object v0, v1, Ln3/z/b;->k:Ln3/z/q1$b;

    invoke-virtual {p1, v0}, Ln3/z/q1;->c(Ln3/z/q1$b;)V

    .line 23
    iget-object v0, v1, Ln3/z/b;->a:Ln3/b0/a/q;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ln3/z/q1;->size()I

    move-result v2

    invoke-interface {v0, v6, v2}, Ln3/b0/a/q;->onInserted(II)V

    .line 24
    invoke-virtual {v1, v7, p1, v7}, Ln3/z/b;->c(Ln3/z/q1;Ln3/z/q1;Ljava/lang/Runnable;)V

    goto :goto_4

    .line 25
    :cond_6
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v7

    .line 26
    :cond_7
    iget-object v0, v1, Ln3/z/b;->e:Ln3/z/q1;

    if-eqz v0, :cond_9

    .line 27
    iget-object v2, v1, Ln3/z/b;->k:Ln3/z/q1$b;

    .line 28
    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v5, v0, Ln3/z/q1;->c:Ljava/util/List;

    new-instance v6, Ln3/z/t1;

    invoke-direct {v6, v2}, Ln3/z/t1;-><init>(Ln3/z/q1$b;)V

    invoke-static {v5, v6}, Ls1/u/i;->w0(Ljava/util/List;Ls1/z/b/l;)Z

    .line 30
    iget-object v2, v1, Ln3/z/b;->i:Ls1/a/f;

    check-cast v2, Ls1/z/b/p;

    .line 31
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v3, v0, Ln3/z/q1;->d:Ljava/util/List;

    new-instance v5, Ln3/z/u1;

    invoke-direct {v5, v2}, Ln3/z/u1;-><init>(Ls1/z/b/p;)V

    invoke-static {v3, v5}, Ls1/u/i;->w0(Ljava/util/List;Ls1/z/b/l;)Z

    .line 33
    invoke-virtual {v0}, Ln3/z/q1;->i()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    .line 34
    :cond_8
    new-instance v2, Ln3/z/b3;

    invoke-direct {v2, v0}, Ln3/z/b3;-><init>(Ln3/z/q1;)V

    move-object v0, v2

    .line 35
    :goto_2
    iput-object v0, v1, Ln3/z/b;->f:Ln3/z/q1;

    .line 36
    iput-object v7, v1, Ln3/z/b;->e:Ln3/z/q1;

    .line 37
    :cond_9
    iget-object v2, v1, Ln3/z/b;->f:Ln3/z/q1;

    if-eqz v2, :cond_b

    .line 38
    iget-object v0, v1, Ln3/z/b;->e:Ln3/z/q1;

    if-nez v0, :cond_b

    .line 39
    invoke-virtual {p1}, Ln3/z/q1;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v3, p1

    goto :goto_3

    .line 40
    :cond_a
    new-instance v0, Ln3/z/b3;

    invoke-direct {v0, p1}, Ln3/z/b3;-><init>(Ln3/z/q1;)V

    move-object v3, v0

    .line 41
    :goto_3
    new-instance v6, Ln3/z/o2;

    invoke-direct {v6}, Ln3/z/o2;-><init>()V

    .line 42
    invoke-virtual {p1, v6}, Ln3/z/q1;->c(Ln3/z/q1$b;)V

    .line 43
    iget-object v0, v1, Ln3/z/b;->b:Ln3/b0/a/c;

    .line 44
    iget-object v8, v0, Ln3/b0/a/c;->a:Ljava/util/concurrent/Executor;

    .line 45
    new-instance v9, Ln3/z/f;

    const/4 v7, 0x0

    move-object v0, v9

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Ln3/z/f;-><init>(Ln3/z/b;Ln3/z/q1;Ln3/z/q1;ILn3/z/q1;Ln3/z/o2;Ljava/lang/Runnable;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_4
    return-void

    .line 46
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "must be in snapshot state to diff"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/z/w1;->a:Ln3/z/b;

    .line 2
    iget-object v1, v0, Ln3/z/b;->f:Ln3/z/q1;

    .line 3
    iget-object v0, v0, Ln3/z/b;->e:Ln3/z/q1;

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v1, Ln3/z/q1;->h:Ln3/z/x1;

    invoke-virtual {v0, p1}, Ln3/z/x1;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Ln3/z/q1;->j(I)V

    .line 6
    iget-object v0, v0, Ln3/z/q1;->h:Ln3/z/x1;

    invoke-virtual {v0, p1}, Ln3/z/x1;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Item count is zero, getItem() call is invalid"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/z/w1;->a:Ln3/z/b;

    .line 2
    invoke-virtual {v0}, Ln3/z/b;->a()Ln3/z/q1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln3/z/q1;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
