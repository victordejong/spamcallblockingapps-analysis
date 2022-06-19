.class public final Le/a/i/c/d/b$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/c/d/b;->d(Le/a/i/c/d/l;Le/a/i/c/d/i;Z)V
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
    c = "com.truecaller.ads.adsrouter.provider.AdRouterAdsProviderImpl$loadAd$1"
    f = "AdRouterAdsProvider.kt"
    l = {
        0x5e,
        0x6e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:J

.field public i:I

.field public final synthetic j:Le/a/i/c/d/b;

.field public final synthetic k:Le/a/i/c/d/l;

.field public final synthetic l:Z

.field public final synthetic m:Le/a/i/c/d/i;


# direct methods
.method public constructor <init>(Le/a/i/c/d/b;Le/a/i/c/d/l;ZLe/a/i/c/d/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/c/d/b$e;->j:Le/a/i/c/d/b;

    iput-object p2, p0, Le/a/i/c/d/b$e;->k:Le/a/i/c/d/l;

    iput-boolean p3, p0, Le/a/i/c/d/b$e;->l:Z

    iput-object p4, p0, Le/a/i/c/d/b$e;->m:Le/a/i/c/d/i;

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/i/c/d/b$e;

    iget-object v2, p0, Le/a/i/c/d/b$e;->j:Le/a/i/c/d/b;

    iget-object v3, p0, Le/a/i/c/d/b$e;->k:Le/a/i/c/d/l;

    iget-boolean v4, p0, Le/a/i/c/d/b$e;->l:Z

    iget-object v5, p0, Le/a/i/c/d/b$e;->m:Le/a/i/c/d/i;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Le/a/i/c/d/b$e;-><init>(Le/a/i/c/d/b;Le/a/i/c/d/l;ZLe/a/i/c/d/i;Ls1/w/d;)V

    iput-object p1, v0, Le/a/i/c/d/b$e;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/i/c/d/b$e;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/i/c/d/b$e;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/c/d/b$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v0, v1, Le/a/i/c/d/b$e;->i:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-wide v6, v1, Le/a/i/c/d/b$e;->h:J

    iget-object v0, v1, Le/a/i/c/d/b$e;->g:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ls1/z/c/c0;

    iget-object v0, v1, Le/a/i/c/d/b$e;->f:Ljava/lang/Object;

    check-cast v0, Lq3/a/i0;

    iget-object v0, v1, Le/a/i/c/d/b$e;->e:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ls1/z/c/c0;

    :try_start_0
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v0, v1, Le/a/i/c/d/b$e;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/i0;

    .line 4
    new-instance v6, Ls1/z/c/c0;

    invoke-direct {v6}, Ls1/z/c/c0;-><init>()V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    :try_start_1
    new-array v9, v3, [Lq3/a/n0;

    const/4 v10, 0x0

    .line 6
    iget-object v11, v1, Le/a/i/c/d/b$e;->j:Le/a/i/c/d/b;

    iget-object v12, v1, Le/a/i/c/d/b$e;->k:Le/a/i/c/d/l;

    .line 7
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v14, Le/a/i/c/d/d;

    invoke-direct {v14, v11, v12, v5}, Le/a/i/c/d/d;-><init>(Le/a/i/c/d/b;Le/a/i/c/d/l;Ls1/w/d;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v11

    aput-object v11, v9, v10

    .line 9
    iget-object v12, v1, Le/a/i/c/d/b$e;->j:Le/a/i/c/d/b;

    iget-object v10, v1, Le/a/i/c/d/b$e;->k:Le/a/i/c/d/l;

    iget-boolean v11, v1, Le/a/i/c/d/b$e;->l:Z

    .line 10
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v15, Le/a/i/c/d/c;

    invoke-direct {v15, v12, v10, v11, v5}, Le/a/i/c/d/c;-><init>(Le/a/i/c/d/b;Le/a/i/c/d/l;ZLs1/w/d;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v10

    aput-object v10, v9, v4

    .line 12
    invoke-static {v9}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    iput-object v6, v1, Le/a/i/c/d/b$e;->e:Ljava/lang/Object;

    iput-object v0, v1, Le/a/i/c/d/b$e;->f:Ljava/lang/Object;

    iput-object v6, v1, Le/a/i/c/d/b$e;->g:Ljava/lang/Object;

    iput-wide v7, v1, Le/a/i/c/d/b$e;->h:J

    iput v4, v1, Le/a/i/c/d/b$e;->i:I

    .line 13
    invoke-static {v9, v1}, Ls1/a/a/a/v0/f/d;->I(Ljava/util/Collection;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v2, :cond_3

    return-object v2

    :cond_3
    move-object v4, v6

    move-wide v6, v7

    move-object v8, v4

    .line 14
    :goto_0
    :try_start_2
    check-cast v0, Ljava/lang/Iterable;

    .line 15
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Le/a/i/d0/k;

    if-eqz v11, :cond_4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Le/a/i/d0/k;

    .line 18
    iget-object v11, v11, Le/a/i/d0/k;->a:Ljava/lang/Object;

    .line 19
    check-cast v11, Le/a/i/c/a/c;

    invoke-interface {v11}, Le/a/i/c/a/c;->a()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Roadblock"

    invoke-static {v11, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .line 20
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 21
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_2

    :cond_7
    move-object v10, v5

    .line 22
    :goto_2
    check-cast v10, Le/a/i/d0/k;

    if-eqz v10, :cond_8

    goto :goto_4

    .line 23
    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_9

    move-object v9, v5

    goto :goto_3

    .line 25
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_3

    .line 27
    :cond_a
    move-object v10, v9

    check-cast v10, Le/a/i/d0/k;

    .line 28
    iget-object v10, v10, Le/a/i/d0/k;->a:Ljava/lang/Object;

    .line 29
    check-cast v10, Le/a/i/c/a/c;

    invoke-interface {v10}, Le/a/i/c/a/c;->c()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 30
    new-instance v12, Ljava/lang/Double;

    invoke-direct {v12, v10, v11}, Ljava/lang/Double;-><init>(D)V

    .line 31
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 32
    move-object v11, v10

    check-cast v11, Le/a/i/d0/k;

    .line 33
    iget-object v11, v11, Le/a/i/d0/k;->a:Ljava/lang/Object;

    .line 34
    check-cast v11, Le/a/i/c/a/c;

    invoke-interface {v11}, Le/a/i/c/a/c;->c()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 35
    new-instance v11, Ljava/lang/Double;

    invoke-direct {v11, v13, v14}, Ljava/lang/Double;-><init>(D)V

    .line 36
    invoke-virtual {v12, v11}, Ljava/lang/Double;->compareTo(Ljava/lang/Object;)I

    move-result v13

    if-gez v13, :cond_c

    move-object v9, v10

    move-object v12, v11

    .line 37
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_b

    .line 38
    :goto_3
    move-object v10, v9

    check-cast v10, Le/a/i/d0/k;

    :goto_4
    if-eqz v10, :cond_d

    .line 39
    iget-object v0, v10, Le/a/i/d0/k;->a:Ljava/lang/Object;

    .line 40
    check-cast v0, Le/a/i/c/a/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :cond_d
    move-object v0, v5

    goto :goto_7

    :goto_5
    move-wide v9, v6

    move-object v6, v4

    goto :goto_6

    :catchall_1
    move-exception v0

    move-wide v9, v7

    move-object v8, v6

    .line 41
    :goto_6
    invoke-static {v0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v6

    move-wide v6, v9

    .line 42
    :goto_7
    invoke-static {v0}, Ls1/l;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    if-nez v9, :cond_e

    goto :goto_8

    .line 43
    :cond_e
    sget-object v0, Le/a/i/h0/k;->c:Le/a/i/h0/k;

    invoke-virtual {v0, v9}, Le/a/i/h0/k;->a(Ljava/lang/Throwable;)V

    .line 44
    sget-object v0, Le/a/i/h0/m;->a:Ls1/z/b/l;

    .line 45
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "java.util.Arrays.toString(this)"

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v9}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Le/a/i/d0/p;->d:Le/a/i/d0/p;

    .line 47
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v6

    .line 48
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v9, v10}, Ljava/lang/Long;-><init>(J)V

    .line 49
    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 50
    sget-object v9, Le/a/i/h0/m;->a:Ls1/z/b/l;

    .line 51
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AdRouter and PartnerSDK requestAd took: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v6}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 52
    iget-object v0, v1, Le/a/i/c/d/b$e;->j:Le/a/i/c/d/b;

    .line 53
    iget-object v0, v0, Le/a/i/c/d/b;->m:Ls1/w/f;

    .line 54
    new-instance v4, Le/a/i/c/d/b$e$a;

    invoke-direct {v4, v1, v8, v5}, Le/a/i/c/d/b$e$a;-><init>(Le/a/i/c/d/b$e;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object v5, v1, Le/a/i/c/d/b$e;->e:Ljava/lang/Object;

    iput-object v5, v1, Le/a/i/c/d/b$e;->f:Ljava/lang/Object;

    iput-object v5, v1, Le/a/i/c/d/b$e;->g:Ljava/lang/Object;

    iput v3, v1, Le/a/i/c/d/b$e;->i:I

    invoke-static {v0, v4, v1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_f

    return-object v2

    .line 55
    :cond_f
    :goto_9
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
