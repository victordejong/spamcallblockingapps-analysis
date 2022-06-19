.class public final Le/a/d/b/a/n;
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
    c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter$onNewCall$1"
    f = "LegacyVoipServicePresenter.kt"
    l = {
        0x98,
        0xa8,
        0xad,
        0xb5,
        0xb5,
        0xb9,
        0xc0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/d/b/a/b;

.field public final synthetic i:Z

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Lcom/truecaller/voip/VoipUser;

.field public final synthetic m:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Le/a/d/b/a/b;ZLjava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/VoipUser;Ljava/lang/Boolean;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    iput-boolean p2, p0, Le/a/d/b/a/n;->i:Z

    iput-object p3, p0, Le/a/d/b/a/n;->j:Ljava/lang/String;

    iput-object p4, p0, Le/a/d/b/a/n;->k:Ljava/lang/String;

    iput-object p5, p0, Le/a/d/b/a/n;->l:Lcom/truecaller/voip/VoipUser;

    iput-object p6, p0, Le/a/d/b/a/n;->m:Ljava/lang/Boolean;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 8
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

    new-instance p1, Le/a/d/b/a/n;

    iget-object v1, p0, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    iget-boolean v2, p0, Le/a/d/b/a/n;->i:Z

    iget-object v3, p0, Le/a/d/b/a/n;->j:Ljava/lang/String;

    iget-object v4, p0, Le/a/d/b/a/n;->k:Ljava/lang/String;

    iget-object v5, p0, Le/a/d/b/a/n;->l:Lcom/truecaller/voip/VoipUser;

    iget-object v6, p0, Le/a/d/b/a/n;->m:Ljava/lang/Boolean;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Le/a/d/b/a/n;-><init>(Le/a/d/b/a/b;ZLjava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/VoipUser;Ljava/lang/Boolean;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/d/b/a/n;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/d/b/a/n;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/b/a/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v6, p0

    sget-object v7, Ls1/s;->a:Ls1/s;

    sget-object v8, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v0, v6, Le/a/d/b/a/n;->g:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x6

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_1
    iget-object v0, v6, Le/a/d/b/a/n;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/p1;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_2
    iget-object v0, v6, Le/a/d/b/a/n;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/p1;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v1, v0

    move-object/from16 v0, p1

    goto/16 :goto_9

    :pswitch_3
    iget-object v0, v6, Le/a/d/b/a/n;->f:Ljava/lang/Object;

    check-cast v0, Lq3/a/n0;

    iget-object v1, v6, Le/a/d/b/a/n;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/p1;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v2, v0

    move-object/from16 v0, p1

    goto/16 :goto_8

    :pswitch_4
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto/16 :goto_4

    :pswitch_5
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto/16 :goto_3

    :pswitch_6
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto/16 :goto_1

    :pswitch_7
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-boolean v0, v6, Le/a/d/b/a/n;->i:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    iget-object v1, v6, Le/a/d/b/a/n;->j:Ljava/lang/String;

    .line 6
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/d/b/a/g;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Le/a/d/b/a/g;->o3()V

    .line 7
    :cond_0
    iget-object v2, v0, Le/a/d/b/a/b;->E:Le/a/d/c0/f0;

    sget-object v3, Lcom/truecaller/voip/util/VoipAnalyticsContext;->NOTIFICATION:Lcom/truecaller/voip/util/VoipAnalyticsContext;

    invoke-virtual {v3}, Lcom/truecaller/voip/util/VoipAnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/truecaller/voip/util/VoipAnalyticsNotificationAction;->CALL_BACK:Lcom/truecaller/voip/util/VoipAnalyticsNotificationAction;

    invoke-interface {v2, v3, v4}, Le/a/d/c0/f0;->l(Ljava/lang/String;Lcom/truecaller/voip/util/VoipAnalyticsNotificationAction;)V

    if-eqz v1, :cond_1

    .line 8
    iget-object v0, v0, Le/a/d/b/a/b;->E:Le/a/d/c0/f0;

    sget-object v2, Lcom/truecaller/voip/util/VoipAnalyticsContext;->MISSED_CALL_NOTIFICATION:Lcom/truecaller/voip/util/VoipAnalyticsContext;

    invoke-virtual {v2}, Lcom/truecaller/voip/util/VoipAnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/truecaller/voip/util/VoipSearchDirection;->OUTGOING:Lcom/truecaller/voip/util/VoipSearchDirection;

    invoke-interface {v0, v2, v1, v3}, Le/a/d/c0/f0;->h(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;)V

    .line 9
    :cond_1
    iget-object v0, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    .line 10
    iget-object v1, v0, Le/a/d/b/a/b;->i:Le/a/d/l;

    .line 11
    iget-object v1, v1, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    .line 12
    sget-object v2, Lcom/truecaller/voip/VoipState;->INITIAL:Lcom/truecaller/voip/VoipState;

    if-eq v1, v2, :cond_4

    .line 13
    iget-object v1, v6, Le/a/d/b/a/n;->j:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v0}, Le/a/d/b/a/b;->Nj()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    .line 17
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/a/g;

    if-eqz v0, :cond_3

    .line 18
    invoke-interface {v0}, Le/a/d/b/a/g;->d()V

    goto :goto_0

    .line 19
    :cond_2
    iget-object v0, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    .line 20
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/a/g;

    if-eqz v0, :cond_3

    .line 21
    invoke-interface {v0}, Le/a/d/b/a/g;->q3()V

    :cond_3
    :goto_0
    return-object v7

    .line 22
    :cond_4
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/g;

    if-eqz v1, :cond_5

    .line 23
    new-instance v2, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v12, v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v26, v25

    const/16 v27, 0x0

    const/16 v28, 0x0

    const v29, 0xffff

    invoke-direct/range {v12 .. v29}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    invoke-interface {v1, v2}, Le/a/d/b/a/g;->m3(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 24
    invoke-virtual {v0}, Le/a/d/b/a/b;->Oj()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Le/a/d/b/a/g;->h(Ljava/lang/String;)V

    .line 25
    invoke-interface {v1}, Le/a/d/b/a/g;->r3()V

    .line 26
    :cond_5
    iget-object v0, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    iget-object v1, v6, Le/a/d/b/a/n;->j:Ljava/lang/String;

    iget-object v2, v6, Le/a/d/b/a/n;->k:Ljava/lang/String;

    iget-object v3, v6, Le/a/d/b/a/n;->l:Lcom/truecaller/voip/VoipUser;

    iget-object v4, v6, Le/a/d/b/a/n;->m:Ljava/lang/Boolean;

    iput v9, v6, Le/a/d/b/a/n;->g:I

    move-object/from16 v5, p0

    invoke-virtual/range {v0 .. v5}, Le/a/d/b/a/b;->jk(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/VoipUser;Ljava/lang/Boolean;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_6

    return-object v8

    :cond_6
    :goto_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    .line 27
    iget-object v0, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    .line 28
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/a/g;

    if-eqz v0, :cond_7

    .line 29
    invoke-interface {v0}, Le/a/d/b/a/g;->t()V

    :cond_7
    return-object v7

    .line 30
    :cond_8
    iget-object v0, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    .line 31
    iget-boolean v1, v0, Le/a/d/b/a/b;->k:Z

    if-nez v1, :cond_9

    .line 32
    iget-object v0, v0, Le/a/d/b/a/b;->J:Le/a/d/c0/m1;

    .line 33
    invoke-interface {v0}, Le/a/d/c0/m1;->a()Z

    .line 34
    :cond_9
    iget-object v13, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    .line 35
    iget-object v12, v13, Le/a/d/b/a/b;->E:Le/a/d/c0/f0;

    .line 36
    new-instance v0, Le/a/d/b/a/k;

    invoke-direct {v0, v13}, Le/a/d/b/a/k;-><init>(Le/a/d/b/a/b;)V

    .line 37
    new-instance v1, Le/a/d/b/a/l;

    invoke-direct {v1, v13}, Le/a/d/b/a/l;-><init>(Le/a/d/b/a/b;)V

    .line 38
    iget-boolean v2, v13, Le/a/d/b/a/b;->k:Z

    if-eqz v2, :cond_a

    .line 39
    sget-object v2, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->INCOMING:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    goto :goto_2

    .line 40
    :cond_a
    sget-object v2, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->OUTGOING:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    :goto_2
    move-object v14, v2

    .line 41
    iget-object v15, v13, Le/a/d/b/a/b;->e:Ljava/lang/String;

    if-eqz v15, :cond_1b

    .line 42
    iget-object v2, v13, Le/a/d/b/a/b;->o:Ljava/lang/String;

    .line 43
    iget-object v3, v13, Le/a/d/b/a/b;->q:Lq3/a/w2/h;

    .line 44
    invoke-interface {v3}, Lq3/a/w2/h;->p2()Lq3/a/w2/z;

    move-result-object v19

    .line 45
    iget-object v3, v13, Le/a/d/b/a/b;->p:Lq3/a/w2/h;

    .line 46
    invoke-interface {v3}, Lq3/a/w2/h;->p2()Lq3/a/w2/z;

    move-result-object v20

    .line 47
    iget-object v3, v13, Le/a/d/b/a/b;->r:Lq3/a/w2/h;

    .line 48
    invoke-interface {v3}, Lq3/a/w2/h;->p2()Lq3/a/w2/z;

    move-result-object v21

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 49
    invoke-interface/range {v12 .. v21}, Le/a/d/c0/f0;->k(Lq3/a/i0;Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;Ljava/lang/String;Ls1/z/b/a;Ls1/z/b/a;Ljava/lang/String;Lq3/a/w2/z;Lq3/a/w2/z;Lq3/a/w2/z;)V

    .line 50
    iget-object v0, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    sget-object v1, Lcom/truecaller/voip/VoipState;->CONNECTING:Lcom/truecaller/voip/VoipState;

    const/4 v2, 0x2

    invoke-static {v0, v1, v10, v2}, Le/a/d/b/a/b;->hk(Le/a/d/b/a/b;Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;I)V

    .line 51
    iget-object v0, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    iget-object v1, v6, Le/a/d/b/a/n;->j:Ljava/lang/String;

    iget-object v3, v6, Le/a/d/b/a/n;->l:Lcom/truecaller/voip/VoipUser;

    iput v2, v6, Le/a/d/b/a/n;->g:I

    invoke-virtual {v0, v1, v3, v6}, Le/a/d/b/a/b;->ck(Ljava/lang/String;Lcom/truecaller/voip/VoipUser;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_b

    return-object v8

    :cond_b
    :goto_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    return-object v7

    .line 52
    :cond_c
    iget-object v0, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    const/4 v1, 0x3

    iput v1, v6, Le/a/d/b/a/n;->g:I

    invoke-virtual {v0, v6}, Le/a/d/b/a/b;->Xj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_d

    return-object v8

    :cond_d
    :goto_4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    return-object v7

    .line 53
    :cond_e
    iget-object v12, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    .line 54
    iget-boolean v0, v12, Le/a/d/b/a/b;->k:Z

    xor-int/2addr v0, v9

    if-nez v0, :cond_f

    move-object v1, v10

    goto :goto_5

    :cond_f
    const/4 v13, 0x0

    .line 55
    sget-object v14, Lq3/a/j0;->d:Lq3/a/j0;

    new-instance v15, Le/a/d/b/a/q;

    invoke-direct {v15, v12, v10}, Le/a/d/b/a/q;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    move-object v1, v0

    .line 56
    :goto_5
    iget-object v12, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    .line 57
    iget-boolean v0, v12, Le/a/d/b/a/b;->k:Z

    xor-int/2addr v0, v9

    if-nez v0, :cond_10

    move-object v0, v10

    goto :goto_6

    :cond_10
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 58
    new-instance v15, Le/a/d/b/a/m;

    invoke-direct {v15, v12, v10}, Le/a/d/b/a/m;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    const/16 v16, 0x3

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v0

    .line 59
    :goto_6
    iget-object v2, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    .line 60
    invoke-virtual {v2, v0}, Le/a/d/b/a/b;->Uj(Lq3/a/n0;)Lq3/a/n0;

    move-result-object v2

    .line 61
    iget-object v3, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    iput-object v1, v6, Le/a/d/b/a/n;->e:Ljava/lang/Object;

    iput-object v2, v6, Le/a/d/b/a/n;->f:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v6, Le/a/d/b/a/n;->g:I

    .line 62
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_11

    .line 63
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    .line 64
    :cond_11
    check-cast v0, Lq3/a/o0;

    .line 65
    invoke-virtual {v0, v6}, Lq3/a/u1;->A(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    :goto_7
    if-ne v0, v8, :cond_12

    return-object v8

    .line 66
    :cond_12
    :goto_8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    iput-object v1, v6, Le/a/d/b/a/n;->e:Ljava/lang/Object;

    iput-object v10, v6, Le/a/d/b/a/n;->f:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, v6, Le/a/d/b/a/n;->g:I

    invoke-interface {v2, v6}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_13

    return-object v8

    :cond_13
    :goto_9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_e

    .line 67
    :cond_14
    iget-object v0, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    iput-object v1, v6, Le/a/d/b/a/n;->e:Ljava/lang/Object;

    iput v11, v6, Le/a/d/b/a/n;->g:I

    invoke-virtual {v0, v6}, Le/a/d/b/a/b;->Sj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_15

    return-object v8

    :cond_15
    move-object v0, v1

    .line 68
    :goto_a
    iget-object v12, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    .line 69
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v15, Le/a/d/b/a/h;

    invoke-direct {v15, v12, v10}, Le/a/d/b/a/h;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 71
    iget-object v1, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    .line 72
    iget-object v2, v1, Le/a/d/b/a/b;->v:Le/a/d/x/r/o;

    new-instance v3, Le/a/d/b/a/i;

    invoke-direct {v3, v1, v10}, Le/a/d/b/a/i;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    invoke-interface {v2, v1, v3}, Le/a/d/x/r/o;->d(Lq3/a/i0;Ls1/z/b/p;)V

    .line 73
    iget-object v1, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    .line 74
    iget-object v2, v1, Le/a/d/b/a/b;->u:Le/a/d/x/l;

    check-cast v2, Le/a/d/x/d;

    .line 75
    iget-object v2, v2, Le/a/d/x/d;->b:Lq3/a/x2/z0;

    .line 76
    new-instance v3, Le/a/d/b/a/j;

    invoke-direct {v3, v1, v10}, Le/a/d/b/a/j;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    .line 77
    new-instance v4, Lq3/a/x2/u0;

    invoke-direct {v4, v2, v3}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 78
    invoke-static {v4, v1}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    .line 79
    iget-object v1, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    .line 80
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v2, Lj2;

    invoke-direct {v2, v9, v1}, Lj2;-><init>(ILjava/lang/Object;)V

    .line 82
    iget-object v3, v1, Le/a/d/b/a/b;->z:Le/a/d/c0/t;

    invoke-interface {v3}, Le/a/d/c0/t;->n()Le/a/d/c0/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj2;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v3, v1, Le/a/d/b/a/b;->z:Le/a/d/c0/t;

    new-instance v4, Lj2;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2}, Lj2;-><init>(ILjava/lang/Object;)V

    const-string v2, "$this$createActor"

    .line 84
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "action"

    invoke-static {v4, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v2, Le/a/p5/s0/j;

    invoke-direct {v2, v4, v10}, Le/a/p5/s0/j;-><init>(Ls1/z/b/l;Ls1/w/d;)V

    .line 86
    sget-object v4, Ls1/w/h;->a:Ls1/w/h;

    .line 87
    sget-object v12, Lq3/a/j0;->a:Lq3/a/j0;

    .line 88
    invoke-static {v1, v4}, Lq3/a/e0;->a(Lq3/a/i0;Ls1/w/f;)Ls1/w/f;

    move-result-object v1

    .line 89
    invoke-static {v5, v10, v10, v11}, Ls1/a/a/a/v0/f/d;->f(ILq3/a/w2/i;Ls1/z/b/l;I)Lq3/a/w2/j;

    move-result-object v4

    .line 90
    invoke-virtual {v12}, Lq3/a/j0;->a()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 91
    new-instance v5, Lq3/a/w2/t;

    invoke-direct {v5, v1, v4, v2}, Lq3/a/w2/t;-><init>(Ls1/w/f;Lq3/a/w2/j;Ls1/z/b/p;)V

    goto :goto_b

    .line 92
    :cond_16
    new-instance v5, Lq3/a/w2/d;

    invoke-direct {v5, v1, v4, v9}, Lq3/a/w2/d;-><init>(Ls1/w/f;Lq3/a/w2/j;Z)V

    .line 93
    :goto_b
    invoke-virtual {v5, v12, v5, v2}, Lq3/a/c;->v0(Lq3/a/j0;Ljava/lang/Object;Ls1/z/b/p;)V

    .line 94
    invoke-interface {v3, v5}, Le/a/d/c0/t;->b(Lq3/a/w2/d0;)V

    if-eqz v0, :cond_17

    .line 95
    iput-object v10, v6, Le/a/d/b/a/n;->e:Ljava/lang/Object;

    const/4 v1, 0x7

    iput v1, v6, Le/a/d/b/a/n;->g:I

    invoke-interface {v0, v6}, Lq3/a/p1;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_17

    return-object v8

    .line 96
    :cond_17
    :goto_c
    iget-object v0, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    .line 97
    iget-boolean v1, v0, Le/a/d/b/a/b;->k:Z

    if-ne v1, v9, :cond_18

    .line 98
    sget-object v1, Lcom/truecaller/voip/VoipState;->ONGOING:Lcom/truecaller/voip/VoipState;

    goto :goto_d

    :cond_18
    if-nez v1, :cond_19

    .line 99
    sget-object v1, Lcom/truecaller/voip/VoipState;->INVITING:Lcom/truecaller/voip/VoipState;

    .line 100
    :goto_d
    invoke-virtual {v0, v1, v10}, Le/a/d/b/a/b;->gk(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    .line 101
    iget-object v0, v6, Le/a/d/b/a/n;->h:Le/a/d/b/a/b;

    .line 102
    iget-object v0, v0, Le/a/d/b/a/b;->w:Le/a/d/c0/j1;

    .line 103
    invoke-interface {v0, v9}, Le/a/d/c0/j1;->C(Z)V

    return-object v7

    .line 104
    :cond_19
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_1a
    :goto_e
    return-object v7

    :cond_1b
    const-string v0, "channelId"

    .line 105
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v10

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
