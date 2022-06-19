.class public final Ln3/z/e1$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/e1;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Ln3/z/d1$a<",
        "TKey;TValue;>;",
        "Ljava/lang/Boolean;",
        "Ls1/w/d<",
        "-",
        "Ln3/z/d1$a<",
        "TKey;TValue;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.PageFetcher$flow$1$2"
    f = "PageFetcher.kt"
    l = {
        0x3f,
        0x42,
        0x45
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Z

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Ln3/z/e1;

.field public final synthetic k:Ln3/z/q2;


# direct methods
.method public constructor <init>(Ln3/z/e1;Ln3/z/q2;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/e1$b;->j:Ln3/z/e1;

    iput-object p2, p0, Ln3/z/e1$b;->k:Ln3/z/q2;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ln3/z/d1$a;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ls1/w/d;

    const-string v0, "continuation"

    .line 1
    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/e1$b;

    iget-object v1, p0, Ln3/z/e1$b;->j:Ln3/z/e1;

    iget-object v2, p0, Ln3/z/e1$b;->k:Ln3/z/q2;

    invoke-direct {v0, v1, v2, p3}, Ln3/z/e1$b;-><init>(Ln3/z/e1;Ln3/z/q2;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/e1$b;->e:Ljava/lang/Object;

    iput-boolean p2, v0, Ln3/z/e1$b;->f:Z

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/z/e1$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/z/e1$b;->i:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v5, :cond_0

    iget-boolean v1, v0, Ln3/z/e1$b;->f:Z

    iget-object v2, v0, Ln3/z/e1$b;->g:Ljava/lang/Object;

    check-cast v2, Ls1/z/c/c0;

    iget-object v4, v0, Ln3/z/e1$b;->e:Ljava/lang/Object;

    check-cast v4, Ln3/z/d1$a;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v7, v0

    move-object v10, v4

    move-object/from16 v4, p1

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-boolean v2, v0, Ln3/z/e1$b;->f:Z

    iget-object v7, v0, Ln3/z/e1$b;->h:Ljava/lang/Object;

    check-cast v7, Ls1/z/c/c0;

    iget-object v8, v0, Ln3/z/e1$b;->g:Ljava/lang/Object;

    check-cast v8, Ls1/z/c/c0;

    iget-object v9, v0, Ln3/z/e1$b;->e:Ljava/lang/Object;

    check-cast v9, Ln3/z/d1$a;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v10, v8

    move-object v11, v9

    move-object/from16 v8, p1

    move-object v9, v0

    move/from16 v20, v2

    move-object v2, v1

    move/from16 v1, v20

    goto/16 :goto_3

    :cond_2
    iget-boolean v2, v0, Ln3/z/e1$b;->f:Z

    iget-object v7, v0, Ln3/z/e1$b;->h:Ljava/lang/Object;

    check-cast v7, Ls1/z/c/c0;

    iget-object v8, v0, Ln3/z/e1$b;->g:Ljava/lang/Object;

    check-cast v8, Ls1/z/c/c0;

    iget-object v9, v0, Ln3/z/e1$b;->e:Ljava/lang/Object;

    check-cast v9, Ln3/z/d1$a;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v10, v9

    move-object v9, v8

    move-object/from16 v8, p1

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v2, v0, Ln3/z/e1$b;->e:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Ln3/z/d1$a;

    iget-boolean v2, v0, Ln3/z/e1$b;->f:Z

    .line 4
    new-instance v7, Ls1/z/c/c0;

    invoke-direct {v7}, Ls1/z/c/c0;-><init>()V

    iget-object v8, v0, Ln3/z/e1$b;->j:Ln3/z/e1;

    iget-object v8, v8, Ln3/z/e1;->g:Ln3/z/d1;

    if-eqz v9, :cond_4

    .line 5
    iget-object v10, v9, Ln3/z/d1$a;->a:Ln3/z/g1;

    if-eqz v10, :cond_4

    .line 6
    iget-object v10, v10, Ln3/z/g1;->i:Ln3/z/k2;

    goto :goto_0

    :cond_4
    move-object v10, v6

    .line 7
    :goto_0
    iput-object v9, v0, Ln3/z/e1$b;->e:Ljava/lang/Object;

    iput-object v7, v0, Ln3/z/e1$b;->g:Ljava/lang/Object;

    iput-object v7, v0, Ln3/z/e1$b;->h:Ljava/lang/Object;

    iput-boolean v2, v0, Ln3/z/e1$b;->f:Z

    iput v3, v0, Ln3/z/e1$b;->i:I

    .line 8
    invoke-virtual {v8, v10, v0}, Ln3/z/d1;->a(Ln3/z/k2;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_5

    return-object v1

    :cond_5
    move-object v10, v9

    move-object v9, v7

    .line 9
    :goto_1
    check-cast v8, Ln3/z/k2;

    iput-object v8, v7, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object v7, v0

    move/from16 v20, v2

    move-object v2, v1

    move/from16 v1, v20

    .line 10
    :goto_2
    iget-object v8, v9, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v8, Ln3/z/k2;

    invoke-virtual {v8}, Ln3/z/k2;->a()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 11
    iget-object v8, v7, Ln3/z/e1$b;->j:Ln3/z/e1;

    iget-object v8, v8, Ln3/z/e1;->g:Ln3/z/d1;

    iget-object v11, v9, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v11, Ln3/z/k2;

    iput-object v10, v7, Ln3/z/e1$b;->e:Ljava/lang/Object;

    iput-object v9, v7, Ln3/z/e1$b;->g:Ljava/lang/Object;

    iput-object v9, v7, Ln3/z/e1$b;->h:Ljava/lang/Object;

    iput-boolean v1, v7, Ln3/z/e1$b;->f:Z

    iput v4, v7, Ln3/z/e1$b;->i:I

    invoke-virtual {v8, v11, v7}, Ln3/z/d1;->a(Ln3/z/k2;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v2, :cond_6

    return-object v2

    :cond_6
    move-object v11, v10

    move-object v10, v9

    move-object v9, v7

    move-object v7, v10

    .line 12
    :goto_3
    check-cast v8, Ln3/z/k2;

    iput-object v8, v7, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object v7, v9

    move-object v9, v10

    move-object v10, v11

    goto :goto_2

    :cond_7
    if-eqz v10, :cond_9

    .line 13
    iget-object v4, v10, Ln3/z/d1$a;->a:Ln3/z/g1;

    if-eqz v4, :cond_9

    .line 14
    iput-object v10, v7, Ln3/z/e1$b;->e:Ljava/lang/Object;

    iput-object v9, v7, Ln3/z/e1$b;->g:Ljava/lang/Object;

    iput-object v6, v7, Ln3/z/e1$b;->h:Ljava/lang/Object;

    iput-boolean v1, v7, Ln3/z/e1$b;->f:Z

    iput v5, v7, Ln3/z/e1$b;->i:I

    invoke-virtual {v4, v7}, Ln3/z/g1;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_8

    return-object v2

    :cond_8
    move-object v2, v9

    :goto_4
    check-cast v4, Ln3/z/l2;

    move/from16 v16, v1

    move-object v9, v2

    goto :goto_5

    :cond_9
    move/from16 v16, v1

    move-object v4, v6

    :goto_5
    if-eqz v4, :cond_a

    .line 15
    iget-object v1, v4, Ln3/z/l2;->a:Ljava/util/List;

    goto :goto_6

    :cond_a
    move-object v1, v6

    :goto_6
    if-eqz v1, :cond_c

    .line 16
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    move v1, v3

    :goto_8
    if-eqz v1, :cond_d

    if-eqz v10, :cond_d

    .line 17
    iget-object v1, v10, Ln3/z/d1$a;->b:Ln3/z/l2;

    if-eqz v1, :cond_d

    .line 18
    iget-object v1, v1, Ln3/z/l2;->a:Ljava/util/List;

    if-eqz v1, :cond_d

    .line 19
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-ne v1, v3, :cond_d

    .line 20
    iget-object v4, v10, Ln3/z/d1$a;->b:Ln3/z/l2;

    :cond_d
    if-eqz v4, :cond_e

    .line 21
    iget-object v1, v4, Ln3/z/l2;->b:Ljava/lang/Integer;

    goto :goto_9

    :cond_e
    move-object v1, v6

    :goto_9
    if-nez v1, :cond_10

    if-eqz v10, :cond_f

    .line 22
    iget-object v1, v10, Ln3/z/d1$a;->b:Ln3/z/l2;

    if-eqz v1, :cond_f

    .line 23
    iget-object v1, v1, Ln3/z/l2;->b:Ljava/lang/Integer;

    goto :goto_a

    :cond_f
    move-object v1, v6

    :goto_a
    if-eqz v1, :cond_10

    .line 24
    iget-object v4, v10, Ln3/z/d1$a;->b:Ln3/z/l2;

    :cond_10
    if-eqz v4, :cond_11

    .line 25
    iget-object v1, v9, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ln3/z/k2;

    invoke-virtual {v1, v4}, Ln3/z/k2;->c(Ln3/z/l2;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    goto :goto_b

    .line 26
    :cond_11
    iget-object v1, v7, Ln3/z/e1$b;->j:Ln3/z/e1;

    iget-object v1, v1, Ln3/z/e1;->g:Ln3/z/d1;

    .line 27
    iget-object v1, v1, Ln3/z/d1;->e:Ljava/lang/Object;

    :goto_b
    move-object v12, v1

    if-eqz v10, :cond_12

    .line 28
    iget-object v1, v10, Ln3/z/d1$a;->a:Ln3/z/g1;

    if-eqz v1, :cond_12

    .line 29
    iget-object v1, v1, Ln3/z/g1;->f:Lq3/a/y;

    invoke-static {v1, v6, v3, v6}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 30
    :cond_12
    new-instance v1, Ln3/z/d1$a;

    .line 31
    new-instance v2, Ln3/z/g1;

    .line 32
    iget-object v3, v9, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object v13, v3

    check-cast v13, Ln3/z/k2;

    .line 33
    iget-object v3, v7, Ln3/z/e1$b;->j:Ln3/z/e1;

    iget-object v3, v3, Ln3/z/e1;->g:Ln3/z/d1;

    .line 34
    iget-object v14, v3, Ln3/z/d1;->f:Ln3/z/a2;

    .line 35
    iget-object v3, v3, Ln3/z/d1;->b:Ln3/z/s;

    .line 36
    iget-object v15, v3, Ln3/z/s;->b:Lq3/a/x2/f;

    .line 37
    iget-object v3, v7, Ln3/z/e1$b;->k:Ln3/z/q2;

    .line 38
    new-instance v5, Ln3/z/e1$b$a;

    iget-object v6, v7, Ln3/z/e1$b;->j:Ln3/z/e1;

    iget-object v6, v6, Ln3/z/e1;->g:Ln3/z/d1;

    invoke-direct {v5, v6}, Ln3/z/e1$b$a;-><init>(Ln3/z/d1;)V

    move-object v11, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .line 39
    invoke-direct/range {v11 .. v19}, Ln3/z/g1;-><init>(Ljava/lang/Object;Ln3/z/k2;Ln3/z/a2;Lq3/a/x2/f;ZLn3/z/r2;Ln3/z/l2;Ls1/z/b/a;)V

    .line 40
    invoke-direct {v1, v2, v4}, Ln3/z/d1$a;-><init>(Ln3/z/g1;Ln3/z/l2;)V

    return-object v1
.end method
