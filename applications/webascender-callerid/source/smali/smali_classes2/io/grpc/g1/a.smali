.class final Lio/grpc/g1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/g1/a$d;
    }
.end annotation


# instance fields
.field private final f:Ljava/lang/Object;

.field private final g:Ln/f;

.field private final h:Lio/grpc/f1/z1;

.field private final i:Lio/grpc/g1/b$a;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ln/b0;

.field private n:Ljava/net/Socket;


# direct methods
.method private constructor <init>(Lio/grpc/f1/z1;Lio/grpc/g1/b$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/g1/a;->f:Ljava/lang/Object;

    .line 3
    new-instance v0, Ln/f;

    invoke-direct {v0}, Ln/f;-><init>()V

    iput-object v0, p0, Lio/grpc/g1/a;->g:Ln/f;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/grpc/g1/a;->j:Z

    .line 5
    iput-boolean v0, p0, Lio/grpc/g1/a;->k:Z

    .line 6
    iput-boolean v0, p0, Lio/grpc/g1/a;->l:Z

    const-string v0, "executor"

    .line 7
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/f1/z1;

    iput-object p1, p0, Lio/grpc/g1/a;->h:Lio/grpc/f1/z1;

    const-string p1, "exceptionHandler"

    .line 8
    invoke-static {p2, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lio/grpc/g1/b$a;

    iput-object p2, p0, Lio/grpc/g1/a;->i:Lio/grpc/g1/b$a;

    return-void
.end method

.method static synthetic a(Lio/grpc/g1/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/g1/a;->f:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lio/grpc/g1/a;)Ln/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/g1/a;->g:Ln/f;

    return-object p0
.end method

.method static synthetic c(Lio/grpc/g1/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/grpc/g1/a;->j:Z

    return p1
.end method

.method static synthetic e(Lio/grpc/g1/a;)Ln/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/g1/a;->m:Ln/b0;

    return-object p0
.end method

.method static synthetic f(Lio/grpc/g1/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/grpc/g1/a;->k:Z

    return p1
.end method

.method static synthetic g(Lio/grpc/g1/a;)Lio/grpc/g1/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/g1/a;->i:Lio/grpc/g1/b$a;

    return-object p0
.end method

.method static synthetic i(Lio/grpc/g1/a;)Ljava/net/Socket;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/g1/a;->n:Ljava/net/Socket;

    return-object p0
.end method

.method static l(Lio/grpc/f1/z1;Lio/grpc/g1/b$a;)Lio/grpc/g1/a;
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/g1/a;

    invoke-direct {v0, p0, p1}, Lio/grpc/g1/a;-><init>(Lio/grpc/f1/z1;Lio/grpc/g1/b$a;)V

    return-object v0
.end method


# virtual methods
.method public B0(Ln/f;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lio/grpc/g1/a;->l:Z

    if-nez v0, :cond_2

    const-string v0, "AsyncSink.write"

    .line 3
    invoke-static {v0}, Li/b/c;->f(Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lio/grpc/g1/a;->f:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v1, p0, Lio/grpc/g1/a;->g:Ln/f;

    invoke-virtual {v1, p1, p2, p3}, Ln/f;->B0(Ln/f;J)V

    .line 6
    iget-boolean p1, p0, Lio/grpc/g1/a;->j:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lio/grpc/g1/a;->k:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/grpc/g1/a;->g:Ln/f;

    invoke-virtual {p1}, Ln/f;->e()J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lio/grpc/g1/a;->j:Z

    .line 8
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    iget-object p1, p0, Lio/grpc/g1/a;->h:Lio/grpc/f1/z1;

    new-instance p2, Lio/grpc/g1/a$a;

    invoke-direct {p2, p0}, Lio/grpc/g1/a$a;-><init>(Lio/grpc/g1/a;)V

    invoke-virtual {p1, p2}, Lio/grpc/f1/z1;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string p1, "AsyncSink.write"

    .line 10
    invoke-static {p1}, Li/b/c;->h(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string p1, "AsyncSink.write"

    .line 12
    invoke-static {p1}, Li/b/c;->h(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    const-string p2, "AsyncSink.write"

    .line 14
    invoke-static {p2}, Li/b/c;->h(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/grpc/g1/a;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/grpc/g1/a;->l:Z

    .line 3
    iget-object v0, p0, Lio/grpc/g1/a;->h:Lio/grpc/f1/z1;

    new-instance v1, Lio/grpc/g1/a$c;

    invoke-direct {v1, p0}, Lio/grpc/g1/a$c;-><init>(Lio/grpc/g1/a;)V

    invoke-virtual {v0, v1}, Lio/grpc/f1/z1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/grpc/g1/a;->l:Z

    if-nez v0, :cond_1

    const-string v0, "AsyncSink.flush"

    .line 2
    invoke-static {v0}, Li/b/c;->f(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/grpc/g1/a;->f:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-boolean v1, p0, Lio/grpc/g1/a;->k:Z

    if-eqz v1, :cond_0

    .line 5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "AsyncSink.flush"

    .line 6
    invoke-static {v0}, Li/b/c;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 7
    :try_start_2
    iput-boolean v1, p0, Lio/grpc/g1/a;->k:Z

    .line 8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :try_start_3
    iget-object v0, p0, Lio/grpc/g1/a;->h:Lio/grpc/f1/z1;

    new-instance v1, Lio/grpc/g1/a$b;

    invoke-direct {v1, p0}, Lio/grpc/g1/a$b;-><init>(Lio/grpc/g1/a;)V

    invoke-virtual {v0, v1}, Lio/grpc/f1/z1;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v0, "AsyncSink.flush"

    .line 10
    invoke-static {v0}, Li/b/c;->h(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 11
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    const-string v1, "AsyncSink.flush"

    .line 12
    invoke-static {v1}, Li/b/c;->h(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method j(Ln/b0;Ljava/net/Socket;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/g1/a;->m:Ln/b0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "AsyncSink\'s becomeConnected should only be called once."

    invoke-static {v0, v1}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    const-string v0, "sink"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ln/b0;

    iput-object p1, p0, Lio/grpc/g1/a;->m:Ln/b0;

    const-string p1, "socket"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/net/Socket;

    iput-object p2, p0, Lio/grpc/g1/a;->n:Ljava/net/Socket;

    return-void
.end method

.method public timeout()Ln/e0;
    .locals 1

    .line 1
    sget-object v0, Ln/e0;->d:Ln/e0;

    return-object v0
.end method
