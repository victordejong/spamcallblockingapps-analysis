.class public final Ln3/z/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ln3/z/g3<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final d:Ln3/z/x0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ln3/z/a0;->c:Ljava/util/ArrayDeque;

    .line 3
    new-instance v0, Ln3/z/x0;

    invoke-direct {v0}, Ln3/z/x0;-><init>()V

    iput-object v0, p0, Ln3/z/a0;->d:Ln3/z/x0;

    return-void
.end method


# virtual methods
.method public final a(Ln3/z/c1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/c1<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ln3/z/c1$b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    check-cast p1, Ln3/z/c1$b;

    .line 2
    iget-object v0, p0, Ln3/z/a0;->d:Ln3/z/x0;

    .line 3
    iget-object v4, p1, Ln3/z/c1$b;->e:Ln3/z/q;

    .line 4
    invoke-virtual {v0, v4}, Ln3/z/x0;->c(Ln3/z/q;)V

    .line 5
    iget-object v0, p1, Ln3/z/c1$b;->a:Ln3/z/t0;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 7
    :cond_0
    iget v0, p1, Ln3/z/c1$b;->d:I

    .line 8
    iput v0, p0, Ln3/z/a0;->b:I

    .line 9
    iget-object v0, p0, Ln3/z/a0;->c:Ljava/util/ArrayDeque;

    .line 10
    iget-object p1, p1, Ln3/z/c1$b;->b:Ljava/util/List;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 12
    :cond_1
    iget v0, p1, Ln3/z/c1$b;->c:I

    .line 13
    iput v0, p0, Ln3/z/a0;->a:I

    .line 14
    iget-object v0, p1, Ln3/z/c1$b;->b:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v0, v2}, Ls1/d0/j;->f(II)Ls1/d0/g;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ls1/d0/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v1, v0

    check-cast v1, Ls1/d0/h;

    invoke-virtual {v1}, Ls1/d0/h;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ls1/u/z;

    invoke-virtual {v1}, Ls1/u/z;->a()I

    move-result v1

    .line 17
    iget-object v2, p0, Ln3/z/a0;->c:Ljava/util/ArrayDeque;

    .line 18
    iget-object v3, p1, Ln3/z/c1$b;->b:Ljava/util/List;

    .line 19
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object v0, p0, Ln3/z/a0;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 21
    iget v0, p1, Ln3/z/c1$b;->d:I

    .line 22
    iput v0, p0, Ln3/z/a0;->b:I

    .line 23
    iget v0, p1, Ln3/z/c1$b;->c:I

    .line 24
    iput v0, p0, Ln3/z/a0;->a:I

    .line 25
    iget-object v0, p0, Ln3/z/a0;->c:Ljava/util/ArrayDeque;

    .line 26
    iget-object p1, p1, Ln3/z/c1$b;->b:Ljava/util/List;

    .line 27
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 28
    :cond_3
    instance-of v0, p1, Ln3/z/c1$a;

    if-eqz v0, :cond_6

    check-cast p1, Ln3/z/c1$a;

    .line 29
    iget-object v0, p0, Ln3/z/a0;->d:Ln3/z/x0;

    .line 30
    iget-object v4, p1, Ln3/z/c1$a;->a:Ln3/z/t0;

    .line 31
    sget-object v5, Ln3/z/r0$c;->c:Ln3/z/r0$c;

    invoke-virtual {v0, v4, v2, v5}, Ln3/z/x0;->d(Ln3/z/t0;ZLn3/z/r0;)Z

    .line 32
    iget-object v0, p1, Ln3/z/c1$a;->a:Ln3/z/t0;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v3, :cond_5

    if-ne v0, v1, :cond_4

    .line 34
    iget v0, p1, Ln3/z/c1$a;->d:I

    .line 35
    iput v0, p0, Ln3/z/a0;->b:I

    .line 36
    invoke-virtual {p1}, Ln3/z/c1$a;->c()I

    move-result p1

    :goto_1
    if-ge v2, p1, :cond_7

    iget-object v0, p0, Ln3/z/a0;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 37
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Page drop type must be prepend or append"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_5
    iget v0, p1, Ln3/z/c1$a;->d:I

    .line 39
    iput v0, p0, Ln3/z/a0;->a:I

    .line 40
    invoke-virtual {p1}, Ln3/z/c1$a;->c()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_7

    iget-object v0, p0, Ln3/z/a0;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 41
    :cond_6
    instance-of v0, p1, Ln3/z/c1$c;

    if-eqz v0, :cond_7

    check-cast p1, Ln3/z/c1$c;

    .line 42
    iget-object v0, p0, Ln3/z/a0;->d:Ln3/z/x0;

    .line 43
    iget-object v1, p1, Ln3/z/c1$c;->a:Ln3/z/t0;

    .line 44
    iget-boolean v2, p1, Ln3/z/c1$c;->b:Z

    .line 45
    iget-object p1, p1, Ln3/z/c1$c;->c:Ln3/z/r0;

    .line 46
    invoke-virtual {v0, v1, v2, p1}, Ln3/z/x0;->d(Ln3/z/t0;ZLn3/z/r0;)Z

    :cond_7
    :goto_3
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ln3/z/c1<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Ln3/z/a0;->c:Ljava/util/ArrayDeque;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Ln3/z/c1$b;->g:Ln3/z/c1$b$a;

    .line 4
    iget-object v2, p0, Ln3/z/a0;->c:Ljava/util/ArrayDeque;

    invoke-static {v2}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 5
    iget v3, p0, Ln3/z/a0;->a:I

    .line 6
    iget v4, p0, Ln3/z/a0;->b:I

    .line 7
    iget-object v5, p0, Ln3/z/a0;->d:Ln3/z/x0;

    invoke-virtual {v5}, Ln3/z/x0;->e()Ln3/z/q;

    move-result-object v5

    .line 8
    invoke-virtual {v1, v2, v3, v4, v5}, Ln3/z/c1$b$a;->c(Ljava/util/List;IILn3/z/q;)Ln3/z/c1$b;

    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Ln3/z/a0;->d:Ln3/z/x0;

    .line 11
    iget-object v3, v1, Ln3/z/x0;->d:Ln3/z/s0;

    .line 12
    sget-object v4, Ln3/z/t0;->a:Ln3/z/t0;

    .line 13
    iget-object v5, v3, Ln3/z/s0;->a:Ln3/z/r0;

    const/4 v6, 0x0

    .line 14
    invoke-static {v5, v6}, Ln3/z/c1$c;->c(Ln3/z/r0;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 15
    new-instance v7, Ln3/z/c1$c;

    invoke-direct {v7, v4, v6, v5}, Ln3/z/c1$c;-><init>(Ln3/z/t0;ZLn3/z/r0;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_1
    sget-object v5, Ln3/z/t0;->b:Ln3/z/t0;

    .line 17
    iget-object v7, v3, Ln3/z/s0;->b:Ln3/z/r0;

    .line 18
    invoke-static {v7, v6}, Ln3/z/c1$c;->c(Ln3/z/r0;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 19
    new-instance v8, Ln3/z/c1$c;

    invoke-direct {v8, v5, v6, v7}, Ln3/z/c1$c;-><init>(Ln3/z/t0;ZLn3/z/r0;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_2
    sget-object v7, Ln3/z/t0;->c:Ln3/z/t0;

    .line 21
    iget-object v3, v3, Ln3/z/s0;->c:Ln3/z/r0;

    .line 22
    invoke-static {v3, v6}, Ln3/z/c1$c;->c(Ln3/z/r0;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 23
    new-instance v8, Ln3/z/c1$c;

    invoke-direct {v8, v7, v6, v3}, Ln3/z/c1$c;-><init>(Ln3/z/t0;ZLn3/z/r0;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_3
    iget-object v1, v1, Ln3/z/x0;->e:Ln3/z/s0;

    if-eqz v1, :cond_6

    .line 25
    iget-object v3, v1, Ln3/z/s0;->a:Ln3/z/r0;

    .line 26
    invoke-static {v3, v2}, Ln3/z/c1$c;->c(Ln3/z/r0;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 27
    new-instance v6, Ln3/z/c1$c;

    invoke-direct {v6, v4, v2, v3}, Ln3/z/c1$c;-><init>(Ln3/z/t0;ZLn3/z/r0;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_4
    iget-object v3, v1, Ln3/z/s0;->b:Ln3/z/r0;

    .line 29
    invoke-static {v3, v2}, Ln3/z/c1$c;->c(Ln3/z/r0;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 30
    new-instance v4, Ln3/z/c1$c;

    invoke-direct {v4, v5, v2, v3}, Ln3/z/c1$c;-><init>(Ln3/z/t0;ZLn3/z/r0;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_5
    iget-object v1, v1, Ln3/z/s0;->c:Ln3/z/r0;

    .line 32
    invoke-static {v1, v2}, Ln3/z/c1$c;->c(Ln3/z/r0;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 33
    new-instance v3, Ln3/z/c1$c;

    invoke-direct {v3, v7, v2, v1}, Ln3/z/c1$c;-><init>(Ln3/z/t0;ZLn3/z/r0;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_0
    return-object v0
.end method
