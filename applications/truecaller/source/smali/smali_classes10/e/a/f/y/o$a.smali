.class public final Le/a/f/y/o$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/y/o;->Z7(Le/a/f/z/d0;)V
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
    c = "com.truecaller.incallui.service.InCallUIServicePresenter$launchAcs$1"
    f = "InCallUIServicePresenter.kt"
    l = {
        0x2a7,
        0x2b2,
        0x2bc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Le/a/f/y/o;

.field public final synthetic j:Le/a/f/z/d0;


# direct methods
.method public constructor <init>(Le/a/f/y/o;Le/a/f/z/d0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/y/o$a;->i:Le/a/f/y/o;

    iput-object p2, p0, Le/a/f/y/o$a;->j:Le/a/f/z/d0;

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

    new-instance p1, Le/a/f/y/o$a;

    iget-object v0, p0, Le/a/f/y/o$a;->i:Le/a/f/y/o;

    iget-object v1, p0, Le/a/f/y/o$a;->j:Le/a/f/z/d0;

    invoke-direct {p1, v0, v1, p2}, Le/a/f/y/o$a;-><init>(Le/a/f/y/o;Le/a/f/z/d0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f/y/o$a;

    iget-object v0, p0, Le/a/f/y/o$a;->i:Le/a/f/y/o;

    iget-object v1, p0, Le/a/f/y/o$a;->j:Le/a/f/z/d0;

    invoke-direct {p1, v0, v1, p2}, Le/a/f/y/o$a;-><init>(Le/a/f/y/o;Le/a/f/z/d0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/f/y/o$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v6, p0

    sget-object v7, Ls1/s;->a:Ls1/s;

    sget-object v8, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v0, v6, Le/a/f/y/o$a;->h:I

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v12, :cond_2

    if-eq v0, v9, :cond_1

    if-ne v0, v10, :cond_0

    iget-object v0, v6, Le/a/f/y/o$a;->f:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/data/entity/HistoryEvent;

    iget-object v1, v6, Le/a/f/y/o$a;->e:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/blocking/FilterMatch;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v14, v0

    move-object/from16 v0, p1

    goto/16 :goto_7

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v0, v6, Le/a/f/y/o$a;->g:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/data/entity/HistoryEvent;

    iget-object v1, v6, Le/a/f/y/o$a;->f:Ljava/lang/Object;

    iget-object v2, v6, Le/a/f/y/o$a;->e:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/blocking/FilterMatch;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v13, v2

    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_5

    :cond_2
    iget-object v0, v6, Le/a/f/y/o$a;->f:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/blocking/FilterMatch;

    iget-object v1, v6, Le/a/f/y/o$a;->e:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/g;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v6, Le/a/f/y/o$a;->i:Le/a/f/y/o;

    .line 5
    iget-object v0, v0, Le/a/f/y/o;->w:Le/a/f/w/c;

    .line 6
    iget-object v1, v6, Le/a/f/y/o$a;->j:Le/a/f/z/d0;

    .line 7
    iget-object v1, v1, Le/a/f/z/d0;->a:Ljava/lang/String;

    .line 8
    invoke-interface {v0, v1}, Le/a/f/w/c;->b(Ljava/lang/String;)Le/a/f/a/g;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 9
    iget-object v0, v1, Le/a/f/a/g;->w:Lcom/truecaller/data/entity/Contact;

    if-nez v0, :cond_4

    return-object v7

    .line 10
    :cond_4
    iget-object v0, v1, Le/a/f/a/g;->x:Lcom/truecaller/blocking/FilterMatch;

    .line 11
    iget-object v2, v6, Le/a/f/y/o$a;->i:Le/a/f/y/o;

    .line 12
    iget-object v2, v2, Le/a/f/y/o;->L:Le/a/b0/e/l;

    .line 13
    invoke-interface {v2}, Le/a/b0/e/l;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    const-string v2, ""

    .line 14
    :goto_0
    iget-object v3, v6, Le/a/f/y/o$a;->i:Le/a/f/y/o;

    .line 15
    iget-object v3, v3, Le/a/f/y/o;->M:Le/a/k3/e;

    .line 16
    iget-object v4, v1, Le/a/f/a/g;->e:Ljava/lang/String;

    .line 17
    iput-object v1, v6, Le/a/f/y/o$a;->e:Ljava/lang/Object;

    iput-object v0, v6, Le/a/f/y/o$a;->f:Ljava/lang/Object;

    iput v12, v6, Le/a/f/y/o$a;->h:I

    .line 18
    invoke-interface {v3, v4, v2, v6}, Le/a/k3/e;->b(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_6

    return-object v8

    .line 19
    :cond_6
    :goto_1
    move-object v3, v2

    check-cast v3, Lcom/truecaller/data/entity/HistoryEvent;

    .line 20
    iget-object v4, v1, Le/a/f/a/g;->w:Lcom/truecaller/data/entity/Contact;

    .line 21
    iput-object v4, v3, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    .line 22
    iget-object v4, v6, Le/a/f/y/o$a;->i:Le/a/f/y/o;

    iget-object v5, v6, Le/a/f/y/o$a;->j:Le/a/f/z/d0;

    .line 23
    iget-object v5, v5, Le/a/f/z/d0;->b:Lcom/truecaller/incallui/service/CallType;

    .line 24
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_9

    if-eq v4, v12, :cond_8

    if-eq v4, v9, :cond_7

    move v4, v11

    goto :goto_2

    :cond_7
    move v4, v10

    goto :goto_2

    :cond_8
    move v4, v9

    goto :goto_2

    :cond_9
    move v4, v12

    .line 26
    :goto_2
    iput v4, v3, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    .line 27
    iget-object v4, v6, Le/a/f/y/o$a;->i:Le/a/f/y/o;

    iget-object v5, v6, Le/a/f/y/o$a;->j:Le/a/f/z/d0;

    .line 28
    iget-object v5, v5, Le/a/f/z/d0;->h:Lcom/truecaller/incallui/utils/BlockAction;

    .line 29
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_a

    goto :goto_3

    .line 30
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_c

    if-eq v4, v12, :cond_b

    :goto_3
    move v4, v11

    goto :goto_4

    :cond_b
    move v4, v12

    goto :goto_4

    :cond_c
    move v4, v10

    .line 31
    :goto_4
    iput v4, v3, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    .line 32
    iget-object v4, v6, Le/a/f/y/o$a;->j:Le/a/f/z/d0;

    .line 33
    iget-wide v13, v4, Le/a/f/z/d0;->c:J

    .line 34
    iput-wide v13, v3, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 35
    iget-wide v13, v4, Le/a/f/z/d0;->d:J

    .line 36
    iput-wide v13, v3, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    .line 37
    iget-object v4, v4, Le/a/f/z/d0;->e:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 38
    iput-object v4, v3, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    .line 39
    :cond_d
    iget-object v4, v6, Le/a/f/y/o$a;->i:Le/a/f/y/o;

    .line 40
    iget-object v4, v4, Le/a/f/y/o;->A:Le/a/o/c;

    .line 41
    iget-object v1, v1, Le/a/f/a/g;->e:Ljava/lang/String;

    .line 42
    iput-object v0, v6, Le/a/f/y/o$a;->e:Ljava/lang/Object;

    iput-object v2, v6, Le/a/f/y/o$a;->f:Ljava/lang/Object;

    iput-object v3, v6, Le/a/f/y/o$a;->g:Ljava/lang/Object;

    iput v9, v6, Le/a/f/y/o$a;->h:I

    invoke-interface {v4, v1, v6}, Le/a/o/c;->H(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_e

    return-object v8

    :cond_e
    move-object v13, v0

    move-object v0, v3

    .line 43
    :goto_5
    check-cast v1, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    if-eqz v1, :cond_f

    .line 44
    invoke-static {v1}, Le/a/m0/a1$k;->T0(Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;)Lcom/truecaller/data/entity/CallContextMessage;

    move-result-object v1

    .line 45
    iput-object v1, v0, Lcom/truecaller/data/entity/HistoryEvent;->v:Lcom/truecaller/data/entity/CallContextMessage;

    .line 46
    :cond_f
    move-object v14, v2

    check-cast v14, Lcom/truecaller/data/entity/HistoryEvent;

    .line 47
    iget-object v0, v6, Le/a/f/y/o$a;->i:Le/a/f/y/o;

    .line 48
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/y/k;

    if-eqz v0, :cond_10

    .line 49
    invoke-interface {v0}, Le/a/f/y/k;->R0()Z

    move-result v0

    .line 50
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 51
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v4, v0

    goto :goto_6

    :cond_10
    move v4, v11

    .line 52
    :goto_6
    iget-object v0, v6, Le/a/f/y/o$a;->i:Le/a/f/y/o;

    .line 53
    iget-object v0, v0, Le/a/f/y/o;->z:Le/a/f/z/d;

    .line 54
    iget-object v1, v6, Le/a/f/y/o$a;->j:Le/a/f/z/d0;

    .line 55
    iget-boolean v2, v1, Le/a/f/z/d0;->f:Z

    .line 56
    iget-boolean v3, v1, Le/a/f/z/d0;->g:Z

    .line 57
    iput-object v13, v6, Le/a/f/y/o$a;->e:Ljava/lang/Object;

    iput-object v14, v6, Le/a/f/y/o$a;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v6, Le/a/f/y/o$a;->g:Ljava/lang/Object;

    iput v10, v6, Le/a/f/y/o$a;->h:I

    .line 58
    check-cast v0, Le/a/f/z/e;

    move-object v1, v14

    move-object/from16 v5, p0

    invoke-virtual/range {v0 .. v5}, Le/a/f/z/e;->c(Lcom/truecaller/data/entity/HistoryEvent;ZZZLs1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_11

    return-object v8

    :cond_11
    move-object v1, v13

    .line 59
    :goto_7
    check-cast v0, Lcom/truecaller/incallui/utils/FacsBehavior;

    .line 60
    sget-object v2, Lcom/truecaller/incallui/utils/FacsBehavior;->DO_NOTHING:Lcom/truecaller/incallui/utils/FacsBehavior;

    if-eq v0, v2, :cond_13

    .line 61
    new-instance v2, Lcom/truecaller/acs/data/AfterCallHistoryEvent;

    .line 62
    iget-object v3, v6, Le/a/f/y/o$a;->j:Le/a/f/z/d0;

    .line 63
    iget-boolean v15, v3, Le/a/f/z/d0;->f:Z

    .line 64
    sget-object v3, Lcom/truecaller/incallui/utils/FacsBehavior;->FACS_TOP_LOCK:Lcom/truecaller/incallui/utils/FacsBehavior;

    if-ne v0, v3, :cond_12

    move/from16 v16, v12

    goto :goto_8

    :cond_12
    move/from16 v16, v11

    :goto_8
    const/16 v18, 0x0

    move-object v13, v2

    move-object/from16 v17, v1

    .line 65
    invoke-direct/range {v13 .. v18}, Lcom/truecaller/acs/data/AfterCallHistoryEvent;-><init>(Lcom/truecaller/data/entity/HistoryEvent;ZZLcom/truecaller/blocking/FilterMatch;Z)V

    .line 66
    iget-object v0, v6, Le/a/f/y/o$a;->i:Le/a/f/y/o;

    .line 67
    iget-object v0, v0, Le/a/f/y/o;->z:Le/a/f/z/d;

    .line 68
    check-cast v0, Le/a/f/z/e;

    .line 69
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "afterCallHistoryEvent"

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, v0, Le/a/f/z/e;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g/c;

    invoke-interface {v0, v2}, Le/a/g/c;->b(Lcom/truecaller/acs/data/AfterCallHistoryEvent;)V

    return-object v7

    .line 71
    :cond_13
    iget-object v0, v6, Le/a/f/y/o$a;->i:Le/a/f/y/o;

    .line 72
    iget-object v0, v0, Le/a/f/y/o;->z:Le/a/f/z/d;

    .line 73
    iget-object v2, v6, Le/a/f/y/o$a;->j:Le/a/f/z/d0;

    .line 74
    iget-boolean v2, v2, Le/a/f/z/d0;->i:Z

    .line 75
    check-cast v0, Le/a/f/z/e;

    .line 76
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "historyEvent"

    invoke-static {v14, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v4, v0, Le/a/f/z/e;->b:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/g/c;

    invoke-interface {v4}, Le/a/g/c;->c()Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_a

    .line 78
    :cond_14
    iget v4, v14, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    if-eq v4, v12, :cond_18

    if-eq v4, v10, :cond_18

    .line 79
    iget-object v4, v0, Le/a/f/z/e;->e:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/p5/g;

    invoke-interface {v4}, Le/a/p5/g;->F()Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_a

    .line 80
    :cond_15
    sget-object v4, Lcom/truecaller/blocking/FilterMatch;->j:Lcom/truecaller/blocking/FilterMatch;

    .line 81
    iget-object v5, v0, Le/a/f/z/e;->h:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/k3/l/f;

    new-array v8, v12, [Ljava/lang/String;

    .line 82
    iget-object v10, v14, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    aput-object v10, v8, v11

    .line 83
    invoke-interface {v5, v8}, Le/a/k3/l/f;->d([Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v5

    .line 84
    iget v8, v14, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    if-ne v8, v9, :cond_16

    move v8, v12

    goto :goto_9

    :cond_16
    move v8, v11

    :goto_9
    xor-int/2addr v8, v12

    .line 85
    iget-object v9, v0, Le/a/f/z/e;->f:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/p2/i;

    invoke-interface {v9, v14, v5, v8, v2}, Le/a/p2/i;->a(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/data/entity/Number;ZZ)Lcom/truecaller/aftercall/PromotionType;

    move-result-object v5

    if-eqz v5, :cond_17

    goto :goto_a

    .line 86
    :cond_17
    iget-object v5, v0, Le/a/f/z/e;->g:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/g/j/h0;

    invoke-interface {v5, v14}, Le/a/g/j/h0;->a(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result v5

    .line 87
    iget-object v0, v0, Le/a/f/z/e;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g/j/h0;

    invoke-interface {v0, v14, v4, v2}, Le/a/g/j/h0;->b(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/blocking/FilterMatch;Z)Z

    move-result v0

    or-int/2addr v0, v5

    goto :goto_b

    :cond_18
    :goto_a
    move v0, v11

    :goto_b
    if-eqz v0, :cond_19

    .line 88
    iget-object v0, v6, Le/a/f/y/o$a;->i:Le/a/f/y/o;

    .line 89
    iget-object v0, v0, Le/a/f/y/o;->z:Le/a/f/z/d;

    .line 90
    check-cast v0, Le/a/f/z/e;

    .line 91
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "filterMatch"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, v0, Le/a/f/z/e;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g/c;

    invoke-interface {v0, v14, v1, v11}, Le/a/g/c;->d(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/blocking/FilterMatch;Z)V

    :cond_19
    return-object v7
.end method
