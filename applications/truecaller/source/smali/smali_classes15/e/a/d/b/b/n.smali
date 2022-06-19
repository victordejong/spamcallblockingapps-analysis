.class public final Le/a/d/b/b/n;
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
    c = "com.truecaller.voip.legacy.incoming.LegacyIncomingVoipServicePresenter$onNewCall$1"
    f = "LegacyIncomingVoipServicePresenter.kt"
    l = {
        0x63,
        0x64,
        0x6a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/b/b/b;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Z


# direct methods
.method public constructor <init>(Le/a/d/b/b/b;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/b/n;->g:Le/a/d/b/b/b;

    iput-object p2, p0, Le/a/d/b/b/n;->h:Ljava/lang/String;

    iput-object p3, p0, Le/a/d/b/b/n;->i:Ljava/lang/String;

    iput-boolean p4, p0, Le/a/d/b/b/n;->j:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/d/b/b/n;

    iget-object v1, p0, Le/a/d/b/b/n;->g:Le/a/d/b/b/b;

    iget-object v2, p0, Le/a/d/b/b/n;->h:Ljava/lang/String;

    iget-object v3, p0, Le/a/d/b/b/n;->i:Ljava/lang/String;

    iget-boolean v4, p0, Le/a/d/b/b/n;->j:Z

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/d/b/b/n;-><init>(Le/a/d/b/b/b;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/d/b/b/n;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/d/b/b/n;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/b/b/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    sget-object v1, Ls1/s;->a:Ls1/s;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v0, Le/a/d/b/b/n;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v8, :cond_2

    if-eq v3, v7, :cond_1

    if-ne v3, v5, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_4

    :cond_2
    iget-object v3, v0, Le/a/d/b/b/n;->e:Ljava/lang/Object;

    check-cast v3, Lq3/a/n0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v9, v3

    move-object/from16 v3, p1

    goto/16 :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v9, v0, Le/a/d/b/b/n;->g:Le/a/d/b/b/b;

    .line 5
    iget-object v3, v9, Le/a/d/b/b/b;->i:Le/a/d/l;

    .line 6
    iget-object v3, v3, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    .line 7
    sget-object v10, Lcom/truecaller/voip/VoipState;->INITIAL:Lcom/truecaller/voip/VoipState;

    if-eq v3, v10, :cond_7

    .line 8
    iget-object v2, v0, Le/a/d/b/b/n;->h:Ljava/lang/String;

    iget-object v3, v0, Le/a/d/b/b/n;->i:Ljava/lang/String;

    if-eqz v2, :cond_6

    if-nez v3, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {v9}, Le/a/d/b/b/b;->Kj()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 10
    invoke-static {v2, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v2, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/d/b/b/i;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Le/a/d/b/b/i;->k()V

    goto :goto_0

    .line 11
    :cond_5
    new-instance v12, Le/a/d/b/b/o;

    invoke-direct {v12, v9, v2, v3, v4}, Le/a/d/b/b/o;-><init>(Le/a/d/b/b/b;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_6
    :goto_0
    return-object v1

    .line 12
    :cond_7
    iget-object v3, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/d/b/b/i;

    if-eqz v3, :cond_8

    .line 13
    invoke-interface {v3}, Le/a/d/b/b/i;->f()V

    .line 14
    :cond_8
    iget-object v3, v0, Le/a/d/b/b/n;->g:Le/a/d/b/b/b;

    iget-object v9, v0, Le/a/d/b/b/n;->h:Ljava/lang/String;

    iget-object v10, v0, Le/a/d/b/b/n;->i:Ljava/lang/String;

    iget-boolean v11, v0, Le/a/d/b/b/n;->j:Z

    .line 15
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_a

    if-nez v10, :cond_9

    goto :goto_1

    .line 16
    :cond_9
    iput-object v9, v3, Le/a/d/b/b/b;->h:Ljava/lang/String;

    .line 17
    iput-object v10, v3, Le/a/d/b/b/b;->d:Ljava/lang/String;

    .line 18
    iput-boolean v11, v3, Le/a/d/b/b/b;->f:Z

    move v3, v8

    goto :goto_2

    :cond_a
    :goto_1
    move v3, v6

    :goto_2
    if-nez v3, :cond_c

    .line 19
    iget-object v2, v0, Le/a/d/b/b/n;->g:Le/a/d/b/b/b;

    .line 20
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/d/b/b/i;

    if-eqz v2, :cond_b

    .line 21
    invoke-interface {v2}, Le/a/d/b/b/i;->t()V

    :cond_b
    return-object v1

    .line 22
    :cond_c
    iget-object v10, v0, Le/a/d/b/b/n;->g:Le/a/d/b/b/b;

    .line 23
    iget-object v9, v10, Le/a/d/b/b/b;->s:Le/a/d/c0/f0;

    .line 24
    new-instance v13, Le/a/d/b/b/l;

    invoke-direct {v13, v10}, Le/a/d/b/b/l;-><init>(Le/a/d/b/b/b;)V

    .line 25
    sget-object v11, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->INCOMING:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    .line 26
    iget-object v12, v10, Le/a/d/b/b/b;->d:Ljava/lang/String;

    if-eqz v12, :cond_17

    .line 27
    iget-object v3, v10, Le/a/d/b/b/b;->l:Lq3/a/w2/h;

    .line 28
    invoke-interface {v3}, Lq3/a/w2/h;->p2()Lq3/a/w2/z;

    move-result-object v16

    .line 29
    iget-object v3, v10, Le/a/d/b/b/b;->k:Lq3/a/w2/h;

    .line 30
    invoke-interface {v3}, Lq3/a/w2/h;->p2()Lq3/a/w2/z;

    move-result-object v17

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/16 v24, 0x0

    move-object/from16 v15, v24

    .line 31
    invoke-interface/range {v9 .. v18}, Le/a/d/c0/f0;->k(Lq3/a/i0;Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;Ljava/lang/String;Ls1/z/b/a;Ls1/z/b/a;Ljava/lang/String;Lq3/a/w2/z;Lq3/a/w2/z;Lq3/a/w2/z;)V

    .line 32
    iget-object v3, v0, Le/a/d/b/b/n;->g:Le/a/d/b/b/b;

    .line 33
    iget-object v9, v3, Le/a/d/b/b/b;->m:Le/a/d/x/r/o;

    new-instance v10, Le/a/d/b/b/k;

    invoke-direct {v10, v3, v4}, Le/a/d/b/b/k;-><init>(Le/a/d/b/b/b;Ls1/w/d;)V

    invoke-interface {v9, v3, v10}, Le/a/d/x/r/o;->d(Lq3/a/i0;Ls1/z/b/p;)V

    .line 34
    iget-object v3, v0, Le/a/d/b/b/n;->g:Le/a/d/b/b/b;

    sget-object v9, Lcom/truecaller/voip/VoipState;->CONNECTING:Lcom/truecaller/voip/VoipState;

    invoke-static {v3, v9, v4, v7}, Le/a/d/b/b/b;->Qj(Le/a/d/b/b/b;Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;I)V

    .line 35
    iget-object v3, v0, Le/a/d/b/b/n;->g:Le/a/d/b/b/b;

    .line 36
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v9, Le/a/d/b/b/m;

    invoke-direct {v9, v3, v4}, Le/a/d/b/b/m;-><init>(Le/a/d/b/b/b;Ls1/w/d;)V

    const/4 v12, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x3

    move-object/from16 v19, v3

    move-object/from16 v20, v12

    move-object/from16 v22, v9

    invoke-static/range {v19 .. v24}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v3

    .line 38
    iget-object v10, v0, Le/a/d/b/b/n;->g:Le/a/d/b/b/b;

    iget-object v9, v0, Le/a/d/b/b/n;->h:Ljava/lang/String;

    .line 39
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v13, Le/a/d/b/b/p;

    invoke-direct {v13, v10, v9, v4}, Le/a/d/b/b/p;-><init>(Le/a/d/b/b/b;Ljava/lang/String;Ls1/w/d;)V

    const/4 v11, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v9

    .line 41
    iput-object v9, v0, Le/a/d/b/b/n;->e:Ljava/lang/Object;

    iput v8, v0, Le/a/d/b/b/n;->f:I

    check-cast v3, Lq3/a/o0;

    .line 42
    invoke-virtual {v3, v0}, Lq3/a/u1;->A(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_d

    return-object v2

    .line 43
    :cond_d
    :goto_3
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 44
    iput-object v4, v0, Le/a/d/b/b/n;->e:Ljava/lang/Object;

    iput v7, v0, Le/a/d/b/b/n;->f:I

    invoke-interface {v9, v0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_e

    return-object v2

    :cond_e
    :goto_4
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v0, Le/a/d/b/b/n;->g:Le/a/d/b/b/b;

    .line 45
    iget-object v9, v3, Le/a/d/b/b/b;->e:Lcom/truecaller/voip/VoipUser;

    const-string v10, "voipUser"

    if-eqz v9, :cond_15

    .line 46
    iget-boolean v9, v9, Lcom/truecaller/voip/VoipUser;->e:Z

    if-eqz v9, :cond_10

    const-string v9, "Caller "

    .line 47
    invoke-static {v9}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Le/a/d/b/b/b;->e:Lcom/truecaller/voip/VoipUser;

    if-eqz v11, :cond_f

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " is blocked. Ignoring call..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    sget-object v9, Lcom/truecaller/voip/VoipState;->BLOCKED:Lcom/truecaller/voip/VoipState;

    .line 49
    invoke-virtual {v3, v9, v4}, Le/a/d/b/b/b;->Pj(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    goto :goto_5

    .line 50
    :cond_f
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 51
    :cond_10
    iget-object v9, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v9, Le/a/d/b/b/i;

    if-eqz v9, :cond_11

    invoke-interface {v9}, Le/a/d/b/b/i;->g()Z

    move-result v9

    if-ne v9, v8, :cond_11

    .line 52
    sget-object v9, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;->BUSY:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    invoke-virtual {v3, v9}, Le/a/d/b/b/b;->Nj(Lcom/truecaller/voip/manager/rtm/RtmMsgAction;)Lq3/a/p1;

    .line 53
    sget-object v9, Lcom/truecaller/voip/VoipState;->BUSY:Lcom/truecaller/voip/VoipState;

    .line 54
    invoke-virtual {v3, v9, v4}, Le/a/d/b/b/b;->Pj(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    goto :goto_5

    :cond_11
    move v8, v6

    :goto_5
    if-eqz v8, :cond_12

    goto :goto_7

    .line 55
    :cond_12
    iget-object v3, v0, Le/a/d/b/b/n;->g:Le/a/d/b/b/b;

    iput v5, v0, Le/a/d/b/b/n;->f:I

    invoke-virtual {v3, v0}, Le/a/d/b/b/b;->Oj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_13

    return-object v2

    :cond_13
    :goto_6
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_14

    return-object v1

    .line 56
    :cond_14
    iget-object v2, v0, Le/a/d/b/b/n;->g:Le/a/d/b/b/b;

    .line 57
    iget-object v2, v2, Le/a/d/b/b/b;->t:Le/a/d/c0/m1;

    .line 58
    invoke-interface {v2}, Le/a/d/c0/m1;->b()Z

    .line 59
    iget-object v2, v0, Le/a/d/b/b/n;->g:Le/a/d/b/b/b;

    sget-object v3, Lcom/truecaller/voip/VoipState;->RINGING:Lcom/truecaller/voip/VoipState;

    invoke-static {v2, v3, v4, v7}, Le/a/d/b/b/b;->Qj(Le/a/d/b/b/b;Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;I)V

    .line 60
    iget-object v2, v0, Le/a/d/b/b/n;->g:Le/a/d/b/b/b;

    .line 61
    iget-object v2, v2, Le/a/d/b/b/b;->o:Le/a/d/c0/j1;

    .line 62
    invoke-interface {v2, v6}, Le/a/d/c0/j1;->C(Z)V

    return-object v1

    .line 63
    :cond_15
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_16
    :goto_7
    return-object v1

    :cond_17
    const-string v1, "channelId"

    .line 64
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4
.end method
