.class public final Ln3/z/h2$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/h2$a;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.PagingDataDiffer$collectFrom$2$1$1"
    f = "PagingDataDiffer.kt"
    l = {
        0x8e,
        0xb4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Ln3/z/c1;

.field public final synthetic i:Ln3/z/h2$a;


# direct methods
.method public constructor <init>(Ln3/z/c1;Ls1/w/d;Ln3/z/h2$a;)V
    .locals 0

    iput-object p1, p0, Ln3/z/h2$a$a;->h:Ln3/z/c1;

    iput-object p3, p0, Ln3/z/h2$a$a;->i:Ln3/z/h2$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/z/h2$a$a;

    iget-object v0, p0, Ln3/z/h2$a$a;->h:Ln3/z/c1;

    iget-object v1, p0, Ln3/z/h2$a$a;->i:Ln3/z/h2$a;

    invoke-direct {p1, v0, p2, v1}, Ln3/z/h2$a$a;-><init>(Ln3/z/c1;Ls1/w/d;Ln3/z/h2$a;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/z/h2$a$a;

    iget-object v0, p0, Ln3/z/h2$a$a;->h:Ln3/z/c1;

    iget-object v1, p0, Ln3/z/h2$a$a;->i:Ln3/z/h2$a;

    invoke-direct {p1, v0, p2, v1}, Ln3/z/h2$a$a;-><init>(Ln3/z/c1;Ls1/w/d;Ln3/z/h2$a;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Ln3/z/h2$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v7, p0

    sget-object v0, Ln3/z/t0;->a:Ln3/z/t0;

    sget-object v8, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v7, Ln3/z/h2$a$a;->g:I

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v9, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v0, v7, Ln3/z/h2$a$a;->f:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/y;

    iget-object v1, v7, Ln3/z/h2$a$a;->e:Ljava/lang/Object;

    check-cast v1, Ln3/z/o1;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v11, v0

    move-object/from16 v0, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v7, Ln3/z/h2$a$a;->h:Ln3/z/c1;

    instance-of v4, v1, Ln3/z/c1$b;

    if-eqz v4, :cond_8

    check-cast v1, Ln3/z/c1$b;

    .line 5
    iget-object v1, v1, Ln3/z/c1$b;->a:Ln3/z/t0;

    if-ne v1, v0, :cond_8

    .line 6
    iget-object v0, v7, Ln3/z/h2$a$a;->i:Ln3/z/h2$a;

    iget-object v0, v0, Ln3/z/h2$a;->a:Ln3/z/h2;

    iget-object v0, v0, Ln3/z/h2;->f:Ln3/z/g2;

    .line 7
    iput-boolean v3, v0, Ln3/z/g2;->f:Z

    .line 8
    new-instance v10, Ln3/z/o1;

    iget-object v0, v7, Ln3/z/h2$a$a;->h:Ln3/z/c1;

    check-cast v0, Ln3/z/c1$b;

    invoke-direct {v10, v0}, Ln3/z/o1;-><init>(Ln3/z/c1$b;)V

    .line 9
    new-instance v11, Ls1/z/c/y;

    invoke-direct {v11}, Ls1/z/c/y;-><init>()V

    iput-boolean v3, v11, Ls1/z/c/y;->a:Z

    .line 10
    iget-object v0, v7, Ln3/z/h2$a$a;->i:Ln3/z/h2$a;

    iget-object v0, v0, Ln3/z/h2$a;->a:Ln3/z/h2;

    iget-object v0, v0, Ln3/z/h2;->f:Ln3/z/g2;

    .line 11
    iget-object v1, v0, Ln3/z/g2;->a:Ln3/z/o1;

    .line 12
    iget-object v3, v7, Ln3/z/h2$a$a;->h:Ln3/z/c1;

    check-cast v3, Ln3/z/c1$b;

    .line 13
    iget-object v3, v3, Ln3/z/c1$b;->e:Ln3/z/q;

    .line 14
    iget v4, v0, Ln3/z/g2;->g:I

    .line 15
    new-instance v5, Ln3/z/h2$a$a$a;

    invoke-direct {v5, v7, v10, v11}, Ln3/z/h2$a$a$a;-><init>(Ln3/z/h2$a$a;Ln3/z/o1;Ls1/z/c/y;)V

    iput-object v10, v7, Ln3/z/h2$a$a;->e:Ljava/lang/Object;

    iput-object v11, v7, Ln3/z/h2$a$a;->f:Ljava/lang/Object;

    iput v2, v7, Ln3/z/h2$a$a;->g:I

    move-object v2, v10

    move-object/from16 v6, p0

    .line 16
    invoke-virtual/range {v0 .. v6}, Ln3/z/g2;->b(Ln3/z/z0;Ln3/z/z0;Ln3/z/q;ILs1/z/b/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_3

    return-object v8

    :cond_3
    move-object v1, v10

    .line 17
    :goto_0
    check-cast v0, Ljava/lang/Integer;

    .line 18
    iget-boolean v2, v11, Ls1/z/c/y;->a:Z

    if-eqz v2, :cond_7

    .line 19
    iget-object v2, v7, Ln3/z/h2$a$a;->i:Ln3/z/h2$a;

    iget-object v2, v2, Ln3/z/h2$a;->a:Ln3/z/h2;

    iget-object v2, v2, Ln3/z/h2;->f:Ln3/z/g2;

    iget-object v3, v7, Ln3/z/h2$a$a;->h:Ln3/z/c1;

    check-cast v3, Ln3/z/c1$b;

    .line 20
    iget-object v3, v3, Ln3/z/c1$b;->e:Ln3/z/q;

    .line 21
    iget-object v4, v2, Ln3/z/g2;->c:Ln3/z/x0;

    invoke-virtual {v4}, Ln3/z/x0;->e()Ln3/z/q;

    move-result-object v4

    invoke-static {v4, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 22
    :cond_4
    iget-object v4, v2, Ln3/z/g2;->c:Ln3/z/x0;

    invoke-virtual {v4, v3}, Ln3/z/x0;->c(Ln3/z/q;)V

    .line 23
    iget-object v2, v2, Ln3/z/g2;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/z/b/l;

    .line 25
    invoke-interface {v4, v3}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 26
    iget-object v0, v7, Ln3/z/h2$a$a;->i:Ln3/z/h2$a;

    iget-object v0, v0, Ln3/z/h2$a;->a:Ln3/z/h2;

    iget-object v0, v0, Ln3/z/h2;->f:Ln3/z/g2;

    .line 27
    iget-object v0, v0, Ln3/z/g2;->b:Ln3/z/h3;

    if-eqz v0, :cond_27

    .line 28
    iget v2, v1, Ln3/z/o1;->b:I

    .line 29
    new-instance v3, Ln3/z/i3$b;

    .line 30
    div-int/2addr v2, v9

    .line 31
    invoke-virtual {v1}, Ln3/z/o1;->i()I

    move-result v4

    .line 32
    invoke-virtual {v1}, Ln3/z/o1;->j()I

    move-result v1

    .line 33
    invoke-direct {v3, v2, v2, v4, v1}, Ln3/z/i3$b;-><init>(IIII)V

    .line 34
    invoke-interface {v0, v3}, Ln3/z/h3;->a(Ln3/z/i3;)V

    goto/16 :goto_e

    .line 35
    :cond_6
    iget-object v2, v7, Ln3/z/h2$a$a;->i:Ln3/z/h2$a;

    iget-object v2, v2, Ln3/z/h2$a;->a:Ln3/z/h2;

    iget-object v2, v2, Ln3/z/h2;->f:Ln3/z/g2;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 36
    iput v3, v2, Ln3/z/g2;->g:I

    .line 37
    iget-object v2, v7, Ln3/z/h2$a$a;->i:Ln3/z/h2$a;

    iget-object v2, v2, Ln3/z/h2$a;->a:Ln3/z/h2;

    iget-object v2, v2, Ln3/z/h2;->f:Ln3/z/g2;

    .line 38
    iget-object v2, v2, Ln3/z/g2;->b:Ln3/z/h3;

    if-eqz v2, :cond_27

    .line 39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 40
    invoke-virtual {v1, v0}, Ln3/z/o1;->f(I)Ln3/z/i3$a;

    move-result-object v0

    .line 41
    invoke-interface {v2, v0}, Ln3/z/h3;->a(Ln3/z/i3;)V

    goto/16 :goto_e

    .line 42
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing call to onListPresentable after new list was presented. If you are seeing this exception, it is generally an indication of an issue with Paging. Please file a bug so we can fix it at: https://issuetracker.google.com/issues/new?component=413106"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_8
    iget-object v1, v7, Ln3/z/h2$a$a;->i:Ln3/z/h2$a;

    iget-object v1, v1, Ln3/z/h2$a;->a:Ln3/z/h2;

    iget-object v1, v1, Ln3/z/h2;->f:Ln3/z/g2;

    check-cast v1, Ln3/z/g$a;

    .line 44
    iget-object v1, v1, Ln3/z/g$a;->l:Ln3/z/g;

    .line 45
    iget-boolean v1, v1, Ln3/z/g;->b:Z

    if-eqz v1, :cond_9

    .line 46
    iput v9, v7, Ln3/z/h2$a$a;->g:I

    invoke-static/range {p0 .. p0}, Lq3/a/j;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_9

    return-object v8

    .line 47
    :cond_9
    :goto_3
    iget-object v1, v7, Ln3/z/h2$a$a;->i:Ln3/z/h2$a;

    iget-object v1, v1, Ln3/z/h2$a;->a:Ln3/z/h2;

    iget-object v1, v1, Ln3/z/h2;->f:Ln3/z/g2;

    .line 48
    iget-object v4, v1, Ln3/z/g2;->a:Ln3/z/o1;

    .line 49
    iget-object v5, v7, Ln3/z/h2$a$a;->h:Ln3/z/c1;

    .line 50
    iget-object v1, v1, Ln3/z/g2;->h:Ln3/z/g2$b;

    .line 51
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Ln3/z/t0;->c:Ln3/z/t0;

    sget-object v8, Ln3/z/t0;->b:Ln3/z/t0;

    const-string v10, "pageEvent"

    invoke-static {v5, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "callback"

    invoke-static {v1, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    instance-of v10, v5, Ln3/z/c1$b;

    if-eqz v10, :cond_10

    check-cast v5, Ln3/z/c1$b;

    .line 53
    iget-object v10, v5, Ln3/z/c1$b;->b:Ljava/util/List;

    .line 54
    invoke-virtual {v4, v10}, Ln3/z/o1;->h(Ljava/util/List;)I

    move-result v10

    .line 55
    invoke-virtual {v4}, Ln3/z/o1;->a()I

    move-result v11

    .line 56
    iget-object v12, v5, Ln3/z/c1$b;->a:Ln3/z/t0;

    .line 57
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-eqz v12, :cond_f

    if-eq v12, v2, :cond_c

    if-eq v12, v9, :cond_a

    goto/16 :goto_4

    .line 58
    :cond_a
    iget v9, v4, Ln3/z/o1;->d:I

    .line 59
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 60
    iget v12, v4, Ln3/z/o1;->c:I

    .line 61
    iget v13, v4, Ln3/z/o1;->b:I

    add-int/2addr v12, v13

    sub-int v13, v10, v9

    add-int v14, v12, v9

    .line 62
    iget-object v15, v4, Ln3/z/o1;->a:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    .line 63
    iget-object v3, v5, Ln3/z/c1$b;->b:Ljava/util/List;

    .line 64
    invoke-interface {v15, v2, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 65
    iget v2, v4, Ln3/z/o1;->b:I

    add-int/2addr v2, v10

    .line 66
    iput v2, v4, Ln3/z/o1;->b:I

    .line 67
    iget v2, v5, Ln3/z/c1$b;->d:I

    .line 68
    iput v2, v4, Ln3/z/o1;->d:I

    .line 69
    invoke-interface {v1, v12, v9}, Ln3/z/o1$b;->a(II)V

    .line 70
    invoke-interface {v1, v14, v13}, Ln3/z/o1$b;->onInserted(II)V

    .line 71
    invoke-virtual {v4}, Ln3/z/o1;->a()I

    move-result v2

    sub-int/2addr v2, v11

    sub-int/2addr v2, v13

    if-lez v2, :cond_b

    .line 72
    invoke-virtual {v4}, Ln3/z/o1;->a()I

    move-result v3

    sub-int/2addr v3, v2

    .line 73
    invoke-interface {v1, v3, v2}, Ln3/z/o1$b;->onInserted(II)V

    goto :goto_4

    :cond_b
    if-gez v2, :cond_e

    .line 74
    invoke-virtual {v4}, Ln3/z/o1;->a()I

    move-result v3

    neg-int v2, v2

    invoke-interface {v1, v3, v2}, Ln3/z/o1$b;->onRemoved(II)V

    goto :goto_4

    .line 75
    :cond_c
    iget v2, v4, Ln3/z/o1;->c:I

    .line 76
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 77
    iget v3, v4, Ln3/z/o1;->c:I

    sub-int/2addr v3, v2

    sub-int v9, v10, v2

    .line 78
    iget-object v12, v4, Ln3/z/o1;->a:Ljava/util/List;

    .line 79
    iget-object v13, v5, Ln3/z/c1$b;->b:Ljava/util/List;

    const/4 v14, 0x0

    .line 80
    invoke-interface {v12, v14, v13}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 81
    iget v12, v4, Ln3/z/o1;->b:I

    add-int/2addr v12, v10

    .line 82
    iput v12, v4, Ln3/z/o1;->b:I

    .line 83
    iget v10, v5, Ln3/z/c1$b;->c:I

    .line 84
    iput v10, v4, Ln3/z/o1;->c:I

    .line 85
    invoke-interface {v1, v3, v2}, Ln3/z/o1$b;->a(II)V

    .line 86
    invoke-interface {v1, v14, v9}, Ln3/z/o1$b;->onInserted(II)V

    .line 87
    invoke-virtual {v4}, Ln3/z/o1;->a()I

    move-result v2

    sub-int/2addr v2, v11

    sub-int/2addr v2, v9

    if-lez v2, :cond_d

    .line 88
    invoke-interface {v1, v14, v2}, Ln3/z/o1$b;->onInserted(II)V

    goto :goto_4

    :cond_d
    if-gez v2, :cond_e

    neg-int v2, v2

    .line 89
    invoke-interface {v1, v14, v2}, Ln3/z/o1$b;->onRemoved(II)V

    .line 90
    :cond_e
    :goto_4
    iget-object v2, v5, Ln3/z/c1$b;->e:Ln3/z/q;

    .line 91
    new-instance v3, Ln3/z/p1;

    invoke-direct {v3, v1}, Ln3/z/p1;-><init>(Ln3/z/o1$b;)V

    .line 92
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "op"

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v1, v2, Ln3/z/q;->d:Ln3/z/s0;

    .line 94
    iget-object v4, v1, Ln3/z/s0;->a:Ln3/z/r0;

    .line 95
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v0, v5, v4}, Ln3/z/p1;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v4, v1, Ln3/z/s0;->b:Ln3/z/r0;

    .line 97
    invoke-virtual {v3, v8, v5, v4}, Ln3/z/p1;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v1, v1, Ln3/z/s0;->c:Ln3/z/r0;

    .line 99
    invoke-virtual {v3, v6, v5, v1}, Ln3/z/p1;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v1, v2, Ln3/z/q;->e:Ln3/z/s0;

    if-eqz v1, :cond_1a

    .line 101
    iget-object v2, v1, Ln3/z/s0;->a:Ln3/z/r0;

    .line 102
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v0, v4, v2}, Ln3/z/p1;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, v1, Ln3/z/s0;->b:Ln3/z/r0;

    .line 104
    invoke-virtual {v3, v8, v4, v0}, Ln3/z/p1;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, v1, Ln3/z/s0;->c:Ln3/z/r0;

    .line 106
    invoke-virtual {v3, v6, v4, v0}, Ln3/z/p1;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 107
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 108
    :cond_10
    instance-of v0, v5, Ln3/z/c1$a;

    if-eqz v0, :cond_19

    check-cast v5, Ln3/z/c1$a;

    .line 109
    sget-object v0, Ln3/z/r0$c;->c:Ln3/z/r0$c;

    invoke-virtual {v4}, Ln3/z/o1;->a()I

    move-result v2

    .line 110
    iget-object v3, v5, Ln3/z/c1$a;->a:Ln3/z/t0;

    if-ne v3, v8, :cond_14

    .line 111
    iget v3, v4, Ln3/z/o1;->c:I

    .line 112
    iget v9, v5, Ln3/z/c1$a;->b:I

    .line 113
    new-instance v10, Ls1/d0/i;

    .line 114
    iget v11, v5, Ln3/z/c1$a;->c:I

    .line 115
    invoke-direct {v10, v9, v11}, Ls1/d0/i;-><init>(II)V

    invoke-virtual {v4, v10}, Ln3/z/o1;->g(Ls1/d0/i;)I

    move-result v9

    .line 116
    iget v10, v4, Ln3/z/o1;->b:I

    sub-int/2addr v10, v9

    .line 117
    iput v10, v4, Ln3/z/o1;->b:I

    .line 118
    iget v9, v5, Ln3/z/c1$a;->d:I

    .line 119
    iput v9, v4, Ln3/z/o1;->c:I

    .line 120
    invoke-virtual {v4}, Ln3/z/o1;->a()I

    move-result v4

    sub-int/2addr v4, v2

    if-lez v4, :cond_11

    const/4 v2, 0x0

    .line 121
    invoke-interface {v1, v2, v4}, Ln3/z/o1$b;->onInserted(II)V

    goto :goto_5

    :cond_11
    const/4 v2, 0x0

    if-gez v4, :cond_12

    neg-int v9, v4

    .line 122
    invoke-interface {v1, v2, v9}, Ln3/z/o1$b;->onRemoved(II)V

    :cond_12
    :goto_5
    add-int/2addr v3, v4

    .line 123
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 124
    iget v4, v5, Ln3/z/c1$a;->d:I

    sub-int/2addr v4, v3

    if-lez v4, :cond_13

    .line 125
    invoke-interface {v1, v3, v4}, Ln3/z/o1$b;->a(II)V

    .line 126
    :cond_13
    invoke-interface {v1, v8, v2, v0}, Ln3/z/o1$b;->b(Ln3/z/t0;ZLn3/z/r0;)V

    goto :goto_8

    .line 127
    :cond_14
    iget v3, v4, Ln3/z/o1;->d:I

    .line 128
    iget v9, v5, Ln3/z/c1$a;->b:I

    .line 129
    new-instance v10, Ls1/d0/i;

    .line 130
    iget v11, v5, Ln3/z/c1$a;->c:I

    .line 131
    invoke-direct {v10, v9, v11}, Ls1/d0/i;-><init>(II)V

    invoke-virtual {v4, v10}, Ln3/z/o1;->g(Ls1/d0/i;)I

    move-result v9

    .line 132
    iget v10, v4, Ln3/z/o1;->b:I

    sub-int/2addr v10, v9

    .line 133
    iput v10, v4, Ln3/z/o1;->b:I

    .line 134
    iget v9, v5, Ln3/z/c1$a;->d:I

    .line 135
    iput v9, v4, Ln3/z/o1;->d:I

    .line 136
    invoke-virtual {v4}, Ln3/z/o1;->a()I

    move-result v9

    sub-int/2addr v9, v2

    if-lez v9, :cond_15

    .line 137
    invoke-interface {v1, v2, v9}, Ln3/z/o1$b;->onInserted(II)V

    goto :goto_6

    :cond_15
    if-gez v9, :cond_16

    add-int/2addr v2, v9

    neg-int v10, v9

    .line 138
    invoke-interface {v1, v2, v10}, Ln3/z/o1$b;->onRemoved(II)V

    :cond_16
    :goto_6
    if-gez v9, :cond_17

    neg-int v2, v9

    .line 139
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_7

    :cond_17
    const/4 v2, 0x0

    .line 140
    :goto_7
    iget v9, v5, Ln3/z/c1$a;->d:I

    sub-int/2addr v3, v2

    sub-int/2addr v9, v3

    if-lez v9, :cond_18

    .line 141
    invoke-virtual {v4}, Ln3/z/o1;->a()I

    move-result v2

    .line 142
    iget v3, v5, Ln3/z/c1$a;->d:I

    sub-int/2addr v2, v3

    .line 143
    invoke-interface {v1, v2, v9}, Ln3/z/o1$b;->a(II)V

    :cond_18
    const/4 v2, 0x0

    .line 144
    invoke-interface {v1, v6, v2, v0}, Ln3/z/o1$b;->b(Ln3/z/t0;ZLn3/z/r0;)V

    goto :goto_8

    .line 145
    :cond_19
    instance-of v0, v5, Ln3/z/c1$c;

    if-eqz v0, :cond_1a

    .line 146
    check-cast v5, Ln3/z/c1$c;

    .line 147
    iget-object v0, v5, Ln3/z/c1$c;->a:Ln3/z/t0;

    .line 148
    iget-boolean v2, v5, Ln3/z/c1$c;->b:Z

    .line 149
    iget-object v3, v5, Ln3/z/c1$c;->c:Ln3/z/r0;

    .line 150
    invoke-interface {v1, v0, v2, v3}, Ln3/z/o1$b;->b(Ln3/z/t0;ZLn3/z/r0;)V

    .line 151
    :cond_1a
    :goto_8
    iget-object v0, v7, Ln3/z/h2$a$a;->h:Ln3/z/c1;

    instance-of v0, v0, Ln3/z/c1$a;

    if-eqz v0, :cond_1b

    .line 152
    iget-object v0, v7, Ln3/z/h2$a$a;->i:Ln3/z/h2$a;

    iget-object v0, v0, Ln3/z/h2$a;->a:Ln3/z/h2;

    iget-object v0, v0, Ln3/z/h2;->f:Ln3/z/g2;

    const/4 v1, 0x0

    .line 153
    iput-boolean v1, v0, Ln3/z/g2;->f:Z

    .line 154
    :cond_1b
    iget-object v0, v7, Ln3/z/h2$a$a;->h:Ln3/z/c1;

    instance-of v1, v0, Ln3/z/c1$b;

    if-eqz v1, :cond_27

    .line 155
    move-object v1, v0

    check-cast v1, Ln3/z/c1$b;

    .line 156
    iget-object v1, v1, Ln3/z/c1$b;->e:Ln3/z/q;

    .line 157
    iget-object v1, v1, Ln3/z/q;->b:Ln3/z/r0;

    .line 158
    iget-boolean v1, v1, Ln3/z/r0;->a:Z

    .line 159
    move-object v2, v0

    check-cast v2, Ln3/z/c1$b;

    .line 160
    iget-object v2, v2, Ln3/z/c1$b;->e:Ln3/z/q;

    .line 161
    iget-object v2, v2, Ln3/z/q;->c:Ln3/z/r0;

    .line 162
    iget-boolean v2, v2, Ln3/z/r0;->a:Z

    .line 163
    move-object v3, v0

    check-cast v3, Ln3/z/c1$b;

    .line 164
    iget-object v3, v3, Ln3/z/c1$b;->a:Ln3/z/t0;

    if-ne v3, v8, :cond_1c

    if-nez v1, :cond_1d

    .line 165
    :cond_1c
    move-object v1, v0

    check-cast v1, Ln3/z/c1$b;

    .line 166
    iget-object v1, v1, Ln3/z/c1$b;->a:Ln3/z/t0;

    if-ne v1, v6, :cond_1e

    if-nez v2, :cond_1d

    goto :goto_9

    :cond_1d
    const/4 v1, 0x0

    goto :goto_a

    :cond_1e
    :goto_9
    const/4 v1, 0x1

    .line 167
    :goto_a
    check-cast v0, Ln3/z/c1$b;

    .line 168
    iget-object v0, v0, Ln3/z/c1$b;->b:Ljava/util/List;

    .line 169
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1f
    const/4 v14, 0x1

    goto :goto_b

    .line 170
    :cond_20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/z/g3;

    .line 171
    iget-object v2, v2, Ln3/z/g3;->b:Ljava/util/List;

    .line 172
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    .line 173
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_21

    const/4 v14, 0x0

    :goto_b
    if-nez v1, :cond_22

    .line 175
    iget-object v0, v7, Ln3/z/h2$a$a;->i:Ln3/z/h2$a;

    iget-object v0, v0, Ln3/z/h2$a;->a:Ln3/z/h2;

    iget-object v0, v0, Ln3/z/h2;->f:Ln3/z/g2;

    const/4 v1, 0x0

    .line 176
    iput-boolean v1, v0, Ln3/z/g2;->f:Z

    goto :goto_e

    .line 177
    :cond_22
    iget-object v0, v7, Ln3/z/h2$a$a;->i:Ln3/z/h2$a;

    iget-object v0, v0, Ln3/z/h2$a;->a:Ln3/z/h2;

    iget-object v0, v0, Ln3/z/h2;->f:Ln3/z/g2;

    .line 178
    iget-boolean v0, v0, Ln3/z/g2;->f:Z

    if-nez v0, :cond_23

    if-eqz v14, :cond_27

    :cond_23
    if-nez v14, :cond_25

    .line 179
    iget-object v0, v7, Ln3/z/h2$a$a;->i:Ln3/z/h2$a;

    iget-object v0, v0, Ln3/z/h2$a;->a:Ln3/z/h2;

    iget-object v0, v0, Ln3/z/h2;->f:Ln3/z/g2;

    .line 180
    iget v0, v0, Ln3/z/g2;->g:I

    .line 181
    iget-object v1, v7, Ln3/z/h2$a$a;->i:Ln3/z/h2$a;

    iget-object v1, v1, Ln3/z/h2$a;->a:Ln3/z/h2;

    iget-object v1, v1, Ln3/z/h2;->f:Ln3/z/g2;

    .line 182
    iget-object v2, v1, Ln3/z/g2;->a:Ln3/z/o1;

    .line 183
    iget v2, v2, Ln3/z/o1;->c:I

    if-lt v0, v2, :cond_25

    .line 184
    iget v0, v1, Ln3/z/g2;->g:I

    .line 185
    iget-object v1, v7, Ln3/z/h2$a$a;->i:Ln3/z/h2$a;

    iget-object v1, v1, Ln3/z/h2$a;->a:Ln3/z/h2;

    iget-object v1, v1, Ln3/z/h2;->f:Ln3/z/g2;

    .line 186
    iget-object v1, v1, Ln3/z/g2;->a:Ln3/z/o1;

    .line 187
    iget v2, v1, Ln3/z/o1;->c:I

    .line 188
    iget v1, v1, Ln3/z/o1;->b:I

    add-int/2addr v2, v1

    if-le v0, v2, :cond_24

    goto :goto_c

    :cond_24
    const/4 v2, 0x0

    goto :goto_d

    :cond_25
    :goto_c
    const/4 v2, 0x1

    :goto_d
    if-eqz v2, :cond_26

    .line 189
    iget-object v0, v7, Ln3/z/h2$a$a;->i:Ln3/z/h2$a;

    iget-object v0, v0, Ln3/z/h2$a;->a:Ln3/z/h2;

    iget-object v0, v0, Ln3/z/h2;->f:Ln3/z/g2;

    .line 190
    iget-object v1, v0, Ln3/z/g2;->b:Ln3/z/h3;

    if-eqz v1, :cond_27

    .line 191
    iget-object v2, v0, Ln3/z/g2;->a:Ln3/z/o1;

    .line 192
    iget v0, v0, Ln3/z/g2;->g:I

    .line 193
    invoke-virtual {v2, v0}, Ln3/z/o1;->f(I)Ln3/z/i3$a;

    move-result-object v0

    .line 194
    invoke-interface {v1, v0}, Ln3/z/h3;->a(Ln3/z/i3;)V

    goto :goto_e

    .line 195
    :cond_26
    iget-object v0, v7, Ln3/z/h2$a$a;->i:Ln3/z/h2$a;

    iget-object v0, v0, Ln3/z/h2$a;->a:Ln3/z/h2;

    iget-object v0, v0, Ln3/z/h2;->f:Ln3/z/g2;

    const/4 v1, 0x0

    .line 196
    iput-boolean v1, v0, Ln3/z/g2;->f:Z

    .line 197
    :cond_27
    :goto_e
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
