.class public final Le/a/g/a/m$k;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/m;->Lk()Lq3/a/p1;
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
    c = "com.truecaller.acs.ui.AfterCallBasePresenter$showActionButtons$1"
    f = "AfterCallBasePresenter.kt"
    l = {
        0x2f4,
        0x2f4,
        0x2f8,
        0x2f9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Z

.field public f:Z

.field public g:Z

.field public h:I

.field public i:I

.field public j:Ljava/lang/Object;

.field public k:I

.field public final synthetic l:Le/a/g/a/m;


# direct methods
.method public constructor <init>(Le/a/g/a/m;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/g/a/m$k;

    iget-object v0, p0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    invoke-direct {p1, v0, p2}, Le/a/g/a/m$k;-><init>(Le/a/g/a/m;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/g/a/m$k;

    iget-object v0, p0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    invoke-direct {p1, v0, p2}, Le/a/g/a/m$k;-><init>(Le/a/g/a/m;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/g/a/m$k;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/g/a/m$k;->k:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    if-eq v2, v8, :cond_2

    if-eq v2, v7, :cond_1

    if-ne v2, v5, :cond_0

    iget v1, v0, Le/a/g/a/m$k;->i:I

    iget v2, v0, Le/a/g/a/m$k;->h:I

    iget-boolean v7, v0, Le/a/g/a/m$k;->g:Z

    iget-boolean v8, v0, Le/a/g/a/m$k;->f:Z

    iget-boolean v9, v0, Le/a/g/a/m$k;->e:Z

    iget-object v10, v0, Le/a/g/a/m$k;->j:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v12, p1

    goto/16 :goto_b

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget v2, v0, Le/a/g/a/m$k;->h:I

    iget-boolean v7, v0, Le/a/g/a/m$k;->g:Z

    iget-boolean v8, v0, Le/a/g/a/m$k;->f:Z

    iget-boolean v9, v0, Le/a/g/a/m$k;->e:Z

    iget-object v10, v0, Le/a/g/a/m$k;->j:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move-object/from16 v7, p1

    goto/16 :goto_9

    :cond_2
    iget-boolean v2, v0, Le/a/g/a/m$k;->e:Z

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    goto :goto_3

    :cond_3
    iget-boolean v2, v0, Le/a/g/a/m$k;->e:Z

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    goto :goto_2

    :cond_4
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    .line 5
    iget-object v9, v2, Le/a/g/a/m;->J:Le/a/g/j/p;

    .line 6
    invoke-virtual {v2}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v2

    .line 7
    iget-object v2, v2, Lcom/truecaller/data/entity/HistoryEvent;->p:Le/m/f/a/j$d;

    .line 8
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v9, Le/m/f/a/j$d;->c:Le/m/f/a/j$d;

    if-eq v2, v9, :cond_6

    sget-object v9, Le/m/f/a/j$d;->b:Le/m/f/a/j$d;

    if-ne v2, v9, :cond_5

    goto :goto_0

    :cond_5
    move v2, v6

    goto :goto_1

    :cond_6
    :goto_0
    move v2, v3

    .line 10
    :goto_1
    iget-object v9, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    iput-boolean v2, v0, Le/a/g/a/m$k;->e:Z

    iput v3, v0, Le/a/g/a/m$k;->k:I

    .line 11
    iget-object v10, v9, Le/a/g/a/m;->z:Ls1/w/f;

    new-instance v12, Le/a/g/a/n;

    invoke-direct {v12, v9, v4}, Le/a/g/a/n;-><init>(Le/a/g/a/m;Ls1/w/d;)V

    const/4 v11, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v9

    if-ne v9, v1, :cond_7

    return-object v1

    .line 12
    :cond_7
    :goto_2
    check-cast v9, Lq3/a/n0;

    iput-boolean v2, v0, Le/a/g/a/m$k;->e:Z

    iput v8, v0, Le/a/g/a/m$k;->k:I

    invoke-interface {v9, v0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    move v9, v2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 13
    iget-object v2, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    .line 14
    iget-object v10, v2, Le/a/g/a/m;->W:Le/a/g/j/r;

    .line 15
    invoke-virtual {v2}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v2

    .line 16
    iget-object v2, v2, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v2, :cond_9

    .line 17
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v2

    if-ne v2, v3, :cond_9

    move v2, v3

    goto :goto_4

    :cond_9
    move v2, v6

    :goto_4
    check-cast v10, Le/a/g/j/s;

    .line 18
    iget-object v10, v10, Le/a/g/j/s;->a:Le/a/p5/a0;

    const-string v11, "android.permission.WRITE_CONTACTS"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    if-eqz v2, :cond_a

    move v2, v3

    goto :goto_5

    :cond_a
    move v2, v6

    .line 19
    :goto_5
    iget-object v10, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    invoke-virtual {v10}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v10

    .line 20
    iget-object v10, v10, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    const-string v12, "it"

    if-eqz v10, :cond_c

    .line 21
    iget-object v13, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    .line 22
    iget-object v13, v13, Le/a/g/a/m;->W:Le/a/g/j/r;

    .line 23
    invoke-static {v10, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v14

    iget-object v15, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    invoke-virtual {v15, v10}, Le/a/g/a/m;->Wj(Lcom/truecaller/data/entity/Contact;)Z

    move-result v10

    check-cast v13, Le/a/g/j/s;

    .line 24
    iget-object v13, v13, Le/a/g/j/s;->a:Le/a/p5/a0;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-interface {v13, v11}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    if-nez v14, :cond_b

    if-nez v10, :cond_b

    move v10, v3

    goto :goto_6

    :cond_b
    move v10, v6

    .line 25
    :goto_6
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 26
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_7

    :cond_c
    move v10, v6

    .line 27
    :goto_7
    iget-object v11, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    .line 28
    iget-object v11, v11, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v11, Le/a/g/a/h;

    if-eqz v11, :cond_d

    .line 29
    sget-object v13, Lcom/truecaller/acs/util/AcsReferralHelper$ReferralLaunchContext;->AFTER_CALL:Lcom/truecaller/acs/util/AcsReferralHelper$ReferralLaunchContext;

    invoke-interface {v11, v13}, Le/a/g/a/h;->bq(Lcom/truecaller/acs/util/AcsReferralHelper$ReferralLaunchContext;)Z

    move-result v11

    .line 30
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_8

    :cond_d
    move-object v11, v4

    .line 31
    :goto_8
    iget-object v13, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    invoke-virtual {v13}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v13

    .line 32
    iget-object v13, v13, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v13, :cond_10

    .line 33
    iget-object v14, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    .line 34
    iget-object v14, v14, Le/a/g/a/m;->w0:Le/a/g/j/r0;

    .line 35
    invoke-static {v13, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v12

    invoke-virtual {v13}, Lcom/truecaller/data/entity/Contact;->e0()Ljava/util/List;

    move-result-object v13

    const-string v15, "it.tcSourcedNumbers"

    invoke-static {v13, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v11, v0, Le/a/g/a/m$k;->j:Ljava/lang/Object;

    iput-boolean v9, v0, Le/a/g/a/m$k;->e:Z

    iput-boolean v8, v0, Le/a/g/a/m$k;->f:Z

    iput-boolean v2, v0, Le/a/g/a/m$k;->g:Z

    iput v10, v0, Le/a/g/a/m$k;->h:I

    iput v7, v0, Le/a/g/a/m$k;->k:I

    check-cast v14, Le/a/g/j/s0;

    invoke-virtual {v14, v12, v13, v0}, Le/a/g/j/s0;->a(ZLjava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_e

    return-object v1

    :cond_e
    move/from16 v23, v8

    move v8, v2

    move v2, v10

    move v10, v9

    move/from16 v9, v23

    :goto_9
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 36
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 37
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_a

    :cond_f
    move/from16 v23, v10

    move v10, v2

    move v2, v8

    move v8, v9

    move/from16 v9, v23

    :cond_10
    move v7, v6

    move/from16 v23, v8

    move v8, v2

    move v2, v10

    move v10, v9

    move/from16 v9, v23

    .line 38
    :goto_a
    iget-object v12, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    iput-object v11, v0, Le/a/g/a/m$k;->j:Ljava/lang/Object;

    iput-boolean v10, v0, Le/a/g/a/m$k;->e:Z

    iput-boolean v9, v0, Le/a/g/a/m$k;->f:Z

    iput-boolean v8, v0, Le/a/g/a/m$k;->g:Z

    iput v2, v0, Le/a/g/a/m$k;->h:I

    iput v7, v0, Le/a/g/a/m$k;->i:I

    iput v5, v0, Le/a/g/a/m$k;->k:I

    invoke-virtual {v12, v0}, Le/a/g/a/m;->Ik(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v1, :cond_11

    return-object v1

    :cond_11
    move v1, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v11

    :goto_b
    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 39
    iget-object v12, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    invoke-virtual {v12}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v12

    .line 40
    iget-object v12, v12, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v12, :cond_12

    .line 41
    iget-object v13, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    .line 42
    iget-object v13, v13, Le/a/g/a/m;->E0:Le/a/w/c/a;

    .line 43
    invoke-virtual {v13, v12}, Le/a/w/c/a;->e(Lcom/truecaller/data/entity/Contact;)Z

    move-result v12

    .line 44
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    if-eqz v12, :cond_12

    .line 45
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    goto :goto_c

    :cond_12
    move v12, v6

    .line 46
    :goto_c
    iget-object v13, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    .line 47
    iget-object v13, v13, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v13, Le/a/g/a/h;

    if-eqz v13, :cond_2d

    .line 48
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iget-object v15, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    .line 50
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v3, Le/a/g/a/f;

    sget-object v4, Lcom/truecaller/acs/ui/ActionButtonType;->CALL:Lcom/truecaller/acs/ui/ActionButtonType;

    invoke-direct {v3, v4, v15, v6, v5}, Le/a/g/a/f;-><init>(Lcom/truecaller/acs/ui/ActionButtonType;Le/a/g/a/g;ZI)V

    .line 52
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_13

    .line 53
    iget-object v3, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    .line 54
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v4, Le/a/g/a/f;

    sget-object v9, Lcom/truecaller/acs/ui/ActionButtonType;->SMS:Lcom/truecaller/acs/ui/ActionButtonType;

    invoke-direct {v4, v9, v3, v6, v5}, Le/a/g/a/f;-><init>(Lcom/truecaller/acs/ui/ActionButtonType;Le/a/g/a/g;ZI)V

    .line 56
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    if-eqz v8, :cond_1a

    .line 57
    iget-object v3, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    .line 58
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v4, Le/a/g/a/f;

    .line 60
    sget-object v8, Lcom/truecaller/acs/ui/ActionButtonType;->VOIP:Lcom/truecaller/acs/ui/ActionButtonType;

    .line 61
    iget-object v9, v3, Le/a/g/a/m;->K:Le/a/g/j/k0;

    invoke-virtual {v3}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v15

    .line 62
    iget-object v15, v15, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v15, :cond_14

    .line 63
    invoke-virtual {v3, v15}, Le/a/g/a/m;->Wj(Lcom/truecaller/data/entity/Contact;)Z

    move-result v15

    goto :goto_d

    :cond_14
    move v15, v6

    .line 64
    :goto_d
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v15, :cond_19

    .line 65
    iget-object v15, v9, Le/a/g/j/k0;->b:Le/a/z4/d;

    const-wide/16 v5, 0x0

    move-object/from16 p1, v13

    const-string v13, "feature_voip_promo_after_call_first_timestamp"

    invoke-interface {v15, v13, v5, v6}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 66
    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v16

    cmp-long v5, v16, v5

    if-nez v5, :cond_15

    const/4 v5, 0x1

    goto :goto_e

    :cond_15
    const/4 v5, 0x0

    :goto_e
    if-nez v5, :cond_16

    goto :goto_f

    :cond_16
    const/4 v15, 0x0

    :goto_f
    if-eqz v15, :cond_17

    .line 67
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 68
    iget-object v5, v9, Le/a/g/j/k0;->b:Le/a/z4/d;

    const/4 v6, 0x5

    const-string v15, "feature_voip_promo_after_call_period_days"

    invoke-interface {v5, v15, v6}, Le/a/z4/d;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 69
    iget-object v6, v9, Le/a/g/j/k0;->c:Le/a/b0/q/l0;

    move-object v15, v10

    move/from16 v22, v11

    int-to-long v10, v5

    sget-object v21, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v16, v6

    move-wide/from16 v19, v10

    invoke-virtual/range {v16 .. v21}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    goto :goto_10

    :cond_17
    move-object v15, v10

    move/from16 v22, v11

    const/4 v5, 0x0

    :goto_10
    if-eqz v5, :cond_18

    goto :goto_11

    .line 70
    :cond_18
    iget-object v5, v9, Le/a/g/j/k0;->b:Le/a/z4/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-interface {v5, v13, v9, v10}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    const/4 v5, 0x1

    goto :goto_12

    :cond_19
    move-object v15, v10

    move/from16 v22, v11

    move-object/from16 p1, v13

    :goto_11
    const/4 v5, 0x0

    .line 71
    :goto_12
    invoke-direct {v4, v8, v3, v5}, Le/a/g/a/f;-><init>(Lcom/truecaller/acs/ui/ActionButtonType;Le/a/g/a/g;Z)V

    .line 72
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_1a
    move-object v15, v10

    move/from16 v22, v11

    move-object/from16 p1, v13

    :goto_13
    if-eqz v2, :cond_1b

    .line 73
    iget-object v2, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    .line 74
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v3, Le/a/g/a/f;

    .line 76
    sget-object v4, Lcom/truecaller/acs/ui/ActionButtonType;->SAVE_CONTACT:Lcom/truecaller/acs/ui/ActionButtonType;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 77
    invoke-direct {v3, v4, v2, v6, v5}, Le/a/g/a/f;-><init>(Lcom/truecaller/acs/ui/ActionButtonType;Le/a/g/a/g;ZI)V

    .line 78
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1b
    const/4 v5, 0x4

    const/4 v6, 0x0

    :goto_14
    if-eqz v7, :cond_1c

    .line 79
    iget-object v2, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    .line 80
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v3, Le/a/g/a/f;

    .line 82
    sget-object v4, Lcom/truecaller/acs/ui/ActionButtonType;->EDIT_CONTACT:Lcom/truecaller/acs/ui/ActionButtonType;

    .line 83
    invoke-direct {v3, v4, v2, v6, v5}, Le/a/g/a/f;-><init>(Lcom/truecaller/acs/ui/ActionButtonType;Le/a/g/a/g;ZI)V

    .line 84
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_1c
    iget-object v2, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    .line 86
    invoke-virtual {v2}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v3

    .line 87
    iget-object v3, v3, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    const-string v4, "filter"

    if-eqz v3, :cond_25

    const-string v5, "historyEvent.contact ?: return null"

    .line 88
    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v5, v2, Le/a/g/a/m;->f:Lcom/truecaller/blocking/FilterMatch;

    if-eqz v5, :cond_24

    invoke-virtual {v5}, Lcom/truecaller/blocking/FilterMatch;->a()Z

    move-result v5

    if-nez v5, :cond_1f

    iget-object v5, v2, Le/a/g/a/m;->f:Lcom/truecaller/blocking/FilterMatch;

    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Lcom/truecaller/blocking/FilterMatch;->c()Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_15

    :cond_1d
    const/4 v5, 0x0

    goto :goto_16

    :cond_1e
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_1f
    :goto_15
    const/4 v5, 0x1

    .line 90
    :goto_16
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, v2, Le/a/g/a/m;->f:Lcom/truecaller/blocking/FilterMatch;

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Lcom/truecaller/blocking/FilterMatch;->b()Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_17

    :cond_20
    const/4 v3, 0x0

    goto :goto_18

    :cond_21
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_22
    :goto_17
    const/4 v3, 0x1

    :goto_18
    if-eqz v3, :cond_23

    if-nez v5, :cond_23

    const/4 v3, 0x1

    goto :goto_19

    :cond_23
    const/4 v3, 0x0

    :goto_19
    if-eqz v3, :cond_25

    .line 91
    new-instance v3, Le/a/g/a/f;

    sget-object v5, Lcom/truecaller/acs/ui/ActionButtonType;->NOT_SPAM:Lcom/truecaller/acs/ui/ActionButtonType;

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-direct {v3, v5, v2, v7, v6}, Le/a/g/a/f;-><init>(Lcom/truecaller/acs/ui/ActionButtonType;Le/a/g/a/g;ZI)V

    goto :goto_1a

    .line 92
    :cond_24
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_25
    const/4 v3, 0x0

    :goto_1a
    if-eqz v3, :cond_26

    .line 93
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    if-eqz v22, :cond_29

    .line 94
    iget-object v2, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    .line 95
    iget-object v3, v2, Le/a/g/a/m;->f:Lcom/truecaller/blocking/FilterMatch;

    if-eqz v3, :cond_28

    invoke-virtual {v3}, Lcom/truecaller/blocking/FilterMatch;->a()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 96
    new-instance v3, Le/a/g/a/f;

    sget-object v4, Lcom/truecaller/acs/ui/ActionButtonType;->UNBLOCK:Lcom/truecaller/acs/ui/ActionButtonType;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct {v3, v4, v2, v6, v5}, Le/a/g/a/f;-><init>(Lcom/truecaller/acs/ui/ActionButtonType;Le/a/g/a/g;ZI)V

    goto :goto_1b

    :cond_27
    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 97
    new-instance v3, Le/a/g/a/f;

    sget-object v4, Lcom/truecaller/acs/ui/ActionButtonType;->BLOCK:Lcom/truecaller/acs/ui/ActionButtonType;

    invoke-direct {v3, v4, v2, v6, v5}, Le/a/g/a/f;-><init>(Lcom/truecaller/acs/ui/ActionButtonType;Le/a/g/a/g;ZI)V

    .line 98
    :goto_1b
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 99
    :cond_28
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    .line 100
    :cond_29
    :goto_1c
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v10, v15

    .line 101
    invoke-static {v10, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 102
    iget-object v2, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    .line 103
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v3, Le/a/g/a/f;

    .line 105
    sget-object v4, Lcom/truecaller/acs/ui/ActionButtonType;->REFER:Lcom/truecaller/acs/ui/ActionButtonType;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 106
    invoke-direct {v3, v4, v2, v6, v5}, Le/a/g/a/f;-><init>(Lcom/truecaller/acs/ui/ActionButtonType;Le/a/g/a/g;ZI)V

    .line 107
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_2a
    const/4 v5, 0x4

    const/4 v6, 0x0

    :goto_1d
    if-eqz v1, :cond_2b

    .line 108
    iget-object v1, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    .line 109
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v2, Le/a/g/a/f;

    .line 111
    sget-object v3, Lcom/truecaller/acs/ui/ActionButtonType;->VIDEO_CALLER_ID:Lcom/truecaller/acs/ui/ActionButtonType;

    .line 112
    invoke-direct {v2, v3, v1, v6, v5}, Le/a/g/a/f;-><init>(Lcom/truecaller/acs/ui/ActionButtonType;Le/a/g/a/g;ZI)V

    .line 113
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    if-eqz v12, :cond_2c

    .line 114
    iget-object v1, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    .line 115
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v2, Le/a/g/a/f;

    sget-object v3, Lcom/truecaller/acs/ui/ActionButtonType;->INVITE:Lcom/truecaller/acs/ui/ActionButtonType;

    invoke-direct {v2, v3, v1, v6, v5}, Le/a/g/a/f;-><init>(Lcom/truecaller/acs/ui/ActionButtonType;Le/a/g/a/g;ZI)V

    .line 117
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    move-object/from16 v13, p1

    .line 118
    invoke-interface {v13, v14}, Le/a/g/a/h;->Ds(Ljava/util/List;)V

    .line 119
    :cond_2d
    iget-object v1, v0, Le/a/g/a/m$k;->l:Le/a/g/a/m;

    invoke-virtual {v1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v2

    .line 120
    iget-object v2, v2, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-nez v2, :cond_2e

    .line 121
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/h;

    if-eqz v1, :cond_30

    invoke-interface {v1}, Le/a/g/a/h;->Wc()V

    goto :goto_1e

    .line 122
    :cond_2e
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v3

    if-nez v3, :cond_2f

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->m0()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 123
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/h;

    if-eqz v1, :cond_30

    invoke-interface {v1}, Le/a/g/a/h;->z8()V

    goto :goto_1e

    .line 124
    :cond_2f
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/h;

    if-eqz v1, :cond_30

    invoke-interface {v1}, Le/a/g/a/h;->Wc()V

    .line 125
    :cond_30
    :goto_1e
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
