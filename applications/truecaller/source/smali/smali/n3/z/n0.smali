.class public final Ln3/z/n0;
.super Ln3/z/k2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ln3/z/k2<",
        "TKey;TValue;>;"
    }
.end annotation


# instance fields
.field public c:I

.field public final d:Lq3/a/g0;

.field public final e:Ln3/z/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/v<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/a/g0;Ln3/z/v;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/g0;",
            "Ln3/z/v<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    const-string v0, "fetchDispatcher"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataSource"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/z/k2;-><init>()V

    iput-object p1, p0, Ln3/z/n0;->d:Lq3/a/g0;

    iput-object p2, p0, Ln3/z/n0;->e:Ln3/z/v;

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Ln3/z/n0;->c:I

    .line 3
    new-instance v0, Ln3/z/n0$a;

    invoke-direct {v0, p0}, Ln3/z/n0$a;-><init>(Ln3/z/n0;)V

    new-instance v1, Ln3/z/p0;

    invoke-direct {v1, v0}, Ln3/z/p0;-><init>(Ls1/z/b/a;)V

    const-string v0, "onInvalidatedCallback"

    .line 4
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p2, p2, Ln3/z/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance p2, Ln3/z/n0$b;

    invoke-direct {p2, p0}, Ln3/z/n0$b;-><init>(Ln3/z/n0;)V

    invoke-virtual {p0, p2}, Ln3/z/k2;->f(Ls1/z/b/a;)V

    .line 7
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    new-instance v3, Ln3/z/n0$c;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p2}, Ln3/z/n0$c;-><init>(Ln3/z/n0;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/z/n0;->e:Ln3/z/v;

    .line 2
    iget-object v0, v0, Ln3/z/v;->c:Ln3/z/v$d;

    .line 3
    sget-object v1, Ln3/z/v$d;->a:Ln3/z/v$d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Ln3/z/l2;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/l2<",
            "TKey;TValue;>;)TKey;"
        }
    .end annotation

    const-string v0, "state"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ln3/z/n0;->e:Ln3/z/v;

    .line 2
    iget-object v0, v0, Ln3/z/v;->c:Ln3/z/v$d;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    if-eq v0, v1, :cond_15

    const/4 v4, 0x2

    if-ne v0, v4, :cond_b

    .line 4
    iget-object v0, p1, Ln3/z/l2;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_15

    .line 5
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 6
    iget-object v4, p1, Ln3/z/l2;->a:Ljava/util/List;

    .line 7
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/z/k2$b$b;

    .line 9
    iget-object v5, v5, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 10
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move v4, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v1

    :goto_1
    if-eqz v4, :cond_3

    move-object p1, v3

    goto/16 :goto_3

    .line 11
    :cond_3
    iget v4, p1, Ln3/z/l2;->d:I

    sub-int/2addr v0, v4

    .line 12
    :goto_2
    iget-object v4, p1, Ln3/z/l2;->a:Ljava/util/List;

    .line 13
    invoke-static {v4}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 14
    iget-object v4, p1, Ln3/z/l2;->a:Ljava/util/List;

    .line 15
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/z/k2$b$b;

    .line 16
    iget-object v4, v4, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 17
    invoke-static {v4}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v4

    if-le v0, v4, :cond_4

    .line 18
    iget-object v4, p1, Ln3/z/l2;->a:Ljava/util/List;

    .line 19
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/z/k2$b$b;

    .line 20
    iget-object v4, v4, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 21
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 22
    :cond_4
    iget-object v4, p1, Ln3/z/l2;->a:Ljava/util/List;

    .line 23
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/z/k2$b$b;

    .line 24
    iget-object v6, v5, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 25
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v1

    if-eqz v6, :cond_5

    .line 26
    iget-object v4, p1, Ln3/z/l2;->a:Ljava/util/List;

    .line 27
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 28
    :cond_6
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 29
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    .line 30
    check-cast v6, Ln3/z/k2$b$b;

    .line 31
    iget-object v7, v6, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 32
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v1

    if-eqz v7, :cond_6

    if-gez v0, :cond_7

    .line 33
    iget-object p1, v5, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 34
    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 35
    :cond_7
    iget-object v1, p1, Ln3/z/l2;->a:Ljava/util/List;

    invoke-static {v1}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v1

    if-ne v2, v1, :cond_8

    iget-object v1, p1, Ln3/z/l2;->a:Ljava/util/List;

    invoke-static {v1}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/z/k2$b$b;

    .line 36
    iget-object v1, v1, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 37
    invoke-static {v1}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v1

    if-le v0, v1, :cond_8

    .line 38
    iget-object p1, v6, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 39
    invoke-static {p1}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 40
    :cond_8
    iget-object p1, p1, Ln3/z/l2;->a:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/z/k2$b$b;

    .line 41
    iget-object p1, p1, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 42
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    if-eqz p1, :cond_15

    .line 43
    iget-object v0, p0, Ln3/z/n0;->e:Ln3/z/v;

    invoke-virtual {v0, p1}, Ln3/z/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_a

    .line 44
    :cond_9
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "List contains no element matching the predicate."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_a
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Collection contains no element matching the predicate."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_b
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 47
    :cond_c
    iget-object v0, p1, Ln3/z/l2;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_15

    .line 48
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 49
    iget v4, p1, Ln3/z/l2;->d:I

    sub-int v4, v0, v4

    move v5, v2

    .line 50
    :goto_4
    iget-object v6, p1, Ln3/z/l2;->a:Ljava/util/List;

    .line 51
    invoke-static {v6}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 52
    iget-object v6, p1, Ln3/z/l2;->a:Ljava/util/List;

    .line 53
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/z/k2$b$b;

    .line 54
    iget-object v6, v6, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 55
    invoke-static {v6}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v6

    if-le v4, v6, :cond_d

    .line 56
    iget-object v6, p1, Ln3/z/l2;->a:Ljava/util/List;

    .line 57
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/z/k2$b$b;

    .line 58
    iget-object v6, v6, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 59
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 60
    :cond_d
    iget-object v5, p1, Ln3/z/l2;->a:Ljava/util/List;

    .line 61
    instance-of v6, v5, Ljava/util/Collection;

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_5

    .line 62
    :cond_e
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/z/k2$b$b;

    .line 63
    iget-object v6, v6, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 64
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    move v1, v2

    :cond_10
    :goto_5
    if-eqz v1, :cond_11

    goto :goto_8

    .line 65
    :cond_11
    iget v1, p1, Ln3/z/l2;->d:I

    sub-int/2addr v0, v1

    move v1, v2

    .line 66
    :goto_6
    iget-object v3, p1, Ln3/z/l2;->a:Ljava/util/List;

    .line 67
    invoke-static {v3}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v3

    if-ge v1, v3, :cond_12

    .line 68
    iget-object v3, p1, Ln3/z/l2;->a:Ljava/util/List;

    .line 69
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/z/k2$b$b;

    .line 70
    iget-object v3, v3, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 71
    invoke-static {v3}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v3

    if-le v0, v3, :cond_12

    .line 72
    iget-object v3, p1, Ln3/z/l2;->a:Ljava/util/List;

    .line 73
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/z/k2$b$b;

    .line 74
    iget-object v3, v3, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 75
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_12
    if-gez v0, :cond_13

    .line 76
    iget-object p1, p1, Ln3/z/l2;->a:Ljava/util/List;

    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/z/k2$b$b;

    goto :goto_7

    .line 77
    :cond_13
    iget-object p1, p1, Ln3/z/l2;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/z/k2$b$b;

    :goto_7
    move-object v3, p1

    :goto_8
    if-eqz v3, :cond_14

    .line 78
    iget-object p1, v3, Ln3/z/k2$b$b;->b:Ljava/lang/Object;

    if-eqz p1, :cond_14

    goto :goto_9

    .line 79
    :cond_14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_9
    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    .line 80
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_15
    :goto_a
    return-object v3
.end method

.method public e(Ln3/z/k2$a;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/k2$a<",
            "TKey;>;",
            "Ls1/w/d<",
            "-",
            "Ln3/z/k2$b<",
            "TKey;TValue;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ln3/z/k2$a$c;

    if-eqz v0, :cond_0

    sget-object v1, Ln3/z/t0;->a:Ln3/z/t0;

    :goto_0
    move-object v3, v1

    goto :goto_1

    .line 2
    :cond_0
    instance-of v1, p1, Ln3/z/k2$a$a;

    if-eqz v1, :cond_1

    sget-object v1, Ln3/z/t0;->c:Ln3/z/t0;

    goto :goto_0

    .line 3
    :cond_1
    instance-of v1, p1, Ln3/z/k2$a$b;

    if-eqz v1, :cond_4

    sget-object v1, Ln3/z/t0;->b:Ln3/z/t0;

    goto :goto_0

    .line 4
    :goto_1
    iget v1, p0, Ln3/z/n0;->c:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_3

    .line 5
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WARNING: pageSize on the LegacyPagingSource is not set.\nWhen using legacy DataSource / DataSourceFactory with Paging3, page size\nshould\'ve been set by the paging library but it is not set yet.\n\nIf you are seeing this message in tests where you are testing DataSource\nin isolation (without a Pager), it is expected and page size will be estimated\nbased on parameters.\n\nIf you are seeing this message despite using a Pager, please file a bug:\nhttps://issuetracker.google.com/issues/new?component=413106"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 6
    iget v0, p1, Ln3/z/k2$a;->a:I

    .line 7
    rem-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_2

    .line 8
    div-int/lit8 v0, v0, 0x3

    goto :goto_2

    .line 9
    :cond_2
    iget v0, p1, Ln3/z/k2$a;->a:I

    .line 10
    :goto_2
    iput v0, p0, Ln3/z/n0;->c:I

    .line 11
    :cond_3
    new-instance v0, Ls1/z/c/c0;

    invoke-direct {v0}, Ls1/z/c/c0;-><init>()V

    new-instance v1, Ln3/z/v$e;

    .line 12
    invoke-virtual {p1}, Ln3/z/k2$a;->a()Ljava/lang/Object;

    move-result-object v4

    .line 13
    iget v5, p1, Ln3/z/k2$a;->a:I

    .line 14
    iget-boolean v6, p1, Ln3/z/k2$a;->b:Z

    .line 15
    iget v7, p0, Ln3/z/n0;->c:I

    move-object v2, v1

    .line 16
    invoke-direct/range {v2 .. v7}, Ln3/z/v$e;-><init>(Ln3/z/t0;Ljava/lang/Object;IZI)V

    iput-object v1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 17
    iget-object v1, p0, Ln3/z/n0;->d:Lq3/a/g0;

    new-instance v2, Ln3/z/n0$d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p1, v3}, Ln3/z/n0$d;-><init>(Ln3/z/n0;Ls1/z/c/c0;Ln3/z/k2$a;Ls1/w/d;)V

    invoke-static {v1, v2, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
