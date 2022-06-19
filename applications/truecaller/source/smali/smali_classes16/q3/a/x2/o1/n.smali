.class public final Lq3/a/x2/o1/n;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2"
    f = "Combine.kt"
    l = {
        0x39,
        0x4f,
        0x52
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public h:I

.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:[Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lq3/a/x2/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic l:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "[TT;>;"
        }
    .end annotation
.end field

.field public final synthetic m:Ls1/z/b/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/q<",
            "Lq3/a/x2/g<",
            "-TR;>;[TT;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic n:Lq3/a/x2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/g<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lq3/a/x2/f;Ls1/z/b/a;Ls1/z/b/q;Lq3/a/x2/g;Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lq3/a/x2/f<",
            "+TT;>;",
            "Ls1/z/b/a<",
            "[TT;>;",
            "Ls1/z/b/q<",
            "-",
            "Lq3/a/x2/g<",
            "-TR;>;-[TT;-",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lq3/a/x2/g<",
            "-TR;>;",
            "Ls1/w/d<",
            "-",
            "Lq3/a/x2/o1/n;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq3/a/x2/o1/n;->k:[Lq3/a/x2/f;

    iput-object p2, p0, Lq3/a/x2/o1/n;->l:Ls1/z/b/a;

    iput-object p3, p0, Lq3/a/x2/o1/n;->m:Ls1/z/b/q;

    iput-object p4, p0, Lq3/a/x2/o1/n;->n:Lq3/a/x2/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance v6, Lq3/a/x2/o1/n;

    iget-object v1, p0, Lq3/a/x2/o1/n;->k:[Lq3/a/x2/f;

    iget-object v2, p0, Lq3/a/x2/o1/n;->l:Ls1/z/b/a;

    iget-object v3, p0, Lq3/a/x2/o1/n;->m:Ls1/z/b/q;

    iget-object v4, p0, Lq3/a/x2/o1/n;->n:Lq3/a/x2/g;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lq3/a/x2/o1/n;-><init>([Lq3/a/x2/f;Ls1/z/b/a;Ls1/z/b/q;Lq3/a/x2/g;Ls1/w/d;)V

    iput-object p1, v6, Lq3/a/x2/o1/n;->j:Ljava/lang/Object;

    return-object v6
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lq3/a/i0;

    move-object v5, p2

    check-cast v5, Ls1/w/d;

    .line 1
    new-instance p2, Lq3/a/x2/o1/n;

    iget-object v1, p0, Lq3/a/x2/o1/n;->k:[Lq3/a/x2/f;

    iget-object v2, p0, Lq3/a/x2/o1/n;->l:Ls1/z/b/a;

    iget-object v3, p0, Lq3/a/x2/o1/n;->m:Ls1/z/b/q;

    iget-object v4, p0, Lq3/a/x2/o1/n;->n:Lq3/a/x2/g;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lq3/a/x2/o1/n;-><init>([Lq3/a/x2/f;Ls1/z/b/a;Ls1/z/b/q;Lq3/a/x2/g;Ls1/w/d;)V

    iput-object p1, p2, Lq3/a/x2/o1/n;->j:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {p2, p1}, Lq3/a/x2/o1/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    sget-object v1, Ls1/s;->a:Ls1/s;

    sget-object v2, Lq3/a/x2/o1/w;->b:Lq3/a/y2/x;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v0, Lq3/a/x2/o1/n;->i:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v8, :cond_2

    if-eq v4, v6, :cond_1

    if-ne v4, v7, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    :goto_0
    iget v5, v0, Lq3/a/x2/o1/n;->h:I

    iget v4, v0, Lq3/a/x2/o1/n;->g:I

    iget-object v10, v0, Lq3/a/x2/o1/n;->f:Ljava/lang/Object;

    check-cast v10, [B

    iget-object v11, v0, Lq3/a/x2/o1/n;->e:Ljava/lang/Object;

    check-cast v11, Lq3/a/w2/j;

    iget-object v12, v0, Lq3/a/x2/o1/n;->j:Ljava/lang/Object;

    check-cast v12, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    :goto_1
    move-object v9, v0

    goto/16 :goto_4

    :cond_2
    iget v4, v0, Lq3/a/x2/o1/n;->h:I

    iget v5, v0, Lq3/a/x2/o1/n;->g:I

    iget-object v10, v0, Lq3/a/x2/o1/n;->f:Ljava/lang/Object;

    check-cast v10, [B

    iget-object v11, v0, Lq3/a/x2/o1/n;->e:Ljava/lang/Object;

    check-cast v11, Lq3/a/w2/j;

    iget-object v12, v0, Lq3/a/x2/o1/n;->j:Ljava/lang/Object;

    check-cast v12, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v13, p1

    check-cast v13, Lq3/a/w2/m;

    .line 4
    iget-object v13, v13, Lq3/a/w2/m;->a:Ljava/lang/Object;

    move-object v9, v0

    move/from16 v25, v5

    move v5, v4

    move/from16 v4, v25

    goto/16 :goto_5

    .line 5
    :cond_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v4, v0, Lq3/a/x2/o1/n;->j:Ljava/lang/Object;

    check-cast v4, Lq3/a/i0;

    .line 6
    iget-object v10, v0, Lq3/a/x2/o1/n;->k:[Lq3/a/x2/f;

    array-length v15, v10

    if-nez v15, :cond_4

    return-object v1

    .line 7
    :cond_4
    new-array v14, v15, [Ljava/lang/Object;

    const/4 v10, 0x6

    .line 8
    invoke-static {v14, v2, v5, v5, v10}, Ls1/u/i;->w([Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 9
    invoke-static {v15, v9, v9, v10}, Ls1/a/a/a/v0/f/d;->f(ILq3/a/w2/i;Ls1/z/b/l;I)Lq3/a/w2/j;

    move-result-object v22

    .line 10
    new-instance v13, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v13, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    if-lez v15, :cond_6

    move/from16 v18, v5

    :goto_2
    add-int/lit8 v12, v18, 0x1

    const/4 v11, 0x0

    const/16 v23, 0x0

    .line 11
    new-instance v24, Lq3/a/x2/o1/n$a;

    iget-object v10, v0, Lq3/a/x2/o1/n;->k:[Lq3/a/x2/f;

    const/16 v21, 0x0

    move-object/from16 v16, v24

    move-object/from16 v17, v10

    move-object/from16 v19, v13

    move-object/from16 v20, v22

    invoke-direct/range {v16 .. v21}, Lq3/a/x2/o1/n$a;-><init>([Lq3/a/x2/f;ILjava/util/concurrent/atomic/AtomicInteger;Lq3/a/w2/j;Ls1/w/d;)V

    const/16 v16, 0x3

    const/16 v17, 0x0

    move-object v10, v4

    move v5, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v20, v14

    move/from16 v14, v16

    move v9, v15

    move-object/from16 v15, v17

    invoke-static/range {v10 .. v15}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    if-lt v5, v9, :cond_5

    goto :goto_3

    :cond_5
    move/from16 v18, v5

    move v15, v9

    move-object/from16 v13, v19

    move-object/from16 v14, v20

    const/4 v5, 0x0

    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v20, v14

    move v9, v15

    .line 12
    :goto_3
    new-array v10, v9, [B

    move v4, v9

    move-object/from16 v12, v20

    move-object/from16 v11, v22

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_7
    :goto_4
    add-int/2addr v5, v8

    int-to-byte v5, v5

    .line 13
    iput-object v12, v9, Lq3/a/x2/o1/n;->j:Ljava/lang/Object;

    iput-object v11, v9, Lq3/a/x2/o1/n;->e:Ljava/lang/Object;

    iput-object v10, v9, Lq3/a/x2/o1/n;->f:Ljava/lang/Object;

    iput v4, v9, Lq3/a/x2/o1/n;->g:I

    iput v5, v9, Lq3/a/x2/o1/n;->h:I

    iput v8, v9, Lq3/a/x2/o1/n;->i:I

    invoke-interface {v11, v9}, Lq3/a/w2/z;->h(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_8

    return-object v3

    .line 14
    :cond_8
    :goto_5
    instance-of v14, v13, Lq3/a/w2/m$c;

    if-nez v14, :cond_9

    goto :goto_6

    :cond_9
    const/4 v13, 0x0

    .line 15
    :goto_6
    check-cast v13, Ls1/u/w;

    if-nez v13, :cond_a

    return-object v1

    .line 16
    :cond_a
    iget v14, v13, Ls1/u/w;->a:I

    .line 17
    aget-object v15, v12, v14

    .line 18
    iget-object v13, v13, Ls1/u/w;->b:Ljava/lang/Object;

    .line 19
    aput-object v13, v12, v14

    if-ne v15, v2, :cond_b

    add-int/lit8 v4, v4, -0x1

    .line 20
    :cond_b
    aget-byte v13, v10, v14

    if-ne v13, v5, :cond_c

    goto :goto_8

    :cond_c
    int-to-byte v13, v5

    .line 21
    aput-byte v13, v10, v14

    .line 22
    invoke-interface {v11}, Lq3/a/w2/z;->g()Ljava/lang/Object;

    move-result-object v13

    .line 23
    instance-of v14, v13, Lq3/a/w2/m$c;

    if-nez v14, :cond_d

    goto :goto_7

    :cond_d
    const/4 v13, 0x0

    .line 24
    :goto_7
    check-cast v13, Ls1/u/w;

    if-nez v13, :cond_a

    :goto_8
    if-nez v4, :cond_7

    .line 25
    iget-object v13, v9, Lq3/a/x2/o1/n;->l:Ls1/z/b/a;

    invoke-interface {v13}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    if-nez v13, :cond_e

    .line 26
    iget-object v13, v9, Lq3/a/x2/o1/n;->m:Ls1/z/b/q;

    iget-object v14, v9, Lq3/a/x2/o1/n;->n:Lq3/a/x2/g;

    iput-object v12, v9, Lq3/a/x2/o1/n;->j:Ljava/lang/Object;

    iput-object v11, v9, Lq3/a/x2/o1/n;->e:Ljava/lang/Object;

    iput-object v10, v9, Lq3/a/x2/o1/n;->f:Ljava/lang/Object;

    iput v4, v9, Lq3/a/x2/o1/n;->g:I

    iput v5, v9, Lq3/a/x2/o1/n;->h:I

    iput v6, v9, Lq3/a/x2/o1/n;->i:I

    invoke-interface {v13, v14, v12, v9}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_7

    return-object v3

    :cond_e
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xe

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    .line 27
    invoke-static/range {v17 .. v22}, Ls1/u/i;->p([Ljava/lang/Object;[Ljava/lang/Object;IIII)[Ljava/lang/Object;

    .line 28
    iget-object v14, v9, Lq3/a/x2/o1/n;->m:Ls1/z/b/q;

    iget-object v15, v9, Lq3/a/x2/o1/n;->n:Lq3/a/x2/g;

    iput-object v12, v9, Lq3/a/x2/o1/n;->j:Ljava/lang/Object;

    iput-object v11, v9, Lq3/a/x2/o1/n;->e:Ljava/lang/Object;

    iput-object v10, v9, Lq3/a/x2/o1/n;->f:Ljava/lang/Object;

    iput v4, v9, Lq3/a/x2/o1/n;->g:I

    iput v5, v9, Lq3/a/x2/o1/n;->h:I

    iput v7, v9, Lq3/a/x2/o1/n;->i:I

    invoke-interface {v14, v15, v13, v9}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_7

    return-object v3
.end method
