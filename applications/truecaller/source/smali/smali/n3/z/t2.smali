.class public final Ln3/z/t2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T::TR;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/z/g3<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field public final d:Ln3/z/x0;

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public final i:Ln3/z/f3;

.field public final j:Ls1/z/b/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/q<",
            "TT;TT;",
            "Ls1/w/d<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/z/f3;Ls1/z/b/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/f3;",
            "Ls1/z/b/q<",
            "-TT;-TT;-",
            "Ls1/w/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "terminalSeparatorType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generator"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/z/t2;->i:Ln3/z/f3;

    iput-object p2, p0, Ln3/z/t2;->j:Ls1/z/b/q;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln3/z/t2;->a:Ljava/util/List;

    .line 3
    new-instance p1, Ln3/z/x0;

    invoke-direct {p1}, Ln3/z/x0;-><init>()V

    iput-object p1, p0, Ln3/z/t2;->d:Ln3/z/x0;

    return-void
.end method


# virtual methods
.method public final a(Ln3/z/c1;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/c1<",
            "TT;>;",
            "Ls1/w/d<",
            "-",
            "Ln3/z/c1<",
            "TR;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ln3/z/t0;->b:Ln3/z/t0;

    instance-of v1, p2, Ln3/z/t2$a;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ln3/z/t2$a;

    iget v2, v1, Ln3/z/t2$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Ln3/z/t2$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Ln3/z/t2$a;

    invoke-direct {v1, p0, p2}, Ln3/z/t2$a;-><init>(Ln3/z/t2;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Ln3/z/t2$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Ln3/z/t2$a;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Ln3/z/t2$a;->g:Ljava/lang/Object;

    check-cast p1, Ln3/z/t2;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v1, Ln3/z/t2$a;->g:Ljava/lang/Object;

    check-cast p1, Ln3/z/t2;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    instance-of p2, p1, Ln3/z/c1$b;

    if-eqz p2, :cond_5

    check-cast p1, Ln3/z/c1$b;

    iput-object p0, v1, Ln3/z/t2$a;->g:Ljava/lang/Object;

    iput v5, v1, Ln3/z/t2$a;->e:I

    invoke-virtual {p0, p1, v1}, Ln3/z/t2;->b(Ln3/z/c1$b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_4

    return-object v2

    :cond_4
    move-object p1, p0

    :goto_1
    check-cast p2, Ln3/z/c1;

    goto/16 :goto_7

    .line 5
    :cond_5
    instance-of p2, p1, Ln3/z/c1$a;

    if-eqz p2, :cond_a

    move-object p2, p1

    check-cast p2, Ln3/z/c1$a;

    const-string p1, "event"

    .line 6
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Ln3/z/t2;->d:Ln3/z/x0;

    .line 8
    iget-object v1, p2, Ln3/z/c1$a;->a:Ln3/z/t0;

    .line 9
    sget-object v2, Ln3/z/r0$c;->c:Ln3/z/r0$c;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ln3/z/x0;->d(Ln3/z/t0;ZLn3/z/r0;)Z

    .line 10
    iget-object p1, p2, Ln3/z/c1$a;->a:Ln3/z/t0;

    if-ne p1, v0, :cond_6

    .line 11
    iget p1, p2, Ln3/z/c1$a;->d:I

    .line 12
    iput p1, p0, Ln3/z/t2;->e:I

    .line 13
    iput-boolean v3, p0, Ln3/z/t2;->h:Z

    goto :goto_2

    .line 14
    :cond_6
    sget-object v1, Ln3/z/t0;->c:Ln3/z/t0;

    if-ne p1, v1, :cond_7

    .line 15
    iget p1, p2, Ln3/z/c1$a;->d:I

    .line 16
    iput p1, p0, Ln3/z/t2;->f:I

    .line 17
    iput-boolean v3, p0, Ln3/z/t2;->g:Z

    .line 18
    :cond_7
    :goto_2
    iget-object p1, p0, Ln3/z/t2;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 19
    iget-object p1, p2, Ln3/z/c1$a;->a:Ln3/z/t0;

    if-ne p1, v0, :cond_8

    .line 20
    iput-boolean v3, p0, Ln3/z/t2;->c:Z

    goto :goto_3

    .line 21
    :cond_8
    iput-boolean v3, p0, Ln3/z/t2;->b:Z

    .line 22
    :cond_9
    :goto_3
    iget p1, p2, Ln3/z/c1$a;->b:I

    .line 23
    new-instance v0, Ls1/d0/i;

    .line 24
    iget v1, p2, Ln3/z/c1$a;->c:I

    .line 25
    invoke-direct {v0, p1, v1}, Ls1/d0/i;-><init>(II)V

    .line 26
    iget-object p1, p0, Ln3/z/t2;->a:Ljava/util/List;

    new-instance v1, Ln3/z/s2;

    invoke-direct {v1, v0}, Ln3/z/s2;-><init>(Ls1/d0/i;)V

    invoke-static {p1, v1}, Ls1/u/i;->w0(Ljava/util/List;Ls1/z/b/l;)Z

    move-object p1, p0

    goto :goto_7

    .line 27
    :cond_a
    instance-of p2, p1, Ln3/z/c1$c;

    if-eqz p2, :cond_13

    check-cast p1, Ln3/z/c1$c;

    iput-object p0, v1, Ln3/z/t2$a;->g:Ljava/lang/Object;

    iput v4, v1, Ln3/z/t2$a;->e:I

    .line 28
    sget-object p2, Ls1/u/s;->a:Ls1/u/s;

    iget-object v3, p0, Ln3/z/t2;->d:Ln3/z/x0;

    .line 29
    iget-object v4, p1, Ln3/z/c1$c;->a:Ln3/z/t0;

    .line 30
    iget-boolean v5, p1, Ln3/z/c1$c;->b:Z

    .line 31
    invoke-virtual {v3, v4, v5}, Ln3/z/x0;->b(Ln3/z/t0;Z)Ln3/z/r0;

    move-result-object v3

    .line 32
    iget-object v4, p1, Ln3/z/c1$c;->c:Ln3/z/r0;

    .line 33
    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_5

    .line 34
    :cond_b
    iget-object v3, p0, Ln3/z/t2;->d:Ln3/z/x0;

    .line 35
    iget-object v4, p1, Ln3/z/c1$c;->a:Ln3/z/t0;

    .line 36
    iget-boolean v5, p1, Ln3/z/c1$c;->b:Z

    .line 37
    iget-object v6, p1, Ln3/z/c1$c;->c:Ln3/z/r0;

    .line 38
    invoke-virtual {v3, v4, v5, v6}, Ln3/z/x0;->d(Ln3/z/t0;ZLn3/z/r0;)Z

    .line 39
    iget-object v3, p1, Ln3/z/c1$c;->a:Ln3/z/t0;

    .line 40
    sget-object v4, Ln3/z/t0;->a:Ln3/z/t0;

    if-eq v3, v4, :cond_d

    .line 41
    iget-boolean v4, p1, Ln3/z/c1$c;->b:Z

    if-eqz v4, :cond_d

    .line 42
    iget-object v4, p1, Ln3/z/c1$c;->c:Ln3/z/r0;

    .line 43
    iget-boolean v4, v4, Ln3/z/r0;->a:Z

    if-eqz v4, :cond_d

    if-ne v3, v0, :cond_c

    .line 44
    sget-object p1, Ln3/z/c1$b;->g:Ln3/z/c1$b$a;

    .line 45
    iget v0, p0, Ln3/z/t2;->e:I

    .line 46
    iget-object v3, p0, Ln3/z/t2;->d:Ln3/z/x0;

    invoke-virtual {v3}, Ln3/z/x0;->e()Ln3/z/q;

    move-result-object v3

    .line 47
    invoke-virtual {p1, p2, v0, v3}, Ln3/z/c1$b$a;->b(Ljava/util/List;ILn3/z/q;)Ln3/z/c1$b;

    move-result-object p1

    goto :goto_4

    .line 48
    :cond_c
    sget-object p1, Ln3/z/c1$b;->g:Ln3/z/c1$b$a;

    .line 49
    iget v0, p0, Ln3/z/t2;->f:I

    .line 50
    iget-object v3, p0, Ln3/z/t2;->d:Ln3/z/x0;

    invoke-virtual {v3}, Ln3/z/x0;->e()Ln3/z/q;

    move-result-object v3

    .line 51
    invoke-virtual {p1, p2, v0, v3}, Ln3/z/c1$b$a;->a(Ljava/util/List;ILn3/z/q;)Ln3/z/c1$b;

    move-result-object p1

    .line 52
    :goto_4
    invoke-virtual {p0, p1, v1}, Ln3/z/t2;->b(Ln3/z/c1$b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    :cond_d
    :goto_5
    move-object p2, p1

    if-ne p2, v2, :cond_e

    return-object v2

    :cond_e
    move-object p1, p0

    .line 53
    :goto_6
    check-cast p2, Ln3/z/c1;

    .line 54
    :goto_7
    iget-boolean v0, p1, Ln3/z/t2;->b:Z

    if-eqz v0, :cond_10

    .line 55
    iget-object v0, p1, Ln3/z/t2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_8

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "deferred endTerm, page stash should be empty"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_10
    :goto_8
    iget-boolean v0, p1, Ln3/z/t2;->c:Z

    if-eqz v0, :cond_12

    .line 57
    iget-object p1, p1, Ln3/z/t2;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_9

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "deferred startTerm, page stash should be empty"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    :goto_9
    return-object p2

    .line 58
    :cond_13
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public final b(Ln3/z/c1$b;Ls1/w/d;)Ljava/lang/Object;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/c1$b<",
            "TT;>;",
            "Ls1/w/d<",
            "-",
            "Ln3/z/c1$b<",
            "TR;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Ln3/z/t0;->b:Ln3/z/t0;

    sget-object v4, Ln3/z/t0;->c:Ln3/z/t0;

    instance-of v5, v2, Ln3/z/t2$b;

    if-eqz v5, :cond_0

    move-object v5, v2

    check-cast v5, Ln3/z/t2$b;

    iget v6, v5, Ln3/z/t2$b;->e:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Ln3/z/t2$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v5, Ln3/z/t2$b;

    invoke-direct {v5, v0, v2}, Ln3/z/t2$b;-><init>(Ln3/z/t2;Ls1/w/d;)V

    :goto_0
    iget-object v2, v5, Ln3/z/t2$b;->d:Ljava/lang/Object;

    sget-object v6, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v7, v5, Ln3/z/t2$b;->e:I

    const-string v8, "$this$asRType"

    packed-switch v7, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v1, v5, Ln3/z/t2$b;->l:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v3, v5, Ln3/z/t2$b;->k:Ljava/lang/Object;

    check-cast v3, Ln3/z/g3;

    iget-object v6, v5, Ln3/z/t2$b;->j:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    iget-object v7, v5, Ln3/z/t2$b;->i:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    iget-object v8, v5, Ln3/z/t2$b;->h:Ljava/lang/Object;

    check-cast v8, Ln3/z/c1$b;

    iget-object v5, v5, Ln3/z/t2$b;->g:Ljava/lang/Object;

    check-cast v5, Ln3/z/t2;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object/from16 v18, v4

    goto/16 :goto_29

    :pswitch_1
    iget v1, v5, Ln3/z/t2$b;->t:I

    iget v3, v5, Ln3/z/t2$b;->s:I

    iget v7, v5, Ln3/z/t2$b;->r:I

    iget-boolean v8, v5, Ln3/z/t2$b;->q:Z

    iget-object v12, v5, Ln3/z/t2$b;->l:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    iget-object v13, v5, Ln3/z/t2$b;->k:Ljava/lang/Object;

    check-cast v13, Ln3/z/g3;

    iget-object v14, v5, Ln3/z/t2$b;->j:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    iget-object v15, v5, Ln3/z/t2$b;->i:Ljava/lang/Object;

    check-cast v15, Ljava/util/ArrayList;

    iget-object v9, v5, Ln3/z/t2$b;->h:Ljava/lang/Object;

    check-cast v9, Ln3/z/c1$b;

    iget-object v10, v5, Ln3/z/t2$b;->g:Ljava/lang/Object;

    check-cast v10, Ln3/z/t2;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v18, v4

    goto/16 :goto_26

    :pswitch_2
    iget v1, v5, Ln3/z/t2$b;->r:I

    iget-boolean v3, v5, Ln3/z/t2$b;->q:Z

    iget-object v7, v5, Ln3/z/t2$b;->m:Ljava/lang/Object;

    check-cast v7, Ln3/z/g3;

    iget-object v8, v5, Ln3/z/t2$b;->l:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    iget-object v9, v5, Ln3/z/t2$b;->k:Ljava/lang/Object;

    check-cast v9, Ln3/z/g3;

    iget-object v10, v5, Ln3/z/t2$b;->j:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    iget-object v12, v5, Ln3/z/t2$b;->i:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    iget-object v13, v5, Ln3/z/t2$b;->h:Ljava/lang/Object;

    check-cast v13, Ln3/z/c1$b;

    iget-object v14, v5, Ln3/z/t2$b;->g:Ljava/lang/Object;

    check-cast v14, Ln3/z/t2;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v0, v3

    move-object/from16 v18, v4

    move-object v11, v9

    move-object v15, v14

    move-object v3, v2

    move-object v9, v6

    move-object v14, v13

    move-object v13, v12

    move-object v12, v10

    move-object v10, v8

    move-object v8, v5

    move-object v5, v7

    goto/16 :goto_21

    :pswitch_3
    iget v1, v5, Ln3/z/t2$b;->r:I

    iget-boolean v7, v5, Ln3/z/t2$b;->q:Z

    iget-object v8, v5, Ln3/z/t2$b;->p:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iget-object v9, v5, Ln3/z/t2$b;->o:Ljava/lang/Object;

    check-cast v9, Ln3/z/g3;

    iget-object v10, v5, Ln3/z/t2$b;->n:Ljava/lang/Object;

    check-cast v10, Ln3/z/g3;

    iget-object v12, v5, Ln3/z/t2$b;->m:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v5, Ln3/z/t2$b;->l:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    iget-object v14, v5, Ln3/z/t2$b;->k:Ljava/lang/Object;

    check-cast v14, Ln3/z/g3;

    iget-object v15, v5, Ln3/z/t2$b;->j:Ljava/lang/Object;

    check-cast v15, Ljava/util/ArrayList;

    iget-object v11, v5, Ln3/z/t2$b;->i:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    move/from16 p1, v1

    iget-object v1, v5, Ln3/z/t2$b;->h:Ljava/lang/Object;

    check-cast v1, Ln3/z/c1$b;

    move-object/from16 v17, v1

    iget-object v1, v5, Ln3/z/t2$b;->g:Ljava/lang/Object;

    check-cast v1, Ln3/z/t2;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v0, v3

    move-object/from16 v18, v4

    move-object v3, v1

    move/from16 v1, p1

    goto/16 :goto_1f

    :pswitch_4
    iget v1, v5, Ln3/z/t2$b;->r:I

    iget-boolean v7, v5, Ln3/z/t2$b;->q:Z

    iget-object v8, v5, Ln3/z/t2$b;->o:Ljava/lang/Object;

    check-cast v8, Ln3/z/g3;

    iget-object v9, v5, Ln3/z/t2$b;->n:Ljava/lang/Object;

    check-cast v9, Ln3/z/g3;

    iget-object v10, v5, Ln3/z/t2$b;->m:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v5, Ln3/z/t2$b;->l:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    iget-object v12, v5, Ln3/z/t2$b;->k:Ljava/lang/Object;

    check-cast v12, Ln3/z/g3;

    iget-object v13, v5, Ln3/z/t2$b;->j:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    iget-object v14, v5, Ln3/z/t2$b;->i:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    iget-object v15, v5, Ln3/z/t2$b;->h:Ljava/lang/Object;

    check-cast v15, Ln3/z/c1$b;

    move/from16 v17, v1

    iget-object v1, v5, Ln3/z/t2$b;->g:Ljava/lang/Object;

    check-cast v1, Ln3/z/t2;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v18, v4

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move/from16 v0, v17

    move-object/from16 v17, v3

    move-object v13, v10

    move-object v14, v11

    move-object v3, v2

    move v10, v7

    move-object v11, v8

    move-object v7, v15

    move-object v8, v5

    move-object v15, v12

    move-object v12, v9

    move-object v9, v6

    goto/16 :goto_1a

    :pswitch_5
    iget v1, v5, Ln3/z/t2$b;->r:I

    iget-boolean v7, v5, Ln3/z/t2$b;->q:Z

    iget-object v8, v5, Ln3/z/t2$b;->n:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iget-object v9, v5, Ln3/z/t2$b;->m:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, v5, Ln3/z/t2$b;->l:Ljava/lang/Object;

    check-cast v10, Ln3/z/g3;

    iget-object v11, v5, Ln3/z/t2$b;->k:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    iget-object v12, v5, Ln3/z/t2$b;->j:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    iget-object v13, v5, Ln3/z/t2$b;->i:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    iget-object v14, v5, Ln3/z/t2$b;->h:Ljava/lang/Object;

    check-cast v14, Ln3/z/c1$b;

    iget-object v15, v5, Ln3/z/t2$b;->g:Ljava/lang/Object;

    check-cast v15, Ln3/z/t2;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v17, v3

    move-object v3, v4

    goto/16 :goto_18

    :pswitch_6
    iget v1, v5, Ln3/z/t2$b;->r:I

    iget-boolean v7, v5, Ln3/z/t2$b;->q:Z

    iget-object v8, v5, Ln3/z/t2$b;->o:Ljava/lang/Object;

    check-cast v8, Ln3/z/g3;

    iget-object v9, v5, Ln3/z/t2$b;->n:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, v5, Ln3/z/t2$b;->m:Ljava/lang/Object;

    check-cast v10, Ln3/z/g3;

    iget-object v11, v5, Ln3/z/t2$b;->l:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    iget-object v12, v5, Ln3/z/t2$b;->k:Ljava/lang/Object;

    check-cast v12, Ln3/z/g3;

    iget-object v13, v5, Ln3/z/t2$b;->j:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    iget-object v14, v5, Ln3/z/t2$b;->i:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    iget-object v15, v5, Ln3/z/t2$b;->h:Ljava/lang/Object;

    check-cast v15, Ln3/z/c1$b;

    move/from16 v17, v1

    iget-object v1, v5, Ln3/z/t2$b;->g:Ljava/lang/Object;

    check-cast v1, Ln3/z/t2;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v19, v9

    move-object v0, v10

    move-object/from16 v18, v14

    move-object/from16 v20, v15

    move/from16 v9, v17

    move-object/from16 v17, v3

    move-object v3, v4

    move-object v4, v12

    move-object v12, v8

    move-object v8, v13

    move-object/from16 v25, v11

    move-object v11, v2

    move-object/from16 v2, v25

    goto/16 :goto_15

    :pswitch_7
    iget v1, v5, Ln3/z/t2$b;->t:I

    iget v7, v5, Ln3/z/t2$b;->s:I

    iget v8, v5, Ln3/z/t2$b;->r:I

    iget-boolean v9, v5, Ln3/z/t2$b;->q:Z

    iget-object v10, v5, Ln3/z/t2$b;->o:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    iget-object v11, v5, Ln3/z/t2$b;->n:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    iget-object v12, v5, Ln3/z/t2$b;->m:Ljava/lang/Object;

    check-cast v12, Ln3/z/g3;

    iget-object v13, v5, Ln3/z/t2$b;->l:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    iget-object v14, v5, Ln3/z/t2$b;->k:Ljava/lang/Object;

    check-cast v14, Ln3/z/g3;

    iget-object v15, v5, Ln3/z/t2$b;->j:Ljava/lang/Object;

    check-cast v15, Ljava/util/ArrayList;

    move/from16 v17, v1

    iget-object v1, v5, Ln3/z/t2$b;->i:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object/from16 p1, v1

    iget-object v1, v5, Ln3/z/t2$b;->h:Ljava/lang/Object;

    check-cast v1, Ln3/z/c1$b;

    move-object/from16 v18, v1

    iget-object v1, v5, Ln3/z/t2$b;->g:Ljava/lang/Object;

    check-cast v1, Ln3/z/t2;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v0, v1

    move/from16 v1, v17

    move-object/from16 v17, v3

    move v3, v8

    move-object/from16 v8, p1

    move-object/from16 v25, v18

    move-object/from16 v18, v4

    move-object/from16 v4, v25

    move-object/from16 v26, v13

    move-object v13, v11

    move-object/from16 v11, v26

    goto/16 :goto_14

    :pswitch_8
    iget v1, v5, Ln3/z/t2$b;->r:I

    iget-boolean v7, v5, Ln3/z/t2$b;->q:Z

    iget-object v8, v5, Ln3/z/t2$b;->p:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v9, v5, Ln3/z/t2$b;->o:Ljava/lang/Object;

    check-cast v9, Ln3/z/g3;

    iget-object v10, v5, Ln3/z/t2$b;->n:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    iget-object v11, v5, Ln3/z/t2$b;->m:Ljava/lang/Object;

    check-cast v11, Ln3/z/g3;

    iget-object v12, v5, Ln3/z/t2$b;->l:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    iget-object v13, v5, Ln3/z/t2$b;->k:Ljava/lang/Object;

    check-cast v13, Ln3/z/g3;

    iget-object v14, v5, Ln3/z/t2$b;->j:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    iget-object v15, v5, Ln3/z/t2$b;->i:Ljava/lang/Object;

    check-cast v15, Ljava/util/ArrayList;

    move/from16 v17, v1

    iget-object v1, v5, Ln3/z/t2$b;->h:Ljava/lang/Object;

    check-cast v1, Ln3/z/c1$b;

    move-object/from16 p1, v1

    iget-object v1, v5, Ln3/z/t2$b;->g:Ljava/lang/Object;

    check-cast v1, Ln3/z/t2;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v0, v1

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move-object/from16 v1, p1

    move-object v13, v9

    move/from16 v9, v17

    move-object/from16 v17, v3

    move-object v3, v11

    move-object v11, v2

    move-object v2, v10

    move-object v10, v8

    move-object v8, v12

    goto/16 :goto_10

    :pswitch_9
    iget-object v1, v5, Ln3/z/t2$b;->h:Ljava/lang/Object;

    check-cast v1, Ln3/z/c1$b;

    iget-object v3, v5, Ln3/z/t2$b;->g:Ljava/lang/Object;

    check-cast v3, Ln3/z/t2;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v4, v3

    const/4 v3, 0x1

    :goto_1
    const/4 v5, 0x0

    goto/16 :goto_9

    :pswitch_a
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Ln3/z/t2;->i:Ln3/z/f3;

    const-string v7, "$this$terminatesStart"

    .line 5
    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "terminalSeparatorType"

    invoke-static {v2, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v9, v1, Ln3/z/c1$b;->a:Ln3/z/t0;

    if-ne v9, v4, :cond_1

    .line 7
    iget-boolean v2, v0, Ln3/z/t2;->c:Z

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v9, 0x1

    if-ne v2, v9, :cond_2

    .line 9
    iget-object v2, v1, Ln3/z/c1$b;->e:Ln3/z/q;

    .line 10
    iget-object v2, v2, Ln3/z/q;->d:Ln3/z/s0;

    .line 11
    iget-object v2, v2, Ln3/z/s0;->b:Ln3/z/r0;

    .line 12
    iget-boolean v2, v2, Ln3/z/r0;->a:Z

    goto :goto_2

    .line 13
    :cond_2
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    .line 14
    :cond_3
    iget-object v2, v1, Ln3/z/c1$b;->e:Ln3/z/q;

    .line 15
    iget-object v9, v2, Ln3/z/q;->d:Ln3/z/s0;

    .line 16
    iget-object v9, v9, Ln3/z/s0;->b:Ln3/z/r0;

    .line 17
    iget-boolean v9, v9, Ln3/z/r0;->a:Z

    if-eqz v9, :cond_5

    .line 18
    iget-object v2, v2, Ln3/z/q;->e:Ln3/z/s0;

    if-eqz v2, :cond_4

    .line 19
    iget-object v2, v2, Ln3/z/s0;->b:Ln3/z/r0;

    if-eqz v2, :cond_4

    .line 20
    iget-boolean v2, v2, Ln3/z/r0;->a:Z

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 21
    :goto_2
    iget-object v9, v0, Ln3/z/t2;->i:Ln3/z/f3;

    const-string v10, "$this$terminatesEnd"

    .line 22
    invoke-static {v1, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v7, v1, Ln3/z/c1$b;->a:Ln3/z/t0;

    if-ne v7, v3, :cond_6

    .line 24
    iget-boolean v7, v0, Ln3/z/t2;->b:Z

    goto :goto_3

    .line 25
    :cond_6
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_8

    const/4 v9, 0x1

    if-ne v7, v9, :cond_7

    .line 26
    iget-object v7, v1, Ln3/z/c1$b;->e:Ln3/z/q;

    .line 27
    iget-object v7, v7, Ln3/z/q;->d:Ln3/z/s0;

    .line 28
    iget-object v7, v7, Ln3/z/s0;->c:Ln3/z/r0;

    .line 29
    iget-boolean v7, v7, Ln3/z/r0;->a:Z

    goto :goto_3

    .line 30
    :cond_7
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    .line 31
    :cond_8
    iget-object v7, v1, Ln3/z/c1$b;->e:Ln3/z/q;

    .line 32
    iget-object v9, v7, Ln3/z/q;->d:Ln3/z/s0;

    .line 33
    iget-object v9, v9, Ln3/z/s0;->c:Ln3/z/r0;

    .line 34
    iget-boolean v9, v9, Ln3/z/r0;->a:Z

    if-eqz v9, :cond_a

    .line 35
    iget-object v7, v7, Ln3/z/q;->e:Ln3/z/s0;

    if-eqz v7, :cond_9

    .line 36
    iget-object v7, v7, Ln3/z/s0;->c:Ln3/z/r0;

    if-eqz v7, :cond_9

    .line 37
    iget-boolean v7, v7, Ln3/z/r0;->a:Z

    if-eqz v7, :cond_a

    :cond_9
    const/4 v7, 0x1

    goto :goto_3

    :cond_a
    const/4 v7, 0x0

    .line 38
    :goto_3
    iget-object v9, v1, Ln3/z/c1$b;->b:Ljava/util/List;

    .line 39
    instance-of v10, v9, Ljava/util/Collection;

    if-eqz v10, :cond_c

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_b
    const/4 v9, 0x1

    goto :goto_4

    .line 40
    :cond_c
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ln3/z/g3;

    .line 41
    iget-object v10, v10, Ln3/z/g3;->b:Ljava/util/List;

    .line 42
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    .line 43
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 44
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_d

    const/4 v9, 0x0

    .line 45
    :goto_4
    iget-boolean v10, v0, Ln3/z/t2;->h:Z

    if-eqz v10, :cond_f

    .line 46
    iget-object v10, v1, Ln3/z/c1$b;->a:Ln3/z/t0;

    if-ne v10, v3, :cond_f

    if-eqz v9, :cond_e

    goto :goto_5

    :cond_e
    const/4 v10, 0x0

    goto :goto_6

    :cond_f
    :goto_5
    const/4 v10, 0x1

    :goto_6
    if-eqz v10, :cond_41

    .line 47
    iget-boolean v10, v0, Ln3/z/t2;->g:Z

    if-eqz v10, :cond_11

    .line 48
    iget-object v10, v1, Ln3/z/c1$b;->a:Ln3/z/t0;

    if-ne v10, v4, :cond_11

    if-eqz v9, :cond_10

    goto :goto_7

    :cond_10
    const/4 v10, 0x0

    goto :goto_8

    :cond_11
    :goto_7
    const/4 v10, 0x1

    :goto_8
    if-eqz v10, :cond_40

    .line 49
    iget-object v10, v0, Ln3/z/t2;->d:Ln3/z/x0;

    .line 50
    iget-object v11, v1, Ln3/z/c1$b;->e:Ln3/z/q;

    .line 51
    invoke-virtual {v10, v11}, Ln3/z/x0;->c(Ln3/z/q;)V

    .line 52
    iget-object v10, v1, Ln3/z/c1$b;->a:Ln3/z/t0;

    if-eq v10, v4, :cond_12

    .line 53
    iget v11, v1, Ln3/z/c1$b;->c:I

    .line 54
    iput v11, v0, Ln3/z/t2;->e:I

    :cond_12
    if-eq v10, v3, :cond_13

    .line 55
    iget v10, v1, Ln3/z/c1$b;->d:I

    .line 56
    iput v10, v0, Ln3/z/t2;->f:I

    :cond_13
    if-eqz v9, :cond_1b

    if-nez v2, :cond_14

    if-nez v7, :cond_14

    .line 57
    invoke-static {v1, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 58
    :cond_14
    iget-boolean v10, v0, Ln3/z/t2;->h:Z

    if-eqz v10, :cond_15

    iget-boolean v10, v0, Ln3/z/t2;->g:Z

    if-eqz v10, :cond_15

    .line 59
    invoke-static {v1, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 60
    :cond_15
    iget-object v10, v0, Ln3/z/t2;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1b

    if-eqz v2, :cond_18

    if-eqz v7, :cond_18

    .line 61
    iget-boolean v3, v0, Ln3/z/t2;->h:Z

    if-nez v3, :cond_18

    iget-boolean v3, v0, Ln3/z/t2;->g:Z

    if-nez v3, :cond_18

    .line 62
    iget-object v2, v0, Ln3/z/t2;->j:Ls1/z/b/q;

    iput-object v0, v5, Ln3/z/t2$b;->g:Ljava/lang/Object;

    iput-object v1, v5, Ln3/z/t2$b;->h:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v5, Ln3/z/t2$b;->e:I

    const/4 v4, 0x0

    invoke-interface {v2, v4, v4, v5}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_16

    return-object v6

    :cond_16
    move-object v4, v0

    goto/16 :goto_1

    .line 63
    :goto_9
    iput-boolean v5, v4, Ln3/z/t2;->b:Z

    .line 64
    iput-boolean v5, v4, Ln3/z/t2;->c:Z

    .line 65
    iput-boolean v3, v4, Ln3/z/t2;->h:Z

    .line 66
    iput-boolean v3, v4, Ln3/z/t2;->g:Z

    if-nez v2, :cond_17

    .line 67
    invoke-static {v1, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    .line 68
    :cond_17
    iget-object v10, v1, Ln3/z/c1$b;->a:Ln3/z/t0;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    .line 69
    invoke-static {v2, v3, v4, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->m1(Ljava/lang/Object;[III)Ln3/z/g3;

    move-result-object v2

    invoke-static {v2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 70
    iget v12, v1, Ln3/z/c1$b;->c:I

    .line 71
    iget v13, v1, Ln3/z/c1$b;->d:I

    .line 72
    iget-object v14, v1, Ln3/z/c1$b;->e:Ln3/z/q;

    .line 73
    new-instance v1, Ln3/z/c1$b;

    move-object v9, v1

    .line 74
    invoke-direct/range {v9 .. v14}, Ln3/z/c1$b;-><init>(Ln3/z/t0;Ljava/util/List;IILn3/z/q;)V

    :goto_a
    return-object v1

    :cond_18
    if-eqz v7, :cond_19

    .line 75
    iget-boolean v3, v0, Ln3/z/t2;->g:Z

    if-nez v3, :cond_19

    const/4 v3, 0x1

    .line 76
    iput-boolean v3, v0, Ln3/z/t2;->b:Z

    goto :goto_b

    :cond_19
    const/4 v3, 0x1

    :goto_b
    if-eqz v2, :cond_1a

    .line 77
    iget-boolean v2, v0, Ln3/z/t2;->h:Z

    if-nez v2, :cond_1a

    .line 78
    iput-boolean v3, v0, Ln3/z/t2;->c:Z

    .line 79
    :cond_1a
    invoke-static {v1, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 80
    :cond_1b
    new-instance v8, Ljava/util/ArrayList;

    .line 81
    iget-object v10, v1, Ln3/z/c1$b;->b:Ljava/util/List;

    .line 82
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    new-instance v14, Ljava/util/ArrayList;

    .line 84
    iget-object v10, v1, Ln3/z/c1$b;->b:Ljava/util/List;

    .line 85
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v14, v10}, Ljava/util/ArrayList;-><init>(I)V

    if-nez v9, :cond_1e

    const/4 v10, 0x0

    .line 86
    :goto_c
    iget-object v11, v1, Ln3/z/c1$b;->b:Ljava/util/List;

    .line 87
    invoke-static {v11}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v11

    if-ge v10, v11, :cond_1c

    .line 88
    iget-object v11, v1, Ln3/z/c1$b;->b:Ljava/util/List;

    .line 89
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ln3/z/g3;

    .line 90
    iget-object v11, v11, Ln3/z/g3;->b:Ljava/util/List;

    .line 91
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1c

    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 92
    :cond_1c
    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v10}, Ljava/lang/Integer;-><init>(I)V

    .line 93
    iget-object v12, v1, Ln3/z/c1$b;->b:Ljava/util/List;

    .line 94
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ln3/z/g3;

    .line 95
    iget-object v12, v1, Ln3/z/c1$b;->b:Ljava/util/List;

    .line 96
    invoke-static {v12}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v12

    :goto_d
    if-lez v12, :cond_1d

    .line 97
    iget-object v13, v1, Ln3/z/c1$b;->b:Ljava/util/List;

    .line 98
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ln3/z/g3;

    .line 99
    iget-object v13, v13, Ln3/z/g3;->b:Ljava/util/List;

    .line 100
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1d

    add-int/lit8 v12, v12, -0x1

    goto :goto_d

    .line 101
    :cond_1d
    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v12}, Ljava/lang/Integer;-><init>(I)V

    .line 102
    iget-object v15, v1, Ln3/z/c1$b;->b:Ljava/util/List;

    .line 103
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ln3/z/g3;

    goto :goto_e

    :cond_1e
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_e
    if-eqz v2, :cond_22

    .line 104
    iget-boolean v2, v0, Ln3/z/t2;->h:Z

    if-nez v2, :cond_22

    const/4 v2, 0x1

    .line 105
    iput-boolean v2, v0, Ln3/z/t2;->h:Z

    if-eqz v9, :cond_1f

    .line 106
    iget-object v2, v0, Ln3/z/t2;->a:Ljava/util/List;

    invoke-static {v2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/z/g3;

    goto :goto_f

    :cond_1f
    invoke-static {v10}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    move-object v2, v10

    .line 107
    :goto_f
    iget-object v15, v0, Ln3/z/t2;->j:Ls1/z/b/q;

    move-object/from16 v17, v3

    .line 108
    iget-object v3, v2, Ln3/z/g3;->b:Ljava/util/List;

    .line 109
    invoke-static {v3}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    iput-object v0, v5, Ln3/z/t2$b;->g:Ljava/lang/Object;

    iput-object v1, v5, Ln3/z/t2$b;->h:Ljava/lang/Object;

    iput-object v8, v5, Ln3/z/t2$b;->i:Ljava/lang/Object;

    iput-object v14, v5, Ln3/z/t2$b;->j:Ljava/lang/Object;

    iput-object v10, v5, Ln3/z/t2$b;->k:Ljava/lang/Object;

    iput-object v11, v5, Ln3/z/t2$b;->l:Ljava/lang/Object;

    iput-object v12, v5, Ln3/z/t2$b;->m:Ljava/lang/Object;

    iput-object v13, v5, Ln3/z/t2$b;->n:Ljava/lang/Object;

    iput-object v2, v5, Ln3/z/t2$b;->o:Ljava/lang/Object;

    iput-object v8, v5, Ln3/z/t2$b;->p:Ljava/lang/Object;

    iput-boolean v7, v5, Ln3/z/t2$b;->q:Z

    iput v9, v5, Ln3/z/t2$b;->r:I

    const/4 v0, 0x2

    iput v0, v5, Ln3/z/t2$b;->e:I

    const/4 v0, 0x0

    invoke-interface {v15, v0, v3, v5}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v6, :cond_20

    return-object v6

    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v20, v8

    move-object/from16 v18, v10

    move-object/from16 v19, v14

    move-object/from16 v10, v20

    move-object v8, v11

    move-object v11, v3

    move-object v3, v12

    move-object/from16 v25, v13

    move-object v13, v2

    move-object/from16 v2, v25

    :goto_10
    const/4 v12, 0x0

    .line 110
    iget v14, v13, Ln3/z/g3;->c:I

    .line 111
    iget-object v15, v13, Ln3/z/g3;->d:Ljava/util/List;

    if-eqz v15, :cond_21

    .line 112
    invoke-static {v15}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    if-eqz v15, :cond_21

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_11

    :cond_21
    const/4 v15, 0x0

    .line 113
    :goto_11
    invoke-static/range {v10 .. v15}, Landroid/support/v4/media/session/MediaSessionCompat;->b(Ljava/util/List;Ljava/lang/Object;Ln3/z/g3;Ln3/z/g3;II)V

    move-object v13, v2

    move-object v12, v3

    move-object v11, v8

    move-object/from16 v10, v18

    move-object/from16 v14, v19

    move-object/from16 v8, v20

    goto :goto_12

    :cond_22
    move-object/from16 v17, v3

    move-object/from16 v0, p0

    :goto_12
    if-nez v9, :cond_3a

    .line 114
    invoke-static {v11}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v15, v1

    move v1, v2

    move v2, v7

    const/4 v7, 0x0

    move-object/from16 v25, v12

    move-object v12, v10

    move-object/from16 v10, v25

    :goto_13
    if-ge v7, v1, :cond_24

    .line 115
    iget-object v3, v15, Ln3/z/c1$b;->b:Ljava/util/List;

    .line 116
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/z/g3;

    move-object/from16 v18, v4

    iget-object v4, v0, Ln3/z/t2;->j:Ls1/z/b/q;

    iput-object v0, v5, Ln3/z/t2$b;->g:Ljava/lang/Object;

    iput-object v15, v5, Ln3/z/t2$b;->h:Ljava/lang/Object;

    iput-object v8, v5, Ln3/z/t2$b;->i:Ljava/lang/Object;

    iput-object v14, v5, Ln3/z/t2$b;->j:Ljava/lang/Object;

    iput-object v12, v5, Ln3/z/t2$b;->k:Ljava/lang/Object;

    iput-object v11, v5, Ln3/z/t2$b;->l:Ljava/lang/Object;

    iput-object v10, v5, Ln3/z/t2$b;->m:Ljava/lang/Object;

    iput-object v13, v5, Ln3/z/t2$b;->n:Ljava/lang/Object;

    iput-object v8, v5, Ln3/z/t2$b;->o:Ljava/lang/Object;

    move-object/from16 v19, v13

    const/4 v13, 0x0

    iput-object v13, v5, Ln3/z/t2$b;->p:Ljava/lang/Object;

    iput-boolean v2, v5, Ln3/z/t2$b;->q:Z

    iput v9, v5, Ln3/z/t2$b;->r:I

    iput v7, v5, Ln3/z/t2$b;->s:I

    iput v1, v5, Ln3/z/t2$b;->t:I

    const/4 v13, 0x3

    iput v13, v5, Ln3/z/t2$b;->e:I

    invoke-static {v3, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->G0(Ln3/z/g3;Ls1/z/b/q;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v6, :cond_23

    return-object v6

    :cond_23
    move-object v4, v15

    move-object/from16 v13, v19

    move-object v15, v14

    move-object v14, v12

    move-object v12, v10

    move-object v10, v8

    move/from16 v25, v9

    move v9, v2

    move-object v2, v3

    move/from16 v3, v25

    :goto_14
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v16, 0x1

    add-int/lit8 v7, v7, 0x1

    move v2, v9

    move-object v10, v12

    move-object v12, v14

    move-object v14, v15

    move v9, v3

    move-object v15, v4

    move-object/from16 v4, v18

    goto :goto_13

    :cond_24
    move-object/from16 v18, v4

    move-object/from16 v19, v13

    const/16 v16, 0x1

    .line 117
    iget-object v1, v15, Ln3/z/c1$b;->a:Ln3/z/t0;

    move-object/from16 v3, v18

    if-ne v1, v3, :cond_27

    .line 118
    iget-object v1, v0, Ln3/z/t2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_27

    .line 119
    iget-object v1, v0, Ln3/z/t2;->a:Ljava/util/List;

    invoke-static {v1}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/z/g3;

    .line 120
    iget-object v4, v0, Ln3/z/t2;->j:Ls1/z/b/q;

    .line 121
    iget-object v7, v1, Ln3/z/g3;->b:Ljava/util/List;

    .line 122
    invoke-static {v7}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v12}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 123
    iget-object v13, v12, Ln3/z/g3;->b:Ljava/util/List;

    .line 124
    invoke-static {v13}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    iput-object v0, v5, Ln3/z/t2$b;->g:Ljava/lang/Object;

    iput-object v15, v5, Ln3/z/t2$b;->h:Ljava/lang/Object;

    iput-object v8, v5, Ln3/z/t2$b;->i:Ljava/lang/Object;

    iput-object v14, v5, Ln3/z/t2$b;->j:Ljava/lang/Object;

    iput-object v12, v5, Ln3/z/t2$b;->k:Ljava/lang/Object;

    iput-object v11, v5, Ln3/z/t2$b;->l:Ljava/lang/Object;

    iput-object v10, v5, Ln3/z/t2$b;->m:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v19

    iput-object v0, v5, Ln3/z/t2$b;->n:Ljava/lang/Object;

    iput-object v1, v5, Ln3/z/t2$b;->o:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v5, Ln3/z/t2$b;->p:Ljava/lang/Object;

    iput-boolean v2, v5, Ln3/z/t2$b;->q:Z

    iput v9, v5, Ln3/z/t2$b;->r:I

    const/4 v0, 0x4

    iput v0, v5, Ln3/z/t2$b;->e:I

    invoke-interface {v4, v7, v13, v5}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_25

    return-object v6

    :cond_25
    move v7, v2

    move-object v2, v11

    move-object v4, v12

    move-object/from16 v20, v15

    move-object v11, v0

    move-object v12, v1

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v18, v8

    move-object v8, v14

    .line 125
    :goto_15
    iget v14, v4, Ln3/z/g3;->c:I

    .line 126
    iget-object v10, v4, Ln3/z/g3;->d:Ljava/util/List;

    if-eqz v10, :cond_26

    .line 127
    invoke-static {v10}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_26

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v15, v10

    goto :goto_16

    :cond_26
    const/4 v15, 0x0

    :goto_16
    move-object/from16 v10, v18

    move-object v13, v4

    .line 128
    invoke-static/range {v10 .. v15}, Landroid/support/v4/media/session/MediaSessionCompat;->b(Ljava/util/List;Ljava/lang/Object;Ln3/z/g3;Ln3/z/g3;II)V

    move-object v10, v0

    move-object v15, v1

    move-object v11, v2

    move-object v12, v8

    move v1, v9

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v14, v20

    goto :goto_17

    :cond_27
    move-object/from16 v18, v0

    move v7, v2

    move v1, v9

    move-object v4, v12

    move-object v12, v14

    move-object v14, v15

    move-object/from16 v15, v18

    move-object/from16 v9, v19

    .line 129
    :goto_17
    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v15, v4}, Ln3/z/t2;->c(Ln3/z/g3;)Ln3/z/g3;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, v15, Ln3/z/t2;->j:Ls1/z/b/q;

    iput-object v15, v5, Ln3/z/t2$b;->g:Ljava/lang/Object;

    iput-object v14, v5, Ln3/z/t2$b;->h:Ljava/lang/Object;

    iput-object v8, v5, Ln3/z/t2$b;->i:Ljava/lang/Object;

    iput-object v12, v5, Ln3/z/t2$b;->j:Ljava/lang/Object;

    iput-object v11, v5, Ln3/z/t2$b;->k:Ljava/lang/Object;

    iput-object v10, v5, Ln3/z/t2$b;->l:Ljava/lang/Object;

    iput-object v9, v5, Ln3/z/t2$b;->m:Ljava/lang/Object;

    iput-object v8, v5, Ln3/z/t2$b;->n:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v5, Ln3/z/t2$b;->o:Ljava/lang/Object;

    iput-object v2, v5, Ln3/z/t2$b;->p:Ljava/lang/Object;

    iput-boolean v7, v5, Ln3/z/t2$b;->q:Z

    iput v1, v5, Ln3/z/t2$b;->r:I

    const/4 v2, 0x5

    iput v2, v5, Ln3/z/t2$b;->e:I

    invoke-static {v4, v0, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->G0(Ln3/z/g3;Ls1/z/b/q;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_28

    return-object v6

    :cond_28
    move-object v13, v8

    :goto_18
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, v14, Ln3/z/c1$b;->b:Ljava/util/List;

    .line 132
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v8, 0x1

    add-int/2addr v4, v8

    invoke-interface {v0, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v9

    move-object v9, v10

    move-object v10, v0

    .line 136
    :goto_19
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 137
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/z/g3;

    check-cast v2, Ln3/z/g3;

    .line 138
    iget-object v4, v0, Ln3/z/g3;->b:Ljava/util/List;

    .line 139
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v11, 0x1

    xor-int/2addr v4, v11

    if-eqz v4, :cond_2e

    .line 140
    iget-object v4, v15, Ln3/z/t2;->j:Ls1/z/b/q;

    .line 141
    iget-object v11, v2, Ln3/z/g3;->b:Ljava/util/List;

    .line 142
    invoke-static {v11}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v18, v3

    .line 143
    iget-object v3, v0, Ln3/z/g3;->b:Ljava/util/List;

    .line 144
    invoke-static {v3}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    iput-object v15, v5, Ln3/z/t2$b;->g:Ljava/lang/Object;

    iput-object v14, v5, Ln3/z/t2$b;->h:Ljava/lang/Object;

    iput-object v13, v5, Ln3/z/t2$b;->i:Ljava/lang/Object;

    iput-object v12, v5, Ln3/z/t2$b;->j:Ljava/lang/Object;

    iput-object v9, v5, Ln3/z/t2$b;->k:Ljava/lang/Object;

    iput-object v8, v5, Ln3/z/t2$b;->l:Ljava/lang/Object;

    iput-object v10, v5, Ln3/z/t2$b;->m:Ljava/lang/Object;

    iput-object v0, v5, Ln3/z/t2$b;->n:Ljava/lang/Object;

    iput-object v2, v5, Ln3/z/t2$b;->o:Ljava/lang/Object;

    move-object/from16 p1, v0

    const/4 v0, 0x0

    iput-object v0, v5, Ln3/z/t2$b;->p:Ljava/lang/Object;

    iput-boolean v7, v5, Ln3/z/t2$b;->q:Z

    iput v1, v5, Ln3/z/t2$b;->r:I

    const/4 v0, 0x6

    iput v0, v5, Ln3/z/t2$b;->e:I

    invoke-interface {v4, v11, v3, v5}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_29

    return-object v6

    :cond_29
    move-object v3, v0

    move v0, v1

    move-object v11, v2

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object v1, v15

    move-object/from16 v12, p1

    move-object v15, v9

    move-object v13, v10

    move-object v9, v6

    move v10, v7

    move-object v7, v14

    move-object v14, v8

    move-object v8, v5

    .line 145
    :goto_1a
    iget-object v2, v7, Ln3/z/c1$b;->a:Ln3/z/t0;

    move-object/from16 v6, v17

    if-ne v2, v6, :cond_2a

    .line 146
    iget v4, v11, Ln3/z/g3;->c:I

    goto :goto_1b

    .line 147
    :cond_2a
    iget v4, v12, Ln3/z/g3;->c:I

    :goto_1b
    move/from16 v17, v4

    if-ne v2, v6, :cond_2c

    .line 148
    iget-object v2, v11, Ln3/z/g3;->d:Ljava/util/List;

    if-eqz v2, :cond_2b

    .line 149
    invoke-static {v2}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1c

    .line 150
    :cond_2b
    iget-object v2, v11, Ln3/z/g3;->b:Ljava/util/List;

    .line 151
    invoke-static {v2}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v5

    :goto_1c
    move/from16 v21, v5

    goto :goto_1d

    .line 152
    :cond_2c
    iget-object v2, v12, Ln3/z/g3;->d:Ljava/util/List;

    if-eqz v2, :cond_2d

    .line 153
    invoke-static {v2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1c

    :cond_2d
    const/16 v21, 0x0

    :goto_1d
    move-object/from16 v2, v20

    move-object v4, v11

    move-object v5, v12

    move/from16 p1, v0

    move-object v0, v6

    move/from16 v6, v17

    move-object/from16 v17, v7

    move/from16 v7, v21

    .line 154
    invoke-static/range {v2 .. v7}, Landroid/support/v4/media/session/MediaSessionCompat;->b(Ljava/util/List;Ljava/lang/Object;Ln3/z/g3;Ln3/z/g3;II)V

    move/from16 v2, p1

    move-object v5, v8

    move-object v6, v9

    move v7, v10

    move-object v9, v11

    move-object v10, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v17

    move-object/from16 v3, v19

    move-object/from16 v8, v20

    goto :goto_1e

    :cond_2e
    move-object/from16 p1, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v17

    move-object v3, v12

    move-object v12, v10

    move-object/from16 v10, p1

    move-object/from16 v25, v2

    move v2, v1

    move-object v1, v15

    move-object v15, v9

    move-object/from16 v9, v25

    move-object/from16 v26, v13

    move-object v13, v8

    move-object/from16 v8, v26

    .line 155
    :goto_1e
    iget-object v4, v10, Ln3/z/g3;->b:Ljava/util/List;

    .line 156
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v11, 0x1

    xor-int/2addr v4, v11

    if-eqz v4, :cond_2f

    .line 157
    invoke-virtual {v1, v10}, Ln3/z/t2;->c(Ln3/z/g3;)Ln3/z/g3;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_2f
    iget-object v4, v1, Ln3/z/t2;->j:Ls1/z/b/q;

    iput-object v1, v5, Ln3/z/t2$b;->g:Ljava/lang/Object;

    iput-object v14, v5, Ln3/z/t2$b;->h:Ljava/lang/Object;

    iput-object v8, v5, Ln3/z/t2$b;->i:Ljava/lang/Object;

    iput-object v3, v5, Ln3/z/t2$b;->j:Ljava/lang/Object;

    iput-object v15, v5, Ln3/z/t2$b;->k:Ljava/lang/Object;

    iput-object v13, v5, Ln3/z/t2$b;->l:Ljava/lang/Object;

    iput-object v12, v5, Ln3/z/t2$b;->m:Ljava/lang/Object;

    iput-object v10, v5, Ln3/z/t2$b;->n:Ljava/lang/Object;

    iput-object v9, v5, Ln3/z/t2$b;->o:Ljava/lang/Object;

    iput-object v8, v5, Ln3/z/t2$b;->p:Ljava/lang/Object;

    iput-boolean v7, v5, Ln3/z/t2$b;->q:Z

    iput v2, v5, Ln3/z/t2$b;->r:I

    const/4 v11, 0x7

    iput v11, v5, Ln3/z/t2$b;->e:I

    invoke-static {v10, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->G0(Ln3/z/g3;Ls1/z/b/q;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_30

    return-object v6

    :cond_30
    move-object v11, v8

    move-object/from16 v17, v14

    move-object v14, v15

    move-object v15, v3

    move-object v3, v1

    move v1, v2

    move-object v2, v4

    :goto_1f
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v2, v10, Ln3/z/g3;->b:Ljava/util/List;

    .line 160
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    if-eqz v2, :cond_31

    move-object v2, v10

    goto :goto_20

    :cond_31
    move-object v2, v9

    :goto_20
    move-object v10, v12

    move-object v8, v13

    move-object v9, v14

    move-object v12, v15

    move-object/from16 v14, v17

    move-object/from16 v17, v0

    move-object v15, v3

    move-object v13, v11

    move-object/from16 v3, v18

    goto/16 :goto_19

    :cond_32
    move-object/from16 v18, v3

    move-object/from16 v0, v17

    .line 161
    iget-object v2, v14, Ln3/z/c1$b;->a:Ln3/z/t0;

    if-ne v2, v0, :cond_35

    .line 162
    iget-object v0, v15, Ln3/z/t2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_35

    .line 163
    iget-object v0, v15, Ln3/z/t2;->a:Ljava/util/List;

    invoke-static {v0}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/z/g3;

    .line 164
    iget-object v2, v15, Ln3/z/t2;->j:Ls1/z/b/q;

    invoke-static {v9}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 165
    iget-object v3, v9, Ln3/z/g3;->b:Ljava/util/List;

    .line 166
    invoke-static {v3}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    .line 167
    iget-object v4, v0, Ln3/z/g3;->b:Ljava/util/List;

    .line 168
    invoke-static {v4}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    iput-object v15, v5, Ln3/z/t2$b;->g:Ljava/lang/Object;

    iput-object v14, v5, Ln3/z/t2$b;->h:Ljava/lang/Object;

    iput-object v13, v5, Ln3/z/t2$b;->i:Ljava/lang/Object;

    iput-object v12, v5, Ln3/z/t2$b;->j:Ljava/lang/Object;

    iput-object v9, v5, Ln3/z/t2$b;->k:Ljava/lang/Object;

    iput-object v8, v5, Ln3/z/t2$b;->l:Ljava/lang/Object;

    iput-object v0, v5, Ln3/z/t2$b;->m:Ljava/lang/Object;

    const/4 v10, 0x0

    iput-object v10, v5, Ln3/z/t2$b;->n:Ljava/lang/Object;

    iput-object v10, v5, Ln3/z/t2$b;->o:Ljava/lang/Object;

    iput-object v10, v5, Ln3/z/t2$b;->p:Ljava/lang/Object;

    iput-boolean v7, v5, Ln3/z/t2$b;->q:Z

    iput v1, v5, Ln3/z/t2$b;->r:I

    const/16 v10, 0x8

    iput v10, v5, Ln3/z/t2$b;->e:I

    invoke-interface {v2, v3, v4, v5}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_33

    return-object v6

    :cond_33
    move-object v3, v2

    move-object v10, v8

    move-object v11, v9

    move-object v8, v5

    move-object v9, v6

    move-object v5, v0

    move v0, v7

    .line 169
    :goto_21
    iget v6, v11, Ln3/z/g3;->c:I

    .line 170
    iget-object v2, v11, Ln3/z/g3;->d:Ljava/util/List;

    if-eqz v2, :cond_34

    .line 171
    invoke-static {v2}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_34

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_22

    .line 172
    :cond_34
    iget-object v2, v11, Ln3/z/g3;->b:Ljava/util/List;

    .line 173
    invoke-static {v2}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v2

    :goto_22
    move v7, v2

    move-object v2, v13

    move-object v4, v11

    .line 174
    invoke-static/range {v2 .. v7}, Landroid/support/v4/media/session/MediaSessionCompat;->b(Ljava/util/List;Ljava/lang/Object;Ln3/z/g3;Ln3/z/g3;II)V

    move v7, v0

    move-object v5, v8

    move-object v6, v9

    move-object v8, v10

    :goto_23
    move v9, v1

    goto :goto_24

    :cond_35
    move-object v11, v9

    goto :goto_23

    .line 175
    :goto_24
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 176
    iget-object v1, v14, Ln3/z/c1$b;->b:Ljava/util/List;

    .line 177
    invoke-static {v1}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v1

    if-gt v0, v1, :cond_38

    move v3, v0

    move v8, v7

    move v7, v9

    move-object v9, v14

    move-object v10, v15

    move-object v14, v12

    move-object v12, v13

    move-object v13, v11

    .line 178
    :goto_25
    iget-object v0, v9, Ln3/z/c1$b;->b:Ljava/util/List;

    .line 179
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/z/g3;

    iget-object v2, v10, Ln3/z/t2;->j:Ls1/z/b/q;

    iput-object v10, v5, Ln3/z/t2$b;->g:Ljava/lang/Object;

    iput-object v9, v5, Ln3/z/t2$b;->h:Ljava/lang/Object;

    iput-object v12, v5, Ln3/z/t2$b;->i:Ljava/lang/Object;

    iput-object v14, v5, Ln3/z/t2$b;->j:Ljava/lang/Object;

    iput-object v13, v5, Ln3/z/t2$b;->k:Ljava/lang/Object;

    iput-object v12, v5, Ln3/z/t2$b;->l:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v5, Ln3/z/t2$b;->m:Ljava/lang/Object;

    iput-object v4, v5, Ln3/z/t2$b;->n:Ljava/lang/Object;

    iput-object v4, v5, Ln3/z/t2$b;->o:Ljava/lang/Object;

    iput-object v4, v5, Ln3/z/t2$b;->p:Ljava/lang/Object;

    iput-boolean v8, v5, Ln3/z/t2$b;->q:Z

    iput v7, v5, Ln3/z/t2$b;->r:I

    iput v3, v5, Ln3/z/t2$b;->s:I

    iput v1, v5, Ln3/z/t2$b;->t:I

    const/16 v4, 0x9

    iput v4, v5, Ln3/z/t2$b;->e:I

    invoke-static {v0, v2, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->G0(Ln3/z/g3;Ls1/z/b/q;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_36

    return-object v6

    :cond_36
    move-object v15, v12

    :goto_26
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v3, v1, :cond_37

    add-int/lit8 v3, v3, 0x1

    move-object v12, v15

    goto :goto_25

    :cond_37
    move-object v0, v5

    move-object v2, v6

    move-object v5, v10

    move-object v12, v13

    move-object v6, v14

    move-object v1, v15

    move-object/from16 v25, v9

    move v9, v7

    move v7, v8

    move-object/from16 v8, v25

    goto :goto_27

    :cond_38
    move-object v0, v5

    move-object v2, v6

    move-object v6, v12

    move-object v1, v13

    move-object v8, v14

    move-object v5, v15

    move-object v12, v11

    goto :goto_27

    .line 180
    :cond_39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Empty collection can\'t be reduced."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    move-object/from16 v18, v4

    move-object v2, v6

    move-object v6, v14

    move-object/from16 v25, v5

    move-object v5, v0

    move-object/from16 v0, v25

    move-object/from16 v26, v8

    move-object v8, v1

    move-object/from16 v1, v26

    :goto_27
    if-eqz v7, :cond_3e

    .line 181
    iget-boolean v3, v5, Ln3/z/t2;->g:Z

    if-nez v3, :cond_3e

    const/4 v3, 0x1

    .line 182
    iput-boolean v3, v5, Ln3/z/t2;->g:Z

    if-eqz v9, :cond_3b

    .line 183
    iget-object v3, v5, Ln3/z/t2;->a:Ljava/util/List;

    invoke-static {v3}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/z/g3;

    goto :goto_28

    :cond_3b
    invoke-static {v12}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    move-object v3, v12

    .line 184
    :goto_28
    iget-object v4, v5, Ln3/z/t2;->j:Ls1/z/b/q;

    .line 185
    iget-object v7, v3, Ln3/z/g3;->b:Ljava/util/List;

    .line 186
    invoke-static {v7}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    iput-object v5, v0, Ln3/z/t2$b;->g:Ljava/lang/Object;

    iput-object v8, v0, Ln3/z/t2$b;->h:Ljava/lang/Object;

    iput-object v1, v0, Ln3/z/t2$b;->i:Ljava/lang/Object;

    iput-object v6, v0, Ln3/z/t2$b;->j:Ljava/lang/Object;

    iput-object v3, v0, Ln3/z/t2$b;->k:Ljava/lang/Object;

    iput-object v1, v0, Ln3/z/t2$b;->l:Ljava/lang/Object;

    const/4 v9, 0x0

    iput-object v9, v0, Ln3/z/t2$b;->m:Ljava/lang/Object;

    iput-object v9, v0, Ln3/z/t2$b;->n:Ljava/lang/Object;

    iput-object v9, v0, Ln3/z/t2$b;->o:Ljava/lang/Object;

    iput-object v9, v0, Ln3/z/t2$b;->p:Ljava/lang/Object;

    const/16 v10, 0xa

    iput v10, v0, Ln3/z/t2$b;->e:I

    invoke-interface {v4, v7, v9, v0}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_3c

    return-object v2

    :cond_3c
    move-object v10, v0

    move-object v7, v1

    move-object v9, v7

    move-object v11, v3

    :goto_29
    const/4 v12, 0x0

    .line 187
    iget v13, v11, Ln3/z/g3;->c:I

    .line 188
    iget-object v0, v11, Ln3/z/g3;->d:Ljava/util/List;

    if-eqz v0, :cond_3d

    .line 189
    invoke-static {v0}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2a

    .line 190
    :cond_3d
    iget-object v0, v11, Ln3/z/g3;->b:Ljava/util/List;

    .line 191
    invoke-static {v0}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v0

    :goto_2a
    move v14, v0

    .line 192
    invoke-static/range {v9 .. v14}, Landroid/support/v4/media/session/MediaSessionCompat;->b(Ljava/util/List;Ljava/lang/Object;Ln3/z/g3;Ln3/z/g3;II)V

    move-object/from16 v21, v7

    goto :goto_2b

    :cond_3e
    move-object/from16 v21, v1

    :goto_2b
    const/4 v0, 0x0

    .line 193
    iput-boolean v0, v5, Ln3/z/t2;->b:Z

    .line 194
    iput-boolean v0, v5, Ln3/z/t2;->c:Z

    .line 195
    iget-object v1, v8, Ln3/z/c1$b;->a:Ln3/z/t0;

    move-object/from16 v2, v18

    if-ne v1, v2, :cond_3f

    .line 196
    iget-object v0, v5, Ln3/z/t2;->a:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2c

    .line 197
    :cond_3f
    iget-object v1, v5, Ln3/z/t2;->a:Ljava/util/List;

    invoke-interface {v1, v0, v6}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 198
    :goto_2c
    iget-object v0, v8, Ln3/z/c1$b;->a:Ln3/z/t0;

    .line 199
    iget v1, v8, Ln3/z/c1$b;->c:I

    .line 200
    iget v2, v8, Ln3/z/c1$b;->d:I

    .line 201
    iget-object v3, v8, Ln3/z/c1$b;->e:Ln3/z/q;

    .line 202
    new-instance v4, Ln3/z/c1$b;

    move-object/from16 v19, v4

    move-object/from16 v20, v0

    move/from16 v22, v1

    move/from16 v23, v2

    move-object/from16 v24, v3

    .line 203
    invoke-direct/range {v19 .. v24}, Ln3/z/c1$b;-><init>(Ln3/z/t0;Ljava/util/List;IILn3/z/q;)V

    return-object v4

    .line 204
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Additional append event after append state is done"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Additional prepend event after prepend state is done"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ln3/z/g3;)Ln3/z/g3;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ln3/z/g3<",
            "TT;>;)",
            "Ln3/z/g3<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/z/g3;

    .line 2
    iget-object v1, p1, Ln3/z/g3;->a:[I

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 3
    iget-object v4, p1, Ln3/z/g3;->b:Ljava/util/List;

    .line 4
    invoke-static {v4}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 5
    iget-object v4, p1, Ln3/z/g3;->b:Ljava/util/List;

    .line 6
    invoke-static {v4}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v3}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 7
    iget v4, p1, Ln3/z/g3;->c:I

    new-array v2, v2, [Ljava/lang/Integer;

    .line 8
    iget-object v7, p1, Ln3/z/g3;->d:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 9
    invoke-static {v7}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    .line 10
    iget-object v5, p1, Ln3/z/g3;->d:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 11
    invoke-static {v5}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    .line 12
    :cond_1
    iget-object p1, p1, Ln3/z/g3;->b:Ljava/util/List;

    .line 13
    invoke-static {p1}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result p1

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    .line 14
    invoke-static {v2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 15
    invoke-direct {v0, v1, v3, v4, p1}, Ln3/z/g3;-><init>([ILjava/util/List;ILjava/util/List;)V

    return-object v0
.end method
