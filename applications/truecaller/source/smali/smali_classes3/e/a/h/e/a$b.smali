.class public final Le/a/h/e/a$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/e/a;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V
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
    c = "com.truecaller.calling.initiate_call.InitiateCallHelperImpl$callTo$1"
    f = "InitiateCallHelperImpl.kt"
    l = {
        0x92,
        0x9a,
        0xa8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Le/a/h/e/a;

.field public final synthetic j:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;


# direct methods
.method public constructor <init>(Le/a/h/e/a;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    iput-object p2, p0, Le/a/h/e/a$b;->j:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

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

    new-instance p1, Le/a/h/e/a$b;

    iget-object v0, p0, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    iget-object v1, p0, Le/a/h/e/a$b;->j:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    invoke-direct {p1, v0, v1, p2}, Le/a/h/e/a$b;-><init>(Le/a/h/e/a;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/h/e/a$b;

    iget-object v0, p0, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    iget-object v1, p0, Le/a/h/e/a$b;->j:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    invoke-direct {p1, v0, v1, p2}, Le/a/h/e/a$b;-><init>(Le/a/h/e/a;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/h/e/a$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v7, p0

    sget-object v8, Ls1/s;->a:Ls1/s;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v7, Le/a/h/e/a$b;->h:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v11, :cond_2

    if-eq v1, v10, :cond_1

    if-ne v1, v9, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v1, v7, Le/a/h/e/a$b;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v7, Le/a/h/e/a$b;->f:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/data/entity/Number;

    iget-object v3, v7, Le/a/h/e/a$b;->e:Ljava/lang/Object;

    check-cast v3, Le/a/q2/g$b;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto/16 :goto_5

    :cond_2
    iget-object v1, v7, Le/a/h/e/a$b;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v7, Le/a/h/e/a$b;->f:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/data/entity/Number;

    iget-object v3, v7, Le/a/h/e/a$b;->e:Ljava/lang/Object;

    check-cast v3, Le/a/q2/g$b;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v16, v1

    move-object/from16 v1, p1

    goto/16 :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v7, Le/a/h/e/a$b;->j:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    .line 5
    iget-object v3, v1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->a:Ljava/lang/String;

    if-eqz v3, :cond_3d

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v11

    goto :goto_0

    :cond_4
    move v1, v12

    :goto_0
    if-eqz v1, :cond_5

    goto/16 :goto_23

    .line 7
    :cond_5
    new-instance v14, Le/a/q2/g$b;

    const-string v1, "TruecallerCallInitiated"

    invoke-direct {v14, v1}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    const-string v1, "Context"

    .line 8
    iget-object v2, v7, Le/a/h/e/a$b;->j:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    .line 9
    iget-object v2, v2, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {v14, v1, v2}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 11
    iget-object v1, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    .line 12
    iget-object v1, v1, Le/a/h/e/a;->o:Le/a/b0/q/h0;

    .line 13
    invoke-interface {v1, v3}, Le/a/b0/q/h0;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    return-object v8

    .line 14
    :cond_6
    iget-object v1, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    .line 15
    iget-object v1, v1, Le/a/h/e/a;->d:Lo3/a;

    .line 16
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/o5/q1;

    invoke-interface {v1, v3}, Le/a/o5/q1;->a(Ljava/lang/String;)Le/a/o5/r1;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 17
    iget-object v0, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    .line 18
    iget-object v0, v0, Le/a/h/e/a;->r:Landroid/content/Context;

    .line 19
    invoke-virtual {v1, v0}, Le/a/o5/r1;->a(Landroid/content/Context;)V

    return-object v8

    .line 20
    :cond_7
    iget-object v1, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    .line 21
    iget-object v1, v1, Le/a/h/e/a;->h:Le/a/k3/l/f;

    new-array v2, v11, [Ljava/lang/String;

    aput-object v3, v2, v12

    .line 22
    invoke-interface {v1, v2}, Le/a/k3/l/f;->a([Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v15

    if-eqz v15, :cond_3c

    .line 23
    iget-object v1, v7, Le/a/h/e/a$b;->j:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    .line 24
    iget-boolean v1, v1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->h:Z

    .line 25
    iget-object v2, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    .line 26
    iget-object v2, v2, Le/a/h/e/a;->a:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_8

    .line 27
    iget-object v1, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    .line 28
    iget-object v1, v1, Le/a/h/e/a;->h:Le/a/k3/l/f;

    .line 29
    invoke-interface {v1, v3}, Le/a/k3/l/f;->b(Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 30
    iget-object v2, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    .line 31
    iget-object v2, v2, Le/a/h/e/a;->t:Lo3/a;

    .line 32
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/h/d/d;

    invoke-static {v2, v1, v12, v10, v13}, Le/a/n/g0;->L(Le/a/h/d/d;Lcom/truecaller/data/entity/Number;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    move-object v1, v3

    .line 33
    :goto_1
    iget-object v2, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    .line 34
    iget-object v2, v2, Le/a/h/e/a;->b:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "08"

    .line 35
    invoke-static {v1, v2, v12, v10}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 36
    invoke-virtual {v15}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "parsedNumber.normalizedNumber"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    move-object v6, v1

    .line 37
    iget-object v1, v7, Le/a/h/e/a$b;->j:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    .line 38
    iget-boolean v1, v1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->f:Z

    if-nez v1, :cond_c

    .line 39
    iget-object v1, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    .line 40
    iget-object v1, v1, Le/a/h/e/a;->p:Lo3/a;

    .line 41
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/h/e/h;

    .line 42
    iget-object v2, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    .line 43
    iget-object v2, v2, Le/a/h/e/a;->r:Landroid/content/Context;

    .line 44
    invoke-virtual {v15}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v7, Le/a/h/e/a$b;->j:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    .line 45
    iget-object v5, v5, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->i:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    .line 46
    iput-object v14, v7, Le/a/h/e/a$b;->e:Ljava/lang/Object;

    iput-object v15, v7, Le/a/h/e/a$b;->f:Ljava/lang/Object;

    iput-object v6, v7, Le/a/h/e/a$b;->g:Ljava/lang/Object;

    iput v11, v7, Le/a/h/e/a$b;->h:I

    move-object/from16 v16, v6

    move-object/from16 v6, p0

    invoke-interface/range {v1 .. v6}, Le/a/h/e/h;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_a

    return-object v0

    :cond_a
    move-object v3, v14

    move-object v2, v15

    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v8

    :cond_b
    :goto_3
    move-object/from16 v1, v16

    goto :goto_4

    :cond_c
    move-object/from16 v16, v6

    move-object v3, v14

    move-object v2, v15

    goto :goto_3

    .line 47
    :goto_4
    iget-object v4, v7, Le/a/h/e/a$b;->j:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    .line 48
    iget-object v5, v4, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->d:Ljava/lang/Integer;

    if-nez v5, :cond_d

    .line 49
    iget-object v5, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    .line 50
    iget-object v5, v5, Le/a/h/e/a;->j:Le/a/h/b0;

    .line 51
    invoke-interface {v5}, Le/a/h/b0;->b()I

    move-result v5

    .line 52
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 53
    iput-object v6, v4, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->d:Ljava/lang/Integer;

    .line 54
    :cond_d
    iget-object v4, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    .line 55
    iget-object v4, v4, Le/a/h/e/a;->v:Le/a/h/e/j;

    .line 56
    iget-object v5, v7, Le/a/h/e/a$b;->j:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v6

    const-string v14, "parsedNumber.normalizedNumber"

    invoke-static {v6, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v7, Le/a/h/e/a$b;->e:Ljava/lang/Object;

    iput-object v2, v7, Le/a/h/e/a$b;->f:Ljava/lang/Object;

    iput-object v1, v7, Le/a/h/e/a$b;->g:Ljava/lang/Object;

    iput v10, v7, Le/a/h/e/a$b;->h:I

    check-cast v4, Le/a/h/e/k;

    invoke-virtual {v4, v5, v6, v12, v7}, Le/a/h/e/k;->a(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_e

    return-object v0

    :cond_e
    :goto_5
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 57
    iget-object v5, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    iget-object v6, v7, Le/a/h/e/a$b;->j:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    .line 58
    iget-object v10, v5, Le/a/h/e/a;->q:Lo3/a;

    invoke-interface {v10}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/f/b;

    invoke-interface {v10}, Le/a/f/b;->f()Z

    move-result v10

    .line 59
    iget-object v14, v5, Le/a/h/e/a;->c:Ls1/g;

    invoke-interface {v14}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    and-int/2addr v10, v14

    if-eqz v10, :cond_f

    if-nez v4, :cond_f

    goto/16 :goto_c

    .line 60
    :cond_f
    iget-object v10, v6, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->d:Ljava/lang/Integer;

    .line 61
    iget-object v6, v6, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->g:Landroid/telecom/PhoneAccountHandle;

    .line 62
    iget-object v14, v5, Le/a/h/e/a;->i:Lo3/a;

    invoke-interface {v14}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v14

    const-string v15, "multiSimManager.get()"

    invoke-static {v14, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Le/a/e4/p;

    invoke-interface {v14}, Le/a/e4/p;->p()Z

    move-result v14

    if-eqz v14, :cond_1b

    iget-object v14, v5, Le/a/h/e/a;->i:Lo3/a;

    invoke-interface {v14}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le/a/e4/p;

    invoke-interface {v14}, Le/a/e4/p;->t()Z

    move-result v14

    if-nez v14, :cond_10

    goto :goto_c

    :cond_10
    if-nez v10, :cond_11

    goto :goto_6

    .line 63
    :cond_11
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eqz v14, :cond_14

    :goto_6
    if-nez v10, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v11, :cond_13

    goto :goto_8

    :cond_13
    :goto_7
    move v10, v12

    goto :goto_9

    :cond_14
    :goto_8
    move v10, v11

    :goto_9
    if-eqz v6, :cond_15

    move v6, v11

    goto :goto_a

    :cond_15
    move v6, v12

    :goto_a
    if-nez v10, :cond_1b

    if-eqz v6, :cond_16

    goto :goto_c

    .line 64
    :cond_16
    iget-object v6, v5, Le/a/h/e/a;->o:Le/a/b0/q/h0;

    invoke-interface {v6, v1}, Le/a/b0/q/h0;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    goto :goto_c

    .line 65
    :cond_17
    iget-object v6, v5, Le/a/h/e/a;->m:Le/a/h/r0/b;

    invoke-interface {v6}, Le/a/h/r0/b;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v11, :cond_18

    move v6, v11

    goto :goto_b

    :cond_18
    move v6, v12

    :goto_b
    if-nez v6, :cond_19

    goto :goto_c

    .line 66
    :cond_19
    iget-object v5, v5, Le/a/h/e/a;->j:Le/a/h/b0;

    invoke-interface {v5}, Le/a/h/b0;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-1"

    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v11

    if-eqz v5, :cond_1a

    goto :goto_c

    :cond_1a
    move v5, v11

    goto :goto_d

    :cond_1b
    :goto_c
    move v5, v12

    :goto_d
    if-eqz v5, :cond_1d

    .line 67
    iget-object v0, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    .line 68
    iget-object v0, v0, Le/a/h/e/a;->p:Lo3/a;

    .line 69
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Le/a/h/e/h;

    .line 70
    iget-object v0, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    .line 71
    iget-object v15, v0, Le/a/h/e/a;->r:Landroid/content/Context;

    .line 72
    iget-object v0, v7, Le/a/h/e/a$b;->j:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    .line 73
    iget-object v2, v0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->c:Ljava/lang/String;

    if-eqz v2, :cond_1c

    move-object/from16 v17, v2

    goto :goto_e

    :cond_1c
    move-object/from16 v17, v1

    .line 74
    :goto_e
    iget-object v2, v0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->b:Ljava/lang/String;

    .line 75
    iget-boolean v3, v0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->f:Z

    .line 76
    iget-object v0, v0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->i:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v0

    .line 77
    invoke-interface/range {v14 .. v20}, Le/a/h/e/h;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    return-object v8

    :cond_1d
    if-eqz v4, :cond_1f

    .line 78
    iget-object v1, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    .line 79
    iget-object v1, v1, Le/a/h/e/a;->v:Le/a/h/e/j;

    .line 80
    iget-object v3, v7, Le/a/h/e/a$b;->j:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v2

    const-string v4, "parsedNumber.normalizedNumber"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v13, v7, Le/a/h/e/a$b;->e:Ljava/lang/Object;

    iput-object v13, v7, Le/a/h/e/a$b;->f:Ljava/lang/Object;

    iput-object v13, v7, Le/a/h/e/a$b;->g:Ljava/lang/Object;

    iput v9, v7, Le/a/h/e/a$b;->h:I

    check-cast v1, Le/a/h/e/k;

    invoke-virtual {v1, v3, v2, v11, v7}, Le/a/h/e/k;->a(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1e

    return-object v0

    :cond_1e
    :goto_f
    return-object v8

    .line 81
    :cond_1f
    iget-object v0, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    iget-object v4, v7, Le/a/h/e/a$b;->j:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    .line 82
    iget-object v4, v4, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->b:Ljava/lang/String;

    .line 83
    iget-object v5, v0, Le/a/h/e/a;->l:Lo3/a;

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/settings/CallingSettings;

    const-string v6, "key_temp_latest_call_made_with_tc"

    invoke-interface {v5, v6, v11}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    iget-object v5, v0, Le/a/h/e/a;->l:Lo3/a;

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/settings/CallingSettings;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v6, "lastCallMadeWithTcTime"

    invoke-interface {v5, v6, v9, v10}, Lcom/truecaller/settings/CallingSettings;->putLong(Ljava/lang/String;J)V

    .line 85
    iget-object v5, v0, Le/a/h/e/a;->l:Lo3/a;

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/settings/CallingSettings;

    const-string v6, "key_last_call_origin"

    invoke-interface {v5, v6}, Lcom/truecaller/settings/CallingSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 86
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_20

    goto :goto_10

    :cond_20
    move v5, v12

    goto :goto_11

    :cond_21
    :goto_10
    move v5, v11

    :goto_11
    if-eqz v5, :cond_22

    .line 87
    iget-object v0, v0, Le/a/h/e/a;->l:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/settings/CallingSettings;

    invoke-interface {v0, v6, v4}, Lcom/truecaller/settings/CallingSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_22
    iget-object v0, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    .line 89
    iget-object v4, v7, Le/a/h/e/a$b;->j:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    .line 90
    iget-object v5, v4, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->b:Ljava/lang/String;

    .line 91
    iget-object v6, v4, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->g:Landroid/telecom/PhoneAccountHandle;

    .line 92
    iget-boolean v9, v4, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->e:Z

    .line 93
    iget-object v4, v4, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->d:Ljava/lang/Integer;

    .line 94
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v10

    const-string v14, "parsedNumber.normalizedNumber"

    invoke-static {v10, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v14, v0, Le/a/h/e/a;->k:Le/a/p5/g;

    invoke-interface {v14}, Le/a/p5/g;->q()I

    move-result v14

    const/16 v15, 0x17

    if-lt v14, v15, :cond_23

    move v14, v11

    goto :goto_12

    :cond_23
    move v14, v12

    :goto_12
    if-eqz v14, :cond_24

    if-eqz v6, :cond_24

    goto :goto_13

    :cond_24
    move-object v6, v13

    :goto_13
    if-eqz v14, :cond_25

    if-eqz v9, :cond_25

    move/from16 v21, v11

    goto :goto_14

    :cond_25
    move/from16 v21, v12

    :goto_14
    if-eqz v6, :cond_26

    move/from16 v19, v11

    goto :goto_15

    :cond_26
    move/from16 v19, v12

    :goto_15
    if-nez v6, :cond_31

    .line 96
    iget-object v6, v0, Le/a/h/e/a;->w:Le/a/h/e/f;

    check-cast v6, Le/a/h/e/g;

    .line 97
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_30

    .line 98
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gez v9, :cond_27

    goto/16 :goto_1b

    .line 99
    :cond_27
    iget-object v9, v6, Le/a/h/e/g;->b:Landroid/content/Context;

    const-string v14, "android.permission.READ_PHONE_STATE"

    invoke-static {v9, v14}, Ln3/k/b/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_28

    goto :goto_16

    :cond_28
    move v11, v12

    :goto_16
    if-nez v11, :cond_29

    goto/16 :goto_1c

    .line 100
    :cond_29
    iget-object v9, v6, Le/a/h/e/g;->b:Landroid/content/Context;

    invoke-static {v9}, Le/a/p5/s0/g;->h0(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v9

    .line 101
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v9

    if-eqz v9, :cond_30

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    .line 102
    iget-object v11, v6, Le/a/h/e/g;->b:Landroid/content/Context;

    invoke-static {v11}, Le/a/p5/s0/g;->i0(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v11

    .line 103
    iget-object v12, v6, Le/a/h/e/g;->b:Landroid/content/Context;

    invoke-static {v12}, Le/a/p5/s0/g;->j0(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v12

    .line 104
    invoke-virtual {v11}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v13

    const-string v14, "telecomManager.callCapablePhoneAccounts"

    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_17
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Landroid/telecom/PhoneAccountHandle;

    .line 106
    invoke-virtual {v11, v15}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v15

    if-eqz v15, :cond_2c

    move-object/from16 p1, v11

    .line 107
    iget-object v11, v6, Le/a/h/e/g;->a:Ls1/g;

    invoke-interface {v11}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Method;

    if-eqz v11, :cond_2b

    move-object/from16 v16, v6

    const/4 v6, 0x1

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v15, v6, v17

    .line 108
    invoke-virtual {v11, v12, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2a

    check-cast v6, Ljava/lang/Integer;

    goto :goto_18

    :cond_2a
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v11, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v6, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2b
    move-object/from16 v16, v6

    :catchall_0
    const/4 v6, 0x0

    :goto_18
    if-eqz v6, :cond_2d

    .line 109
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v9, :cond_2d

    const/4 v6, 0x1

    goto :goto_19

    :cond_2c
    move-object/from16 v16, v6

    move-object/from16 p1, v11

    :cond_2d
    const/4 v6, 0x0

    :goto_19
    if-eqz v6, :cond_2e

    goto :goto_1a

    :cond_2e
    move-object/from16 v11, p1

    move-object/from16 v6, v16

    goto :goto_17

    :cond_2f
    const/4 v14, 0x0

    .line 110
    :goto_1a
    check-cast v14, Landroid/telecom/PhoneAccountHandle;

    move-object v13, v14

    goto :goto_1c

    :cond_30
    :goto_1b
    const/4 v6, 0x0

    :cond_31
    move-object v13, v6

    :goto_1c
    move-object/from16 v18, v13

    if-nez v18, :cond_34

    .line 111
    iget-object v6, v0, Le/a/h/e/a;->i:Lo3/a;

    invoke-interface {v6}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/e4/p;

    invoke-interface {v6}, Le/a/e4/p;->t()Z

    move-result v6

    if-eqz v6, :cond_34

    iget-object v6, v0, Le/a/h/e/a;->i:Lo3/a;

    invoke-interface {v6}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v6

    const-string v9, "multiSimManager.get()"

    invoke-static {v6, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Le/a/e4/p;

    invoke-interface {v6}, Le/a/e4/p;->p()Z

    move-result v6

    if-nez v6, :cond_32

    goto :goto_1d

    :cond_32
    if-nez v4, :cond_33

    .line 112
    iget-object v4, v0, Le/a/h/e/a;->j:Le/a/h/b0;

    invoke-interface {v4}, Le/a/h/b0;->a()Ljava/lang/String;

    move-result-object v4

    goto :goto_1e

    .line 113
    :cond_33
    iget-object v6, v0, Le/a/h/e/a;->i:Lo3/a;

    invoke-interface {v6}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/e4/p;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v6, v4}, Le/a/e4/p;->e(I)Lcom/truecaller/multisim/SimInfo;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 114
    iget-object v4, v4, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    goto :goto_1e

    :cond_34
    :goto_1d
    const/4 v4, 0x0

    :goto_1e
    move-object/from16 v20, v4

    .line 115
    iget-object v4, v0, Le/a/h/e/a;->o:Le/a/b0/q/h0;

    invoke-interface {v4, v1}, Le/a/b0/q/h0;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_36

    const-string v4, "null cannot be cast to non-null type kotlin.CharSequence"

    .line 116
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "sip:"

    const/4 v9, 0x2

    const/4 v11, 0x0

    .line 117
    invoke-static {v4, v6, v11, v9}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 118
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1f

    :cond_35
    const-string v6, "sip"

    const/4 v9, 0x0

    .line 119
    invoke-static {v6, v4, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1f

    :cond_36
    const/4 v4, 0x0

    const/4 v11, 0x0

    const-string v6, "tel"

    .line 120
    invoke-static {v6, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 121
    :goto_1f
    iget-object v6, v0, Le/a/h/e/a;->o:Le/a/b0/q/h0;

    invoke-interface {v6, v1}, Le/a/b0/q/h0;->b(Ljava/lang/String;)Z

    move-result v6

    iget-object v9, v0, Le/a/h/e/a;->p:Lo3/a;

    invoke-interface {v9}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/h/e/h;

    iget-object v0, v0, Le/a/h/e/a;->r:Landroid/content/Context;

    const-string v12, "uri"

    invoke-static {v4, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9, v0, v4}, Le/a/h/e/h;->b(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    and-int v23, v6, v0

    if-eqz v23, :cond_37

    const-string v0, "android.intent.action.DIAL"

    goto :goto_20

    :cond_37
    const-string v0, "android.intent.action.CALL"

    :goto_20
    move-object v15, v0

    .line 122
    new-instance v6, Le/a/h/e/b;

    move-object v14, v6

    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v22, v10

    invoke-direct/range {v14 .. v23}, Le/a/h/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;ZLjava/lang/String;ZLjava/lang/String;Z)V

    .line 123
    iget-object v0, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    iget-object v4, v7, Le/a/h/e/a$b;->j:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    .line 124
    iget-object v4, v4, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->b:Ljava/lang/String;

    .line 125
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v5, Le/a/l5/a/w;->f:Lorg/apache/avro/Schema;

    new-instance v5, Le/a/l5/a/w$b;

    const/4 v9, 0x0

    invoke-direct {v5, v9}, Le/a/l5/a/w$b;-><init>(Le/a/l5/a/w$a;)V

    .line 127
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v9, v9, v10

    invoke-virtual {v5, v9, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 128
    iput-object v4, v5, Le/a/l5/a/w$b;->b:Ljava/lang/CharSequence;

    .line 129
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v4

    const/4 v9, 0x1

    aput-boolean v9, v4, v10

    .line 130
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->f()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v10, 0x2

    aget-object v4, v4, v10

    invoke-virtual {v5, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 132
    iput-object v2, v5, Le/a/l5/a/w$b;->a:Ljava/lang/CharSequence;

    .line 133
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v9, v2, v10

    .line 134
    const-class v2, Le/a/d0/p0;

    monitor-enter v2

    .line 135
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Le/a/d0/p0;->a:Ljava/lang/String;

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sput-wide v9, Le/a/d0/p0;->b:J

    .line 137
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    sget-object v2, Le/a/d0/p0;->a:Ljava/lang/String;

    .line 139
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v9, 0x4

    aget-object v4, v4, v9

    invoke-virtual {v5, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 140
    iput-object v2, v5, Le/a/l5/a/w$b;->c:Ljava/lang/CharSequence;

    .line 141
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    const/4 v4, 0x1

    aput-boolean v4, v2, v9

    .line 142
    :try_start_2
    iget-object v0, v0, Le/a/h/e/a;->e:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    invoke-virtual {v5}, Le/a/l5/a/w$b;->a()Le/a/l5/a/w;

    move-result-object v2

    invoke-interface {v0, v2}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V
    :try_end_2
    .catch Lorg/apache/avro/AvroRuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_21

    :catch_0
    move-exception v0

    .line 143
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 144
    :goto_21
    iget-object v0, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    const-string v2, "event"

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-boolean v2, v6, Le/a/h/e/b;->g:Z

    const-string v5, "IsVideo"

    .line 147
    invoke-virtual {v3, v5, v2}, Le/a/q2/g$b;->e(Ljava/lang/String;Z)Le/a/q2/g$b;

    .line 148
    iget-boolean v2, v6, Le/a/h/e/b;->e:Z

    if-eqz v2, :cond_38

    const-string v5, "SIP"

    goto :goto_22

    :cond_38
    const-string v5, "PSTN"

    .line 149
    :goto_22
    iget-object v9, v6, Le/a/h/e/b;->f:Ljava/lang/String;

    if-nez v9, :cond_39

    if-nez v2, :cond_3a

    .line 150
    iget-object v2, v6, Le/a/h/e/b;->d:Landroid/telecom/PhoneAccountHandle;

    if-eqz v2, :cond_3a

    :cond_39
    move v11, v4

    :cond_3a
    const-string v2, "Network"

    .line 151
    invoke-virtual {v3, v2, v5}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 152
    iget-object v2, v6, Le/a/h/e/b;->a:Ljava/lang/String;

    const-string v4, "IntentAction"

    .line 153
    invoke-virtual {v3, v4, v2}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    const-string v2, "IsSpecificSim"

    .line 154
    invoke-virtual {v3, v2, v11}, Le/a/q2/g$b;->e(Ljava/lang/String;Z)Le/a/q2/g$b;

    .line 155
    iget-object v0, v0, Le/a/h/e/a;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a;

    invoke-virtual {v3}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object v2

    const-string v3, "event.build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 156
    iget-object v0, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    iget-object v2, v7, Le/a/h/e/a$b;->j:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    .line 157
    iget-object v3, v2, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->b:Ljava/lang/String;

    .line 158
    iget-object v2, v2, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->i:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    .line 159
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    instance-of v4, v2, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Set;

    if-eqz v4, :cond_3b

    .line 161
    iget-object v0, v0, Le/a/h/e/a;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Le/a/q2/a;

    const-string v0, "Context"

    .line 162
    invoke-static {v0, v3}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v11

    .line 163
    check-cast v2, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Set;

    .line 164
    iget-object v0, v2, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Set;->a:Lcom/truecaller/data/entity/CallContextMessage;

    .line 165
    iget-object v0, v0, Lcom/truecaller/data/entity/CallContextMessage;->d:Lcom/truecaller/data/entity/FeatureType;

    .line 166
    invoke-virtual {v0}, Lcom/truecaller/data/entity/FeatureType;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Source"

    .line 167
    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "ContextCallInitiated"

    const/4 v12, 0x0

    const-string v13, "AnalyticsEvent.Builder(A\u2026                 .build()"

    move-object v10, v12

    .line 168
    invoke-static/range {v9 .. v14}, Le/d/c/a/a;->G0(Ljava/lang/String;Ljava/lang/Double;Ljava/util/HashMap;Le/a/q2/g$a;Ljava/lang/String;Le/a/q2/a;)V

    .line 169
    :cond_3b
    iget-object v0, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    .line 170
    iget-object v0, v0, Le/a/h/e/a;->s:Lo3/a;

    .line 171
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/w0/a;

    iget-object v2, v7, Le/a/h/e/a$b;->j:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    .line 172
    iget-object v2, v2, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->b:Ljava/lang/String;

    .line 173
    invoke-interface {v0, v1, v2}, Le/a/q2/w0/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    .line 175
    iget-object v0, v0, Le/a/h/e/a;->p:Lo3/a;

    .line 176
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h/e/h;

    iget-object v1, v7, Le/a/h/e/a$b;->i:Le/a/h/e/a;

    .line 177
    iget-object v1, v1, Le/a/h/e/a;->r:Landroid/content/Context;

    .line 178
    invoke-interface {v0, v1, v6}, Le/a/h/e/h;->f(Landroid/content/Context;Le/a/h/e/b;)V

    return-object v8

    :catchall_1
    move-exception v0

    .line 179
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_3c
    return-object v8

    :cond_3d
    :goto_23
    const-string v0, "Cannot call null or empty number"

    .line 180
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    return-object v8
.end method
