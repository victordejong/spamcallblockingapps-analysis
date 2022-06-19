.class Lzendesk/core/CachingInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/z;


# instance fields
.field private final cache:Lzendesk/core/BaseStorage;

.field private final locks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lzendesk/core/BaseStorage;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzendesk/core/CachingInterceptor;->locks:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lzendesk/core/CachingInterceptor;->cache:Lzendesk/core/BaseStorage;

    return-void
.end method

.method private createResponse(ILm/e0;Lm/h0;)Lm/g0;
    .locals 3

    .line 1
    new-instance v0, Lm/g0$a;

    invoke-direct {v0}, Lm/g0$a;-><init>()V

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {v0, p3}, Lm/g0$a;->b(Lm/h0;)Lm/g0$a;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v1, "CachingInterceptor"

    const-string v2, "Response body is null"

    .line 3
    invoke-static {v1, v2, p3}, Lg/k/b/a;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Lm/g0$a;->g(I)Lm/g0$a;

    .line 5
    invoke-virtual {p2}, Lm/e0;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lm/g0$a;->m(Ljava/lang/String;)Lm/g0$a;

    .line 6
    invoke-virtual {v0, p2}, Lm/g0$a;->r(Lm/e0;)Lm/g0$a;

    sget-object p1, Lm/d0;->HTTP_1_1:Lm/d0;

    .line 7
    invoke-virtual {v0, p1}, Lm/g0$a;->p(Lm/d0;)Lm/g0$a;

    .line 8
    invoke-virtual {v0}, Lm/g0$a;->c()Lm/g0;

    move-result-object p1

    return-object p1
.end method

.method private loadData(Ljava/lang/String;Lm/z$a;)Lm/g0;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/core/CachingInterceptor;->cache:Lzendesk/core/BaseStorage;

    const-class v1, Lm/h0;

    invoke-interface {v0, p1, v1}, Lzendesk/core/BaseStorage;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/h0;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "CachingInterceptor"

    const-string v4, "Response not cached, loading it from the network. | %s"

    .line 2
    invoke-static {v3, v4, v1}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-interface {p2}, Lm/z$a;->request()Lm/e0;

    move-result-object v1

    invoke-interface {p2, v1}, Lm/z$a;->a(Lm/e0;)Lm/g0;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lm/g0;->y()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v1}, Lm/g0;->a()Lm/h0;

    move-result-object v0

    invoke-virtual {v0}, Lm/h0;->contentType()Lm/a0;

    move-result-object v0

    .line 6
    invoke-virtual {v1}, Lm/g0;->a()Lm/h0;

    move-result-object v2

    invoke-virtual {v2}, Lm/h0;->bytes()[B

    move-result-object v2

    .line 7
    iget-object v3, p0, Lzendesk/core/CachingInterceptor;->cache:Lzendesk/core/BaseStorage;

    invoke-static {v0, v2}, Lm/h0;->create(Lm/a0;[B)Lm/h0;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lzendesk/core/BaseStorage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-static {v0, v2}, Lm/h0;->create(Lm/a0;[B)Lm/h0;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Unable to load data from network. | %s"

    .line 9
    invoke-static {v3, p1, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v1}, Lm/g0;->a()Lm/h0;

    move-result-object p1

    :goto_0
    move-object v0, p1

    .line 11
    invoke-virtual {v1}, Lm/g0;->f()I

    move-result p1

    goto :goto_1

    :cond_1
    const/16 p1, 0xc8

    .line 12
    :goto_1
    invoke-interface {p2}, Lm/z$a;->request()Lm/e0;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lzendesk/core/CachingInterceptor;->createResponse(ILm/e0;Lm/h0;)Lm/g0;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public intercept(Lm/z$a;)Lm/g0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lm/z$a;->request()Lm/e0;

    move-result-object v0

    invoke-virtual {v0}, Lm/e0;->l()Lm/y;

    move-result-object v0

    invoke-virtual {v0}, Lm/y;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lzendesk/core/CachingInterceptor;->locks:Ljava/util/Map;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lzendesk/core/CachingInterceptor;->locks:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lzendesk/core/CachingInterceptor;->locks:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 6
    iget-object v3, p0, Lzendesk/core/CachingInterceptor;->locks:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 9
    invoke-direct {p0, v0, p1}, Lzendesk/core/CachingInterceptor;->loadData(Ljava/lang/String;Lm/z$a;)Lm/g0;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :catchall_1
    move-exception p1

    .line 11
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
