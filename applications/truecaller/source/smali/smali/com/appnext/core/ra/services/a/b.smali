.class public final Lcom/appnext/core/ra/services/a/b;
.super Lcom/appnext/core/ra/services/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/appnext/core/ra/services/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/os/Bundle;)Ln3/m0/f;
    .locals 4

    const-string v0, "more_data"

    const-string v1, "action"

    .line 31
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 32
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 35
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance p0, Ln3/m0/f;

    invoke-direct {p0, v2}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 37
    invoke-static {p0}, Ln3/m0/f;->g(Ln3/m0/f;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v0, "RecentAppsWorkManagerLogic$createDataFromBundle"

    .line 38
    invoke-static {v0, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final F(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/appnext/core/ra/services/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Ln3/m0/c0/t/m;

    invoke-direct {v2, v1, p1}, Ln3/m0/c0/t/m;-><init>(Ln3/m0/c0/l;Ljava/lang/String;)V

    .line 5
    iget-object p1, v1, Ln3/m0/c0/l;->d:Ln3/m0/c0/t/x/a;

    check-cast p1, Ln3/m0/c0/t/x/b;

    .line 6
    iget-object p1, p1, Ln3/m0/c0/t/x/b;->a:Ln3/m0/c0/t/k;

    .line 7
    invoke-virtual {p1, v2}, Ln3/m0/c0/t/k;->execute(Ljava/lang/Runnable;)V

    .line 8
    iget-object p1, v2, Ln3/m0/c0/t/o;->a:Ln3/m0/c0/t/w/c;

    .line 9
    invoke-virtual {p1}, Ln3/m0/c0/t/w/a;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ln3/m0/c0/t/w/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/m0/x;

    .line 11
    iget-object v1, v1, Ln3/m0/x;->b:Ln3/m0/x$a;

    .line 12
    sget-object v2, Ln3/m0/x$a;->b:Ln3/m0/x$a;

    if-eq v1, v2, :cond_2

    sget-object v2, Ln3/m0/x$a;->a:Ln3/m0/x$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0

    :catchall_0
    move-exception p1

    const-string v1, "RecentAppsWorkManagerLogic$isRAServicesScheduled"

    .line 13
    invoke-static {v1, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final G(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/appnext/core/ra/services/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ln3/m0/c0/l;->e(Ljava/lang/String;)Ln3/m0/s;

    return-void
.end method

.method public final a(Lcom/appnext/core/ra/b/a;)V
    .locals 12

    .line 1
    const-class v0, Lcom/appnext/core/ra/services/RecentAppsWorkManagerService;

    :try_start_0
    invoke-virtual {p1}, Lcom/appnext/core/ra/b/a;->aP()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/appnext/core/ra/services/a/b;->a(Landroid/os/Bundle;)Ln3/m0/f;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/appnext/core/ra/b/a;->aT()Lcom/appnext/core/ra/services/a$a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lcom/appnext/core/ra/b/a;->aU()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 4
    new-instance p1, Ln3/m0/r$a;

    invoke-direct {p1, v0}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 5
    invoke-virtual {p1, v1}, Ln3/m0/z$a;->g(Ln3/m0/f;)Ln3/m0/z$a;

    move-result-object p1

    check-cast p1, Ln3/m0/r$a;

    .line 6
    invoke-virtual {p1, v1}, Ln3/m0/z$a;->g(Ln3/m0/f;)Ln3/m0/z$a;

    move-result-object p1

    check-cast p1, Ln3/m0/r$a;

    invoke-virtual {p1, v2}, Ln3/m0/z$a;->a(Ljava/lang/String;)Ln3/m0/z$a;

    move-result-object p1

    check-cast p1, Ln3/m0/r$a;

    .line 7
    invoke-virtual {p1}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object p1

    check-cast p1, Ln3/m0/r;

    .line 8
    invoke-virtual {p0}, Lcom/appnext/core/ra/services/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    .line 10
    sget-object v1, Ln3/m0/h;->c:Ln3/m0/h;

    .line 11
    invoke-virtual {v0, v2, v1, p1}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    goto/16 :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/appnext/core/ra/b/a;->aU()J

    move-result-wide v3

    .line 13
    invoke-virtual {p1}, Lcom/appnext/core/ra/b/a;->aU()J

    move-result-wide v7

    cmp-long v7, v7, v5

    const-wide/32 v8, 0xdbba0

    if-ltz v7, :cond_1

    invoke-virtual {p1}, Lcom/appnext/core/ra/b/a;->aU()J

    move-result-wide v10

    cmp-long v7, v10, v5

    if-lez v7, :cond_2

    invoke-virtual {p1}, Lcom/appnext/core/ra/b/a;->aU()J

    move-result-wide v10

    cmp-long v7, v10, v8

    if-gez v7, :cond_2

    :cond_1
    move-wide v3, v8

    .line 14
    :cond_2
    new-instance v7, Ln3/m0/d$a;

    invoke-direct {v7}, Ln3/m0/d$a;-><init>()V

    .line 15
    sget-object v8, Ln3/m0/q;->b:Ln3/m0/q;

    .line 16
    iput-object v8, v7, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 17
    new-instance v8, Ln3/m0/d;

    invoke-direct {v8, v7}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 18
    new-instance v7, Ln3/m0/u$a;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v7, v0, v3, v4, v9}, Ln3/m0/u$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 19
    iget-object v0, v7, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v8, v0, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 20
    check-cast v7, Ln3/m0/u$a;

    .line 21
    invoke-virtual {v7, v1}, Ln3/m0/z$a;->g(Ln3/m0/f;)Ln3/m0/z$a;

    move-result-object v0

    check-cast v0, Ln3/m0/u$a;

    .line 22
    invoke-virtual {v0, v2}, Ln3/m0/z$a;->a(Ljava/lang/String;)Ln3/m0/z$a;

    move-result-object v0

    check-cast v0, Ln3/m0/u$a;

    .line 23
    invoke-virtual {p1}, Lcom/appnext/core/ra/b/a;->aV()J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-lez v1, :cond_3

    .line 24
    invoke-virtual {p1}, Lcom/appnext/core/ra/b/a;->aV()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 25
    invoke-virtual {v0, v3, v4, v9}, Ln3/m0/z$a;->f(JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;

    .line 26
    :cond_3
    invoke-virtual {p0}, Lcom/appnext/core/ra/services/a/a;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 27
    invoke-static {p1}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object p1

    .line 28
    sget-object v1, Ln3/m0/g;->a:Ln3/m0/g;

    .line 29
    invoke-virtual {v0}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    check-cast v0, Ln3/m0/u;

    invoke-virtual {p1, v2, v1, v0}, Ln3/m0/c0/l;->h(Ljava/lang/String;Ln3/m0/g;Ln3/m0/u;)Ln3/m0/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "RecentAppsWorkManagerLogic$scheduleEvent"

    .line 30
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/core/ra/b/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appnext/core/ra/b/a;

    .line 3
    invoke-virtual {v3}, Lcom/appnext/core/ra/b/a;->aP()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/appnext/core/ra/services/a/b;->a(Landroid/os/Bundle;)Ln3/m0/f;

    move-result-object v4

    .line 4
    new-instance v5, Ln3/m0/r$a;

    const-class v6, Lcom/appnext/core/ra/services/RecentAppsWorkManagerService;

    invoke-direct {v5, v6}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 5
    invoke-virtual {v5, v4}, Ln3/m0/z$a;->g(Ln3/m0/f;)Ln3/m0/z$a;

    move-result-object v5

    check-cast v5, Ln3/m0/r$a;

    .line 6
    invoke-virtual {v5, v4}, Ln3/m0/z$a;->g(Ln3/m0/f;)Ln3/m0/z$a;

    move-result-object v4

    check-cast v4, Ln3/m0/r$a;

    invoke-virtual {v3}, Lcom/appnext/core/ra/b/a;->aT()Lcom/appnext/core/ra/services/a$a;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ln3/m0/z$a;->a(Ljava/lang/String;)Ln3/m0/z$a;

    move-result-object v3

    check-cast v3, Ln3/m0/r$a;

    .line 7
    invoke-virtual {v3}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v3

    check-cast v3, Ln3/m0/r;

    if-nez v2, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/appnext/core/ra/services/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 9
    invoke-static {v1}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v3}, Ln3/m0/y;->c(Ln3/m0/r;)Ln3/m0/w;

    move-result-object v1

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v1, v3}, Ln3/m0/w;->b(Ln3/m0/r;)Ln3/m0/w;

    move-result-object v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v1}, Ln3/m0/w;->a()Ln3/m0/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "RecentAppsWorkManagerLogic$scheduleEventsOrdered"

    .line 13
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
