.class public final Lcom/truecaller/background_work/JointActionsWorker;
.super Lcom/truecaller/background_work/TrackedWorker;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u00100\u001a\u00020/\u00a2\u0006\u0004\u00081\u00102J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\"\u0010\u000f\u001a\u00020\u00088\u0016@\u0016X\u0097.\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R(\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR(\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00148\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u0017\u001a\u0004\u0008\u001e\u0010\u0019\"\u0004\u0008\u001f\u0010\u001bR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+\u00a8\u00063"
    }
    d2 = {
        "Lcom/truecaller/background_work/JointActionsWorker;",
        "Lcom/truecaller/background_work/TrackedWorker;",
        "",
        "q",
        "()Z",
        "Landroidx/work/ListenableWorker$a;",
        "r",
        "()Landroidx/work/ListenableWorker$a;",
        "Le/a/u3/g;",
        "b",
        "Le/a/u3/g;",
        "o",
        "()Le/a/u3/g;",
        "setFeaturesRegistry",
        "(Le/a/u3/g;)V",
        "featuresRegistry",
        "Le/a/q2/a;",
        "n",
        "()Le/a/q2/a;",
        "analytics",
        "Lo3/a;",
        "Lcom/truecaller/background_work/persistence/WorkActionDatabase;",
        "d",
        "Lo3/a;",
        "getResultsDatabase",
        "()Lo3/a;",
        "setResultsDatabase",
        "(Lo3/a;)V",
        "resultsDatabase",
        "a",
        "getLazyAnalytics$background_work_release",
        "setLazyAnalytics$background_work_release",
        "lazyAnalytics",
        "Le/a/y2/e;",
        "e",
        "Le/a/y2/e;",
        "delegate",
        "Le/a/y2/l;",
        "c",
        "Le/a/y2/l;",
        "getFactory",
        "()Le/a/y2/l;",
        "setFactory",
        "(Le/a/y2/l;)V",
        "factory",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "workerParams",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "background-work_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/u3/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/y2/l;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Lcom/truecaller/background_work/persistence/WorkActionDatabase;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final e:Le/a/y2/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/background_work/TrackedWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.truecaller.background_work.WorkActionSchedulingApplication"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/y2/o;

    .line 3
    invoke-interface {p1}, Le/a/y2/o;->o()Le/a/y2/o$a;

    move-result-object p1

    .line 4
    invoke-interface {p1, p0}, Le/a/y2/o$a;->b5(Lcom/truecaller/background_work/JointActionsWorker;)V

    .line 5
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v1

    const-string p1, "inputData"

    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getRunAttemptCount()I

    move-result v2

    .line 7
    iget-object p1, p0, Lcom/truecaller/background_work/JointActionsWorker;->a:Lo3/a;

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 8
    iget-object v0, p0, Lcom/truecaller/background_work/JointActionsWorker;->b:Le/a/u3/g;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0}, Le/a/u3/g;->i0()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/a;

    move-object v3, p1

    goto :goto_1

    :cond_1
    move-object v3, p2

    .line 10
    :goto_1
    iget-object v4, p0, Lcom/truecaller/background_work/JointActionsWorker;->c:Le/a/y2/l;

    if-eqz v4, :cond_3

    .line 11
    iget-object v5, p0, Lcom/truecaller/background_work/JointActionsWorker;->d:Lo3/a;

    if-eqz v5, :cond_2

    .line 12
    new-instance p1, Le/a/y2/e;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/a/y2/e;-><init>(Ln3/m0/f;ILe/a/q2/a;Le/a/y2/l;Lo3/a;)V

    iput-object p1, p0, Lcom/truecaller/background_work/JointActionsWorker;->e:Le/a/y2/e;

    return-void

    :cond_2
    const-string p1, "resultsDatabase"

    .line 13
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2

    :cond_3
    const-string p1, "factory"

    .line 14
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2

    :cond_4
    const-string p1, "featuresRegistry"

    .line 15
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2

    :cond_5
    const-string p1, "lazyAnalytics"

    .line 16
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public n()Le/a/q2/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/background_work/JointActionsWorker;->a:Lo3/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "lazyAnalytics.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/a/q2/a;

    return-object v0

    :cond_0
    const-string v0, "lazyAnalytics"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public o()Le/a/u3/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/background_work/JointActionsWorker;->b:Le/a/u3/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "featuresRegistry"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/background_work/JointActionsWorker;->e:Le/a/y2/e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public r()Landroidx/work/ListenableWorker$a;
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/truecaller/background_work/JointActionsWorker;->e:Le/a/y2/e;

    .line 2
    iget-object v2, v1, Le/a/y2/e;->a:Ln3/m0/f;

    const-string v3, "$this$readBucket"

    .line 3
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "wa_bucket_period"

    .line 4
    invoke-virtual {v2, v3}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    sget-object v5, Lcom/truecaller/background_work/WorkActionPeriod;->Companion:Lcom/truecaller/background_work/WorkActionPeriod$a;

    const-string v6, "it"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "name"

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-static {v3}, Lcom/truecaller/background_work/WorkActionPeriod;->valueOf(Ljava/lang/String;)Lcom/truecaller/background_work/WorkActionPeriod;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 7
    iget-object v2, v2, Ln3/m0/f;->a:Ljava/util/Map;

    const-string v5, "wa_bucket_internetRequired"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    instance-of v5, v2, Ljava/lang/Byte;

    const/16 v6, -0x80

    if-eqz v5, :cond_0

    .line 9
    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    goto :goto_1

    :cond_0
    move v2, v6

    .line 10
    :goto_1
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v5

    if-ne v5, v6, :cond_1

    move v5, v4

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    if-lez v2, :cond_3

    move v2, v4

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    .line 13
    :goto_4
    new-instance v5, Le/a/y2/g;

    invoke-direct {v5, v3, v2}, Le/a/y2/g;-><init>(Lcom/truecaller/background_work/WorkActionPeriod;Z)V

    goto :goto_5

    :cond_4
    const/4 v5, 0x0

    :goto_5
    const-string v2, "Result.success()"

    const-string v3, "WorkAction "

    if-eqz v5, :cond_1d

    .line 14
    iget-object v6, v1, Le/a/y2/e;->d:Le/a/y2/l;

    invoke-interface {v6, v5}, Le/a/y2/l;->b(Le/a/y2/g;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_6

    :cond_5
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_1c

    .line 15
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 17
    check-cast v10, Le/a/y2/k;

    .line 18
    invoke-virtual {v10}, Le/a/y2/k;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 19
    :cond_6
    iget-object v9, v5, Le/a/y2/g;->b:Lcom/truecaller/background_work/WorkActionPeriod;

    .line 20
    iget-boolean v10, v5, Le/a/y2/g;->c:Z

    .line 21
    iget v11, v1, Le/a/y2/e;->b:I

    if-lez v11, :cond_7

    move v11, v4

    goto :goto_8

    :cond_7
    const/4 v11, 0x0

    :goto_8
    const-string v12, "Result.failure()"

    const/16 v13, 0x10

    if-nez v11, :cond_9

    .line 22
    invoke-static {v6, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-static {v7}, Le/q/f/a/d/a;->Y1(I)I

    move-result v7

    if-ge v7, v13, :cond_8

    goto :goto_9

    :cond_8
    move v13, v7

    .line 23
    :goto_9
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, v13}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 24
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 25
    check-cast v8, Le/a/y2/k;

    .line 26
    invoke-virtual {v8}, Le/a/y2/k;->b()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8}, Le/m/d/y/n;->F0(Le/a/y2/k;)Landroidx/work/ListenableWorker$a;

    move-result-object v8

    invoke-interface {v7, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_9
    if-ne v11, v4, :cond_1b

    .line 27
    invoke-virtual {v1}, Le/a/y2/e;->a()Le/a/y2/p/c;

    move-result-object v11

    invoke-virtual {v11, v9, v10, v7}, Le/a/y2/p/c;->c(Lcom/truecaller/background_work/WorkActionPeriod;ZLjava/util/Collection;)Ljava/util/List;

    move-result-object v7

    .line 28
    invoke-static {v6, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-static {v8}, Le/q/f/a/d/a;->Y1(I)I

    move-result v8

    if-ge v8, v13, :cond_a

    goto :goto_b

    :cond_a
    move v13, v8

    .line 29
    :goto_b
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8, v13}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 30
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 31
    check-cast v11, Le/a/y2/k;

    .line 32
    invoke-virtual {v11}, Le/a/y2/k;->b()Ljava/lang/String;

    move-result-object v13

    .line 33
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v15

    check-cast v16, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;

    invoke-virtual {v11}, Le/a/y2/k;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->getActionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_e

    :cond_b
    move-object/from16 v0, p0

    const/4 v4, 0x1

    goto :goto_d

    :cond_c
    const/4 v15, 0x0

    .line 34
    :goto_e
    check-cast v15, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;

    if-nez v15, :cond_d

    .line 35
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    goto :goto_12

    .line 36
    :cond_d
    invoke-static {v11}, Le/m/d/y/n;->F0(Le/a/y2/k;)Landroidx/work/ListenableWorker$a;

    move-result-object v0

    .line 37
    instance-of v4, v0, Landroidx/work/ListenableWorker$a$b;

    if-eqz v4, :cond_f

    invoke-virtual {v15}, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->getRetriedTimes()I

    move-result v4

    const/4 v11, 0x1

    add-int/2addr v4, v11

    invoke-virtual {v9}, Lcom/truecaller/background_work/WorkActionPeriod;->getMaxRetryCount()I

    move-result v11

    if-ge v4, v11, :cond_e

    goto :goto_f

    :cond_e
    const/4 v4, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v4, 0x1

    :goto_10
    if-eqz v4, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_11

    goto :goto_12

    .line 38
    :cond_11
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    .line 39
    invoke-static {v0, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_12
    const-string v4, "if (pastResult == null) \u2026e()\n                    }"

    .line 40
    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    const/4 v4, 0x1

    goto :goto_c

    :cond_12
    move-object v7, v8

    :cond_13
    const-string v0, "Join tasks execution result:\n"

    .line 41
    invoke-static {v3, v0}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget-object v23, Le/a/y2/b;->b:Le/a/y2/b;

    const/16 v24, 0x1e

    const-string v18, "\n"

    invoke-static/range {v17 .. v24}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    .line 42
    invoke-static {v4}, Le/a/n3/a/b;->a([Ljava/lang/Object;)V

    .line 43
    invoke-static {v7}, Ls1/u/i;->i(Ljava/util/Map;)Ls1/e0/k;

    move-result-object v0

    .line 44
    sget-object v4, Le/a/y2/c;->b:Le/a/y2/c;

    invoke-static {v0, v4}, Ls1/e0/x;->f(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    .line 45
    sget-object v4, Le/a/y2/d;->b:Le/a/y2/d;

    invoke-static {v0, v4}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    .line 46
    invoke-static {v0}, Ls1/e0/x;->r(Ls1/e0/k;)Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_14

    .line 48
    invoke-virtual {v1}, Le/a/y2/e;->a()Le/a/y2/p/c;

    move-result-object v3

    invoke-virtual {v3, v0, v9, v10}, Le/a/y2/p/c;->a(Ljava/util/List;Lcom/truecaller/background_work/WorkActionPeriod;Z)V

    .line 49
    invoke-virtual {v1}, Le/a/y2/e;->a()Le/a/y2/p/c;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Le/a/y2/p/c;->f(Ljava/util/List;Le/a/y2/g;)V

    goto :goto_13

    .line 50
    :cond_14
    invoke-virtual {v1}, Le/a/y2/e;->a()Le/a/y2/p/c;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Le/a/y2/p/c;->b(Lcom/truecaller/background_work/WorkActionPeriod;Z)V

    .line 51
    :goto_13
    iget-object v1, v1, Le/a/y2/e;->c:Le/a/q2/a;

    if-eqz v1, :cond_15

    .line 52
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 53
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/ListenableWorker$a;

    .line 54
    new-instance v8, Le/a/y2/f;

    .line 55
    invoke-static {v4}, Le/m/d/y/n;->k(Landroidx/work/ListenableWorker$a;)Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    .line 57
    invoke-direct {v8, v5, v4, v11, v10}, Le/a/y2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    invoke-static {v8, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    goto :goto_14

    .line 59
    :cond_15
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_16

    .line 60
    new-instance v0, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    const-string v1, "Result.retry()"

    .line 61
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 62
    :cond_16
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_15

    .line 63
    :cond_17
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/work/ListenableWorker$a;

    .line 64
    instance-of v3, v3, Landroidx/work/ListenableWorker$a$a;

    if-eqz v3, :cond_18

    move v4, v1

    goto :goto_16

    :cond_19
    :goto_15
    move v4, v6

    :goto_16
    if-eqz v4, :cond_1a

    .line 65
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    .line 66
    invoke-static {v0, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_17

    .line 67
    :cond_1a
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 68
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_17

    .line 69
    :cond_1b
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 70
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "no actions provided for bucket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 72
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_17

    :cond_1d
    const-string v0, "no correct bucket was found in "

    .line 73
    invoke-static {v3, v0}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Le/a/y2/e;->a:Ln3/m0/f;

    invoke-virtual {v1}, Ln3/m0/f;->d()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 75
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_17
    return-object v0
.end method
