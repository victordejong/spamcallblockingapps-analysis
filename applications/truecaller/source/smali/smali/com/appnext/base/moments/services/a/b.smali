.class public final Lcom/appnext/base/moments/services/a/b;
.super Lcom/appnext/base/moments/services/a/a;
.source "SourceFile"


# instance fields
.field private aM:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/appnext/base/moments/services/a/a;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/base/moments/services/a/b;->aM:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "WorkManagerLogic$WorkManagerLogic"

    .line 3
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static e(Lcom/appnext/base/moments/a/a/c;)Ln3/m0/f;
    .locals 4

    const-string v0, "key"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/appnext/base/moments/a/a/c;->af()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/appnext/base/moments/a/a/c;->af()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/appnext/base/moments/a/a/c;->ad()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/appnext/base/moments/a/a/c;->ad()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cycle"

    .line 7
    invoke-virtual {p0}, Lcom/appnext/base/moments/a/a/c;->ab()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cycle_type"

    .line 9
    invoke-virtual {p0}, Lcom/appnext/base/moments/a/a/c;->ac()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sample"

    .line 11
    invoke-virtual {p0}, Lcom/appnext/base/moments/a/a/c;->Z()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sample_type"

    .line 13
    invoke-virtual {p0}, Lcom/appnext/base/moments/a/a/c;->aa()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "service_key"

    .line 15
    invoke-virtual {p0}, Lcom/appnext/base/moments/a/a/c;->ae()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "status"

    .line 17
    invoke-virtual {p0}, Lcom/appnext/base/moments/a/a/c;->Y()Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "data"

    .line 19
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance p0, Ln3/m0/f;

    invoke-direct {p0, v2}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 22
    invoke-static {p0}, Ln3/m0/f;->g(Ln3/m0/f;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v0, "WorkManagerLogic$createDataFromConfigDataModel"

    .line 23
    invoke-static {v0, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/appnext/base/moments/a/a/c;JJ)V
    .locals 5

    .line 1
    const-class v0, Lcom/appnext/base/moments/services/OperationWorkManager;

    :try_start_0
    invoke-static {p1}, Lcom/appnext/base/moments/services/a/b;->e(Lcom/appnext/base/moments/a/a/c;)Ln3/m0/f;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_0

    .line 2
    new-instance p2, Ln3/m0/r$a;

    invoke-direct {p2, v0}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p2, v1}, Ln3/m0/z$a;->g(Ln3/m0/f;)Ln3/m0/z$a;

    move-result-object p2

    check-cast p2, Ln3/m0/r$a;

    .line 4
    invoke-virtual {p2, v1}, Ln3/m0/z$a;->g(Ln3/m0/f;)Ln3/m0/z$a;

    move-result-object p2

    check-cast p2, Ln3/m0/r$a;

    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/c;->ad()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ln3/m0/z$a;->a(Ljava/lang/String;)Ln3/m0/z$a;

    move-result-object p2

    check-cast p2, Ln3/m0/r$a;

    .line 5
    invoke-virtual {p2}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object p2

    check-cast p2, Ln3/m0/r;

    .line 6
    iget-object p3, p0, Lcom/appnext/base/moments/services/a/b;->aM:Landroid/content/Context;

    .line 7
    invoke-static {p3}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object p3

    .line 8
    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/c;->ad()Ljava/lang/String;

    move-result-object p1

    sget-object p4, Ln3/m0/h;->a:Ln3/m0/h;

    invoke-virtual {p3, p1, p4, p2}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0xdbba0

    if-ltz v2, :cond_1

    if-lez v2, :cond_2

    cmp-long v2, p4, v3

    if-gez v2, :cond_2

    :cond_1
    move-wide p4, v3

    .line 9
    :cond_2
    new-instance v2, Ln3/m0/u$a;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v0, p4, p5, v3}, Ln3/m0/u$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 10
    invoke-virtual {v2, v1}, Ln3/m0/z$a;->g(Ln3/m0/f;)Ln3/m0/z$a;

    move-result-object p4

    check-cast p4, Ln3/m0/u$a;

    .line 11
    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/c;->ad()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ln3/m0/z$a;->a(Ljava/lang/String;)Ln3/m0/z$a;

    move-result-object p4

    check-cast p4, Ln3/m0/u$a;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long p5, p2, v0

    if-lez p5, :cond_3

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/32 v0, 0xea60

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 14
    invoke-virtual {p4, p2, p3, v3}, Ln3/m0/z$a;->f(JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;

    .line 15
    :cond_3
    iget-object p2, p0, Lcom/appnext/base/moments/services/a/b;->aM:Landroid/content/Context;

    .line 16
    invoke-static {p2}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object p2

    .line 17
    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/c;->ad()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Ln3/m0/g;->a:Ln3/m0/g;

    invoke-virtual {p4}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object p4

    check-cast p4, Ln3/m0/u;

    invoke-virtual {p2, p1, p3, p4}, Ln3/m0/c0/l;->h(Ljava/lang/String;Ln3/m0/g;Ln3/m0/u;)Ln3/m0/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "WorkManagerLogic$scheduleOperation"

    .line 18
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final d(Lcom/appnext/base/moments/a/a/c;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/base/moments/services/a/b;->aM:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/c;->ae()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Ln3/m0/c0/t/b;

    invoke-direct {v1, v0, p1}, Ln3/m0/c0/t/b;-><init>(Ln3/m0/c0/l;Ljava/lang/String;)V

    .line 6
    iget-object p1, v0, Ln3/m0/c0/l;->d:Ln3/m0/c0/t/x/a;

    check-cast p1, Ln3/m0/c0/t/x/b;

    .line 7
    iget-object p1, p1, Ln3/m0/c0/t/x/b;->a:Ln3/m0/c0/t/k;

    invoke-virtual {p1, v1}, Ln3/m0/c0/t/k;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "WorkManagerLogic$cancelOperationLogic"

    .line 8
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
