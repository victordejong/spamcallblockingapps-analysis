.class public final Le/a/i/d0/g0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/d0/g0/a;


# instance fields
.field public a:Lq3/a/p1;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Ls1/w/f;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/d0/g0/c/b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/d0/g0/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .param p1    # Lo3/a;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Ls1/w/f;",
            ">;",
            "Lo3/a<",
            "Le/a/i/d0/g0/c/b;",
            ">;",
            "Lo3/a<",
            "Le/a/i/d0/g0/d/b;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predictiveEcpmConfigDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predictiveEcpmRestAdapter"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/d0/g0/b;->d:Lo3/a;

    iput-object p2, p0, Le/a/i/d0/g0/b;->e:Lo3/a;

    iput-object p3, p0, Le/a/i/d0/g0/b;->f:Lo3/a;

    .line 2
    sget-object p1, Le/a/i/d0/g0/b$e;->b:Le/a/i/d0/g0/b$e;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/i/d0/g0/b;->b:Ls1/g;

    .line 3
    new-instance p1, Le/a/i/d0/g0/b$a;

    invoke-direct {p1, p0}, Le/a/i/d0/g0/b$a;-><init>(Le/a/i/d0/g0/b;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/i/d0/g0/b;->c:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/i/d0/g0/b$c;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/i/d0/g0/b$c;

    iget v1, v0, Le/a/i/d0/g0/b$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/d0/g0/b$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/d0/g0/b$c;

    invoke-direct {v0, p0, p4}, Le/a/i/d0/g0/b$c;-><init>(Le/a/i/d0/g0/b;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/i/d0/g0/b$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/d0/g0/b$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/i/d0/g0/b$c;->g:Ljava/lang/Object;

    check-cast p1, Le/a/i/d0/g0/b;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p4, p0, Le/a/i/d0/g0/b;->e:Lo3/a;

    invoke-interface {p4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Le/a/i/d0/g0/c/b;

    iput-object p0, v0, Le/a/i/d0/g0/b$c;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/i/d0/g0/b$c;->e:I

    invoke-interface {p4, p1, p2, p3, v0}, Le/a/i/d0/g0/c/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p4, Le/a/i/d0/g0/c/e;

    const/4 p2, 0x0

    if-eqz p4, :cond_5

    const-string p3, "$this$toPredictiveEcpmPricingConfig"

    .line 5
    invoke-static {p4, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance p3, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPricingConfig;

    .line 7
    iget-object v0, p4, Le/a/i/d0/g0/c/e;->d:Ljava/lang/String;

    .line 8
    iget-object p4, p4, Le/a/i/d0/g0/c/e;->e:Ljava/lang/String;

    .line 9
    invoke-direct {p3, v0, p4}, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPricingConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p3}, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPricingConfig;->getModel()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5c076f91

    if-eq v0, v1, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "FixedECPM"

    .line 11
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-virtual {p3}, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPricingConfig;->getEcpm()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_5
    :goto_2
    move-object p3, p2

    .line 12
    :goto_3
    iget-object p4, p1, Le/a/i/d0/g0/b;->a:Lq3/a/p1;

    if-eqz p4, :cond_6

    invoke-interface {p4}, Lq3/a/p1;->j()Z

    move-result p4

    .line 13
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    .line 14
    invoke-static {p4}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 15
    :cond_6
    iget-object p4, p1, Le/a/i/d0/g0/b;->c:Ls1/g;

    invoke-interface {p4}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lq3/a/i0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 16
    new-instance v3, Le/a/i/d0/g0/b$b;

    invoke-direct {v3, p2, p1}, Le/a/i/d0/g0/b$b;-><init>(Ls1/w/d;Le/a/i/d0/g0/b;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p2

    iput-object p2, p1, Le/a/i/d0/g0/b;->a:Lq3/a/p1;

    :cond_7
    return-object p3
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Landroidx/work/ListenableWorker$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/i/d0/g0/b$f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/i/d0/g0/b$f;

    iget v1, v0, Le/a/i/d0/g0/b$f;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/d0/g0/b$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/d0/g0/b$f;

    invoke-direct {v0, p0, p1}, Le/a/i/d0/g0/b$f;-><init>(Le/a/i/d0/g0/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/i/d0/g0/b$f;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/d0/g0/b$f;->e:I

    const-string v3, "Result.retry()"

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_6

    if-eq v2, v8, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v0, v0, Le/a/i/d0/g0/b$f;->g:Ljava/lang/Object;

    check-cast v0, Lq3/a/b3/c;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/i/d0/g0/b$f;->h:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    iget-object v5, v0, Le/a/i/d0/g0/b$f;->g:Ljava/lang/Object;

    check-cast v5, Le/a/i/d0/g0/b;

    :try_start_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_4

    :cond_3
    iget-object v2, v0, Le/a/i/d0/g0/b$f;->h:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    iget-object v6, v0, Le/a/i/d0/g0/b$f;->g:Ljava/lang/Object;

    check-cast v6, Le/a/i/d0/g0/b;

    :try_start_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto/16 :goto_8

    :cond_4
    iget-object v2, v0, Le/a/i/d0/g0/b$f;->h:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    iget-object v7, v0, Le/a/i/d0/g0/b$f;->g:Ljava/lang/Object;

    check-cast v7, Le/a/i/d0/g0/b;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-object v2, v0, Le/a/i/d0/g0/b$f;->g:Ljava/lang/Object;

    check-cast v2, Le/a/i/d0/g0/b;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/i/d0/g0/b$f;->g:Ljava/lang/Object;

    iput v8, v0, Le/a/i/d0/g0/b$f;->e:I

    invoke-virtual {p0, v0}, Le/a/i/d0/g0/b;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v2, p0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 5
    iget-object p1, v2, Le/a/i/d0/g0/b;->b:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq3/a/b3/c;

    .line 6
    iput-object v2, v0, Le/a/i/d0/g0/b$f;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/i/d0/g0/b$f;->h:Ljava/lang/Object;

    iput v7, v0, Le/a/i/d0/g0/b$f;->e:I

    invoke-interface {p1, v9, v0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_8

    return-object v1

    :cond_8
    move-object v7, v2

    move-object v2, p1

    .line 7
    :goto_2
    :try_start_3
    iput-object v7, v0, Le/a/i/d0/g0/b$f;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/i/d0/g0/b$f;->h:Ljava/lang/Object;

    iput v6, v0, Le/a/i/d0/g0/b$f;->e:I

    invoke-virtual {v7, v0}, Le/a/i/d0/g0/b;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    move-object v6, v7

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 8
    invoke-static {}, Le/m/d/y/n;->K()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 9
    iget-object v7, v6, Le/a/i/d0/g0/b;->f:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/i/d0/g0/d/b;

    iput-object v6, v0, Le/a/i/d0/g0/b$f;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/i/d0/g0/b$f;->h:Ljava/lang/Object;

    iput v5, v0, Le/a/i/d0/g0/b$f;->e:I

    invoke-interface {v7, p1, v0}, Le/a/i/d0/g0/d/b;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    move-object v5, v6

    :goto_4
    check-cast p1, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;

    if-eqz p1, :cond_c

    .line 10
    iget-object v3, v5, Le/a/i/d0/g0/b;->e:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/i/d0/g0/c/b;

    invoke-static {p1}, Le/m/d/y/n;->v1(Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;)Ljava/util/List;

    move-result-object p1

    iput-object v2, v0, Le/a/i/d0/g0/b$f;->g:Ljava/lang/Object;

    iput-object v9, v0, Le/a/i/d0/g0/b$f;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/i/d0/g0/b$f;->e:I

    invoke-interface {v3, p1, v0}, Le/a/i/d0/g0/c/b;->o(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p1, v1, :cond_b

    return-object v1

    :cond_b
    move-object v0, v2

    .line 11
    :goto_5
    :try_start_4
    new-instance p1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$c;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v0

    goto :goto_7

    :goto_6
    move-object v2, v0

    goto :goto_8

    .line 12
    :cond_c
    :try_start_5
    new-instance p1, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    .line 13
    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 14
    :goto_7
    invoke-interface {v2, v9}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    .line 15
    :cond_d
    :try_start_6
    new-instance p1, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    .line 16
    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 17
    invoke-interface {v2, v9}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :cond_e
    invoke-interface {v2, v9}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    goto :goto_9

    :goto_8
    invoke-interface {v2, v9}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1

    .line 18
    :cond_f
    :goto_9
    new-instance p1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v0, "Result.success()"

    .line 19
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/i/d0/g0/b$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/i/d0/g0/b$d;

    iget v1, v0, Le/a/i/d0/g0/b$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/d0/g0/b$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/d0/g0/b$d;

    invoke-direct {v0, p0, p1}, Le/a/i/d0/g0/b$d;-><init>(Le/a/i/d0/g0/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/i/d0/g0/b$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/d0/g0/b$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/i/d0/g0/b;->e:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/d0/g0/c/b;

    .line 2
    new-instance v2, Lw3/b/a/b;

    invoke-direct {v2}, Lw3/b/a/b;-><init>()V

    const-string v4, "DateTime.now()"

    .line 3
    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-wide v4, v2, Lw3/b/a/e0/e;->a:J

    .line 5
    iput v3, v0, Le/a/i/d0/g0/b$d;->e:I

    invoke-interface {p1, v4, v5, v0}, Le/a/i/d0/g0/c/b;->z(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 6
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
