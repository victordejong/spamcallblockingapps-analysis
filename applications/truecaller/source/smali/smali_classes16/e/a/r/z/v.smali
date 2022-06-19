.class public final Le/a/r/z/v;
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

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.wizard.verification.VerificationPresenterImpl$rejectCall$1"
    f = "VerificationPresenter.kt"
    l = {
        0x2a0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:J

.field public f:I

.field public final synthetic g:Le/a/r/z/s;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/r/z/s;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/z/v;->g:Le/a/r/z/s;

    iput-object p2, p0, Le/a/r/z/v;->h:Ljava/lang/String;

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

    new-instance p1, Le/a/r/z/v;

    iget-object v0, p0, Le/a/r/z/v;->g:Le/a/r/z/s;

    iget-object v1, p0, Le/a/r/z/v;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/z/v;-><init>(Le/a/r/z/s;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/z/v;

    iget-object v0, p0, Le/a/r/z/v;->g:Le/a/r/z/s;

    iget-object v1, p0, Le/a/r/z/v;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/z/v;-><init>(Le/a/r/z/s;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r/z/v;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v7, p0

    sget-object v8, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v0, v7, Le/a/r/z/v;->f:I

    const-wide/16 v9, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    iget-wide v0, v7, Le/a/r/z/v;->e:J

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-wide v11, v0

    move-object/from16 v0, p1

    goto :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v7, Le/a/r/z/v;->g:Le/a/r/z/s;

    .line 5
    iget-object v0, v0, Le/a/r/z/s;->y:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v9

    if-gez v0, :cond_2

    move-wide v11, v9

    goto :goto_0

    :cond_2
    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    move-wide v11, v4

    goto :goto_0

    :cond_3
    move-wide v11, v2

    .line 6
    :goto_0
    iget-object v0, v7, Le/a/r/z/v;->g:Le/a/r/z/s;

    .line 7
    iget-object v0, v0, Le/a/r/z/s;->Q:Le/a/p5/q0/e;

    cmp-long v2, v11, v9

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    .line 8
    :goto_1
    sget-object v4, Le/a/r/z/v$a;->b:Le/a/r/z/v$a;

    .line 9
    new-instance v5, Le/a/r/z/v$b;

    invoke-direct {v5, v7}, Le/a/r/z/v$b;-><init>(Le/a/r/z/v;)V

    iput-wide v11, v7, Le/a/r/z/v;->e:J

    iput v1, v7, Le/a/r/z/v;->f:I

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    move-wide v2, v11

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Le/a/p5/q0/e;->a(Le/a/p5/q0/e;IJLs1/z/b/l;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_5

    return-object v8

    .line 11
    :cond_5
    :goto_2
    check-cast v0, Ls1/k;

    .line 12
    iget-object v1, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 13
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 14
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 16
    iget-object v2, v7, Le/a/r/z/v;->g:Le/a/r/z/s;

    .line 17
    iget-object v13, v2, Le/a/r/z/s;->U:Le/a/r/z/d0/d;

    if-eqz v1, :cond_6

    .line 18
    sget-object v1, Lcom/truecaller/wizard/verification/analytics/CallAction;->REJECTED:Lcom/truecaller/wizard/verification/analytics/CallAction;

    goto :goto_3

    :cond_6
    sget-object v1, Lcom/truecaller/wizard/verification/analytics/CallAction;->NOT_REJECTED:Lcom/truecaller/wizard/verification/analytics/CallAction;

    :goto_3
    move-object v14, v1

    .line 19
    iget-object v15, v2, Le/a/r/z/s;->B:Ljava/lang/String;

    .line 20
    iget-object v1, v2, Le/a/r/z/s;->C:Ljava/lang/String;

    .line 21
    iget-object v3, v7, Le/a/r/z/v;->h:Ljava/lang/String;

    const-string v4, "call"

    .line 22
    invoke-virtual {v2, v4}, Le/a/r/z/s;->Oj(Ljava/lang/String;)Z

    move-result v18

    if-eqz v0, :cond_7

    move-wide v9, v11

    .line 23
    :cond_7
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v9, v10}, Ljava/lang/Long;-><init>(J)V

    const/16 v20, 0x0

    const/16 v21, 0x40

    const/16 v22, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v19, v0

    .line 24
    invoke-static/range {v13 .. v22}, Le/a/p5/s0/g;->N0(Le/a/r/z/d0/d;Lcom/truecaller/wizard/verification/analytics/CallAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 25
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
