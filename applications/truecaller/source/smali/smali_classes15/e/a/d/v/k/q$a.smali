.class public final Le/a/d/v/k/q$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/k/q;->k(Le/a/d/v/h$b;)Lq3/a/p1;
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
    c = "com.truecaller.voip.groupcall.action.EndGroupCallImpl$end$1"
    f = "EndGroupCall.kt"
    l = {
        0x3a,
        0x82,
        0x4c,
        0x50,
        0x54,
        0x5c,
        0x5d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Le/a/d/v/k/q;

.field public final synthetic j:Le/a/d/v/h$b;


# direct methods
.method public constructor <init>(Le/a/d/v/k/q;Le/a/d/v/h$b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/k/q$a;->i:Le/a/d/v/k/q;

    iput-object p2, p0, Le/a/d/v/k/q$a;->j:Le/a/d/v/h$b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance p1, Le/a/d/v/k/q$a;

    iget-object v0, p0, Le/a/d/v/k/q$a;->i:Le/a/d/v/k/q;

    iget-object v1, p0, Le/a/d/v/k/q$a;->j:Le/a/d/v/h$b;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/v/k/q$a;-><init>(Le/a/d/v/k/q;Le/a/d/v/h$b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/v/k/q$a;

    iget-object v0, p0, Le/a/d/v/k/q$a;->i:Le/a/d/v/k/q;

    iget-object v1, p0, Le/a/d/v/k/q$a;->j:Le/a/d/v/h$b;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/v/k/q$a;-><init>(Le/a/d/v/k/q;Le/a/d/v/h$b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/v/k/q$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v1, Le/a/d/v/k/q$a;->h:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v0, v1, Le/a/d/v/k/q$a;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v2, v1, Le/a/d/v/k/q$a;->f:Ljava/lang/Object;

    check-cast v2, Le/a/d/c0/d0;

    iget-object v5, v1, Le/a/d/v/k/q$a;->e:Ljava/lang/Object;

    check-cast v5, Lq3/a/b3/c;

    :try_start_0
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :pswitch_1
    iget-object v2, v1, Le/a/d/v/k/q$a;->g:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    iget-object v5, v1, Le/a/d/v/k/q$a;->f:Ljava/lang/Object;

    check-cast v5, Le/a/d/c0/d0;

    iget-object v6, v1, Le/a/d/v/k/q$a;->e:Ljava/lang/Object;

    check-cast v6, Lq3/a/b3/c;

    :try_start_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_7

    :pswitch_2
    iget-object v2, v1, Le/a/d/v/k/q$a;->g:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    iget-object v5, v1, Le/a/d/v/k/q$a;->f:Ljava/lang/Object;

    check-cast v5, Le/a/d/c0/d0;

    iget-object v6, v1, Le/a/d/v/k/q$a;->e:Ljava/lang/Object;

    check-cast v6, Lq3/a/b3/c;

    :try_start_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_6

    :pswitch_3
    iget-object v2, v1, Le/a/d/v/k/q$a;->g:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    iget-object v5, v1, Le/a/d/v/k/q$a;->f:Ljava/lang/Object;

    check-cast v5, Le/a/d/c0/d0;

    iget-object v6, v1, Le/a/d/v/k/q$a;->e:Ljava/lang/Object;

    check-cast v6, Lq3/a/b3/c;

    :try_start_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    goto/16 :goto_4

    :pswitch_4
    iget-object v2, v1, Le/a/d/v/k/q$a;->g:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    iget-object v5, v1, Le/a/d/v/k/q$a;->f:Ljava/lang/Object;

    check-cast v5, Le/a/d/c0/d0;

    iget-object v6, v1, Le/a/d/v/k/q$a;->e:Ljava/lang/Object;

    check-cast v6, Lq3/a/b3/c;

    :try_start_4
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :pswitch_5
    iget-object v2, v1, Le/a/d/v/k/q$a;->f:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    iget-object v5, v1, Le/a/d/v/k/q$a;->e:Ljava/lang/Object;

    check-cast v5, Le/a/d/c0/r;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v1, Le/a/d/v/k/q$a;->i:Le/a/d/v/k/q;

    .line 5
    iget-object v2, v2, Le/a/d/v/k/q;->a:Lq3/a/i0;

    .line 6
    invoke-interface {v2}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v2

    sget v5, Lq3/a/p1;->e0:I

    sget-object v5, Lq3/a/p1$a;->a:Lq3/a/p1$a;

    invoke-interface {v2, v5}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object v2

    check-cast v2, Lq3/a/p1;

    if-eqz v2, :cond_0

    iput v3, v1, Le/a/d/v/k/q$a;->h:I

    invoke-static {v2, v1}, Ls1/a/a/a/v0/f/d;->V(Lq3/a/p1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    return-object v0

    .line 7
    :cond_0
    :goto_0
    iget-object v2, v1, Le/a/d/v/k/q$a;->i:Le/a/d/v/k/q;

    .line 8
    iget-object v5, v2, Le/a/d/v/k/q;->d:Le/a/d/v/i;

    .line 9
    iget-object v2, v5, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 10
    iput-object v5, v1, Le/a/d/v/k/q$a;->e:Ljava/lang/Object;

    iput-object v2, v1, Le/a/d/v/k/q$a;->f:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v1, Le/a/d/v/k/q$a;->h:I

    invoke-interface {v2, v4, v1}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_1

    return-object v0

    .line 11
    :cond_1
    :goto_1
    :try_start_5
    invoke-virtual {v5}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    move-result-object v5

    .line 12
    iget-object v6, v1, Le/a/d/v/k/q$a;->i:Le/a/d/v/k/q;

    .line 13
    iget-object v6, v6, Le/a/d/v/k/q;->d:Le/a/d/v/i;

    .line 14
    invoke-virtual {v6}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/d/v/h;

    .line 15
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    instance-of v6, v6, Le/a/d/v/h$b;

    if-eqz v6, :cond_2

    move-object v5, v2

    goto/16 :goto_c

    .line 17
    :cond_2
    iget-object v6, v1, Le/a/d/v/k/q$a;->i:Le/a/d/v/k/q;

    .line 18
    iget-object v6, v6, Le/a/d/v/k/q;->m:Le/a/d/v/k/w0;

    .line 19
    invoke-interface {v6}, Le/a/d/v/k/w0;->f()Lq3/a/x2/i1;

    move-result-object v6

    invoke-interface {v6}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 20
    iget-object v8, v1, Le/a/d/v/k/q$a;->i:Le/a/d/v/k/q;

    .line 21
    iget-object v8, v8, Le/a/d/v/k/q;->p:Le/a/p5/c;

    .line 22
    invoke-interface {v8}, Le/a/p5/c;->a()J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 23
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v8, v9}, Ljava/lang/Long;-><init>(J)V

    goto :goto_2

    :cond_3
    move-object v6, v4

    .line 24
    :goto_2
    iget-object v7, v1, Le/a/d/v/k/q$a;->i:Le/a/d/v/k/q;

    .line 25
    iget-object v7, v7, Le/a/d/v/k/q;->n:Le/a/d/v/k/d0;

    .line 26
    invoke-interface {v7, v6}, Le/a/d/v/k/d0;->l(Ljava/lang/Long;)V

    .line 27
    iget-object v7, v1, Le/a/d/v/k/q$a;->i:Le/a/d/v/k/q;

    .line 28
    iget-object v7, v7, Le/a/d/v/k/q;->o:Le/a/d/v/k/i0;

    .line 29
    iget-object v8, v1, Le/a/d/v/k/q$a;->j:Le/a/d/v/h$b;

    invoke-interface {v7, v8}, Le/a/d/v/k/i0;->p(Le/a/d/v/h$b;)V

    .line 30
    iget-object v7, v1, Le/a/d/v/k/q$a;->i:Le/a/d/v/k/q;

    .line 31
    iget-object v7, v7, Le/a/d/v/k/q;->i:Le/a/d/c0/o;

    .line 32
    sget-object v8, Lcom/truecaller/voip/util/VoipTone;->BUSY:Lcom/truecaller/voip/util/VoipTone;

    iput-object v2, v1, Le/a/d/v/k/q$a;->e:Ljava/lang/Object;

    iput-object v5, v1, Le/a/d/v/k/q$a;->f:Ljava/lang/Object;

    iput-object v6, v1, Le/a/d/v/k/q$a;->g:Ljava/lang/Object;

    const/4 v9, 0x3

    iput v9, v1, Le/a/d/v/k/q$a;->h:I

    invoke-interface {v7, v8, v1}, Le/a/d/c0/o;->c(Lcom/truecaller/voip/util/VoipTone;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ne v7, v0, :cond_4

    return-object v0

    :cond_4
    move-object/from16 v16, v5

    move-object v5, v2

    move-object v2, v6

    move-object/from16 v6, v16

    .line 33
    :goto_3
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ending call with state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Le/a/d/v/k/q$a;->j:Le/a/d/v/h$b;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    iget-object v7, v1, Le/a/d/v/k/q$a;->i:Le/a/d/v/k/q;

    iget-object v8, v1, Le/a/d/v/k/q$a;->j:Le/a/d/v/h$b;

    iput-object v5, v1, Le/a/d/v/k/q$a;->e:Ljava/lang/Object;

    iput-object v6, v1, Le/a/d/v/k/q$a;->f:Ljava/lang/Object;

    iput-object v2, v1, Le/a/d/v/k/q$a;->g:Ljava/lang/Object;

    const/4 v9, 0x4

    iput v9, v1, Le/a/d/v/k/q$a;->h:I

    invoke-virtual {v7, v8, v1}, Le/a/d/v/k/q;->b(Le/a/d/v/h$b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_5

    return-object v0

    .line 35
    :cond_5
    :goto_4
    iget-object v7, v1, Le/a/d/v/k/q$a;->i:Le/a/d/v/k/q;

    .line 36
    iget-object v7, v7, Le/a/d/v/k/q;->e:Le/a/d/x/r/h;

    .line 37
    invoke-interface {v7}, Le/a/d/x/r/h;->a()Lq3/a/x2/i1;

    move-result-object v7

    invoke-interface {v7}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Le/a/d/x/r/i;

    iget-object v10, v1, Le/a/d/v/k/q$a;->i:Le/a/d/v/k/q;

    .line 38
    iget-object v10, v10, Le/a/d/v/k/q;->b:Ljava/lang/String;

    .line 39
    invoke-virtual {v9, v10}, Le/a/d/x/r/i;->a(Ljava/lang/String;)Z

    move-result v9

    .line 40
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 41
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_5

    :cond_7
    move-object v8, v4

    :goto_5
    if-eqz v8, :cond_9

    const-wide/16 v7, 0x3e8

    .line 42
    new-instance v9, Le/a/d/v/k/q$a$a;

    invoke-direct {v9, v4, v1}, Le/a/d/v/k/q$a$a;-><init>(Ls1/w/d;Le/a/d/v/k/q$a;)V

    iput-object v5, v1, Le/a/d/v/k/q$a;->e:Ljava/lang/Object;

    iput-object v6, v1, Le/a/d/v/k/q$a;->f:Ljava/lang/Object;

    iput-object v2, v1, Le/a/d/v/k/q$a;->g:Ljava/lang/Object;

    const/4 v10, 0x5

    iput v10, v1, Le/a/d/v/k/q$a;->h:I

    invoke-static {v7, v8, v9, v1}, Lq3/a/j;->c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_8

    return-object v0

    :cond_8
    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    :goto_6
    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    .line 43
    :cond_9
    iget-object v7, v1, Le/a/d/v/k/q$a;->i:Le/a/d/v/k/q;

    .line 44
    iget-object v7, v7, Le/a/d/v/k/q;->i:Le/a/d/c0/o;

    .line 45
    invoke-interface {v7}, Le/a/d/c0/o;->t()V

    .line 46
    iget-object v7, v1, Le/a/d/v/k/q$a;->i:Le/a/d/v/k/q;

    .line 47
    iget-object v7, v7, Le/a/d/v/k/q;->j:Le/a/d/c0/v;

    .line 48
    invoke-interface {v7}, Le/a/d/c0/v;->a()V

    .line 49
    iget-object v7, v1, Le/a/d/v/k/q$a;->i:Le/a/d/v/k/q;

    .line 50
    iget-object v7, v7, Le/a/d/v/k/q;->g:Le/a/d/x/q/h;

    .line 51
    invoke-interface {v7}, Le/a/d/x/q/h;->destroy()V

    .line 52
    iget-object v7, v1, Le/a/d/v/k/q$a;->i:Le/a/d/v/k/q;

    .line 53
    iget-object v7, v7, Le/a/d/v/k/q;->h:Le/a/d/c0/x1/e;

    .line 54
    iput-object v5, v1, Le/a/d/v/k/q$a;->e:Ljava/lang/Object;

    iput-object v6, v1, Le/a/d/v/k/q$a;->f:Ljava/lang/Object;

    iput-object v2, v1, Le/a/d/v/k/q$a;->g:Ljava/lang/Object;

    const/4 v8, 0x6

    iput v8, v1, Le/a/d/v/k/q$a;->h:I

    invoke-interface {v7, v1}, Le/a/d/c0/x1/e;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ne v7, v0, :cond_a

    return-object v0

    :cond_a
    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    .line 55
    :goto_7
    :try_start_7
    iget-object v7, v1, Le/a/d/v/k/q$a;->i:Le/a/d/v/k/q;

    .line 56
    iget-object v7, v7, Le/a/d/v/k/q;->c:Le/a/d/c0/z1/i;

    .line 57
    iput-object v6, v1, Le/a/d/v/k/q$a;->e:Ljava/lang/Object;

    iput-object v5, v1, Le/a/d/v/k/q$a;->f:Ljava/lang/Object;

    iput-object v2, v1, Le/a/d/v/k/q$a;->g:Ljava/lang/Object;

    const/4 v8, 0x7

    iput v8, v1, Le/a/d/v/k/q$a;->h:I

    invoke-interface {v7, v1}, Le/a/d/c0/z1/i;->o(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-ne v7, v0, :cond_b

    return-object v0

    :cond_b
    move-object v0, v2

    move-object v2, v5

    move-object v5, v6

    .line 58
    :goto_8
    :try_start_8
    iget-object v6, v1, Le/a/d/v/k/q$a;->i:Le/a/d/v/k/q;

    .line 59
    iget-object v7, v6, Le/a/d/v/k/q;->k:Le/a/d/v/k/g;

    invoke-interface {v7}, Le/a/d/v/k/g;->n()Ljava/util/List;

    move-result-object v7

    .line 60
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v3, v8

    if-eqz v3, :cond_c

    move-object v9, v7

    goto :goto_9

    :cond_c
    move-object v9, v4

    :goto_9
    if-eqz v9, :cond_f

    .line 61
    iget-object v3, v6, Le/a/d/v/k/q;->l:Le/a/d/c0/j1;

    .line 62
    new-instance v7, Le/a/d/c0/v0;

    .line 63
    iget-object v6, v6, Le/a/d/v/k/q;->c:Le/a/d/c0/z1/i;

    invoke-interface {v6}, Le/a/d/c0/z1/i;->b()Lcom/truecaller/voip/groupcall/call/CallDirection;

    move-result-object v6

    .line 64
    sget-object v8, Lcom/truecaller/voip/groupcall/call/CallDirection;->INCOMING:Lcom/truecaller/voip/groupcall/call/CallDirection;

    if-ne v6, v8, :cond_d

    sget-object v6, Lcom/truecaller/voip/util/VoipEventType;->INCOMING:Lcom/truecaller/voip/util/VoipEventType;

    goto :goto_a

    :cond_d
    sget-object v6, Lcom/truecaller/voip/util/VoipEventType;->OUTGOING:Lcom/truecaller/voip/util/VoipEventType;

    :goto_a
    move-object v10, v6

    if-eqz v0, :cond_e

    .line 65
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_b

    :cond_e
    const-wide/16 v11, 0x0

    :goto_b
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x18

    move-object v8, v7

    .line 66
    invoke-direct/range {v8 .. v15}, Le/a/d/c0/v0;-><init>(Ljava/util/List;Lcom/truecaller/voip/util/VoipEventType;JLjava/lang/Long;Ljava/lang/String;I)V

    .line 67
    invoke-interface {v3, v7}, Le/a/d/c0/j1;->j(Le/a/d/c0/v0;)V

    .line 68
    :cond_f
    iget-object v0, v1, Le/a/d/v/k/q$a;->i:Le/a/d/v/k/q;

    .line 69
    iget-object v0, v0, Le/a/d/v/k/q;->q:Le/a/d/c/a/f;

    .line 70
    invoke-interface {v0}, Le/a/d/c/a/f;->destroy()V

    .line 71
    iget-object v0, v1, Le/a/d/v/k/q$a;->j:Le/a/d/v/h$b;

    invoke-interface {v2, v0}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V

    .line 72
    :goto_c
    sget-object v0, Ls1/s;->a:Ls1/s;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 73
    invoke-interface {v5, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    :goto_d
    move-object v2, v6

    goto :goto_f

    :goto_e
    move-object v2, v5

    goto :goto_f

    :catchall_2
    move-exception v0

    :goto_f
    invoke-interface {v2, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
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
