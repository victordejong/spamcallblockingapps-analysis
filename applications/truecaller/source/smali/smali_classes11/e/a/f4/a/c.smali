.class public final Le/a/f4/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f4/a/b;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Lu3/e0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/l4/h;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/y2/l;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/z0/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/q2/a0;",
            ">;",
            "Lo3/a<",
            "Lu3/e0;",
            ">;",
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/l4/h;",
            ">;>;",
            "Lo3/a<",
            "Le/a/y2/l;",
            ">;",
            "Lo3/a<",
            "Le/a/q2/z0/b;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "eventsTracker"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsNetworkClient"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presenceManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workActionFactory"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "heartBeatReporter"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f4/a/c;->a:Lo3/a;

    iput-object p2, p0, Le/a/f4/a/c;->b:Lo3/a;

    iput-object p3, p0, Le/a/f4/a/c;->c:Lo3/a;

    iput-object p4, p0, Le/a/f4/a/c;->d:Lo3/a;

    iput-object p5, p0, Le/a/f4/a/c;->e:Lo3/a;

    iput-object p6, p0, Le/a/f4/a/c;->f:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Z)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Le/a/f4/a/c;->c(ZZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string v0, "Promise.wrap(deactivateAccount(deleteData, false))"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b(Z)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Le/a/f4/a/c;->c(ZZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string v0, "Promise.wrap(deactivateAccount(deleteData, true))"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(ZZ)Z
    .locals 6

    .line 1
    const-class v0, Le/a/n2/a/c;

    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/TrueApp;->W()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v1, p0, Le/a/f4/a/c;->e:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "workActionFactory.get()"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Le/a/y2/l;

    const-string v3, "factory"

    .line 3
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 5
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "exec_one_off"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v4, Ln3/m0/f;

    invoke-direct {v4, v3}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 7
    invoke-static {v4}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    const-string v3, "Data.Builder().putBoolea\u2026DE_ONE_OFF, true).build()"

    .line 8
    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "AppSettingsWorkAction"

    .line 9
    invoke-interface {v1, v3, v4}, Le/a/y2/l;->a(Ljava/lang/String;Ln3/m0/f;)Le/a/y2/k;

    move-result-object v1

    invoke-static {v1}, Le/m/d/y/n;->F0(Le/a/y2/k;)Landroidx/work/ListenableWorker$a;

    .line 10
    iget-object v1, p0, Le/a/f4/a/c;->f:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/q2/z0/b;

    sget-object v3, Lcom/truecaller/analytics/heartbeat/HeartBeatType;->Deactivation:Lcom/truecaller/analytics/heartbeat/HeartBeatType;

    invoke-interface {v1, v3}, Le/a/q2/z0/b;->c(Lcom/truecaller/analytics/heartbeat/HeartBeatType;)Landroidx/work/ListenableWorker$a;

    .line 11
    iget-object v1, p0, Le/a/f4/a/c;->a:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/q2/a0;

    iget-object v3, p0, Le/a/f4/a/c;->b:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu3/e0;

    invoke-interface {v1, v3}, Le/a/q2/a0;->c(Lu3/e0;)Le/a/r2/x;

    .line 12
    iget-object v1, p0, Le/a/f4/a/c;->d:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l4/h;

    invoke-interface {v1}, Le/a/l4/h;->b()Le/a/r2/x;

    move-result-object v1

    invoke-virtual {v1}, Le/a/r2/x;->c()Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 13
    :try_start_0
    sget-object p1, Lcom/truecaller/common/network/util/KnownEndpoints;->ACCOUNT:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {p1, v0}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/n2/a/c;

    invoke-interface {p1}, Le/a/n2/a/c;->i()Lx3/b;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    const-string v0, "AccountRestAdapter.deactivateAndDelete().execute()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_1
    sget-object p1, Lcom/truecaller/common/network/util/KnownEndpoints;->ACCOUNT:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {p1, v0}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/n2/a/c;

    invoke-interface {p1}, Le/a/n2/a/c;->deactivate()Lx3/b;

    move-result-object p1

    .line 16
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    const-string v0, "AccountRestAdapter.deactivate().execute()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    :goto_0
    invoke-virtual {p1}, Lx3/a0;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 18
    iget-object p1, p0, Le/a/f4/a/c;->c:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b0/e/l;

    invoke-interface {p1}, Le/a/b0/e/l;->o()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 20
    :try_start_1
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v1

    sget-object v3, Lcom/truecaller/common/account/analytics/LogoutContext;->DEACTIVATE:Lcom/truecaller/common/account/analytics/LogoutContext;

    invoke-virtual {v1, p1, v0, p2, v3}, Lcom/truecaller/TrueApp;->d0(Ljava/lang/String;ZZLcom/truecaller/common/account/analytics/LogoutContext;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    new-array p2, v2, [Ljava/lang/String;

    .line 21
    invoke-static {p1, p2}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_2
    return v0

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_4

    .line 22
    :goto_3
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 23
    :goto_4
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    return v2
.end method
