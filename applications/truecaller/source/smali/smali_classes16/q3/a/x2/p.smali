.class public final Lq3/a/x2/p;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Lq3/a/i0;",
        "Lq3/a/x2/g<",
        "-TT;>;",
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
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0005H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;",
        "downstream",
        "Lkotlinx/coroutines/flow/FlowCollector;"
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
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1"
    f = "Delay.kt"
    l = {
        0xe0,
        0x166
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public synthetic h:Ljava/lang/Object;

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic k:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/z/b/l;Lq3/a/x2/f;Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-TT;",
            "Ljava/lang/Long;",
            ">;",
            "Lq3/a/x2/f<",
            "+TT;>;",
            "Ls1/w/d<",
            "-",
            "Lq3/a/x2/p;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq3/a/x2/p;->j:Ls1/z/b/l;

    iput-object p2, p0, Lq3/a/x2/p;->k:Lq3/a/x2/f;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lq3/a/i0;

    check-cast p2, Lq3/a/x2/g;

    check-cast p3, Ls1/w/d;

    .line 1
    new-instance v0, Lq3/a/x2/p;

    iget-object v1, p0, Lq3/a/x2/p;->j:Ls1/z/b/l;

    iget-object v2, p0, Lq3/a/x2/p;->k:Lq3/a/x2/f;

    invoke-direct {v0, v1, v2, p3}, Lq3/a/x2/p;-><init>(Ls1/z/b/l;Lq3/a/x2/f;Ls1/w/d;)V

    iput-object p1, v0, Lq3/a/x2/p;->h:Ljava/lang/Object;

    iput-object p2, v0, Lq3/a/x2/p;->i:Ljava/lang/Object;

    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Lq3/a/x2/p;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v1, Lq3/a/x2/p;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v2, v1, Lq3/a/x2/p;->f:Ljava/lang/Object;

    check-cast v2, Ls1/z/c/b0;

    iget-object v2, v1, Lq3/a/x2/p;->e:Ljava/lang/Object;

    check-cast v2, Ls1/z/c/c0;

    iget-object v6, v1, Lq3/a/x2/p;->i:Ljava/lang/Object;

    check-cast v6, Lq3/a/w2/z;

    iget-object v7, v1, Lq3/a/x2/p;->h:Ljava/lang/Object;

    check-cast v7, Lq3/a/x2/g;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v9, v1

    move-object v8, v7

    move-object v7, v2

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v2, v1, Lq3/a/x2/p;->f:Ljava/lang/Object;

    check-cast v2, Ls1/z/c/b0;

    iget-object v6, v1, Lq3/a/x2/p;->e:Ljava/lang/Object;

    check-cast v6, Ls1/z/c/c0;

    iget-object v7, v1, Lq3/a/x2/p;->i:Ljava/lang/Object;

    check-cast v7, Lq3/a/w2/z;

    iget-object v8, v1, Lq3/a/x2/p;->h:Ljava/lang/Object;

    check-cast v8, Lq3/a/x2/g;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v9, v1

    move-object v11, v2

    move-object v2, v0

    goto/16 :goto_3

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v2, v1, Lq3/a/x2/p;->h:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lq3/a/i0;

    iget-object v2, v1, Lq3/a/x2/p;->i:Ljava/lang/Object;

    check-cast v2, Lq3/a/x2/g;

    .line 4
    new-instance v12, Lq3/a/x2/p$c;

    iget-object v7, v1, Lq3/a/x2/p;->k:Lq3/a/x2/f;

    invoke-direct {v12, v7, v5}, Lq3/a/x2/p$c;-><init>(Lq3/a/x2/f;Ls1/w/d;)V

    .line 5
    sget-object v7, Ls1/w/h;->a:Ls1/w/h;

    const/4 v8, 0x0

    .line 6
    sget-object v9, Lq3/a/w2/i;->a:Lq3/a/w2/i;

    sget-object v10, Lq3/a/j0;->a:Lq3/a/j0;

    const/4 v11, 0x0

    invoke-static/range {v6 .. v12}, Lq3/a/w2/v;->b(Lq3/a/i0;Ls1/w/f;ILq3/a/w2/i;Lq3/a/j0;Ls1/z/b/l;Ls1/z/b/p;)Lq3/a/w2/z;

    move-result-object v6

    .line 7
    new-instance v7, Ls1/z/c/c0;

    invoke-direct {v7}, Ls1/z/c/c0;-><init>()V

    move-object v9, v1

    move-object v8, v2

    :goto_0
    move-object v2, v0

    .line 8
    :goto_1
    iget-object v10, v7, Ls1/z/c/c0;->a:Ljava/lang/Object;

    sget-object v11, Lq3/a/x2/o1/w;->c:Lq3/a/y2/x;

    if-eq v10, v11, :cond_f

    .line 9
    new-instance v11, Ls1/z/c/b0;

    invoke-direct {v11}, Ls1/z/c/b0;-><init>()V

    if-eqz v10, :cond_8

    .line 10
    iget-object v12, v9, Lq3/a/x2/p;->j:Ls1/z/b/l;

    sget-object v13, Lq3/a/x2/o1/w;->a:Lq3/a/y2/x;

    if-ne v10, v13, :cond_3

    move-object v10, v5

    :cond_3
    invoke-interface {v12, v10}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    iput-wide v14, v11, Ls1/z/c/b0;->a:J

    const-wide/16 v16, 0x0

    cmp-long v10, v14, v16

    if-ltz v10, :cond_4

    move v12, v3

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_7

    if-nez v10, :cond_8

    .line 11
    iget-object v10, v7, Ls1/z/c/c0;->a:Ljava/lang/Object;

    if-ne v10, v13, :cond_5

    move-object v10, v5

    :cond_5
    iput-object v8, v9, Lq3/a/x2/p;->h:Ljava/lang/Object;

    iput-object v6, v9, Lq3/a/x2/p;->i:Ljava/lang/Object;

    iput-object v7, v9, Lq3/a/x2/p;->e:Ljava/lang/Object;

    iput-object v11, v9, Lq3/a/x2/p;->f:Ljava/lang/Object;

    iput v3, v9, Lq3/a/x2/p;->g:I

    invoke-interface {v8, v10, v9}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v0, :cond_6

    return-object v0

    :cond_6
    move-object/from16 v18, v7

    move-object v7, v6

    move-object/from16 v6, v18

    .line 12
    :goto_3
    iput-object v5, v6, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object v10, v9

    move-object v9, v8

    move-object v8, v6

    goto :goto_4

    .line 13
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Debounce timeout should not be negative"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    :goto_4
    move-object v6, v2

    move-object v2, v0

    .line 14
    iput-object v9, v10, Lq3/a/x2/p;->h:Ljava/lang/Object;

    iput-object v7, v10, Lq3/a/x2/p;->i:Ljava/lang/Object;

    iput-object v8, v10, Lq3/a/x2/p;->e:Ljava/lang/Object;

    iput-object v11, v10, Lq3/a/x2/p;->f:Ljava/lang/Object;

    iput v4, v10, Lq3/a/x2/p;->g:I

    .line 15
    new-instance v12, Lq3/a/a3/a;

    invoke-direct {v12, v10}, Lq3/a/a3/a;-><init>(Ls1/w/d;)V

    .line 16
    :try_start_0
    iget-object v0, v8, Ls1/z/c/c0;->a:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 17
    iget-wide v13, v11, Ls1/z/c/b0;->a:J

    new-instance v0, Lq3/a/x2/p$a;

    invoke-direct {v0, v9, v8, v5}, Lq3/a/x2/p$a;-><init>(Lq3/a/x2/g;Ls1/z/c/c0;Ls1/w/d;)V

    invoke-virtual {v12, v13, v14, v0}, Lq3/a/a3/a;->Q(JLs1/z/b/l;)V

    .line 18
    :cond_9
    invoke-interface {v7}, Lq3/a/w2/z;->f()Lq3/a/a3/b;

    move-result-object v0

    new-instance v11, Lq3/a/x2/p$b;

    invoke-direct {v11, v8, v9, v5}, Lq3/a/x2/p$b;-><init>(Ls1/z/c/c0;Lq3/a/x2/g;Ls1/w/d;)V

    .line 19
    invoke-interface {v0, v12, v11}, Lq3/a/a3/b;->m(Lq3/a/a3/c;Ls1/z/b/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 20
    invoke-virtual {v12}, Lq3/a/a3/a;->v()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 21
    invoke-static {v0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Lq3/a/a3/a;->c(Ljava/lang/Object;)V

    goto :goto_5

    .line 22
    :cond_a
    instance-of v11, v0, Ljava/util/concurrent/CancellationException;

    if-nez v11, :cond_c

    .line 23
    invoke-virtual {v12}, Lq3/a/a3/a;->P()Ljava/lang/Object;

    move-result-object v11

    .line 24
    instance-of v13, v11, Lq3/a/a0;

    if-eqz v13, :cond_b

    check-cast v11, Lq3/a/a0;

    iget-object v11, v11, Lq3/a/a0;->a:Ljava/lang/Throwable;

    if-eq v11, v0, :cond_c

    .line 25
    :cond_b
    invoke-virtual {v12}, Lq3/a/a3/a;->getContext()Ls1/w/f;

    move-result-object v11

    invoke-static {v11, v0}, Ls1/a/a/a/v0/f/d;->E1(Ls1/w/f;Ljava/lang/Throwable;)V

    .line 26
    :cond_c
    :goto_5
    invoke-virtual {v12}, Lq3/a/a3/a;->P()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_d

    const-string v11, "frame"

    .line 27
    invoke-static {v10, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d
    if-ne v0, v2, :cond_e

    return-object v2

    :cond_e
    move-object v0, v2

    move-object v2, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    goto/16 :goto_1

    .line 28
    :cond_f
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
