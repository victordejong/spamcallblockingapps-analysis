.class public final Lokhttp3/internal/connection/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/e$a;,
        Lokhttp3/internal/connection/e$b;
    }
.end annotation


# instance fields
.field private final f:Lokhttp3/internal/connection/h;

.field private final g:Lm/u;

.field private final h:Lokhttp3/internal/connection/e$c;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Ljava/lang/Object;

.field private k:Lokhttp3/internal/connection/d;

.field private l:Lokhttp3/internal/connection/g;

.field private m:Z

.field private n:Lokhttp3/internal/connection/c;

.field private o:Z

.field private p:Z

.field private q:Z

.field private volatile r:Z

.field private volatile s:Lokhttp3/internal/connection/c;

.field private volatile t:Lokhttp3/internal/connection/g;

.field private final u:Lm/c0;

.field private final v:Lm/e0;

.field private final w:Z


# direct methods
.method public constructor <init>(Lm/c0;Lm/e0;Z)V
    .locals 2

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalRequest"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    iput-object p2, p0, Lokhttp3/internal/connection/e;->v:Lm/e0;

    iput-boolean p3, p0, Lokhttp3/internal/connection/e;->w:Z

    .line 2
    invoke-virtual {p1}, Lm/c0;->m()Lm/l;

    move-result-object p2

    invoke-virtual {p2}, Lm/l;->a()Lokhttp3/internal/connection/h;

    move-result-object p2

    iput-object p2, p0, Lokhttp3/internal/connection/e;->f:Lokhttp3/internal/connection/h;

    .line 3
    invoke-virtual {p1}, Lm/c0;->r()Lm/u$b;

    move-result-object p2

    invoke-interface {p2, p0}, Lm/u$b;->a(Lm/f;)Lm/u;

    move-result-object p2

    iput-object p2, p0, Lokhttp3/internal/connection/e;->g:Lm/u;

    .line 4
    new-instance p2, Lokhttp3/internal/connection/e$c;

    invoke-direct {p2, p0}, Lokhttp3/internal/connection/e$c;-><init>(Lokhttp3/internal/connection/e;)V

    .line 5
    invoke-virtual {p1}, Lm/c0;->h()I

    move-result p1

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Ln/e0;->g(JLjava/util/concurrent/TimeUnit;)Ln/e0;

    .line 6
    iput-object p2, p0, Lokhttp3/internal/connection/e;->h:Lokhttp3/internal/connection/e$c;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/e;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lokhttp3/internal/connection/e;->q:Z

    return-void
.end method

.method private final B(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->m:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/e;->h:Lokhttp3/internal/connection/e$c;

    invoke-virtual {v0}, Ln/d;->s()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_2
    return-object v0
.end method

.method private final C()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-boolean v1, p0, Lokhttp3/internal/connection/e;->w:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic a(Lokhttp3/internal/connection/e;)Lokhttp3/internal/connection/e$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/e;->h:Lokhttp3/internal/connection/e$c;

    return-object p0
.end method

.method public static final synthetic b(Lokhttp3/internal/connection/e;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/connection/e;->C()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final e(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lm/k0/b;->g:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Thread.currentThread()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST NOT hold lock on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v1, p0, Lokhttp3/internal/connection/e;->l:Lokhttp3/internal/connection/g;

    if-eqz v1, :cond_8

    if-eqz v0, :cond_3

    .line 4
    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Thread.currentThread()"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " MUST NOT hold lock on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 6
    :cond_3
    :goto_1
    monitor-enter v1

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->w()Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v1

    .line 9
    iget-object v2, p0, Lokhttp3/internal/connection/e;->l:Lokhttp3/internal/connection/g;

    if-nez v2, :cond_5

    if-eqz v0, :cond_4

    .line 10
    invoke-static {v0}, Lm/k0/b;->k(Ljava/net/Socket;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/connection/e;->g:Lm/u;

    invoke-virtual {v0, p0, v1}, Lm/u;->l(Lm/f;Lm/k;)V

    goto :goto_3

    :cond_5
    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const-string p1, "Check failed."

    .line 12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v1

    throw p1

    .line 14
    :cond_8
    :goto_3
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/e;->B(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-eqz p1, :cond_a

    .line 15
    iget-object p1, p0, Lokhttp3/internal/connection/e;->g:Lm/u;

    if-eqz v0, :cond_9

    invoke-virtual {p1, p0, v0}, Lm/u;->e(Lm/f;Ljava/io/IOException;)V

    goto :goto_4

    :cond_9
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    .line 16
    :cond_a
    iget-object p1, p0, Lokhttp3/internal/connection/e;->g:Lm/u;

    invoke-virtual {p1, p0}, Lm/u;->d(Lm/f;)V

    :goto_4
    return-object v0
.end method

.method private final f()V
    .locals 2

    .line 1
    sget-object v0, Lm/k0/i/h;->c:Lm/k0/i/h$a;

    invoke-virtual {v0}, Lm/k0/i/h$a;->g()Lm/k0/i/h;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lm/k0/i/h;->i(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/e;->j:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/e;->g:Lm/u;

    invoke-virtual {v0, p0}, Lm/u;->f(Lm/f;)V

    return-void
.end method

.method private final h(Lm/y;)Lm/a;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lm/y;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v1}, Lm/c0;->I()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 3
    iget-object v1, v0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v1}, Lm/c0;->v()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 4
    iget-object v3, v0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v3}, Lm/c0;->k()Lm/h;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_0

    :cond_0
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    .line 5
    :goto_0
    new-instance v1, Lm/a;

    .line 6
    invoke-virtual/range {p1 .. p1}, Lm/y;->i()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual/range {p1 .. p1}, Lm/y;->o()I

    move-result v6

    .line 8
    iget-object v2, v0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v2}, Lm/c0;->q()Lm/t;

    move-result-object v7

    .line 9
    iget-object v2, v0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v2}, Lm/c0;->H()Ljavax/net/SocketFactory;

    move-result-object v8

    .line 10
    iget-object v2, v0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v2}, Lm/c0;->D()Lm/c;

    move-result-object v12

    .line 11
    iget-object v2, v0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v2}, Lm/c0;->C()Ljava/net/Proxy;

    move-result-object v13

    .line 12
    iget-object v2, v0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v2}, Lm/c0;->B()Ljava/util/List;

    move-result-object v14

    .line 13
    iget-object v2, v0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v2}, Lm/c0;->n()Ljava/util/List;

    move-result-object v15

    .line 14
    iget-object v2, v0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v2}, Lm/c0;->E()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    .line 15
    invoke-direct/range {v4 .. v16}, Lm/a;-><init>(Ljava/lang/String;ILm/t;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lm/h;Lm/c;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->m:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lokhttp3/internal/connection/e;->m:Z

    .line 3
    iget-object v0, p0, Lokhttp3/internal/connection/e;->h:Lokhttp3/internal/connection/e$c;

    invoke-virtual {v0}, Ln/d;->s()Z

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public M(Lm/g;)V
    .locals 3

    const-string v0, "responseCallback"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lokhttp3/internal/connection/e;->f()V

    .line 3
    iget-object v0, p0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v0}, Lm/c0;->p()Lm/r;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/connection/e$a;

    invoke-direct {v1, p0, p1}, Lokhttp3/internal/connection/e$a;-><init>(Lokhttp3/internal/connection/e;Lm/g;)V

    invoke-virtual {v0, v1}, Lm/r;->b(Lokhttp3/internal/connection/e$a;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->r:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lokhttp3/internal/connection/e;->r:Z

    .line 3
    iget-object v0, p0, Lokhttp3/internal/connection/e;->s:Lokhttp3/internal/connection/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->b()V

    .line 4
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->t:Lokhttp3/internal/connection/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lokhttp3/internal/connection/g;->e()V

    .line 5
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/e;->g:Lm/u;

    invoke-virtual {v0, p0}, Lm/u;->g(Lm/f;)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->g()Lokhttp3/internal/connection/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lm/f;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->g()Lokhttp3/internal/connection/e;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lokhttp3/internal/connection/g;)V
    .locals 4

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lm/k0/b;->g:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Thread.currentThread()"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " MUST hold lock on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/e;->l:Lokhttp3/internal/connection/g;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 4
    iput-object p1, p0, Lokhttp3/internal/connection/e;->l:Lokhttp3/internal/connection/g;

    .line 5
    invoke-virtual {p1}, Lokhttp3/internal/connection/g;->o()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lokhttp3/internal/connection/e$b;

    iget-object v1, p0, Lokhttp3/internal/connection/e;->j:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/connection/e$b;-><init>(Lokhttp3/internal/connection/e;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public execute()Lm/g0;
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/e;->h:Lokhttp3/internal/connection/e$c;

    invoke-virtual {v0}, Ln/d;->r()V

    .line 3
    invoke-direct {p0}, Lokhttp3/internal/connection/e;->f()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v0}, Lm/c0;->p()Lm/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lm/r;->c(Lokhttp3/internal/connection/e;)V

    .line 5
    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->r()Lm/g0;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v1}, Lm/c0;->p()Lm/r;

    move-result-object v1

    invoke-virtual {v1, p0}, Lm/r;->h(Lokhttp3/internal/connection/e;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v1}, Lm/c0;->p()Lm/r;

    move-result-object v1

    invoke-virtual {v1, p0}, Lm/r;->h(Lokhttp3/internal/connection/e;)V

    throw v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Lokhttp3/internal/connection/e;
    .locals 4

    .line 1
    new-instance v0, Lokhttp3/internal/connection/e;

    iget-object v1, p0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    iget-object v2, p0, Lokhttp3/internal/connection/e;->v:Lm/e0;

    iget-boolean v3, p0, Lokhttp3/internal/connection/e;->w:Z

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/internal/connection/e;-><init>(Lm/c0;Lm/e0;Z)V

    return-object v0
.end method

.method public final i(Lm/e0;Z)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->n:Lokhttp3/internal/connection/c;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->p:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 4
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->o:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    if-eqz p2, :cond_1

    .line 7
    new-instance p2, Lokhttp3/internal/connection/d;

    .line 8
    iget-object v0, p0, Lokhttp3/internal/connection/e;->f:Lokhttp3/internal/connection/h;

    .line 9
    invoke-virtual {p1}, Lm/e0;->l()Lm/y;

    move-result-object p1

    invoke-direct {p0, p1}, Lokhttp3/internal/connection/e;->h(Lm/y;)Lm/a;

    move-result-object p1

    .line 10
    iget-object v1, p0, Lokhttp3/internal/connection/e;->g:Lm/u;

    .line 11
    invoke-direct {p2, v0, p1, p0, v1}, Lokhttp3/internal/connection/d;-><init>(Lokhttp3/internal/connection/h;Lm/a;Lokhttp3/internal/connection/e;Lm/u;)V

    iput-object p2, p0, Lokhttp3/internal/connection/e;->k:Lokhttp3/internal/connection/d;

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string p1, "Check failed."

    .line 12
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    const-string p1, "cannot make a new request because the previous response is still open: please call response.close()"

    .line 13
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    throw p1

    :cond_4
    const-string p1, "Check failed."

    .line 15
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isCanceled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->r:Z

    return v0
.end method

.method public final k(Z)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->q:Z

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lokhttp3/internal/connection/e;->s:Lokhttp3/internal/connection/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/internal/connection/c;->d()V

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lokhttp3/internal/connection/e;->n:Lokhttp3/internal/connection/c;

    return-void

    :cond_1
    :try_start_1
    const-string p1, "released"

    .line 7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0

    throw p1
.end method

.method public final l()Lm/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    return-object v0
.end method

.method public final m()Lokhttp3/internal/connection/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->l:Lokhttp3/internal/connection/g;

    return-object v0
.end method

.method public final n()Lm/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->g:Lm/u;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->w:Z

    return v0
.end method

.method public final p()Lokhttp3/internal/connection/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->n:Lokhttp3/internal/connection/c;

    return-object v0
.end method

.method public final q()Lm/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->v:Lm/e0;

    return-object v0
.end method

.method public final r()Lm/g0;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v0}, Lm/c0;->w()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/s/k;->w(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 3
    new-instance v0, Lm/k0/f/j;

    iget-object v1, p0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-direct {v0, v1}, Lm/k0/f/j;-><init>(Lm/c0;)V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Lm/k0/f/a;

    iget-object v1, p0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v1}, Lm/c0;->o()Lm/p;

    move-result-object v1

    invoke-direct {v0, v1}, Lm/k0/f/a;-><init>(Lm/p;)V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Lm/k0/d/a;

    iget-object v1, p0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v1}, Lm/c0;->g()Lm/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lm/k0/d/a;-><init>(Lm/d;)V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lokhttp3/internal/connection/a;->a:Lokhttp3/internal/connection/a;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 7
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->w:Z

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v0}, Lm/c0;->y()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/s/k;->w(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 9
    :cond_0
    new-instance v0, Lm/k0/f/b;

    iget-boolean v1, p0, Lokhttp3/internal/connection/e;->w:Z

    invoke-direct {v0, v1}, Lm/k0/f/b;-><init>(Z)V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v9, Lm/k0/f/g;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 11
    iget-object v5, p0, Lokhttp3/internal/connection/e;->v:Lm/e0;

    .line 12
    iget-object v0, p0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v0}, Lm/c0;->l()I

    move-result v6

    .line 13
    iget-object v0, p0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v0}, Lm/c0;->F()I

    move-result v7

    .line 14
    iget-object v0, p0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v0}, Lm/c0;->L()I

    move-result v8

    move-object v0, v9

    move-object v1, p0

    .line 15
    invoke-direct/range {v0 .. v8}, Lm/k0/f/g;-><init>(Lokhttp3/internal/connection/e;Ljava/util/List;ILokhttp3/internal/connection/c;Lm/e0;III)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 16
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/connection/e;->v:Lm/e0;

    invoke-virtual {v9, v2}, Lm/k0/f/g;->a(Lm/e0;)Lm/g0;

    move-result-object v2

    .line 17
    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->isCanceled()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 18
    invoke-virtual {p0, v1}, Lokhttp3/internal/connection/e;->u(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v2

    .line 19
    :cond_1
    :try_start_1
    invoke-static {v2}, Lm/k0/b;->j(Ljava/io/Closeable;)V

    .line 20
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    .line 21
    :try_start_2
    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/e;->u(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-direct {v0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    .line 22
    invoke-virtual {p0, v1}, Lokhttp3/internal/connection/e;->u(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_3
    throw v2
.end method

.method public request()Lm/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->v:Lm/e0;

    return-object v0
.end method

.method public final s(Lm/k0/f/g;)Lokhttp3/internal/connection/c;
    .locals 4

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->q:Z

    if-eqz v0, :cond_4

    .line 3
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->p:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 4
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->o:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    monitor-exit p0

    .line 7
    iget-object v0, p0, Lokhttp3/internal/connection/e;->k:Lokhttp3/internal/connection/d;

    if-eqz v0, :cond_1

    .line 8
    iget-object v2, p0, Lokhttp3/internal/connection/e;->u:Lm/c0;

    invoke-virtual {v0, v2, p1}, Lokhttp3/internal/connection/d;->a(Lm/c0;Lm/k0/f/g;)Lm/k0/f/d;

    move-result-object p1

    .line 9
    new-instance v2, Lokhttp3/internal/connection/c;

    iget-object v3, p0, Lokhttp3/internal/connection/e;->g:Lm/u;

    invoke-direct {v2, p0, v3, v0, p1}, Lokhttp3/internal/connection/c;-><init>(Lokhttp3/internal/connection/e;Lm/u;Lokhttp3/internal/connection/d;Lm/k0/f/d;)V

    .line 10
    iput-object v2, p0, Lokhttp3/internal/connection/e;->n:Lokhttp3/internal/connection/c;

    .line 11
    iput-object v2, p0, Lokhttp3/internal/connection/e;->s:Lokhttp3/internal/connection/c;

    .line 12
    monitor-enter p0

    .line 13
    :try_start_1
    iput-boolean v1, p0, Lokhttp3/internal/connection/e;->o:Z

    .line 14
    iput-boolean v1, p0, Lokhttp3/internal/connection/e;->p:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    monitor-exit p0

    .line 16
    iget-boolean p1, p0, Lokhttp3/internal/connection/e;->r:Z

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    throw p1

    .line 18
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    :try_start_2
    const-string p1, "Check failed."

    .line 19
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p1, "Check failed."

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string p1, "released"

    .line 21
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 22
    monitor-exit p0

    throw p1
.end method

.method public final t(Lokhttp3/internal/connection/c;ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(",
            "Lokhttp3/internal/connection/c;",
            "ZZTE;)TE;"
        }
    .end annotation

    const-string v0, "exchange"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->s:Lokhttp3/internal/connection/c;

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    return-object p4

    .line 2
    :cond_0
    monitor-enter p0

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lokhttp3/internal/connection/e;->o:Z

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_0
    if-eqz p3, :cond_7

    iget-boolean v1, p0, Lokhttp3/internal/connection/e;->p:Z

    if-eqz v1, :cond_7

    :cond_2
    if-eqz p2, :cond_3

    .line 4
    iput-boolean p1, p0, Lokhttp3/internal/connection/e;->o:Z

    :cond_3
    if-eqz p3, :cond_4

    .line 5
    iput-boolean p1, p0, Lokhttp3/internal/connection/e;->p:Z

    .line 6
    :cond_4
    iget-boolean p2, p0, Lokhttp3/internal/connection/e;->o:Z

    if-nez p2, :cond_5

    iget-boolean p3, p0, Lokhttp3/internal/connection/e;->p:Z

    if-nez p3, :cond_5

    const/4 p3, 0x1

    goto :goto_1

    :cond_5
    const/4 p3, 0x0

    :goto_1
    if-nez p2, :cond_6

    .line 7
    iget-boolean p2, p0, Lokhttp3/internal/connection/e;->p:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lokhttp3/internal/connection/e;->q:Z

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    move p1, p3

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    .line 8
    :goto_3
    sget-object p2, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lokhttp3/internal/connection/e;->s:Lokhttp3/internal/connection/c;

    .line 11
    iget-object p1, p0, Lokhttp3/internal/connection/e;->l:Lokhttp3/internal/connection/g;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lokhttp3/internal/connection/g;->t()V

    :cond_8
    if-eqz v0, :cond_9

    .line 12
    invoke-direct {p0, p4}, Lokhttp3/internal/connection/e;->e(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1

    :cond_9
    return-object p4

    .line 13
    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic timeout()Ln/e0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->z()Ln/d;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lokhttp3/internal/connection/e;->q:Z

    .line 4
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 5
    :cond_0
    sget-object v0, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    if-eqz v1, :cond_1

    .line 7
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/e;->e(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0

    throw p1
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->v:Lm/e0;

    invoke-virtual {v0}, Lm/e0;->l()Lm/y;

    move-result-object v0

    invoke-virtual {v0}, Lm/y;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w()Ljava/net/Socket;
    .locals 8

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->l:Lokhttp3/internal/connection/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 2
    sget-boolean v2, Lm/k0/b;->g:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Thread.currentThread()"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " MUST hold lock on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/g;->o()Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 6
    check-cast v6, Ljava/lang/ref/Reference;

    .line 7
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/internal/connection/e;

    invoke-static {v6, p0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    :goto_2
    if-eq v5, v7, :cond_4

    const/4 v4, 0x1

    :cond_4
    if-eqz v4, :cond_6

    .line 8
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9
    iput-object v1, p0, Lokhttp3/internal/connection/e;->l:Lokhttp3/internal/connection/g;

    .line 10
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokhttp3/internal/connection/g;->C(J)V

    .line 12
    iget-object v2, p0, Lokhttp3/internal/connection/e;->f:Lokhttp3/internal/connection/h;

    invoke-virtual {v2, v0}, Lokhttp3/internal/connection/h;->c(Lokhttp3/internal/connection/g;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {v0}, Lokhttp3/internal/connection/g;->E()Ljava/net/Socket;

    move-result-object v0

    return-object v0

    :cond_5
    return-object v1

    .line 14
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_7
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1
.end method

.method public final x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->k:Lokhttp3/internal/connection/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/internal/connection/d;->e()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final y(Lokhttp3/internal/connection/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/connection/e;->t:Lokhttp3/internal/connection/g;

    return-void
.end method

.method public z()Ln/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->h:Lokhttp3/internal/connection/e$c;

    return-object v0
.end method
