.class public final Le/a/f/z/r$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/z/r;->init()V
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
    c = "com.truecaller.incallui.utils.InCallUIFeatureWatchDogImpl$init$1"
    f = "InCallUIFeatureWatchDog.kt"
    l = {
        0x44
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/f/z/r;


# direct methods
.method public constructor <init>(Le/a/f/z/r;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/z/r$a;->f:Le/a/f/z/r;

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

    new-instance p1, Le/a/f/z/r$a;

    iget-object v0, p0, Le/a/f/z/r$a;->f:Le/a/f/z/r;

    invoke-direct {p1, v0, p2}, Le/a/f/z/r$a;-><init>(Le/a/f/z/r;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f/z/r$a;

    iget-object v0, p0, Le/a/f/z/r$a;->f:Le/a/f/z/r;

    invoke-direct {p1, v0, p2}, Le/a/f/z/r$a;-><init>(Le/a/f/z/r;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/f/z/r$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/f/z/r$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/f/z/r$a;->f:Le/a/f/z/r;

    iput v3, p0, Le/a/f/z/r$a;->e:I

    .line 5
    iget-object v2, p1, Le/a/f/z/r;->g:Le/a/p5/l;

    iget-object v4, p1, Le/a/f/z/r;->e:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/u3/g;

    .line 6
    iget-object v5, v4, Le/a/u3/g;->s1:Le/a/u3/g$a;

    sget-object v6, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v7, 0x7a

    aget-object v6, v6, v7

    invoke-virtual {v5, v4, v6}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v4

    check-cast v4, Le/a/u3/i;

    .line 7
    invoke-interface {v4}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v4

    .line 8
    const-class v5, Lcom/truecaller/incallui/utils/WatchDogConfig;

    invoke-interface {v2, v4, v5}, Le/a/p5/l;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/incallui/utils/WatchDogConfig;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    new-instance v2, Lcom/truecaller/incallui/utils/WatchDogConfig;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xf

    const/4 v11, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lcom/truecaller/incallui/utils/WatchDogConfig;-><init>(ZIJZILs1/z/c/f;)V

    :goto_0
    iput-object v2, p1, Le/a/f/z/r;->c:Lcom/truecaller/incallui/utils/WatchDogConfig;

    const-string v2, "Current config for watchdog: "

    .line 10
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Le/a/f/z/r;->c:Lcom/truecaller/incallui/utils/WatchDogConfig;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 11
    iget-object v2, p1, Le/a/f/z/r;->c:Lcom/truecaller/incallui/utils/WatchDogConfig;

    invoke-virtual {v2}, Lcom/truecaller/incallui/utils/WatchDogConfig;->getEnabled()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_3

    .line 12
    invoke-virtual {p1}, Le/a/f/z/r;->a()V

    .line 13
    invoke-virtual {p1}, Le/a/f/z/r;->b()V

    goto :goto_1

    .line 14
    :cond_3
    iget-object v2, p1, Le/a/f/z/r;->c:Lcom/truecaller/incallui/utils/WatchDogConfig;

    invoke-virtual {v2}, Lcom/truecaller/incallui/utils/WatchDogConfig;->getListenMultiSimDevices()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Le/a/f/z/r;->n:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/e4/p;

    invoke-interface {v2}, Le/a/e4/p;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    invoke-virtual {p1}, Le/a/f/z/r;->a()V

    .line 16
    invoke-virtual {p1}, Le/a/f/z/r;->b()V

    :goto_1
    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    if-nez v2, :cond_5

    goto/16 :goto_5

    .line 17
    :cond_5
    :try_start_0
    iget-object v2, p1, Le/a/f/z/r;->c:Lcom/truecaller/incallui/utils/WatchDogConfig;

    invoke-virtual {v2}, Lcom/truecaller/incallui/utils/WatchDogConfig;->getDisableAfterFailureDuration()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-gtz v2, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    iget-object v2, p1, Le/a/f/z/r;->j:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/f/z/y;

    const-string v9, "watchDogInCallUIDisabledTimestamp"

    invoke-interface {v2, v9, v7, v8}, Le/a/f/z/y;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v2, v9, v7

    if-gtz v2, :cond_7

    goto :goto_3

    .line 19
    :cond_7
    iget-object v2, p1, Le/a/f/z/r;->k:Le/a/p5/c;

    invoke-interface {v2}, Le/a/p5/c;->c()J

    move-result-wide v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v11, v9

    cmp-long v2, v11, v7

    if-gtz v2, :cond_8

    goto :goto_3

    :cond_8
    cmp-long v2, v11, v5

    if-ltz v2, :cond_9

    .line 20
    :goto_3
    invoke-virtual {p1}, Le/a/f/z/r;->a()V

    move v2, v4

    goto :goto_4

    :cond_9
    move v2, v3

    :goto_4
    if-eqz v2, :cond_a

    goto :goto_5

    .line 21
    :cond_a
    iget-object v2, p1, Le/a/f/z/r;->h:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/f/m;

    invoke-interface {v2}, Le/a/f/m;->c()Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_5

    .line 22
    :cond_b
    iget-object v2, p1, Le/a/f/z/r;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_5

    .line 23
    :cond_c
    iget-object v2, p1, Le/a/f/z/r;->f:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/p5/v0/b;

    const/4 v3, 0x0

    .line 24
    invoke-interface {v2, v3}, Le/a/p5/v0/b;->e(Ljava/lang/Integer;)Lq3/a/x2/f;

    move-result-object v2

    .line 25
    new-instance v4, Le/a/f/z/s;

    invoke-direct {v4, p1, v3}, Le/a/f/z/s;-><init>(Le/a/f/z/r;Ls1/w/d;)V

    invoke-static {v2, v4, p0}, Ls1/a/a/a/v0/f/d;->g0(Lq3/a/x2/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d

    goto :goto_6

    :cond_d
    :goto_5
    move-object p1, v0

    :goto_6
    if-ne p1, v1, :cond_e

    return-object v1

    :cond_e
    :goto_7
    return-object v0

    :catchall_0
    move-exception v0

    .line 26
    invoke-virtual {p1}, Le/a/f/z/r;->a()V

    throw v0
.end method
