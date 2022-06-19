.class public final Le/a/i/f0/l/l;
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
    c = "com.truecaller.ads.provider.fetch.AdsHolderImpl$triggerUpdate$1"
    f = "AdsHolderImpl.kt"
    l = {
        0x23b,
        0xab,
        0xac,
        0xc6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/i/f0/l/k;

.field public final synthetic h:Z

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/i/f0/l/k;ZLjava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/f0/l/l;->g:Le/a/i/f0/l/k;

    iput-boolean p2, p0, Le/a/i/f0/l/l;->h:Z

    iput-object p3, p0, Le/a/i/f0/l/l;->i:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/i/f0/l/l;

    iget-object v0, p0, Le/a/i/f0/l/l;->g:Le/a/i/f0/l/k;

    iget-boolean v1, p0, Le/a/i/f0/l/l;->h:Z

    iget-object v2, p0, Le/a/i/f0/l/l;->i:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/i/f0/l/l;-><init>(Le/a/i/f0/l/k;ZLjava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/f0/l/l;

    iget-object v0, p0, Le/a/i/f0/l/l;->g:Le/a/i/f0/l/k;

    iget-boolean v1, p0, Le/a/i/f0/l/l;->h:Z

    iget-object v2, p0, Le/a/i/f0/l/l;->i:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/i/f0/l/l;-><init>(Le/a/i/f0/l/k;ZLjava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/f0/l/l;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v1, p0

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/i/f0/l/l;->f:I

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v8, :cond_3

    if-eq v3, v4, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v6, :cond_0

    iget-object v3, v1, Le/a/i/f0/l/l;->e:Ljava/lang/Object;

    check-cast v3, Lq3/a/b3/c;

    :try_start_0
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v9, p1

    move-object v8, v1

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v3, v1, Le/a/i/f0/l/l;->e:Ljava/lang/Object;

    check-cast v3, Lq3/a/b3/c;

    :try_start_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v9, p1

    move-object v8, v1

    goto/16 :goto_2

    :cond_2
    iget-object v3, v1, Le/a/i/f0/l/l;->e:Ljava/lang/Object;

    check-cast v3, Lq3/a/b3/c;

    :try_start_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v9, p1

    move-object v8, v1

    goto :goto_1

    :cond_3
    iget-object v3, v1, Le/a/i/f0/l/l;->e:Ljava/lang/Object;

    check-cast v3, Lq3/a/b3/c;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v3, v1, Le/a/i/f0/l/l;->g:Le/a/i/f0/l/k;

    .line 5
    iget-object v3, v3, Le/a/i/f0/l/k;->b:Lq3/a/b3/c;

    .line 6
    invoke-interface {v3}, Lq3/a/b3/c;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, v1, Le/a/i/f0/l/l;->h:Z

    if-nez v3, :cond_5

    return-object v0

    .line 7
    :cond_5
    iget-object v3, v1, Le/a/i/f0/l/l;->g:Le/a/i/f0/l/k;

    .line 8
    iget-object v3, v3, Le/a/i/f0/l/k;->b:Lq3/a/b3/c;

    .line 9
    iput-object v3, v1, Le/a/i/f0/l/l;->e:Ljava/lang/Object;

    iput v8, v1, Le/a/i/f0/l/l;->f:I

    invoke-interface {v3, v7, v1}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v2, :cond_6

    return-object v2

    :cond_6
    :goto_0
    move-object v8, v1

    .line 10
    :cond_7
    :try_start_3
    iget-object v9, v8, Le/a/i/f0/l/l;->g:Le/a/i/f0/l/k;

    .line 11
    iget-object v9, v9, Le/a/i/f0/l/k;->q:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    .line 12
    invoke-interface {v9}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;->b()Z

    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v9, :cond_8

    .line 13
    invoke-interface {v3, v7}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    .line 14
    :cond_8
    :try_start_4
    iget-object v9, v8, Le/a/i/f0/l/l;->g:Le/a/i/f0/l/k;

    iget-boolean v10, v8, Le/a/i/f0/l/l;->h:Z

    iget-object v11, v8, Le/a/i/f0/l/l;->i:Ljava/lang/String;

    iput-object v3, v8, Le/a/i/f0/l/l;->e:Ljava/lang/Object;

    iput v4, v8, Le/a/i/f0/l/l;->f:I

    invoke-virtual {v9, v10, v11, v8}, Le/a/i/f0/l/k;->h(ZLjava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v2, :cond_9

    return-object v2

    :cond_9
    :goto_1
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_a

    .line 15
    invoke-interface {v3, v7}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    .line 16
    :cond_a
    :try_start_5
    iget-object v9, v8, Le/a/i/f0/l/l;->g:Le/a/i/f0/l/k;

    iput-object v3, v8, Le/a/i/f0/l/l;->e:Ljava/lang/Object;

    iput v5, v8, Le/a/i/f0/l/l;->f:I

    invoke-virtual {v9, v8}, Le/a/i/f0/l/k;->n(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v2, :cond_b

    return-object v2

    :cond_b
    :goto_2
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 17
    sget-object v2, Le/a/i/h0/m;->a:Ls1/z/b/l;

    const-string v4, "Inside Offline Ad Invocation"

    .line 18
    invoke-interface {v2, v4}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v2, v8, Le/a/i/f0/l/l;->g:Le/a/i/f0/l/k;

    .line 20
    iget-object v4, v2, Le/a/i/f0/l/k;->j:Le/a/i/f0/l/o;

    .line 21
    iget-object v2, v2, Le/a/i/f0/l/k;->h:Le/a/i/s;

    .line 22
    invoke-interface {v4, v2}, Le/a/i/f0/l/o;->j(Le/a/i/s;)V

    .line 23
    iget-object v2, v8, Le/a/i/f0/l/l;->g:Le/a/i/f0/l/k;

    .line 24
    iget-object v4, v2, Le/a/i/f0/l/k;->j:Le/a/i/f0/l/o;

    .line 25
    iget-object v2, v2, Le/a/i/f0/l/k;->h:Le/a/i/s;

    const/4 v5, -0x4

    .line 26
    invoke-interface {v4, v2, v5}, Le/a/i/f0/l/o;->k(Le/a/i/s;I)V

    .line 27
    iget-object v9, v8, Le/a/i/f0/l/l;->g:Le/a/i/f0/l/k;

    .line 28
    sget-object v10, Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;->FAILURE:Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;

    .line 29
    iget-object v2, v9, Le/a/i/f0/l/k;->k:Le/a/p5/c;

    .line 30
    invoke-interface {v2}, Le/a/p5/c;->a()J

    move-result-wide v11

    .line 31
    iget-object v2, v8, Le/a/i/f0/l/l;->g:Le/a/i/f0/l/k;

    .line 32
    iget-object v13, v2, Le/a/i/f0/l/k;->h:Le/a/i/s;

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 33
    iget-object v2, v2, Le/a/i/f0/l/k;->s:Le/a/p5/u;

    .line 34
    invoke-interface {v2}, Le/a/p5/u;->b()Ljava/lang/String;

    move-result-object v16

    .line 35
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v18, "No Internet connection"

    const/16 v19, 0x0

    .line 36
    iget-object v4, v8, Le/a/i/f0/l/l;->g:Le/a/i/f0/l/k;

    .line 37
    iget-object v4, v4, Le/a/i/f0/l/k;->h:Le/a/i/s;

    .line 38
    iget-object v4, v4, Le/a/i/s;->a:Ljava/lang/String;

    const/16 v21, 0x118

    move-object/from16 v17, v2

    move-object/from16 v20, v4

    .line 39
    invoke-static/range {v9 .. v21}, Le/a/i/f0/l/k;->s(Le/a/i/f0/l/k;Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;JLe/a/i/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 40
    invoke-interface {v3, v7}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    .line 41
    :cond_c
    :try_start_6
    iget-object v9, v8, Le/a/i/f0/l/l;->g:Le/a/i/f0/l/k;

    iget-boolean v10, v8, Le/a/i/f0/l/l;->h:Z

    .line 42
    invoke-virtual {v9, v10}, Le/a/i/f0/l/k;->u(Z)Z

    move-result v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v9, :cond_d

    .line 43
    invoke-interface {v3, v7}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    .line 44
    :cond_d
    :try_start_7
    iget-object v9, v8, Le/a/i/f0/l/l;->g:Le/a/i/f0/l/k;

    .line 45
    iget-boolean v10, v9, Le/a/i/f0/l/k;->g:Z

    if-nez v10, :cond_e

    .line 46
    iget-boolean v10, v8, Le/a/i/f0/l/l;->h:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v10, :cond_e

    .line 47
    invoke-interface {v3, v7}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    .line 48
    :cond_e
    :try_start_8
    iget-object v9, v9, Le/a/i/f0/l/k;->n:Le/a/z4/a;

    const-string v10, "adsQaDisableRequests"

    .line 49
    invoke-interface {v9, v10}, Le/a/z4/a;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 50
    iget-object v2, v8, Le/a/i/f0/l/l;->g:Le/a/i/f0/l/k;

    .line 51
    iget-object v4, v2, Le/a/i/f0/l/k;->j:Le/a/i/f0/l/o;

    .line 52
    iget-object v2, v2, Le/a/i/f0/l/k;->h:Le/a/i/s;

    .line 53
    invoke-interface {v4, v2}, Le/a/i/f0/l/o;->j(Le/a/i/s;)V

    .line 54
    iget-object v2, v8, Le/a/i/f0/l/l;->g:Le/a/i/f0/l/k;

    .line 55
    iget-object v4, v2, Le/a/i/f0/l/k;->j:Le/a/i/f0/l/o;

    .line 56
    iget-object v2, v2, Le/a/i/f0/l/k;->h:Le/a/i/s;

    const/4 v5, -0x1

    .line 57
    invoke-interface {v4, v2, v5}, Le/a/i/f0/l/o;->k(Le/a/i/s;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 58
    invoke-interface {v3, v7}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    .line 59
    :cond_f
    :try_start_9
    iget-object v9, v8, Le/a/i/f0/l/l;->g:Le/a/i/f0/l/k;

    iget-object v10, v8, Le/a/i/f0/l/l;->i:Ljava/lang/String;

    iput-object v3, v8, Le/a/i/f0/l/l;->e:Ljava/lang/Object;

    iput v6, v8, Le/a/i/f0/l/l;->f:I

    .line 60
    invoke-virtual {v9, v10, v7, v8}, Le/a/i/f0/l/k;->x(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v2, :cond_10

    return-object v2

    .line 61
    :cond_10
    :goto_3
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v9, :cond_7

    .line 62
    invoke-interface {v3, v7}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v3, v7}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw v0
.end method
