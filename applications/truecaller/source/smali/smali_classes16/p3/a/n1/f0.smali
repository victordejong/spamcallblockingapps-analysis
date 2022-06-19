.class public Lp3/a/n1/f0;
.super Lp3/a/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/f0$f;,
        Lp3/a/n1/f0$d;,
        Lp3/a/n1/f0$b;,
        Lp3/a/n1/f0$g;,
        Lp3/a/n1/f0$c;,
        Lp3/a/n1/f0$e;
    }
.end annotation


# static fields
.field public static final A:Lp3/a/n1/f0$g;

.field public static B:Ljava/lang/String;

.field public static final s:Ljava/util/logging/Logger;

.field public static final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final u:Ljava/lang/String;

.field public static final v:Ljava/lang/String;

.field public static final w:Ljava/lang/String;

.field public static x:Z

.field public static y:Z

.field public static z:Z


# instance fields
.field public final a:Lp3/a/c1;

.field public final b:Ljava/util/Random;

.field public volatile c:Lp3/a/n1/f0$b;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lp3/a/n1/f0$f;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Lp3/a/n1/n2$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/n1/n2$c<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final i:J

.field public final j:Lp3/a/k1;

.field public final k:Lcom/google/common/base/Stopwatch;

.field public l:Z

.field public m:Z

.field public n:Ljava/util/concurrent/Executor;

.field public final o:Z

.field public final p:Lp3/a/r0$f;

.field public q:Z

.field public r:Lp3/a/r0$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const-class v0, Lp3/a/n1/f0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lp3/a/n1/f0;->s:Ljava/util/logging/Logger;

    .line 2
    new-instance v2, Ljava/util/HashSet;

    const-string v3, "clientLanguage"

    const-string v4, "percentage"

    const-string v5, "clientHostname"

    const-string v6, "serviceConfig"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lp3/a/n1/f0;->t:Ljava/util/Set;

    const-string v2, "io.grpc.internal.DnsNameResolverProvider.enable_jndi"

    const-string v3, "true"

    .line 5
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lp3/a/n1/f0;->u:Ljava/lang/String;

    const-string v3, "io.grpc.internal.DnsNameResolverProvider.enable_jndi_localhost"

    const-string v4, "false"

    .line 6
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lp3/a/n1/f0;->v:Ljava/lang/String;

    const-string v5, "io.grpc.internal.DnsNameResolverProvider.enable_service_config"

    .line 7
    invoke-static {v5, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lp3/a/n1/f0;->w:Ljava/lang/String;

    .line 8
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lp3/a/n1/f0;->x:Z

    .line 9
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lp3/a/n1/f0;->y:Z

    .line 10
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lp3/a/n1/f0;->z:Z

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "p3.a.n1.g1"

    const/4 v4, 0x1

    .line 12
    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lp3/a/n1/f0$g;

    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    .line 14
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp3/a/n1/f0$g;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 16
    invoke-interface {v0}, Lp3/a/n1/f0$g;->b()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 17
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 18
    invoke-interface {v0}, Lp3/a/n1/f0$g;->b()Ljava/lang/Throwable;

    move-result-object v0

    const-string v4, "JndiResourceResolverFactory not available, skipping."

    .line 19
    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    sget-object v1, Lp3/a/n1/f0;->s:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Can\'t construct JndiResourceResolverFactory, skipping."

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 21
    sget-object v1, Lp3/a/n1/f0;->s:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Can\'t find JndiResourceResolverFactory ctor, skipping."

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 22
    sget-object v1, Lp3/a/n1/f0;->s:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to cast JndiResourceResolverFactory, skipping."

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 23
    sget-object v1, Lp3/a/n1/f0;->s:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to find JndiResourceResolverFactory, skipping."

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    :goto_0
    sput-object v2, Lp3/a/n1/f0;->A:Lp3/a/n1/f0$g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lp3/a/r0$a;Lp3/a/n1/n2$c;Lcom/google/common/base/Stopwatch;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lp3/a/r0$a;",
            "Lp3/a/n1/n2$c<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/common/base/Stopwatch;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lp3/a/r0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lp3/a/n1/f0;->b:Ljava/util/Random;

    .line 3
    sget-object v0, Lp3/a/n1/f0$d;->a:Lp3/a/n1/f0$d;

    iput-object v0, p0, Lp3/a/n1/f0;->c:Lp3/a/n1/f0$b;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lp3/a/n1/f0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "args"

    .line 5
    invoke-static {p2, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lp3/a/n1/f0;->h:Lp3/a/n1/n2$c;

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "//"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "name"

    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p3

    .line 8
    invoke-virtual {p3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Invalid DNS name: %s"

    invoke-static {v0, v3, p1}, Ln3/g0/y;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p3}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nameUri (%s) doesn\'t have an authority"

    invoke-static {p1, v0, p3}, Ln3/g0/y;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp3/a/n1/f0;->e:Ljava/lang/String;

    .line 10
    invoke-virtual {p3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lp3/a/n1/f0;->f:Ljava/lang/String;

    .line 11
    invoke-virtual {p3}, Ljava/net/URI;->getPort()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 12
    iget p1, p2, Lp3/a/r0$a;->a:I

    .line 13
    iput p1, p0, Lp3/a/n1/f0;->g:I

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p3}, Ljava/net/URI;->getPort()I

    move-result p1

    iput p1, p0, Lp3/a/n1/f0;->g:I

    .line 15
    :goto_1
    iget-object p1, p2, Lp3/a/r0$a;->b:Lp3/a/c1;

    const-string p3, "proxyDetector"

    .line 16
    invoke-static {p1, p3}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp3/a/n1/f0;->a:Lp3/a/c1;

    const-wide/16 v3, 0x0

    if-eqz p5, :cond_2

    goto :goto_3

    :cond_2
    const-string p1, "networkaddress.cache.ttl"

    .line 17
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-wide/16 v5, 0x1e

    if-eqz p3, :cond_3

    .line 18
    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 19
    :catch_0
    sget-object p5, Lp3/a/n1/f0;->s:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v2

    aput-object p3, v7, v1

    const/4 p1, 0x2

    .line 20
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v7, p1

    const-string p1, "Property({0}) valid is not valid number format({1}), fall back to default({2})"

    .line 21
    invoke-virtual {p5, v0, p1, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    cmp-long p1, v5, v3

    if-lez p1, :cond_4

    .line 22
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    goto :goto_3

    :cond_4
    move-wide v3, v5

    .line 23
    :goto_3
    iput-wide v3, p0, Lp3/a/n1/f0;->i:J

    const-string p1, "stopwatch"

    .line 24
    invoke-static {p4, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lp3/a/n1/f0;->k:Lcom/google/common/base/Stopwatch;

    .line 25
    iget-object p1, p2, Lp3/a/r0$a;->c:Lp3/a/k1;

    const-string p3, "syncContext"

    .line 26
    invoke-static {p1, p3}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp3/a/n1/f0;->j:Lp3/a/k1;

    .line 27
    iget-object p1, p2, Lp3/a/r0$a;->g:Ljava/util/concurrent/Executor;

    .line 28
    iput-object p1, p0, Lp3/a/n1/f0;->n:Ljava/util/concurrent/Executor;

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    .line 29
    :goto_4
    iput-boolean v1, p0, Lp3/a/n1/f0;->o:Z

    .line 30
    iget-object p1, p2, Lp3/a/r0$a;->d:Lp3/a/r0$f;

    const-string p2, "serviceConfigParser"

    .line 31
    invoke-static {p1, p2}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp3/a/n1/f0;->p:Lp3/a/r0$f;

    return-void
.end method

.method public static e(Lp3/a/n1/f0;)Lp3/a/v;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/n1/f0;->f:Ljava/lang/String;

    iget v1, p0, Lp3/a/n1/f0;->g:I

    .line 2
    invoke-static {v0, v1}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lp3/a/n1/f0;->a:Lp3/a/c1;

    invoke-interface {p0, v0}, Lp3/a/c1;->a(Ljava/net/SocketAddress;)Lp3/a/b1;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    new-instance v0, Lp3/a/v;

    .line 5
    sget-object v1, Lp3/a/a;->b:Lp3/a/a;

    .line 6
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lp3/a/v;-><init>(Ljava/util/List;Lp3/a/a;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static g(Ljava/util/Map;Ljava/util/Random;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Random;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    sget-object v2, Lp3/a/n1/f0;->t:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Bad key: %s"

    invoke-static {v2, v3, v1}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "clientLanguage"

    .line 3
    invoke-static {p0, v0}, Lp3/a/n1/i1;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "java"

    .line 6
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-nez v0, :cond_3

    return-object v1

    :cond_3
    const-string v0, "percentage"

    .line 7
    invoke-static {p0, v0}, Lp3/a/n1/i1;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v4

    const/16 v5, 0x64

    if-ltz v4, :cond_4

    if-gt v4, v5, :cond_4

    move v6, v2

    goto :goto_2

    :cond_4
    move v6, v3

    :goto_2
    const-string v7, "Bad percentage: %s"

    .line 9
    invoke-static {v6, v7, v0}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    if-lt p1, v4, :cond_5

    return-object v1

    :cond_5
    const-string p1, "clientHostname"

    .line 11
    invoke-static {p0, p1}, Lp3/a/n1/i1;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 12
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move p1, v2

    goto :goto_3

    :cond_7
    move p1, v3

    :goto_3
    if-nez p1, :cond_8

    return-object v1

    :cond_8
    const-string p1, "serviceConfig"

    .line 15
    invoke-static {p0, p1}, Lp3/a/n1/i1;->f(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_9

    return-object p2

    .line 16
    :cond_9
    new-instance p2, Lcom/google/common/base/VerifyException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p1, v0, v2

    const-string p0, "key \'%s\' missing in \'%s\'"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static h(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "grpc_config="

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    sget-object v2, Lp3/a/n1/f0;->s:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v1, "Ignoring non service config {0}"

    invoke-virtual {v2, v3, v1, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    sget-object v2, Lp3/a/n1/h1;->a:Ljava/util/logging/Logger;

    const-string v2, "Failed to close"

    .line 7
    new-instance v3, Le/m/e/g0/a;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Le/m/e/g0/a;-><init>(Ljava/io/Reader;)V

    .line 8
    :try_start_0
    invoke-static {v3}, Lp3/a/n1/h1;->a(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-virtual {v3}, Le/m/e/g0/a;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 10
    sget-object v4, Lp3/a/n1/h1;->a:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_1
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 12
    check-cast v1, Ljava/util/List;

    .line 13
    invoke-static {v1}, Lp3/a/n1/i1;->a(Ljava/util/List;)Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    const-string v0, "wrong type "

    invoke-static {v0, v1}, Le/d/c/a/a;->x2(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 15
    :try_start_2
    invoke-virtual {v3}, Le/m/e/g0/a;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 16
    sget-object v1, Lp3/a/n1/h1;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v3, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :goto_2
    throw p0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/f0;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/f0;->r:Lp3/a/r0$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "not started"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lp3/a/n1/f0;->i()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/f0;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lp3/a/n1/f0;->m:Z

    .line 3
    iget-object v0, p0, Lp3/a/n1/f0;->n:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lp3/a/n1/f0;->o:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lp3/a/n1/f0;->h:Lp3/a/n1/n2$c;

    invoke-static {v1, v0}, Lp3/a/n1/n2;->b(Lp3/a/n1/n2$c;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lp3/a/n1/f0;->n:Ljava/util/concurrent/Executor;

    :cond_1
    return-void
.end method

.method public d(Lp3/a/r0$d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/f0;->r:Lp3/a/r0$d;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lp3/a/n1/f0;->o:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lp3/a/n1/f0;->h:Lp3/a/n1/n2$c;

    invoke-static {v0}, Lp3/a/n1/n2;->a(Lp3/a/n1/n2$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lp3/a/n1/f0;->n:Ljava/util/concurrent/Executor;

    :cond_1
    const-string v0, "listener"

    .line 4
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lp3/a/r0$d;

    iput-object p1, p0, Lp3/a/n1/f0;->r:Lp3/a/r0$d;

    .line 5
    invoke-virtual {p0}, Lp3/a/n1/f0;->i()V

    return-void
.end method

.method public f(Z)Lp3/a/n1/f0$c;
    .locals 9

    .line 1
    new-instance v0, Lp3/a/n1/f0$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp3/a/n1/f0$c;-><init>(Lp3/a/n1/f0$a;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lp3/a/n1/f0;->j()Ljava/util/List;

    move-result-object v2

    .line 3
    iput-object v2, v0, Lp3/a/n1/f0$c;->b:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lp3/a/g1;->p:Lp3/a/g1;

    const-string v1, "Unable to resolve host "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lp3/a/n1/f0;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1, v1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    invoke-virtual {p1, v2}, Lp3/a/g1;->h(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object p1

    .line 6
    iput-object p1, v0, Lp3/a/n1/f0$c;->a:Lp3/a/g1;

    return-object v0

    .line 7
    :cond_0
    :goto_0
    sget-boolean p1, Lp3/a/n1/f0;->z:Z

    if-eqz p1, :cond_11

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 9
    sget-boolean v2, Lp3/a/n1/f0;->x:Z

    sget-boolean v3, Lp3/a/n1/f0;->y:Z

    iget-object v4, p0, Lp3/a/n1/f0;->f:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "localhost"

    .line 10
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    const-string v2, ":"

    .line 11
    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v3, v5

    goto :goto_4

    :cond_3
    move v2, v5

    move v3, v6

    .line 12
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 13
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_5

    const/16 v8, 0x30

    if-lt v7, v8, :cond_4

    const/16 v8, 0x39

    if-gt v7, v8, :cond_4

    move v7, v6

    goto :goto_3

    :cond_4
    move v7, v5

    :goto_3
    and-int/2addr v3, v7

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    xor-int/2addr v3, v6

    :goto_4
    if-nez v3, :cond_7

    move-object v2, v1

    goto :goto_5

    .line 14
    :cond_7
    iget-object v2, p0, Lp3/a/n1/f0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp3/a/n1/f0$f;

    if-nez v2, :cond_8

    .line 15
    sget-object v3, Lp3/a/n1/f0;->A:Lp3/a/n1/f0$g;

    if-eqz v3, :cond_8

    .line 16
    invoke-interface {v3}, Lp3/a/n1/f0$g;->a()Lp3/a/n1/f0$f;

    move-result-object v2

    :cond_8
    :goto_5
    if-eqz v2, :cond_9

    .line 17
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_grpc_config."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lp3/a/n1/f0;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lp3/a/n1/f0$f;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v2

    .line 18
    sget-object v3, Lp3/a/n1/f0;->s:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "ServiceConfig resolution failure"

    invoke-virtual {v3, v4, v7, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :cond_9
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 20
    iget-object v2, p0, Lp3/a/n1/f0;->b:Ljava/util/Random;

    .line 21
    sget-object v3, Lp3/a/n1/f0;->B:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 22
    :try_start_2
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lp3/a/n1/f0;->B:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception p1

    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 24
    :cond_a
    :goto_7
    sget-object v3, Lp3/a/n1/f0;->B:Ljava/lang/String;

    .line 25
    :try_start_3
    invoke-static {p1}, Lp3/a/n1/f0;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 26
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, v1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 27
    :try_start_4
    invoke-static {v4, v2, v3}, Lp3/a/n1/f0;->g(Ljava/util/Map;Ljava/util/Random;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v4, :cond_b

    goto :goto_8

    :catch_3
    move-exception p1

    .line 28
    sget-object v2, Lp3/a/g1;->h:Lp3/a/g1;

    const-string v3, "failed to pick service config choice"

    .line 29
    invoke-virtual {v2, v3}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v2

    invoke-virtual {v2, p1}, Lp3/a/g1;->h(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object p1

    .line 30
    new-instance v2, Lp3/a/r0$b;

    invoke-direct {v2, p1}, Lp3/a/r0$b;-><init>(Lp3/a/g1;)V

    goto :goto_a

    :cond_c
    :goto_8
    if-nez v4, :cond_d

    move-object v2, v1

    goto :goto_a

    .line 31
    :cond_d
    new-instance v2, Lp3/a/r0$b;

    invoke-direct {v2, v4}, Lp3/a/r0$b;-><init>(Ljava/lang/Object;)V

    goto :goto_a

    :catch_4
    move-exception p1

    goto :goto_9

    :catch_5
    move-exception p1

    .line 32
    :goto_9
    sget-object v2, Lp3/a/g1;->h:Lp3/a/g1;

    const-string v3, "failed to parse TXT records"

    .line 33
    invoke-virtual {v2, v3}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v2

    invoke-virtual {v2, p1}, Lp3/a/g1;->h(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object p1

    .line 34
    new-instance v2, Lp3/a/r0$b;

    invoke-direct {v2, p1}, Lp3/a/r0$b;-><init>(Lp3/a/g1;)V

    :goto_a
    if-eqz v2, :cond_10

    .line 35
    iget-object p1, v2, Lp3/a/r0$b;->a:Lp3/a/g1;

    if-eqz p1, :cond_e

    .line 36
    new-instance v1, Lp3/a/r0$b;

    invoke-direct {v1, p1}, Lp3/a/r0$b;-><init>(Lp3/a/g1;)V

    goto :goto_b

    .line 37
    :cond_e
    iget-object p1, v2, Lp3/a/r0$b;->b:Ljava/lang/Object;

    .line 38
    check-cast p1, Ljava/util/Map;

    .line 39
    iget-object v1, p0, Lp3/a/n1/f0;->p:Lp3/a/r0$f;

    invoke-virtual {v1, p1}, Lp3/a/r0$f;->a(Ljava/util/Map;)Lp3/a/r0$b;

    move-result-object v1

    goto :goto_b

    .line 40
    :cond_f
    sget-object p1, Lp3/a/n1/f0;->s:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lp3/a/n1/f0;->f:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string v4, "No TXT records found for {0}"

    invoke-virtual {p1, v2, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    :cond_10
    :goto_b
    iput-object v1, v0, Lp3/a/n1/f0$c;->c:Lp3/a/r0$b;

    :cond_11
    return-object v0
.end method

.method public final i()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/f0;->q:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lp3/a/n1/f0;->m:Z

    if-nez v0, :cond_3

    .line 2
    iget-boolean v0, p0, Lp3/a/n1/f0;->l:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lp3/a/n1/f0;->i:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    if-lez v0, :cond_0

    iget-object v0, p0, Lp3/a/n1/f0;->k:Lcom/google/common/base/Stopwatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    iget-wide v4, p0, Lp3/a/n1/f0;->i:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    iput-boolean v1, p0, Lp3/a/n1/f0;->q:Z

    .line 5
    iget-object v0, p0, Lp3/a/n1/f0;->n:Ljava/util/concurrent/Executor;

    new-instance v1, Lp3/a/n1/f0$e;

    iget-object v2, p0, Lp3/a/n1/f0;->r:Lp3/a/r0$d;

    invoke-direct {v1, p0, v2}, Lp3/a/n1/f0$e;-><init>(Lp3/a/n1/f0;Lp3/a/r0$d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final j()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lp3/a/v;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lp3/a/n1/f0;->c:Lp3/a/n1/f0$b;

    iget-object v2, p0, Lp3/a/n1/f0;->f:Ljava/lang/String;

    check-cast v1, Lp3/a/n1/f0$d;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 6
    new-instance v3, Lp3/a/v;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget v5, p0, Lp3/a/n1/f0;->g:I

    invoke-direct {v4, v2, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 7
    sget-object v2, Lp3/a/a;->b:Lp3/a/a;

    .line 8
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lp3/a/v;-><init>(Ljava/util/List;Lp3/a/a;)V

    .line 9
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    :try_start_1
    invoke-static {v0}, Lcom/google/common/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    .line 12
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_1

    .line 13
    sget-object v2, Lp3/a/n1/f0;->s:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Address resolution failure"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    throw v1
.end method
