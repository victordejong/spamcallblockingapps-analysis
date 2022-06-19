.class public final Lp3/a/n1/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/r0$h;,
        Lp3/a/n1/r0$g;,
        Lp3/a/n1/r0$f;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Lp3/a/o0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o0$f<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lp3/a/o0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o0$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lp3/a/o0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o0$f<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final e:Lp3/a/o0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o0$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lp3/a/o0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o0$f<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final g:Lp3/a/o0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o0$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lp3/a/o0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o0$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lp3/a/o0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o0$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:J

.field public static final k:Lp3/a/c1;

.field public static final l:Lp3/a/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/c$a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Lp3/a/n1/n2$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/n1/n2$c<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Lp3/a/n1/n2$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/n1/n2$c<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/base/Stopwatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lp3/a/n1/r0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lp3/a/n1/r0;->a:Ljava/util/logging/Logger;

    const-string v0, "US-ASCII"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 3
    new-instance v0, Lp3/a/n1/r0$h;

    invoke-direct {v0}, Lp3/a/n1/r0$h;-><init>()V

    const-string v1, "grpc-timeout"

    .line 4
    invoke-static {v1, v0}, Lp3/a/o0$f;->a(Ljava/lang/String;Lp3/a/o0$d;)Lp3/a/o0$f;

    move-result-object v0

    sput-object v0, Lp3/a/n1/r0;->b:Lp3/a/o0$f;

    .line 5
    sget-object v0, Lp3/a/o0;->c:Lp3/a/o0$d;

    const-string v1, "grpc-encoding"

    .line 6
    invoke-static {v1, v0}, Lp3/a/o0$f;->a(Ljava/lang/String;Lp3/a/o0$d;)Lp3/a/o0$f;

    move-result-object v1

    sput-object v1, Lp3/a/n1/r0;->c:Lp3/a/o0$f;

    .line 7
    new-instance v1, Lp3/a/n1/r0$f;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lp3/a/n1/r0$f;-><init>(Lp3/a/n1/r0$a;)V

    const-string v3, "grpc-accept-encoding"

    .line 8
    invoke-static {v3, v1}, Lp3/a/f0;->a(Ljava/lang/String;Lp3/a/f0$a;)Lp3/a/o0$f;

    move-result-object v1

    sput-object v1, Lp3/a/n1/r0;->d:Lp3/a/o0$f;

    const-string v1, "content-encoding"

    .line 9
    invoke-static {v1, v0}, Lp3/a/o0$f;->a(Ljava/lang/String;Lp3/a/o0$d;)Lp3/a/o0$f;

    move-result-object v1

    sput-object v1, Lp3/a/n1/r0;->e:Lp3/a/o0$f;

    .line 10
    new-instance v1, Lp3/a/n1/r0$f;

    invoke-direct {v1, v2}, Lp3/a/n1/r0$f;-><init>(Lp3/a/n1/r0$a;)V

    const-string v2, "accept-encoding"

    .line 11
    invoke-static {v2, v1}, Lp3/a/f0;->a(Ljava/lang/String;Lp3/a/f0$a;)Lp3/a/o0$f;

    move-result-object v1

    sput-object v1, Lp3/a/n1/r0;->f:Lp3/a/o0$f;

    const-string v1, "content-type"

    .line 12
    invoke-static {v1, v0}, Lp3/a/o0$f;->a(Ljava/lang/String;Lp3/a/o0$d;)Lp3/a/o0$f;

    move-result-object v1

    sput-object v1, Lp3/a/n1/r0;->g:Lp3/a/o0$f;

    const-string v1, "te"

    .line 13
    invoke-static {v1, v0}, Lp3/a/o0$f;->a(Ljava/lang/String;Lp3/a/o0$d;)Lp3/a/o0$f;

    move-result-object v1

    sput-object v1, Lp3/a/n1/r0;->h:Lp3/a/o0$f;

    const-string v1, "user-agent"

    .line 14
    invoke-static {v1, v0}, Lp3/a/o0$f;->a(Ljava/lang/String;Lp3/a/o0$d;)Lp3/a/o0$f;

    move-result-object v0

    sput-object v0, Lp3/a/n1/r0;->i:Lp3/a/o0$f;

    .line 15
    sget-object v0, Lcom/google/common/base/CharMatcher$None;->INSTANCE:Lcom/google/common/base/CharMatcher$None;

    .line 16
    sget-object v0, Lcom/google/common/base/CharMatcher$Whitespace;->INSTANCE:Lcom/google/common/base/CharMatcher$Whitespace;

    .line 17
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Lp3/a/n1/r0;->j:J

    .line 19
    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 21
    new-instance v0, Lp3/a/n1/d2;

    invoke-direct {v0}, Lp3/a/n1/d2;-><init>()V

    sput-object v0, Lp3/a/n1/r0;->k:Lp3/a/c1;

    const-string v0, "io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER"

    .line 22
    invoke-static {v0}, Lp3/a/c$a;->a(Ljava/lang/String;)Lp3/a/c$a;

    move-result-object v0

    sput-object v0, Lp3/a/n1/r0;->l:Lp3/a/c$a;

    .line 23
    new-instance v0, Lp3/a/n1/r0$b;

    invoke-direct {v0}, Lp3/a/n1/r0$b;-><init>()V

    sput-object v0, Lp3/a/n1/r0;->m:Lp3/a/n1/n2$c;

    .line 24
    new-instance v0, Lp3/a/n1/r0$c;

    invoke-direct {v0}, Lp3/a/n1/r0$c;-><init>()V

    sput-object v0, Lp3/a/n1/r0;->n:Lp3/a/n1/n2$c;

    .line 25
    new-instance v0, Lp3/a/n1/r0$d;

    invoke-direct {v0}, Lp3/a/n1/r0$d;-><init>()V

    sput-object v0, Lp3/a/n1/r0;->o:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/net/URI;
    .locals 7

    const-string v0, "authority"

    .line 1
    invoke-static {p0, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid authority: "

    invoke-static {v2, p0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0}, Lp3/a/n1/r0;->a(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "No host in authority \'%s\'"

    invoke-static {v1, v4, p0}, Ln3/g0/y;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v0, "Userinfo must not be present on authority: \'%s\'"

    invoke-static {v2, v0, p0}, Ln3/g0/y;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static c(Ljava/io/Closeable;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    sget-object v0, Lp3/a/n1/r0;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "exception caught in closeQuietly"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static d(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Ljava/net/InetSocketAddress;

    const-string v1, "getHostString"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 7

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    .line 3
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    .line 5
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-direct {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 6
    new-instance p1, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object p1
.end method

.method public static f(Lp3/a/i0$e;Z)Lp3/a/n1/u;
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/i0$e;->a:Lp3/a/i0$h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lp3/a/i0$h;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp3/a/n1/w2;

    invoke-interface {v0}, Lp3/a/n1/w2;->a()Lp3/a/n1/u;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-object p0, p0, Lp3/a/i0$e;->b:Lp3/a/j$a;

    if-nez p0, :cond_1

    return-object v0

    .line 4
    :cond_1
    new-instance p1, Lp3/a/n1/r0$e;

    invoke-direct {p1, v0, p0}, Lp3/a/n1/r0$e;-><init>(Lp3/a/n1/u;Lp3/a/j$a;)V

    return-object p1

    .line 5
    :cond_2
    iget-object v0, p0, Lp3/a/i0$e;->c:Lp3/a/g1;

    .line 6
    invoke-virtual {v0}, Lp3/a/g1;->g()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    iget-boolean v0, p0, Lp3/a/i0$e;->d:Z

    if-eqz v0, :cond_3

    .line 8
    new-instance p1, Lp3/a/n1/i0;

    .line 9
    iget-object p0, p0, Lp3/a/i0$e;->c:Lp3/a/g1;

    .line 10
    sget-object v0, Lp3/a/n1/t$a;->c:Lp3/a/n1/t$a;

    invoke-direct {p1, p0, v0}, Lp3/a/n1/i0;-><init>(Lp3/a/g1;Lp3/a/n1/t$a;)V

    return-object p1

    :cond_3
    if-nez p1, :cond_4

    .line 11
    new-instance p1, Lp3/a/n1/i0;

    .line 12
    iget-object p0, p0, Lp3/a/i0$e;->c:Lp3/a/g1;

    .line 13
    sget-object v0, Lp3/a/n1/t$a;->a:Lp3/a/n1/t$a;

    invoke-direct {p1, p0, v0}, Lp3/a/n1/i0;-><init>(Lp3/a/g1;Lp3/a/n1/t$a;)V

    return-object p1

    :cond_4
    return-object v1
.end method

.method public static g(I)Lp3/a/g1;
    .locals 3

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    .line 1
    sget-object v0, Lp3/a/g1$b;->p:Lp3/a/g1$b;

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    if-eq p0, v0, :cond_5

    const/16 v0, 0x191

    if-eq p0, v0, :cond_4

    const/16 v0, 0x193

    if-eq p0, v0, :cond_3

    const/16 v0, 0x194

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1ad

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1af

    if-eq p0, v0, :cond_5

    packed-switch p0, :pswitch_data_0

    .line 2
    sget-object v0, Lp3/a/g1$b;->e:Lp3/a/g1$b;

    goto :goto_0

    .line 3
    :cond_1
    :pswitch_0
    sget-object v0, Lp3/a/g1$b;->q:Lp3/a/g1$b;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lp3/a/g1$b;->o:Lp3/a/g1$b;

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lp3/a/g1$b;->j:Lp3/a/g1$b;

    goto :goto_0

    .line 6
    :cond_4
    sget-object v0, Lp3/a/g1$b;->s:Lp3/a/g1$b;

    goto :goto_0

    .line 7
    :cond_5
    sget-object v0, Lp3/a/g1$b;->p:Lp3/a/g1$b;

    .line 8
    :goto_0
    invoke-virtual {v0}, Lp3/a/g1$b;->a()Lp3/a/g1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
