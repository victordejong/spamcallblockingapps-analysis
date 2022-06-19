.class public Lp3/a/o1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/x;
.implements Lp3/a/o1/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/o1/f$e;
    }
.end annotation


# static fields
.field public static final Q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lp3/a/o1/o/m/a;",
            "Lp3/a/g1;",
            ">;"
        }
    .end annotation
.end field

.field public static final R:Ljava/util/logging/Logger;

.field public static final S:[Lp3/a/o1/e;


# instance fields
.field public A:Ljavax/net/ssl/HostnameVerifier;

.field public B:I

.field public final C:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lp3/a/o1/e;",
            ">;"
        }
    .end annotation
.end field

.field public final D:Lp3/a/o1/o/b;

.field public E:Ljava/util/concurrent/ScheduledExecutorService;

.field public F:Lp3/a/n1/j1;

.field public G:Z

.field public H:J

.field public I:J

.field public J:Z

.field public final K:Ljava/lang/Runnable;

.field public final L:I

.field public final M:Z

.field public final N:Lp3/a/n1/x2;

.field public final O:Lp3/a/n1/y0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/n1/y0<",
            "Lp3/a/o1/e;",
            ">;"
        }
    .end annotation
.end field

.field public final P:Lp3/a/z;

.field public final a:Ljava/net/InetSocketAddress;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/Random;

.field public final e:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/base/Stopwatch;",
            ">;"
        }
    .end annotation
.end field

.field public final f:I

.field public g:Lp3/a/n1/t1$a;

.field public h:Lp3/a/o1/b;

.field public i:Lp3/a/o1/m;

.field public final j:Ljava/lang/Object;

.field public final k:Lp3/a/e0;

.field public l:I

.field public final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lp3/a/o1/e;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/concurrent/Executor;

.field public final o:Lp3/a/n1/l2;

.field public final p:I

.field public q:I

.field public r:Lp3/a/o1/f$e;

.field public s:Lp3/a/a;

.field public t:Lp3/a/g1;

.field public u:Z

.field public v:Lp3/a/n1/x0;

.field public w:Z

.field public x:Z

.field public final y:Ljavax/net/SocketFactory;

.field public z:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lp3/a/o1/o/m/a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    sget-object v1, Lp3/a/o1/o/m/a;->b:Lp3/a/o1/o/m/a;

    sget-object v2, Lp3/a/g1;->o:Lp3/a/g1;

    const-string v3, "No error: A GRPC status of OK should have been sent"

    .line 3
    invoke-virtual {v2, v3}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lp3/a/o1/o/m/a;->c:Lp3/a/o1/o/m/a;

    const-string v3, "Protocol error"

    .line 6
    invoke-virtual {v2, v3}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v3

    .line 7
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lp3/a/o1/o/m/a;->h:Lp3/a/o1/o/m/a;

    const-string v3, "Internal error"

    .line 9
    invoke-virtual {v2, v3}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v3

    .line 10
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lp3/a/o1/o/m/a;->i:Lp3/a/o1/o/m/a;

    const-string v3, "Flow control error"

    .line 12
    invoke-virtual {v2, v3}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v3

    .line 13
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Lp3/a/o1/o/m/a;->j:Lp3/a/o1/o/m/a;

    const-string v3, "Stream closed"

    .line 15
    invoke-virtual {v2, v3}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v3

    .line 16
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v1, Lp3/a/o1/o/m/a;->k:Lp3/a/o1/o/m/a;

    const-string v3, "Frame too large"

    .line 18
    invoke-virtual {v2, v3}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v3

    .line 19
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v1, Lp3/a/o1/o/m/a;->l:Lp3/a/o1/o/m/a;

    sget-object v3, Lp3/a/g1;->p:Lp3/a/g1;

    const-string v4, "Refused stream"

    .line 21
    invoke-virtual {v3, v4}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v3

    .line 22
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v1, Lp3/a/o1/o/m/a;->m:Lp3/a/o1/o/m/a;

    sget-object v3, Lp3/a/g1;->g:Lp3/a/g1;

    const-string v4, "Cancelled"

    .line 24
    invoke-virtual {v3, v4}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v3

    .line 25
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v1, Lp3/a/o1/o/m/a;->n:Lp3/a/o1/o/m/a;

    const-string v3, "Compression error"

    .line 27
    invoke-virtual {v2, v3}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v3

    .line 28
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v1, Lp3/a/o1/o/m/a;->o:Lp3/a/o1/o/m/a;

    const-string v3, "Connect error"

    .line 30
    invoke-virtual {v2, v3}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v2

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v1, Lp3/a/o1/o/m/a;->p:Lp3/a/o1/o/m/a;

    sget-object v2, Lp3/a/g1;->m:Lp3/a/g1;

    const-string v3, "Enhance your calm"

    .line 33
    invoke-virtual {v2, v3}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v2

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v1, Lp3/a/o1/o/m/a;->q:Lp3/a/o1/o/m/a;

    sget-object v2, Lp3/a/g1;->k:Lp3/a/g1;

    const-string v3, "Inadequate security"

    .line 36
    invoke-virtual {v2, v3}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 39
    sput-object v0, Lp3/a/o1/f;->Q:Ljava/util/Map;

    .line 40
    const-class v0, Lp3/a/o1/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lp3/a/o1/f;->R:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Lp3/a/o1/e;

    .line 41
    sput-object v0, Lp3/a/o1/f;->S:[Lp3/a/o1/e;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lp3/a/a;Ljava/util/concurrent/Executor;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lp3/a/o1/o/b;IILp3/a/z;Ljava/lang/Runnable;ILp3/a/n1/x2;Z)V
    .locals 8

    move-object v1, p0

    move-object v0, p1

    move-object v2, p3

    move-object v3, p5

    move-object/from16 v4, p9

    move-object/from16 v5, p13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    iput-object v6, v1, Lp3/a/o1/f;->d:Ljava/util/Random;

    .line 3
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v1, Lp3/a/o1/f;->j:Ljava/lang/Object;

    .line 4
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v1, Lp3/a/o1/f;->m:Ljava/util/Map;

    const/4 v7, 0x0

    .line 5
    iput v7, v1, Lp3/a/o1/f;->B:I

    .line 6
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, v1, Lp3/a/o1/f;->C:Ljava/util/Deque;

    .line 7
    new-instance v7, Lp3/a/o1/f$a;

    invoke-direct {v7, p0}, Lp3/a/o1/f$a;-><init>(Lp3/a/o1/f;)V

    iput-object v7, v1, Lp3/a/o1/f;->O:Lp3/a/n1/y0;

    const-string v7, "address"

    .line 8
    invoke-static {p1, v7}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v1, Lp3/a/o1/f;->a:Ljava/net/InetSocketAddress;

    move-object v7, p2

    .line 9
    iput-object v7, v1, Lp3/a/o1/f;->b:Ljava/lang/String;

    move/from16 v7, p10

    .line 10
    iput v7, v1, Lp3/a/o1/f;->p:I

    move/from16 v7, p11

    .line 11
    iput v7, v1, Lp3/a/o1/f;->f:I

    const-string v7, "executor"

    .line 12
    invoke-static {p5, v7}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, v1, Lp3/a/o1/f;->n:Ljava/util/concurrent/Executor;

    .line 13
    new-instance v7, Lp3/a/n1/l2;

    invoke-direct {v7, p5}, Lp3/a/n1/l2;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v7, v1, Lp3/a/o1/f;->o:Lp3/a/n1/l2;

    const/4 v3, 0x3

    .line 14
    iput v3, v1, Lp3/a/o1/f;->l:I

    if-nez p6, :cond_0

    .line 15
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, p6

    :goto_0
    iput-object v3, v1, Lp3/a/o1/f;->y:Ljavax/net/SocketFactory;

    move-object v3, p7

    .line 16
    iput-object v3, v1, Lp3/a/o1/f;->z:Ljavax/net/ssl/SSLSocketFactory;

    move-object/from16 v3, p8

    .line 17
    iput-object v3, v1, Lp3/a/o1/f;->A:Ljavax/net/ssl/HostnameVerifier;

    const-string v3, "connectionSpec"

    .line 18
    invoke-static {v4, v3}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v1, Lp3/a/o1/f;->D:Lp3/a/o1/o/b;

    .line 19
    sget-object v3, Lp3/a/n1/r0;->o:Lcom/google/common/base/Supplier;

    iput-object v3, v1, Lp3/a/o1/f;->e:Lcom/google/common/base/Supplier;

    const-string v3, "okhttp"

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_1

    .line 21
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 22
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "grpc-java-"

    .line 23
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    .line 25
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "1.37.0"

    .line 26
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 28
    iput-object v2, v1, Lp3/a/o1/f;->c:Ljava/lang/String;

    move-object/from16 v2, p12

    .line 29
    iput-object v2, v1, Lp3/a/o1/f;->P:Lp3/a/z;

    const-string v2, "tooManyPingsRunnable"

    .line 30
    invoke-static {v5, v2}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v5, v1, Lp3/a/o1/f;->K:Ljava/lang/Runnable;

    move/from16 v2, p14

    .line 31
    iput v2, v1, Lp3/a/o1/f;->L:I

    move-object/from16 v2, p15

    .line 32
    iput-object v2, v1, Lp3/a/o1/f;->N:Lp3/a/n1/x2;

    .line 33
    const-class v2, Lp3/a/o1/f;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lp3/a/e0;->a(Ljava/lang/Class;Ljava/lang/String;)Lp3/a/e0;

    move-result-object v0

    iput-object v0, v1, Lp3/a/o1/f;->k:Lp3/a/e0;

    .line 34
    sget-object v0, Lp3/a/a;->b:Lp3/a/a;

    .line 35
    sget-object v2, Lp3/a/n1/q0;->b:Lp3/a/a$c;

    .line 36
    new-instance v3, Ljava/util/IdentityHashMap;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/IdentityHashMap;-><init>(I)V

    move-object v4, p4

    .line 37
    invoke-virtual {v3, v2, p4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, v0, Lp3/a/a;->a:Ljava/util/Map;

    .line 39
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 42
    :cond_3
    new-instance v0, Lp3/a/a;

    const/4 v2, 0x0

    invoke-direct {v0, v3, v2}, Lp3/a/a;-><init>(Ljava/util/Map;Lp3/a/a$a;)V

    .line 43
    iput-object v0, v1, Lp3/a/o1/f;->s:Lp3/a/a;

    move/from16 v0, p16

    .line 44
    iput-boolean v0, v1, Lp3/a/o1/f;->M:Z

    .line 45
    monitor-enter v6

    .line 46
    :try_start_0
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static h(Lp3/a/o1/f;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lp3/a/h1;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\r\n"

    .line 2
    :try_start_0
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lp3/a/o1/f;->y:Ljavax/net/SocketFactory;

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p2

    invoke-virtual {v1, v2, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lp3/a/o1/f;->y:Ljavax/net/SocketFactory;

    .line 5
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p2

    invoke-virtual {v1, v2, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p2

    :goto_0
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p2, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 7
    invoke-static {p2}, Ls1/a/a/a/v0/f/d;->q3(Ljava/net/Socket;)Lv3/b0;

    move-result-object v2

    .line 8
    invoke-static {p2}, Ls1/a/a/a/v0/f/d;->m3(Ljava/net/Socket;)Lv3/z;

    move-result-object v3

    const-string v4, "$this$buffer"

    .line 9
    invoke-static {v3, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v4, Lv3/u;

    invoke-direct {v4, v3}, Lv3/u;-><init>(Lv3/z;)V

    .line 11
    invoke-virtual {p0, p1, p3, p4}, Lp3/a/o1/f;->j(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Le/p/a/s;

    move-result-object p0

    .line 12
    iget-object p1, p0, Le/p/a/s;->a:Le/p/a/n;

    const-string p3, "CONNECT %s:%d HTTP/1.1"

    const/4 p4, 0x2

    new-array v3, p4, [Ljava/lang/Object;

    .line 13
    iget-object v5, p1, Le/p/a/n;->d:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    .line 14
    iget p1, p1, Le/p/a/n;->e:I

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p3, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v4, p1}, Lv3/u;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object p1

    invoke-interface {p1, v0}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    .line 17
    iget-object p1, p0, Le/p/a/s;->c:Le/p/a/m;

    .line 18
    invoke-virtual {p1}, Le/p/a/m;->d()I

    move-result p1

    move p3, v6

    :goto_1
    if-ge p3, p1, :cond_1

    .line 19
    iget-object v3, p0, Le/p/a/s;->c:Le/p/a/m;

    .line 20
    invoke-virtual {v3, p3}, Le/p/a/m;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lv3/u;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v3

    const-string v5, ": "

    .line 21
    invoke-interface {v3, v5}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v3

    .line 22
    iget-object v5, p0, Le/p/a/s;->c:Le/p/a/m;

    .line 23
    invoke-virtual {v5, p3}, Le/p/a/m;->e(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v3

    .line 24
    invoke-interface {v3, v0}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v4, v0}, Lv3/u;->d1(Ljava/lang/String;)Lv3/g;

    .line 26
    invoke-virtual {v4}, Lv3/u;->flush()V

    .line 27
    invoke-static {v2}, Lp3/a/o1/f;->s(Lv3/b0;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/p/a/y/k/p;->a(Ljava/lang/String;)Le/p/a/y/k/p;

    move-result-object p0

    .line 28
    :goto_2
    invoke-static {v2}, Lp3/a/o1/f;->s(Lv3/b0;)Ljava/lang/String;

    move-result-object p1

    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 29
    :cond_2
    iget p1, p0, Le/p/a/y/k/p;->b:I

    const/16 p3, 0xc8

    if-lt p1, p3, :cond_3

    const/16 p3, 0x12c

    if-ge p1, p3, :cond_3

    return-object p2

    .line 30
    :cond_3
    new-instance p1, Lv3/f;

    invoke-direct {p1}, Lv3/f;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 31
    :try_start_1
    invoke-virtual {p2}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v3, 0x400

    .line 32
    check-cast v2, Lv3/d;

    :try_start_2
    invoke-virtual {v2, p1, v3, v4}, Lv3/d;->d2(Lv3/f;J)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p3

    .line 33
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read body: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lv3/f;->K0(Ljava/lang/String;)Lv3/f;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 34
    :goto_3
    :try_start_4
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :try_start_5
    const-string p2, "Response returned from proxy was not successful (expected 2xx, got %d %s). Response body:\n%s"

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    .line 35
    iget v0, p0, Le/p/a/y/k/p;->b:I

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v6

    iget-object p0, p0, Le/p/a/y/k/p;->c:Ljava/lang/String;

    aput-object p0, p3, v1

    invoke-virtual {p1}, Lv3/f;->Q()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, p4

    .line 37
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 38
    sget-object p1, Lp3/a/g1;->p:Lp3/a/g1;

    invoke-virtual {p1, p0}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p0

    .line 39
    new-instance p1, Lp3/a/h1;

    invoke-direct {p1, p0}, Lp3/a/h1;-><init>(Lp3/a/g1;)V

    .line 40
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p0

    .line 41
    sget-object p1, Lp3/a/g1;->p:Lp3/a/g1;

    const-string p2, "Failed trying to connect with proxy"

    invoke-virtual {p1, p2}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    invoke-virtual {p1, p0}, Lp3/a/g1;->h(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object p0

    .line 42
    new-instance p1, Lp3/a/h1;

    invoke-direct {p1, p0}, Lp3/a/h1;-><init>(Lp3/a/g1;)V

    .line 43
    throw p1
.end method

.method public static i(Lp3/a/o1/f;Lp3/a/o1/o/m/a;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lp3/a/o1/f;->z(Lp3/a/o1/o/m/a;)Lp3/a/g1;

    move-result-object v0

    invoke-virtual {v0, p2}, Lp3/a/g1;->b(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lp3/a/o1/f;->v(ILp3/a/o1/o/m/a;Lp3/a/g1;)V

    return-void
.end method

.method public static s(Lv3/b0;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lv3/f;

    invoke-direct {v0}, Lv3/f;-><init>()V

    :cond_0
    const-wide/16 v1, 0x1

    .line 2
    move-object v3, p0

    check-cast v3, Lv3/d;

    invoke-virtual {v3, v0, v1, v2}, Lv3/d;->d2(Lv3/f;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 3
    iget-wide v3, v0, Lv3/f;->b:J

    sub-long/2addr v3, v1

    .line 4
    invoke-virtual {v0, v3, v4}, Lv3/f;->l(J)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lv3/f;->o1()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    const-string v1, "\\n not found: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lv3/f;->E()Lv3/i;

    move-result-object v0

    invoke-virtual {v0}, Lv3/i;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static z(Lp3/a/o1/o/m/a;)Lp3/a/g1;
    .locals 2

    .line 1
    sget-object v0, Lp3/a/o1/f;->Q:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp3/a/g1;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lp3/a/g1;->h:Lp3/a/g1;

    const-string v1, "Unknown http2 error code: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Lp3/a/o1/o/m/a;->a:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "failureCause"

    .line 1
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lp3/a/g1;->p:Lp3/a/g1;

    invoke-virtual {v0, p1}, Lp3/a/g1;->h(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object p1

    .line 3
    sget-object v0, Lp3/a/o1/o/m/a;->h:Lp3/a/o1/o/m/a;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lp3/a/o1/f;->v(ILp3/a/o1/o/m/a;Lp3/a/g1;)V

    return-void
.end method

.method public b()Lp3/a/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/o1/f;->k:Lp3/a/e0;

    return-object v0
.end method

.method public c(Lp3/a/n1/u$a;Ljava/util/concurrent/Executor;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lp3/a/o1/f;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Ln3/g0/y;->checkState2(Z)V

    .line 3
    iget-boolean v1, p0, Lp3/a/o1/f;->w:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lp3/a/o1/f;->o()Ljava/lang/Throwable;

    move-result-object v1

    .line 5
    new-instance v2, Lp3/a/n1/w0;

    invoke-direct {v2, p1, v1}, Lp3/a/n1/w0;-><init>(Lp3/a/n1/u$a;Ljava/lang/Throwable;)V

    .line 6
    invoke-static {p2, v2}, Lp3/a/n1/x0;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_1
    iget-object v1, p0, Lp3/a/o1/f;->v:Lp3/a/n1/x0;

    if-eqz v1, :cond_2

    const-wide/16 v4, 0x0

    move v2, v3

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, p0, Lp3/a/o1/f;->d:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    .line 10
    iget-object v1, p0, Lp3/a/o1/f;->e:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Stopwatch;

    .line 11
    invoke-virtual {v1}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    .line 12
    new-instance v6, Lp3/a/n1/x0;

    invoke-direct {v6, v4, v5, v1}, Lp3/a/n1/x0;-><init>(JLcom/google/common/base/Stopwatch;)V

    iput-object v6, p0, Lp3/a/o1/f;->v:Lp3/a/n1/x0;

    .line 13
    iget-object v1, p0, Lp3/a/o1/f;->N:Lp3/a/n1/x2;

    .line 14
    iget-wide v7, v1, Lp3/a/n1/x2;->e:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v1, Lp3/a/n1/x2;->e:J

    move-object v1, v6

    :goto_1
    if-eqz v2, :cond_3

    .line 15
    iget-object v2, p0, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    const/16 v6, 0x20

    ushr-long v6, v4, v6

    long-to-int v6, v6

    long-to-int v4, v4

    invoke-virtual {v2, v3, v6, v4}, Lp3/a/o1/b;->a(ZII)V

    .line 16
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    monitor-enter v1

    .line 18
    :try_start_1
    iget-boolean v0, v1, Lp3/a/n1/x0;->d:Z

    if-nez v0, :cond_4

    .line 19
    iget-object v0, v1, Lp3/a/n1/x0;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    monitor-exit v1

    goto :goto_3

    .line 21
    :cond_4
    iget-object v0, v1, Lp3/a/n1/x0;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    .line 22
    new-instance v2, Lp3/a/n1/w0;

    invoke-direct {v2, p1, v0}, Lp3/a/n1/w0;-><init>(Lp3/a/n1/u$a;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 23
    :cond_5
    iget-wide v2, v1, Lp3/a/n1/x0;->f:J

    .line 24
    new-instance v0, Lp3/a/n1/v0;

    invoke-direct {v0, p1, v2, v3}, Lp3/a/n1/v0;-><init>(Lp3/a/n1/u$a;J)V

    move-object v2, v0

    .line 25
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    invoke-static {p2, v2}, Lp3/a/n1/x0;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    :goto_3
    return-void

    :catchall_0
    move-exception p1

    .line 27
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 28
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public d(Lp3/a/n1/t1$a;)Ljava/lang/Runnable;
    .locals 9

    const-string v0, "listener"

    .line 1
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lp3/a/n1/t1$a;

    iput-object p1, p0, Lp3/a/o1/f;->g:Lp3/a/n1/t1$a;

    .line 2
    iget-boolean p1, p0, Lp3/a/o1/f;->G:Z

    if-eqz p1, :cond_1

    .line 3
    sget-object p1, Lp3/a/n1/r0;->n:Lp3/a/n1/n2$c;

    invoke-static {p1}, Lp3/a/n1/n2;->a(Lp3/a/n1/n2$c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lp3/a/o1/f;->E:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    new-instance p1, Lp3/a/n1/j1;

    new-instance v1, Lp3/a/n1/j1$c;

    invoke-direct {v1, p0}, Lp3/a/n1/j1$c;-><init>(Lp3/a/n1/x;)V

    iget-object v2, p0, Lp3/a/o1/f;->E:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v3, p0, Lp3/a/o1/f;->H:J

    iget-wide v5, p0, Lp3/a/o1/f;->I:J

    iget-boolean v7, p0, Lp3/a/o1/f;->J:Z

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lp3/a/n1/j1;-><init>(Lp3/a/n1/j1$d;Ljava/util/concurrent/ScheduledExecutorService;JJZ)V

    iput-object p1, p0, Lp3/a/o1/f;->F:Lp3/a/n1/j1;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-boolean v0, p1, Lp3/a/n1/j1;->d:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lp3/a/n1/j1;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lp3/a/o1/f;->a:Ljava/net/InetSocketAddress;

    const/4 v0, 0x1

    if-nez p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lp3/a/o1/f;->j:Ljava/lang/Object;

    monitor-enter p1

    .line 11
    :try_start_1
    new-instance v0, Lp3/a/o1/b;

    invoke-direct {v0, p0, v1, v1}, Lp3/a/o1/b;-><init>(Lp3/a/o1/b$a;Lp3/a/o1/o/m/c;Lp3/a/o1/g;)V

    iput-object v0, p0, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    .line 12
    new-instance v2, Lp3/a/o1/m;

    invoke-direct {v2, p0, v0}, Lp3/a/o1/m;-><init>(Lp3/a/o1/f;Lp3/a/o1/o/m/c;)V

    iput-object v2, p0, Lp3/a/o1/f;->i:Lp3/a/o1/m;

    .line 13
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    iget-object p1, p0, Lp3/a/o1/f;->o:Lp3/a/n1/l2;

    new-instance v0, Lp3/a/o1/f$b;

    invoke-direct {v0, p0}, Lp3/a/o1/f$b;-><init>(Lp3/a/o1/f;)V

    .line 15
    iget-object v2, p1, Lp3/a/n1/l2;->b:Ljava/util/Queue;

    const-string v3, "\'r\' must not be null."

    invoke-static {v0, v3}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p1, v0}, Lp3/a/n1/l2;->c(Ljava/lang/Runnable;)V

    return-object v1

    :catchall_1
    move-exception v0

    .line 17
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 18
    :cond_3
    iget-object p1, p0, Lp3/a/o1/f;->o:Lp3/a/n1/l2;

    .line 19
    new-instance v2, Lp3/a/o1/a;

    invoke-direct {v2, p1, p0}, Lp3/a/o1/a;-><init>(Lp3/a/n1/l2;Lp3/a/o1/b$a;)V

    .line 20
    new-instance p1, Lp3/a/o1/o/m/f;

    invoke-direct {p1}, Lp3/a/o1/o/m/f;-><init>()V

    const-string v3, "$this$buffer"

    .line 21
    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v3, Lv3/u;

    invoke-direct {v3, v2}, Lv3/u;-><init>(Lv3/z;)V

    .line 23
    new-instance v4, Lp3/a/o1/o/m/f$d;

    invoke-direct {v4, v3, v0}, Lp3/a/o1/o/m/f$d;-><init>(Lv3/g;Z)V

    .line 24
    iget-object v3, p0, Lp3/a/o1/f;->j:Ljava/lang/Object;

    monitor-enter v3

    .line 25
    :try_start_3
    new-instance v5, Lp3/a/o1/b;

    .line 26
    new-instance v6, Lp3/a/o1/g;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-class v8, Lp3/a/o1/f;

    invoke-direct {v6, v7, v8}, Lp3/a/o1/g;-><init>(Ljava/util/logging/Level;Ljava/lang/Class;)V

    invoke-direct {v5, p0, v4, v6}, Lp3/a/o1/b;-><init>(Lp3/a/o1/b$a;Lp3/a/o1/o/m/c;Lp3/a/o1/g;)V

    .line 27
    iput-object v5, p0, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    .line 28
    new-instance v4, Lp3/a/o1/m;

    invoke-direct {v4, p0, v5}, Lp3/a/o1/m;-><init>(Lp3/a/o1/f;Lp3/a/o1/o/m/c;)V

    iput-object v4, p0, Lp3/a/o1/f;->i:Lp3/a/o1/m;

    .line 29
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 30
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 31
    iget-object v0, p0, Lp3/a/o1/f;->o:Lp3/a/n1/l2;

    new-instance v4, Lp3/a/o1/f$c;

    invoke-direct {v4, p0, v3, v2, p1}, Lp3/a/o1/f$c;-><init>(Lp3/a/o1/f;Ljava/util/concurrent/CountDownLatch;Lp3/a/o1/a;Lp3/a/o1/o/m/i;)V

    .line 32
    iget-object p1, v0, Lp3/a/n1/l2;->b:Ljava/util/Queue;

    const-string v2, "\'r\' must not be null."

    invoke-static {v4, v2}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v0, v4}, Lp3/a/n1/l2;->c(Ljava/lang/Runnable;)V

    .line 34
    :try_start_4
    invoke-virtual {p0}, Lp3/a/o1/f;->t()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 35
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 36
    iget-object p1, p0, Lp3/a/o1/f;->o:Lp3/a/n1/l2;

    new-instance v0, Lp3/a/o1/f$d;

    invoke-direct {v0, p0}, Lp3/a/o1/f$d;-><init>(Lp3/a/o1/f;)V

    .line 37
    iget-object v2, p1, Lp3/a/n1/l2;->b:Ljava/util/Queue;

    const-string v3, "\'r\' must not be null."

    invoke-static {v0, v3}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p1, v0}, Lp3/a/n1/l2;->c(Ljava/lang/Runnable;)V

    return-object v1

    :catchall_2
    move-exception p1

    .line 39
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1

    :catchall_3
    move-exception p1

    .line 40
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1
.end method

.method public e(Lp3/a/p0;Lp3/a/o0;Lp3/a/c;)Lp3/a/n1/s;
    .locals 19

    move-object/from16 v15, p0

    move-object/from16 v0, p2

    move-object/from16 v14, p3

    const-string v1, "method"

    move-object/from16 v2, p1

    .line 1
    invoke-static {v2, v1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "headers"

    .line 2
    invoke-static {v0, v1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v15, Lp3/a/o1/f;->s:Lp3/a/a;

    .line 4
    sget-object v3, Lp3/a/n1/r2;->c:Lp3/a/n1/r2;

    .line 5
    iget-object v3, v14, Lp3/a/c;->g:Ljava/util/List;

    .line 6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    sget-object v1, Lp3/a/n1/r2;->c:Lp3/a/n1/r2;

    :goto_0
    move-object v12, v1

    goto :goto_2

    .line 8
    :cond_0
    sget-object v4, Lp3/a/a;->b:Lp3/a/a;

    .line 9
    sget-object v4, Lp3/a/c;->k:Lp3/a/c;

    const-string v4, "transportAttrs cannot be null"

    .line 10
    invoke-static {v1, v4}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "callOptions cannot be null"

    .line 11
    invoke-static {v14, v4}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v4, Lp3/a/j$b;

    invoke-direct {v4, v1, v14}, Lp3/a/j$b;-><init>(Lp3/a/a;Lp3/a/c;)V

    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [Lp3/a/j1;

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_1

    .line 14
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lp3/a/j$a;

    invoke-virtual {v7, v4, v0}, Lp3/a/j$a;->a(Lp3/a/j$b;Lp3/a/o0;)Lp3/a/j;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 15
    :cond_1
    new-instance v1, Lp3/a/n1/r2;

    invoke-direct {v1, v5}, Lp3/a/n1/r2;-><init>([Lp3/a/j1;)V

    goto :goto_0

    .line 16
    :goto_2
    iget-object v13, v15, Lp3/a/o1/f;->j:Ljava/lang/Object;

    monitor-enter v13

    .line 17
    :try_start_0
    new-instance v16, Lp3/a/o1/e;

    iget-object v4, v15, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    iget-object v6, v15, Lp3/a/o1/f;->i:Lp3/a/o1/m;

    iget-object v7, v15, Lp3/a/o1/f;->j:Ljava/lang/Object;

    iget v8, v15, Lp3/a/o1/f;->p:I

    iget v9, v15, Lp3/a/o1/f;->f:I

    iget-object v10, v15, Lp3/a/o1/f;->b:Ljava/lang/String;

    iget-object v11, v15, Lp3/a/o1/f;->c:Ljava/lang/String;

    iget-object v5, v15, Lp3/a/o1/f;->N:Lp3/a/n1/x2;

    iget-boolean v3, v15, Lp3/a/o1/f;->M:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v17, v3

    move-object/from16 v3, p2

    move-object v0, v5

    move-object/from16 v5, p0

    move-object/from16 v18, v13

    move-object v13, v0

    move-object/from16 v14, p3

    move/from16 v15, v17

    :try_start_1
    invoke-direct/range {v1 .. v15}, Lp3/a/o1/e;-><init>(Lp3/a/p0;Lp3/a/o0;Lp3/a/o1/b;Lp3/a/o1/f;Lp3/a/o1/m;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Lp3/a/n1/r2;Lp3/a/n1/x2;Lp3/a/c;Z)V

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v16

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v18, v13

    :goto_3
    move-object/from16 v13, v18

    .line 18
    :goto_4
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4
.end method

.method public f(Lp3/a/g1;)V
    .locals 7

    .line 1
    sget-object v0, Lp3/a/n1/t$a;->a:Lp3/a/n1/t$a;

    invoke-virtual {p0, p1}, Lp3/a/o1/f;->g(Lp3/a/g1;)V

    .line 2
    iget-object v1, p0, Lp3/a/o1/f;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lp3/a/o1/f;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp3/a/o1/e;

    .line 8
    iget-object v4, v4, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    const/4 v5, 0x0

    .line 9
    new-instance v6, Lp3/a/o0;

    invoke-direct {v6}, Lp3/a/o0;-><init>()V

    .line 10
    invoke-virtual {v4, p1, v0, v5, v6}, Lp3/a/n1/a$c;->i(Lp3/a/g1;Lp3/a/n1/t$a;ZLp3/a/o0;)V

    .line 11
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp3/a/o1/e;

    invoke-virtual {p0, v3}, Lp3/a/o1/f;->r(Lp3/a/o1/e;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, p0, Lp3/a/o1/f;->C:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp3/a/o1/e;

    .line 13
    iget-object v4, v3, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    const/4 v5, 0x1

    .line 14
    new-instance v6, Lp3/a/o0;

    invoke-direct {v6}, Lp3/a/o0;-><init>()V

    .line 15
    invoke-virtual {v4, p1, v0, v5, v6}, Lp3/a/n1/a$c;->i(Lp3/a/g1;Lp3/a/n1/t$a;ZLp3/a/o0;)V

    .line 16
    invoke-virtual {p0, v3}, Lp3/a/o1/f;->r(Lp3/a/o1/e;)V

    goto :goto_1

    .line 17
    :cond_1
    iget-object p1, p0, Lp3/a/o1/f;->C:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->clear()V

    .line 18
    invoke-virtual {p0}, Lp3/a/o1/f;->y()V

    .line 19
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g(Lp3/a/g1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/o1/f;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp3/a/o1/f;->t:Lp3/a/g1;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lp3/a/o1/f;->t:Lp3/a/g1;

    .line 5
    iget-object v1, p0, Lp3/a/o1/f;->g:Lp3/a/n1/t1$a;

    invoke-interface {v1, p1}, Lp3/a/n1/t1$a;->a(Lp3/a/g1;)V

    .line 6
    invoke-virtual {p0}, Lp3/a/o1/f;->y()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final j(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Le/p/a/s;
    .locals 3

    .line 1
    new-instance v0, Le/p/a/n$b;

    invoke-direct {v0}, Le/p/a/n$b;-><init>()V

    const-string v1, "https"

    .line 2
    invoke-virtual {v0, v1}, Le/p/a/n$b;->h(Ljava/lang/String;)Le/p/a/n$b;

    .line 3
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/p/a/n$b;->d(Ljava/lang/String;)Le/p/a/n$b;

    .line 4
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-virtual {v0, p1}, Le/p/a/n$b;->f(I)Le/p/a/n$b;

    .line 5
    invoke-virtual {v0}, Le/p/a/n$b;->a()Le/p/a/n;

    move-result-object p1

    .line 6
    new-instance v0, Le/p/a/s$b;

    invoke-direct {v0}, Le/p/a/s$b;-><init>()V

    .line 7
    invoke-virtual {v0, p1}, Le/p/a/s$b;->d(Le/p/a/n;)Le/p/a/s$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget-object v2, p1, Le/p/a/n;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget p1, p1, Le/p/a/n;->e:I

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Host"

    invoke-virtual {v0, v1, p1}, Le/p/a/s$b;->b(Ljava/lang/String;Ljava/lang/String;)Le/p/a/s$b;

    iget-object p1, p0, Lp3/a/o1/f;->c:Ljava/lang/String;

    const-string v1, "User-Agent"

    .line 12
    invoke-virtual {v0, v1, p1}, Le/p/a/s$b;->b(Ljava/lang/String;Ljava/lang/String;)Le/p/a/s$b;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 13
    invoke-static {p2, p3}, Le/m/d/y/n;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Proxy-Authorization"

    invoke-virtual {v0, p2, p1}, Le/p/a/s$b;->b(Ljava/lang/String;Ljava/lang/String;)Le/p/a/s$b;

    .line 14
    :cond_0
    invoke-virtual {v0}, Le/p/a/s$b;->a()Le/p/a/s;

    move-result-object p1

    return-object p1
.end method

.method public k(ILp3/a/g1;Lp3/a/n1/t$a;ZLp3/a/o1/o/m/a;Lp3/a/o0;)V
    .locals 1

    .line 1
    iget-object p5, p0, Lp3/a/o1/f;->j:Ljava/lang/Object;

    monitor-enter p5

    .line 2
    :try_start_0
    iget-object p6, p0, Lp3/a/o1/f;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp3/a/o1/e;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    iget-object p6, p1, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    .line 4
    new-instance v0, Lp3/a/o0;

    invoke-direct {v0}, Lp3/a/o0;-><init>()V

    .line 5
    invoke-virtual {p6, p2, p3, p4, v0}, Lp3/a/n1/a$c;->i(Lp3/a/g1;Lp3/a/n1/t$a;ZLp3/a/o0;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lp3/a/o1/f;->w()Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {p0}, Lp3/a/o1/f;->y()V

    .line 8
    invoke-virtual {p0, p1}, Lp3/a/o1/f;->r(Lp3/a/o1/e;)V

    .line 9
    :cond_1
    monitor-exit p5

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l()[Lp3/a/o1/e;
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/o1/f;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp3/a/o1/f;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    sget-object v2, Lp3/a/o1/f;->S:[Lp3/a/o1/e;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lp3/a/o1/e;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/o1/f;->b:Ljava/lang/String;

    invoke-static {v0}, Lp3/a/n1/r0;->a(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lp3/a/o1/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/o1/f;->b:Ljava/lang/String;

    invoke-static {v0}, Lp3/a/n1/r0;->a(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lp3/a/o1/f;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public final o()Ljava/lang/Throwable;
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/o1/f;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp3/a/o1/f;->t:Lp3/a/g1;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Lp3/a/h1;

    invoke-direct {v2, v1}, Lp3/a/h1;-><init>(Lp3/a/g1;)V

    .line 5
    monitor-exit v0

    return-object v2

    .line 6
    :cond_0
    sget-object v1, Lp3/a/g1;->p:Lp3/a/g1;

    const-string v2, "Connection closed"

    invoke-virtual {v1, v2}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v1

    .line 7
    new-instance v2, Lp3/a/h1;

    invoke-direct {v2, v1}, Lp3/a/h1;-><init>(Lp3/a/g1;)V

    .line 8
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public p(I)Lp3/a/o1/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/o1/f;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp3/a/o1/f;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp3/a/o1/e;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/o1/f;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lp3/a/o1/f;->l:I

    const/4 v2, 0x1

    if-ge p1, v1, :cond_0

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final r(Lp3/a/o1/e;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lp3/a/o1/f;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lp3/a/o1/f;->C:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lp3/a/o1/f;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iput-boolean v1, p0, Lp3/a/o1/f;->x:Z

    .line 4
    iget-object v0, p0, Lp3/a/o1/f;->F:Lp3/a/n1/j1;

    if-eqz v0, :cond_4

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v2, v0, Lp3/a/n1/j1;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 7
    monitor-exit v0

    goto :goto_0

    .line 8
    :cond_0
    :try_start_1
    iget-object v2, v0, Lp3/a/n1/j1;->e:Lp3/a/n1/j1$e;

    sget-object v3, Lp3/a/n1/j1$e;->b:Lp3/a/n1/j1$e;

    if-eq v2, v3, :cond_1

    sget-object v3, Lp3/a/n1/j1$e;->c:Lp3/a/n1/j1$e;

    if-ne v2, v3, :cond_2

    .line 9
    :cond_1
    sget-object v2, Lp3/a/n1/j1$e;->a:Lp3/a/n1/j1$e;

    iput-object v2, v0, Lp3/a/n1/j1;->e:Lp3/a/n1/j1$e;

    .line 10
    :cond_2
    iget-object v2, v0, Lp3/a/n1/j1;->e:Lp3/a/n1/j1$e;

    sget-object v3, Lp3/a/n1/j1$e;->d:Lp3/a/n1/j1$e;

    if-ne v2, v3, :cond_3

    .line 11
    sget-object v2, Lp3/a/n1/j1$e;->e:Lp3/a/n1/j1$e;

    iput-object v2, v0, Lp3/a/n1/j1;->e:Lp3/a/n1/j1$e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 13
    :cond_4
    :goto_0
    iget-boolean v0, p1, Lp3/a/n1/a;->c:Z

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lp3/a/o1/f;->O:Lp3/a/n1/y0;

    invoke-virtual {v0, p1, v1}, Lp3/a/n1/y0;->c(Ljava/lang/Object;Z)V

    :cond_5
    return-void
.end method

.method public t()V
    .locals 6

    .line 1
    iget-object v0, p0, Lp3/a/o1/f;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    iget-object v2, v1, Lp3/a/o1/b;->b:Lp3/a/o1/o/m/c;

    invoke-interface {v2}, Lp3/a/o1/o/m/c;->g()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 5
    :try_start_2
    iget-object v1, v1, Lp3/a/o1/b;->a:Lp3/a/o1/b$a;

    invoke-interface {v1, v2}, Lp3/a/o1/b$a;->a(Ljava/lang/Throwable;)V

    .line 6
    :goto_0
    new-instance v1, Lp3/a/o1/o/m/h;

    invoke-direct {v1}, Lp3/a/o1/o/m/h;-><init>()V

    const/4 v2, 0x7

    .line 7
    iget v3, p0, Lp3/a/o1/f;->f:I

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v1, v2, v4, v3}, Lp3/a/o1/o/m/h;->b(III)Lp3/a/o1/o/m/h;

    .line 9
    iget-object v2, p0, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    .line 10
    iget-object v3, v2, Lp3/a/o1/b;->c:Lp3/a/o1/g;

    sget-object v5, Lp3/a/o1/g$a;->b:Lp3/a/o1/g$a;

    invoke-virtual {v3, v5, v1}, Lp3/a/o1/g;->f(Lp3/a/o1/g$a;Lp3/a/o1/o/m/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :try_start_3
    iget-object v3, v2, Lp3/a/o1/b;->b:Lp3/a/o1/o/m/c;

    invoke-interface {v3, v1}, Lp3/a/o1/o/m/c;->R(Lp3/a/o1/o/m/h;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    .line 12
    :try_start_4
    iget-object v2, v2, Lp3/a/o1/b;->a:Lp3/a/o1/b$a;

    invoke-interface {v2, v1}, Lp3/a/o1/b$a;->a(Ljava/lang/Throwable;)V

    .line 13
    :goto_1
    iget v1, p0, Lp3/a/o1/f;->f:I

    const v2, 0xffff

    if-le v1, v2, :cond_0

    .line 14
    iget-object v3, p0, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v3, v4, v1, v2}, Lp3/a/o1/b;->c(IJ)V

    .line 15
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Ln3/g0/y;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lp3/a/o1/f;->k:Lp3/a/e0;

    .line 2
    iget-wide v1, v1, Lp3/a/e0;->c:J

    const-string v3, "logId"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lp3/a/o1/f;->a:Ljava/net/InetSocketAddress;

    const-string v2, "address"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 5
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lp3/a/o1/e;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lp3/a/o1/f;->x:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lp3/a/o1/f;->x:Z

    .line 3
    iget-object v0, p0, Lp3/a/o1/f;->F:Lp3/a/n1/j1;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lp3/a/n1/j1;->b()V

    .line 5
    :cond_0
    iget-boolean v0, p1, Lp3/a/n1/a;->c:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lp3/a/o1/f;->O:Lp3/a/n1/y0;

    invoke-virtual {v0, p1, v1}, Lp3/a/n1/y0;->c(Ljava/lang/Object;Z)V

    :cond_1
    return-void
.end method

.method public final v(ILp3/a/o1/o/m/a;Lp3/a/g1;)V
    .locals 7

    .line 1
    sget-object v0, Lp3/a/n1/t$a;->b:Lp3/a/n1/t$a;

    iget-object v1, p0, Lp3/a/o1/f;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-object v2, p0, Lp3/a/o1/f;->t:Lp3/a/g1;

    if-nez v2, :cond_0

    .line 3
    iput-object p3, p0, Lp3/a/o1/f;->t:Lp3/a/g1;

    .line 4
    iget-object v2, p0, Lp3/a/o1/f;->g:Lp3/a/n1/t1$a;

    invoke-interface {v2, p3}, Lp3/a/n1/t1$a;->a(Lp3/a/g1;)V

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 5
    iget-boolean v4, p0, Lp3/a/o1/f;->u:Z

    if-nez v4, :cond_1

    .line 6
    iput-boolean v2, p0, Lp3/a/o1/f;->u:Z

    .line 7
    iget-object v4, p0, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    new-array v5, v3, [B

    invoke-virtual {v4, v3, p2, v5}, Lp3/a/o1/b;->l2(ILp3/a/o1/o/m/a;[B)V

    .line 8
    :cond_1
    iget-object p2, p0, Lp3/a/o1/f;->m:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 9
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, p1, :cond_2

    .line 12
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 13
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp3/a/o1/e;

    .line 14
    iget-object v5, v5, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    .line 15
    new-instance v6, Lp3/a/o0;

    invoke-direct {v6}, Lp3/a/o0;-><init>()V

    invoke-virtual {v5, p3, v0, v3, v6}, Lp3/a/n1/a$c;->i(Lp3/a/g1;Lp3/a/n1/t$a;ZLp3/a/o0;)V

    .line 16
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp3/a/o1/e;

    invoke-virtual {p0, v4}, Lp3/a/o1/f;->r(Lp3/a/o1/e;)V

    goto :goto_0

    .line 17
    :cond_3
    iget-object p1, p0, Lp3/a/o1/f;->C:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp3/a/o1/e;

    .line 18
    iget-object v3, p2, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    .line 19
    new-instance v4, Lp3/a/o0;

    invoke-direct {v4}, Lp3/a/o0;-><init>()V

    invoke-virtual {v3, p3, v0, v2, v4}, Lp3/a/n1/a$c;->i(Lp3/a/g1;Lp3/a/n1/t$a;ZLp3/a/o0;)V

    .line 20
    invoke-virtual {p0, p2}, Lp3/a/o1/f;->r(Lp3/a/o1/e;)V

    goto :goto_1

    .line 21
    :cond_4
    iget-object p1, p0, Lp3/a/o1/f;->C:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->clear()V

    .line 22
    invoke-virtual {p0}, Lp3/a/o1/f;->y()V

    .line 23
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final w()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lp3/a/o1/f;->C:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lp3/a/o1/f;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lp3/a/o1/f;->B:I

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v0, p0, Lp3/a/o1/f;->C:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp3/a/o1/e;

    .line 3
    invoke-virtual {p0, v0}, Lp3/a/o1/f;->x(Lp3/a/o1/e;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final x(Lp3/a/o1/e;)V
    .locals 9

    .line 1
    iget v0, p1, Lp3/a/o1/e;->l:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v4, "StreamId already assigned"

    .line 2
    invoke-static {v0, v4}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lp3/a/o1/f;->m:Ljava/util/Map;

    iget v4, p0, Lp3/a/o1/f;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Lp3/a/o1/f;->u(Lp3/a/o1/e;)V

    .line 5
    iget-object v0, p1, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    .line 6
    iget v4, p0, Lp3/a/o1/f;->l:I

    .line 7
    iget-object v5, v0, Lp3/a/o1/e$b;->L:Lp3/a/o1/e;

    .line 8
    iget v5, v5, Lp3/a/o1/e;->l:I

    if-ne v5, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const-string v5, "the stream has been started with id %s"

    if-eqz v3, :cond_a

    .line 9
    iget-object v3, v0, Lp3/a/o1/e$b;->L:Lp3/a/o1/e;

    .line 10
    iput v4, v3, Lp3/a/o1/e;->l:I

    .line 11
    iget-object v3, v0, Lp3/a/o1/e$b;->L:Lp3/a/o1/e;

    .line 12
    iget-object v3, v3, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    .line 13
    iget-object v4, v3, Lp3/a/n1/a$c;->j:Lp3/a/n1/t;

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 14
    :goto_2
    invoke-static {v4}, Ln3/g0/y;->checkState2(Z)V

    .line 15
    iget-object v6, v3, Lp3/a/n1/e$a;->b:Ljava/lang/Object;

    monitor-enter v6

    .line 16
    :try_start_0
    iget-boolean v4, v3, Lp3/a/n1/e$a;->f:Z

    xor-int/2addr v4, v1

    const-string v5, "Already allocated"

    invoke-static {v4, v5}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 17
    iput-boolean v1, v3, Lp3/a/n1/e$a;->f:Z

    .line 18
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {v3}, Lp3/a/n1/e$a;->f()V

    .line 20
    iget-object v1, v3, Lp3/a/n1/e$a;->c:Lp3/a/n1/x2;

    .line 21
    iget-wide v3, v1, Lp3/a/n1/x2;->b:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v1, Lp3/a/n1/x2;->b:J

    .line 22
    iget-object v1, v1, Lp3/a/n1/x2;->a:Lp3/a/n1/u2;

    invoke-interface {v1}, Lp3/a/n1/u2;->a()J

    .line 23
    iget-boolean v1, v0, Lp3/a/o1/e$b;->J:Z

    if-eqz v1, :cond_5

    .line 24
    iget-object v3, v0, Lp3/a/o1/e$b;->G:Lp3/a/o1/b;

    iget-object v1, v0, Lp3/a/o1/e$b;->L:Lp3/a/o1/e;

    .line 25
    iget-boolean v4, v1, Lp3/a/o1/e;->p:Z

    const/4 v5, 0x0

    .line 26
    iget v6, v1, Lp3/a/o1/e;->l:I

    const/4 v7, 0x0

    .line 27
    iget-object v8, v0, Lp3/a/o1/e$b;->z:Ljava/util/List;

    invoke-virtual/range {v3 .. v8}, Lp3/a/o1/b;->v(ZZIILjava/util/List;)V

    .line 28
    iget-object v1, v0, Lp3/a/o1/e$b;->L:Lp3/a/o1/e;

    .line 29
    iget-object v1, v1, Lp3/a/o1/e;->i:Lp3/a/n1/r2;

    .line 30
    iget-object v1, v1, Lp3/a/n1/r2;->a:[Lp3/a/j1;

    array-length v3, v1

    move v4, v2

    :goto_3
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 31
    check-cast v5, Lp3/a/j;

    .line 32
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 33
    iput-object v1, v0, Lp3/a/o1/e$b;->z:Ljava/util/List;

    .line 34
    iget-object v1, v0, Lp3/a/o1/e$b;->A:Lv3/f;

    .line 35
    iget-wide v3, v1, Lv3/f;->b:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    .line 36
    iget-object v1, v0, Lp3/a/o1/e$b;->H:Lp3/a/o1/m;

    iget-boolean v3, v0, Lp3/a/o1/e$b;->B:Z

    iget-object v4, v0, Lp3/a/o1/e$b;->L:Lp3/a/o1/e;

    .line 37
    iget v4, v4, Lp3/a/o1/e;->l:I

    .line 38
    iget-object v5, v0, Lp3/a/o1/e$b;->A:Lv3/f;

    iget-boolean v6, v0, Lp3/a/o1/e$b;->C:Z

    invoke-virtual {v1, v3, v4, v5, v6}, Lp3/a/o1/m;->a(ZILv3/f;Z)V

    .line 39
    :cond_4
    iput-boolean v2, v0, Lp3/a/o1/e$b;->J:Z

    .line 40
    :cond_5
    iget-object v0, p1, Lp3/a/o1/e;->g:Lp3/a/p0;

    .line 41
    iget-object v0, v0, Lp3/a/p0;->a:Lp3/a/p0$d;

    .line 42
    sget-object v1, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    if-eq v0, v1, :cond_6

    sget-object v1, Lp3/a/p0$d;->c:Lp3/a/p0$d;

    if-ne v0, v1, :cond_7

    .line 43
    :cond_6
    iget-boolean p1, p1, Lp3/a/o1/e;->p:Z

    if-eqz p1, :cond_8

    .line 44
    :cond_7
    iget-object p1, p0, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    invoke-virtual {p1}, Lp3/a/o1/b;->flush()V

    .line 45
    :cond_8
    iget p1, p0, Lp3/a/o1/f;->l:I

    const v0, 0x7ffffffd

    if-lt p1, v0, :cond_9

    const p1, 0x7fffffff

    .line 46
    iput p1, p0, Lp3/a/o1/f;->l:I

    .line 47
    sget-object v0, Lp3/a/o1/o/m/a;->b:Lp3/a/o1/o/m/a;

    sget-object v1, Lp3/a/g1;->p:Lp3/a/g1;

    const-string v2, "Stream ids exhausted"

    .line 48
    invoke-virtual {v1, v2}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v1

    .line 49
    invoke-virtual {p0, p1, v0, v1}, Lp3/a/o1/f;->v(ILp3/a/o1/o/m/a;Lp3/a/g1;)V

    goto :goto_4

    :cond_9
    add-int/lit8 p1, p1, 0x2

    .line 50
    iput p1, p0, Lp3/a/o1/f;->l:I

    :goto_4
    return-void

    :catchall_0
    move-exception p1

    .line 51
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 52
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v5, v0}, Ln3/g0/y;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final y()V
    .locals 8

    .line 1
    iget-object v0, p0, Lp3/a/o1/f;->t:Lp3/a/g1;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lp3/a/o1/f;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lp3/a/o1/f;->C:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-boolean v0, p0, Lp3/a/o1/f;->w:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lp3/a/o1/f;->w:Z

    .line 4
    iget-object v1, p0, Lp3/a/o1/f;->F:Lp3/a/n1/j1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v4, v1, Lp3/a/n1/j1;->e:Lp3/a/n1/j1$e;

    sget-object v5, Lp3/a/n1/j1$e;->f:Lp3/a/n1/j1$e;

    if-eq v4, v5, :cond_3

    .line 7
    iput-object v5, v1, Lp3/a/n1/j1;->e:Lp3/a/n1/j1$e;

    .line 8
    iget-object v4, v1, Lp3/a/n1/j1;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_2

    .line 9
    invoke-interface {v4, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 10
    :cond_2
    iget-object v4, v1, Lp3/a/n1/j1;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_3

    .line 11
    invoke-interface {v4, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 12
    iput-object v3, v1, Lp3/a/n1/j1;->g:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_3
    monitor-exit v1

    .line 14
    sget-object v1, Lp3/a/n1/r0;->n:Lp3/a/n1/n2$c;

    iget-object v4, p0, Lp3/a/o1/f;->E:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v1, v4}, Lp3/a/n1/n2;->b(Lp3/a/n1/n2$c;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, p0, Lp3/a/o1/f;->E:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 15
    monitor-exit v1

    throw v0

    .line 16
    :cond_4
    :goto_0
    iget-object v1, p0, Lp3/a/o1/f;->v:Lp3/a/n1/x0;

    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {p0}, Lp3/a/o1/f;->o()Ljava/lang/Throwable;

    move-result-object v4

    .line 18
    monitor-enter v1

    .line 19
    :try_start_1
    iget-boolean v5, v1, Lp3/a/n1/x0;->d:Z

    if-eqz v5, :cond_5

    .line 20
    monitor-exit v1

    goto :goto_2

    .line 21
    :cond_5
    iput-boolean v0, v1, Lp3/a/n1/x0;->d:Z

    .line 22
    iput-object v4, v1, Lp3/a/n1/x0;->e:Ljava/lang/Throwable;

    .line 23
    iget-object v5, v1, Lp3/a/n1/x0;->c:Ljava/util/Map;

    .line 24
    iput-object v3, v1, Lp3/a/n1/x0;->c:Ljava/util/Map;

    .line 25
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lp3/a/n1/u$a;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    .line 28
    new-instance v7, Lp3/a/n1/w0;

    invoke-direct {v7, v6, v4}, Lp3/a/n1/w0;-><init>(Lp3/a/n1/u$a;Ljava/lang/Throwable;)V

    .line 29
    invoke-static {v5, v7}, Lp3/a/n1/x0;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 30
    :cond_6
    :goto_2
    iput-object v3, p0, Lp3/a/o1/f;->v:Lp3/a/n1/x0;

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 31
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 32
    :cond_7
    :goto_3
    iget-boolean v1, p0, Lp3/a/o1/f;->u:Z

    if-nez v1, :cond_8

    .line 33
    iput-boolean v0, p0, Lp3/a/o1/f;->u:Z

    .line 34
    iget-object v0, p0, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    sget-object v1, Lp3/a/o1/o/m/a;->b:Lp3/a/o1/o/m/a;

    new-array v3, v2, [B

    invoke-virtual {v0, v2, v1, v3}, Lp3/a/o1/b;->l2(ILp3/a/o1/o/m/a;[B)V

    .line 35
    :cond_8
    iget-object v0, p0, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    invoke-virtual {v0}, Lp3/a/o1/b;->close()V

    :cond_9
    :goto_4
    return-void
.end method
