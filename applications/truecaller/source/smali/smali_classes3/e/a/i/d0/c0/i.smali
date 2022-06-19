.class public final Le/a/i/d0/c0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/d0/c0/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/i/d0/c0/d<",
        "Ls1/s;",
        "Le/a/i/d0/j<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/content/Context;

.field public final e:Le/a/i/c/d/l;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/truecaller/ads/mediation/model/Partner;",
            "Le/a/i/d0/a0/l;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/p5/c;

.field public final h:Le/a/p5/u;

.field public final i:Le/a/q2/a;

.field public final j:Le/a/p5/g;

.field public final k:Le/a/i/d0/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/i/c/d/l;Ljava/util/Map;Le/a/p5/c;Le/a/p5/u;Le/a/q2/a;Le/a/p5/g;Le/a/i/d0/z;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/i/c/d/l;",
            "Ljava/util/Map<",
            "Lcom/truecaller/ads/mediation/model/Partner;",
            "+",
            "Le/a/i/d0/a0/l;",
            ">;",
            "Le/a/p5/c;",
            "Le/a/p5/u;",
            "Le/a/q2/a;",
            "Le/a/p5/g;",
            "Le/a/i/d0/z;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unitConfig"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterMap"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerSDKAdListener"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/d0/c0/i;->d:Landroid/content/Context;

    iput-object p2, p0, Le/a/i/d0/c0/i;->e:Le/a/i/c/d/l;

    iput-object p3, p0, Le/a/i/d0/c0/i;->f:Ljava/util/Map;

    iput-object p4, p0, Le/a/i/d0/c0/i;->g:Le/a/p5/c;

    iput-object p5, p0, Le/a/i/d0/c0/i;->h:Le/a/p5/u;

    iput-object p6, p0, Le/a/i/d0/c0/i;->i:Le/a/q2/a;

    iput-object p7, p0, Le/a/i/d0/c0/i;->j:Le/a/p5/g;

    iput-object p8, p0, Le/a/i/d0/c0/i;->k:Le/a/i/d0/z;

    .line 2
    new-instance p1, Le/a/i/d0/c0/i$d;

    invoke-direct {p1, p0}, Le/a/i/d0/c0/i$d;-><init>(Le/a/i/d0/c0/i;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/i/d0/c0/i;->a:Ls1/g;

    .line 3
    sget-object p1, Le/a/i/d0/c0/i$a;->b:Le/a/i/d0/c0/i$a;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/i/d0/c0/i;->b:Ls1/g;

    .line 4
    iget-object p1, p2, Le/a/i/c/d/l;->e:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/i/d0/c0/i;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Le/a/i/d0/c0/d;)Le/a/i/d0/c0/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/d0/c0/d<",
            "Ls1/s;",
            "Le/a/i/d0/j<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Le/a/i/d0/c0/d<",
            "Ls1/s;",
            "Le/a/i/d0/j<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const-string v0, "b"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Le/m/d/y/n;->v(Le/a/i/d0/c0/d;Le/a/i/d0/c0/d;)Le/a/i/d0/c0/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ls1/s;

    invoke-virtual {p0, p2}, Le/a/i/d0/c0/i;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ls1/s;

    check-cast p2, Le/a/i/d0/j;

    invoke-virtual {p0, p2, p3}, Le/a/i/d0/c0/i;->i(Le/a/i/d0/j;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/s;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/i/d0/c0/g;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/i/d0/c0/g;

    iget v1, v0, Le/a/i/d0/c0/g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/d0/c0/g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/d0/c0/g;

    invoke-direct {v0, p0, p1}, Le/a/i/d0/c0/g;-><init>(Le/a/i/d0/c0/i;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/i/d0/c0/g;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/d0/c0/g;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/i/d0/c0/i;->f()Le/a/i/d0/c0/m;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v2, p0, Le/a/i/d0/c0/i;->c:Ljava/lang/String;

    iput v3, v0, Le/a/i/d0/c0/g;->e:I

    invoke-interface {p1, v2, v0}, Le/a/i/d0/c0/m;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Integer;

    .line 5
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/s;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/d0/j<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Le/a/i/d0/c0/h;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Le/a/i/d0/c0/h;

    iget v3, v2, Le/a/i/d0/c0/h;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/i/d0/c0/h;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/i/d0/c0/h;

    invoke-direct {v2, v1, v0}, Le/a/i/d0/c0/h;-><init>(Le/a/i/d0/c0/i;Ls1/w/d;)V

    :goto_0
    iget-object v0, v2, Le/a/i/d0/c0/h;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/i/d0/c0/h;->e:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-wide v3, v2, Le/a/i/d0/c0/h;->j:J

    iget-object v5, v2, Le/a/i/d0/c0/h;->i:Ljava/lang/Object;

    check-cast v5, Le/a/i/d0/c0/p;

    iget-object v6, v2, Le/a/i/d0/c0/h;->h:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v2, v2, Le/a/i/d0/c0/h;->g:Ljava/lang/Object;

    check-cast v2, Le/a/i/d0/c0/i;

    :try_start_0
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v2

    move-wide v12, v3

    move-object v10, v5

    move-object v14, v6

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-wide v3, v2, Le/a/i/d0/c0/h;->j:J

    iget-object v5, v2, Le/a/i/d0/c0/h;->i:Ljava/lang/Object;

    check-cast v5, Le/a/i/d0/c0/p;

    iget-object v6, v2, Le/a/i/d0/c0/h;->h:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v2, v2, Le/a/i/d0/c0/h;->g:Ljava/lang/Object;

    check-cast v2, Le/a/i/d0/c0/i;

    :try_start_1
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v2

    move-wide v14, v3

    move-object v12, v5

    move-object/from16 v16, v6

    goto :goto_2

    :cond_3
    iget-wide v9, v2, Le/a/i/d0/c0/h;->j:J

    iget-object v4, v2, Le/a/i/d0/c0/h;->h:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v7, v2, Le/a/i/d0/c0/h;->g:Ljava/lang/Object;

    check-cast v7, Le/a/i/d0/c0/i;

    :try_start_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_3
    iget-object v0, v1, Le/a/i/d0/c0/i;->g:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v9

    .line 5
    iget-object v0, v1, Le/a/i/d0/c0/i;->h:Le/a/p5/u;

    invoke-interface {v0}, Le/a/p5/u;->b()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual/range {p0 .. p0}, Le/a/i/d0/c0/i;->f()Le/a/i/d0/c0/m;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v11, v1, Le/a/i/d0/c0/i;->c:Ljava/lang/String;

    iput-object v1, v2, Le/a/i/d0/c0/h;->g:Ljava/lang/Object;

    iput-object v0, v2, Le/a/i/d0/c0/h;->h:Ljava/lang/Object;

    iput-wide v9, v2, Le/a/i/d0/c0/h;->j:J

    iput v7, v2, Le/a/i/d0/c0/h;->e:I

    invoke-interface {v4, v11, v2}, Le/a/i/d0/c0/m;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_5

    return-object v3

    :cond_5
    move-object v7, v1

    move-object/from16 v18, v4

    move-object v4, v0

    move-object/from16 v0, v18

    :goto_1
    check-cast v0, Le/a/i/d0/c0/p;

    if-eqz v0, :cond_9

    .line 7
    new-instance v11, Lw3/b/a/b;

    .line 8
    iget-wide v12, v0, Le/a/i/d0/c0/p;->h:J

    .line 9
    invoke-direct {v11, v12, v13}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v11}, Lw3/b/a/e0/c;->j()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 10
    iput-object v7, v2, Le/a/i/d0/c0/h;->g:Ljava/lang/Object;

    iput-object v4, v2, Le/a/i/d0/c0/h;->h:Ljava/lang/Object;

    iput-object v0, v2, Le/a/i/d0/c0/h;->i:Ljava/lang/Object;

    iput-wide v9, v2, Le/a/i/d0/c0/h;->j:J

    iput v6, v2, Le/a/i/d0/c0/h;->e:I

    invoke-virtual {v7, v2}, Le/a/i/d0/c0/i;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_6

    return-object v3

    :cond_6
    move-object v12, v0

    move-object/from16 v16, v4

    move-object v11, v7

    move-wide v14, v9

    .line 11
    :goto_2
    sget-object v13, Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;->FAILURE:Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;

    .line 12
    sget-object v17, Le/a/i/d0/t;->d:Le/a/i/d0/t;

    .line 13
    invoke-virtual/range {v11 .. v17}, Le/a/i/d0/c0/i;->g(Le/a/i/d0/c0/p;Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;JLjava/lang/String;Le/a/i/c/b/a;)V

    return-object v8

    .line 14
    :cond_7
    iput-object v7, v2, Le/a/i/d0/c0/h;->g:Ljava/lang/Object;

    iput-object v4, v2, Le/a/i/d0/c0/h;->h:Ljava/lang/Object;

    iput-object v0, v2, Le/a/i/d0/c0/h;->i:Ljava/lang/Object;

    iput-wide v9, v2, Le/a/i/d0/c0/h;->j:J

    iput v5, v2, Le/a/i/d0/c0/h;->e:I

    invoke-virtual {v7, v0, v2}, Le/a/i/d0/c0/i;->h(Le/a/i/d0/c0/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_8

    return-object v3

    :cond_8
    move-object v14, v4

    move-wide v12, v9

    move-object v10, v0

    move-object v0, v2

    move-object v9, v7

    .line 15
    :goto_3
    move-object v2, v0

    check-cast v2, Le/a/i/d0/j;

    .line 16
    sget-object v11, Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;->SUCCESS:Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;

    const/4 v15, 0x0

    .line 17
    invoke-virtual/range {v9 .. v15}, Le/a/i/d0/c0/i;->g(Le/a/i/d0/c0/p;Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;JLjava/lang/String;Le/a/i/c/b/a;)V

    .line 18
    check-cast v0, Le/a/i/d0/j;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :cond_9
    move-object v0, v8

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 19
    invoke-static {v0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    :goto_4
    invoke-static {v0}, Ls1/l;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_a

    move-object v8, v0

    goto :goto_5

    .line 21
    :cond_a
    sget-object v0, Le/a/i/h0/k;->c:Le/a/i/h0/k;

    invoke-virtual {v0, v2}, Le/a/i/h0/k;->a(Ljava/lang/Throwable;)V

    .line 22
    sget-object v0, Le/a/i/h0/m;->a:Ls1/z/b/l;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "java.util.Arrays.toString(this)"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-object v8
.end method

.method public final f()Le/a/i/d0/c0/m;
    .locals 1

    iget-object v0, p0, Le/a/i/d0/c0/i;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/d0/c0/m;

    return-object v0
.end method

.method public final g(Le/a/i/d0/c0/p;Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;JLjava/lang/String;Le/a/i/c/b/a;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    .line 1
    new-instance v14, Le/a/i/d0/b0/a;

    .line 2
    iget-object v3, v0, Le/a/i/d0/c0/i;->e:Le/a/i/c/d/l;

    .line 3
    iget-object v3, v3, Le/a/i/c/d/l;->c:Ljava/util/List;

    .line 4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 5
    iget-object v5, v0, Le/a/i/d0/c0/i;->g:Le/a/p5/c;

    invoke-interface {v5}, Le/a/p5/c;->a()J

    move-result-wide v5

    sub-long v5, v5, p3

    .line 6
    iget-object v7, v0, Le/a/i/d0/c0/i;->e:Le/a/i/c/d/l;

    .line 7
    iget-object v7, v7, Le/a/i/c/d/l;->e:Ljava/util/List;

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 8
    invoke-static {v7}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v7, v8

    :goto_0
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 9
    iget-object v9, v0, Le/a/i/d0/c0/i;->h:Le/a/p5/u;

    invoke-interface {v9}, Le/a/p5/u;->b()Ljava/lang/String;

    move-result-object v9

    .line 10
    iget-object v10, v1, Le/a/i/d0/c0/p;->d:Lcom/truecaller/ads/adsrouter/ui/AdType;

    .line 11
    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    .line 12
    iget-object v11, v1, Le/a/i/d0/c0/p;->c:Lcom/truecaller/ads/mediation/model/AdPartner;

    .line 13
    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    .line 14
    iget-object v12, v1, Le/a/i/d0/c0/p;->c:Lcom/truecaller/ads/mediation/model/AdPartner;

    .line 15
    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Le/m/d/y/n;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v2, :cond_1

    .line 16
    iget v13, v2, Le/a/i/c/b/a;->a:I

    .line 17
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_1

    :cond_1
    move-object v13, v8

    :goto_1
    if-eqz v2, :cond_2

    .line 18
    iget-object v2, v2, Le/a/i/c/b/a;->b:Ljava/lang/String;

    move-object/from16 v25, v2

    goto :goto_2

    :cond_2
    move-object/from16 v25, v8

    .line 19
    :goto_2
    iget-object v15, v1, Le/a/i/d0/c0/p;->f:Ljava/lang/String;

    .line 20
    iget-object v1, v1, Le/a/i/d0/c0/p;->g:Ljava/lang/String;

    move-object/from16 v16, v1

    .line 21
    iget-object v1, v0, Le/a/i/d0/c0/i;->e:Le/a/i/c/d/l;

    .line 22
    iget-object v1, v1, Le/a/i/c/d/l;->b:Ljava/lang/String;

    move-object/from16 v17, v1

    .line 23
    sget-object v18, Le/a/i/c/a/u$c;->b:Le/a/i/c/a/u$c;

    .line 24
    iget-object v1, v0, Le/a/i/d0/c0/i;->j:Le/a/p5/g;

    invoke-interface {v1}, Le/a/p5/g;->j()Ljava/lang/String;

    move-result-object v19

    .line 25
    iget-object v1, v0, Le/a/i/d0/c0/i;->j:Le/a/p5/g;

    invoke-interface {v1}, Le/a/p5/g;->u()Ljava/lang/String;

    move-result-object v20

    .line 26
    iget-object v1, v0, Le/a/i/d0/c0/i;->e:Le/a/i/c/d/l;

    .line 27
    iget-object v1, v1, Le/a/i/c/d/l;->i:Le/a/i/f;

    move-object/from16 v21, v1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v24, 0xc0000

    move-object v2, v14

    move-object/from16 v8, p5

    move-object v1, v14

    move-object/from16 v14, v25

    .line 28
    invoke-direct/range {v2 .. v24}, Le/a/i/d0/b0/a;-><init>(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/i/c/a/u;Ljava/lang/String;Ljava/lang/String;Le/a/i/f;Ljava/util/List;Ljava/lang/String;I)V

    .line 29
    iget-object v2, v0, Le/a/i/d0/c0/i;->i:Le/a/q2/a;

    invoke-interface {v2, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public final h(Le/a/i/d0/c0/p;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/d0/c0/p;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/d0/j<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/d0/c0/i$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/d0/c0/i$c;

    iget v1, v0, Le/a/i/d0/c0/i$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/d0/c0/i$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/d0/c0/i$c;

    invoke-direct {v0, p0, p2}, Le/a/i/d0/c0/i$c;-><init>(Le/a/i/d0/c0/i;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/d0/c0/i$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/d0/c0/i$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/i/d0/c0/i$c;->h:Ljava/lang/Object;

    check-cast p1, Le/a/i/d0/c0/p;

    iget-object v0, v0, Le/a/i/d0/c0/i$c;->g:Ljava/lang/Object;

    check-cast v0, Le/a/i/d0/c0/i;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/i/d0/c0/i;->f:Ljava/util/Map;

    .line 5
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/ads/mediation/model/Partner;

    invoke-virtual {v5}, Lcom/truecaller/ads/mediation/model/Partner;->getName()Ljava/lang/String;

    move-result-object v5

    .line 8
    iget-object v6, p1, Le/a/i/d0/c0/p;->c:Lcom/truecaller/ads/mediation/model/AdPartner;

    .line 9
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 10
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 11
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 13
    :cond_4
    invoke-static {v2}, Ls1/u/i;->T0(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls1/k;

    .line 14
    iget-object v2, p2, Ls1/k;->a:Ljava/lang/Object;

    .line 15
    check-cast v2, Lcom/truecaller/ads/mediation/model/Partner;

    .line 16
    iget-object p2, p2, Ls1/k;->b:Ljava/lang/Object;

    .line 17
    check-cast p2, Le/a/i/d0/a0/l;

    .line 18
    iget-object v4, p0, Le/a/i/d0/c0/i;->d:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/truecaller/ads/mediation/model/Partner;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object p0, v0, Le/a/i/d0/c0/i$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/i/d0/c0/i$c;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/i/d0/c0/i$c;->e:I

    invoke-interface {p2, v4, v2, v0}, Le/a/i/d0/a0/l;->a(Landroid/content/Context;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, p0

    .line 19
    :goto_2
    iget-object p2, p1, Le/a/i/d0/c0/p;->c:Lcom/truecaller/ads/mediation/model/AdPartner;

    .line 20
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eq p2, v3, :cond_6

    .line 21
    new-instance p2, Le/a/i/d0/i;

    new-instance v0, Le/a/i/d0/u;

    .line 22
    iget-object p1, p1, Le/a/i/d0/c0/p;->c:Lcom/truecaller/ads/mediation/model/AdPartner;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Le/a/i/d0/u;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    return-object p2

    .line 24
    :cond_6
    iget-object p2, v0, Le/a/i/d0/c0/i;->b:Ls1/g;

    invoke-interface {p2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/e/k;

    const-string v1, "gson"

    .line 25
    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object p1, p1, Le/a/i/d0/c0/p;->e:Ljava/lang/String;

    .line 27
    new-instance v1, Le/a/i/d0/c0/i$b;

    invoke-direct {v1}, Le/a/i/d0/c0/i$b;-><init>()V

    invoke-virtual {v1}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "object : TypeToken<T>() {}.type"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2, p1, v1}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "this.fromJson(json, typeToken<T>())"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    check-cast p1, Le/a/i/d0/h0/d;

    .line 30
    sget-object p2, Le/a/i/c/a/u$c;->b:Le/a/i/c/a/u$c;

    const-string v1, "<set-?>"

    .line 31
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p2, p1, Le/a/i/d0/h0/d;->b:Le/a/i/c/a/u;

    .line 33
    iget-object p2, v0, Le/a/i/d0/c0/i;->k:Le/a/i/d0/z;

    const-string v0, "listener"

    .line 34
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p2, p1, Le/a/i/d0/h0/d;->d:Le/a/i/d0/z;

    .line 36
    new-instance p2, Le/a/i/d0/k;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p2, p1, v0, v1}, Le/a/i/d0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    return-object p2
.end method

.method public i(Le/a/i/d0/j;Ls1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/s;",
            "Le/a/i/d0/j<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Ls1/s;->a:Ls1/s;

    instance-of v4, v2, Le/a/i/d0/c0/k;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Le/a/i/d0/c0/k;

    iget v5, v4, Le/a/i/d0/c0/k;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le/a/i/d0/c0/k;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Le/a/i/d0/c0/k;

    invoke-direct {v4, v0, v2}, Le/a/i/d0/c0/k;-><init>(Le/a/i/d0/c0/i;Ls1/w/d;)V

    :goto_0
    iget-object v2, v4, Le/a/i/d0/c0/k;->d:Ljava/lang/Object;

    sget-object v5, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v6, v4, Le/a/i/d0/c0/k;->e:I

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    if-ne v6, v7, :cond_1

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    instance-of v2, v1, Le/a/i/d0/k;

    if-eqz v2, :cond_3

    check-cast v1, Le/a/i/d0/k;

    .line 5
    iget-object v2, v1, Le/a/i/d0/k;->a:Ljava/lang/Object;

    .line 6
    instance-of v2, v2, Le/a/i/d0/h0/d;

    if-eqz v2, :cond_3

    .line 7
    invoke-virtual/range {p0 .. p0}, Le/a/i/d0/c0/i;->f()Le/a/i/d0/c0/m;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 8
    iget-object v1, v1, Le/a/i/d0/k;->a:Ljava/lang/Object;

    .line 9
    check-cast v1, Le/a/i/d0/h0/d;

    iget-object v9, v0, Le/a/i/d0/c0/i;->c:Ljava/lang/String;

    sget-object v10, Lcom/truecaller/ads/mediation/model/AdPartner;->AMAZON:Lcom/truecaller/ads/mediation/model/AdPartner;

    .line 10
    new-instance v6, Le/a/i/d0/c0/p;

    .line 11
    sget-object v11, Lcom/truecaller/ads/adsrouter/ui/AdType;->BANNER_AMAZON:Lcom/truecaller/ads/adsrouter/ui/AdType;

    .line 12
    iget-object v8, v0, Le/a/i/d0/c0/i;->b:Ls1/g;

    invoke-interface {v8}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/m/e/k;

    const-string v12, "gson"

    .line 13
    invoke-static {v8, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v12, Le/a/i/d0/c0/j;

    invoke-direct {v12}, Le/a/i/d0/c0/j;-><init>()V

    invoke-virtual {v12}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v12

    const-string v13, "object : TypeToken<T>() {}.type"

    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v8, v1, v12}, Le/m/e/k;->n(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v12

    const-string v8, "this.toJson(src, typeToken<T>())"

    invoke-static {v12, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v8, v1, Le/a/i/d0/h0/d;->c:Le/a/i/d0/h0/e;

    .line 17
    iget-object v13, v8, Le/a/i/d0/h0/a;->a:Ljava/lang/String;

    .line 18
    iget-object v14, v8, Le/a/i/d0/h0/a;->b:Ljava/lang/String;

    .line 19
    new-instance v8, Lw3/b/a/b;

    invoke-direct {v8}, Lw3/b/a/b;-><init>()V

    .line 20
    iget-object v1, v1, Le/a/i/d0/h0/d;->c:Le/a/i/d0/h0/e;

    .line 21
    iget v1, v1, Le/a/i/d0/h0/a;->c:I

    .line 22
    invoke-virtual {v8, v1}, Lw3/b/a/b;->G(I)Lw3/b/a/b;

    move-result-object v1

    const-string v8, "DateTime.now().plusMinutes(ad.ttl)"

    invoke-static {v1, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-wide v0, v1, Lw3/b/a/e0/e;->a:J

    move-object v8, v6

    move-wide v15, v0

    .line 24
    invoke-direct/range {v8 .. v16}, Le/a/i/d0/c0/p;-><init>(Ljava/lang/String;Lcom/truecaller/ads/mediation/model/AdPartner;Lcom/truecaller/ads/adsrouter/ui/AdType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 25
    iput v7, v4, Le/a/i/d0/c0/k;->e:I

    invoke-interface {v2, v6, v4}, Le/a/i/d0/c0/m;->s(Le/a/i/d0/c0/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_3

    return-object v5

    :cond_3
    :goto_1
    return-object v3
.end method
