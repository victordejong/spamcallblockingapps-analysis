.class Lio/grpc/f1/p$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private final a:Lio/grpc/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/g$a<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field private b:Z

.field final synthetic c:Lio/grpc/f1/p;


# direct methods
.method public constructor <init>(Lio/grpc/f1/p;Lio/grpc/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/g$a<",
            "TRespT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "observer"

    .line 2
    invoke-static {p2, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lio/grpc/g$a;

    iput-object p2, p0, Lio/grpc/f1/p$e;->a:Lio/grpc/g$a;

    return-void
.end method

.method static synthetic f(Lio/grpc/f1/p$e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/grpc/f1/p$e;->b:Z

    return p0
.end method

.method static synthetic g(Lio/grpc/f1/p$e;)Lio/grpc/g$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/p$e;->a:Lio/grpc/g$a;

    return-object p0
.end method

.method static synthetic h(Lio/grpc/f1/p$e;Lio/grpc/b1;Lio/grpc/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/f1/p$e;->i(Lio/grpc/b1;Lio/grpc/q0;)V

    return-void
.end method

.method private i(Lio/grpc/b1;Lio/grpc/q0;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/grpc/f1/p$e;->b:Z

    .line 2
    iget-object v1, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v1, v0}, Lio/grpc/f1/p;->j(Lio/grpc/f1/p;Z)Z

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    iget-object v1, p0, Lio/grpc/f1/p$e;->a:Lio/grpc/g$a;

    invoke-static {v0, v1, p1, p2}, Lio/grpc/f1/p;->p(Lio/grpc/f1/p;Lio/grpc/g$a;Lio/grpc/b1;Lio/grpc/q0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p2, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {p2}, Lio/grpc/f1/p;->k(Lio/grpc/f1/p;)V

    .line 5
    iget-object p2, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {p2}, Lio/grpc/f1/p;->l(Lio/grpc/f1/p;)Lio/grpc/f1/m;

    move-result-object p2

    invoke-virtual {p1}, Lio/grpc/b1;->p()Z

    move-result p1

    invoke-virtual {p2, p1}, Lio/grpc/f1/m;->a(Z)V

    return-void

    :catchall_0
    move-exception p2

    .line 6
    iget-object v0, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v0}, Lio/grpc/f1/p;->k(Lio/grpc/f1/p;)V

    .line 7
    iget-object v0, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v0}, Lio/grpc/f1/p;->l(Lio/grpc/f1/p;)Lio/grpc/f1/m;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/b1;->p()Z

    move-result p1

    invoke-virtual {v0, p1}, Lio/grpc/f1/m;->a(Z)V

    throw p2
.end method

.method private j(Lio/grpc/b1;Lio/grpc/f1/r$a;Lio/grpc/q0;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {p2}, Lio/grpc/f1/p;->m(Lio/grpc/f1/p;)Lio/grpc/t;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Lio/grpc/b1;->n()Lio/grpc/b1$b;

    move-result-object v0

    sget-object v1, Lio/grpc/b1$b;->CANCELLED:Lio/grpc/b1$b;

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lio/grpc/t;->n()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Lio/grpc/f1/u0;

    invoke-direct {p1}, Lio/grpc/f1/u0;-><init>()V

    .line 5
    iget-object p2, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {p2}, Lio/grpc/f1/p;->f(Lio/grpc/f1/p;)Lio/grpc/f1/q;

    move-result-object p2

    invoke-interface {p2, p1}, Lio/grpc/f1/q;->i(Lio/grpc/f1/u0;)V

    .line 6
    sget-object p2, Lio/grpc/b1;->i:Lio/grpc/b1;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ClientCall was cancelled at or after deadline. "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/grpc/b1;->f(Ljava/lang/String;)Lio/grpc/b1;

    move-result-object p1

    .line 7
    new-instance p3, Lio/grpc/q0;

    invoke-direct {p3}, Lio/grpc/q0;-><init>()V

    .line 8
    :cond_0
    invoke-static {}, Li/b/c;->e()Li/b/b;

    move-result-object p2

    .line 9
    iget-object v0, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v0}, Lio/grpc/f1/p;->h(Lio/grpc/f1/p;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/grpc/f1/p$e$c;

    invoke-direct {v1, p0, p2, p1, p3}, Lio/grpc/f1/p$e$c;-><init>(Lio/grpc/f1/p$e;Li/b/b;Lio/grpc/b1;Lio/grpc/q0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/f1/g2$a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v0}, Lio/grpc/f1/p;->q(Lio/grpc/f1/p;)Li/b/d;

    move-result-object v0

    const-string v1, "ClientStreamListener.messagesAvailable"

    invoke-static {v1, v0}, Li/b/c;->g(Ljava/lang/String;Li/b/d;)V

    .line 2
    invoke-static {}, Li/b/c;->e()Li/b/b;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v2}, Lio/grpc/f1/p;->h(Lio/grpc/f1/p;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lio/grpc/f1/p$e$b;

    invoke-direct {v3, p0, v0, p1}, Lio/grpc/f1/p$e$b;-><init>(Lio/grpc/f1/p$e;Li/b/b;Lio/grpc/f1/g2$a;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {p1}, Lio/grpc/f1/p;->q(Lio/grpc/f1/p;)Li/b/d;

    move-result-object p1

    invoke-static {v1, p1}, Li/b/c;->i(Ljava/lang/String;Li/b/d;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v0}, Lio/grpc/f1/p;->q(Lio/grpc/f1/p;)Li/b/d;

    move-result-object v0

    invoke-static {v1, v0}, Li/b/c;->i(Ljava/lang/String;Li/b/d;)V

    throw p1
.end method

.method public b(Lio/grpc/b1;Lio/grpc/q0;)V
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/f1/r$a;->PROCESSED:Lio/grpc/f1/r$a;

    invoke-virtual {p0, p1, v0, p2}, Lio/grpc/f1/p$e;->e(Lio/grpc/b1;Lio/grpc/f1/r$a;Lio/grpc/q0;)V

    return-void
.end method

.method public c(Lio/grpc/q0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v0}, Lio/grpc/f1/p;->q(Lio/grpc/f1/p;)Li/b/d;

    move-result-object v0

    const-string v1, "ClientStreamListener.headersRead"

    invoke-static {v1, v0}, Li/b/c;->g(Ljava/lang/String;Li/b/d;)V

    .line 2
    invoke-static {}, Li/b/c;->e()Li/b/b;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v2}, Lio/grpc/f1/p;->h(Lio/grpc/f1/p;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lio/grpc/f1/p$e$a;

    invoke-direct {v3, p0, v0, p1}, Lio/grpc/f1/p$e$a;-><init>(Lio/grpc/f1/p$e;Li/b/b;Lio/grpc/q0;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {p1}, Lio/grpc/f1/p;->q(Lio/grpc/f1/p;)Li/b/d;

    move-result-object p1

    invoke-static {v1, p1}, Li/b/c;->i(Ljava/lang/String;Li/b/d;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v0}, Lio/grpc/f1/p;->q(Lio/grpc/f1/p;)Li/b/d;

    move-result-object v0

    invoke-static {v1, v0}, Li/b/c;->i(Ljava/lang/String;Li/b/d;)V

    throw p1
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v0}, Lio/grpc/f1/p;->i(Lio/grpc/f1/p;)Lio/grpc/r0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/r0;->e()Lio/grpc/r0$d;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/r0$d;->clientSendsOneMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v0}, Lio/grpc/f1/p;->q(Lio/grpc/f1/p;)Li/b/d;

    move-result-object v0

    const-string v1, "ClientStreamListener.onReady"

    invoke-static {v1, v0}, Li/b/c;->g(Ljava/lang/String;Li/b/d;)V

    .line 3
    invoke-static {}, Li/b/c;->e()Li/b/b;

    move-result-object v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v2}, Lio/grpc/f1/p;->h(Lio/grpc/f1/p;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lio/grpc/f1/p$e$d;

    invoke-direct {v3, p0, v0}, Lio/grpc/f1/p$e$d;-><init>(Lio/grpc/f1/p$e;Li/b/b;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v0}, Lio/grpc/f1/p;->q(Lio/grpc/f1/p;)Li/b/d;

    move-result-object v0

    invoke-static {v1, v0}, Li/b/c;->i(Ljava/lang/String;Li/b/d;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v2}, Lio/grpc/f1/p;->q(Lio/grpc/f1/p;)Li/b/d;

    move-result-object v2

    invoke-static {v1, v2}, Li/b/c;->i(Ljava/lang/String;Li/b/d;)V

    throw v0
.end method

.method public e(Lio/grpc/b1;Lio/grpc/f1/r$a;Lio/grpc/q0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v0}, Lio/grpc/f1/p;->q(Lio/grpc/f1/p;)Li/b/d;

    move-result-object v0

    const-string v1, "ClientStreamListener.closed"

    invoke-static {v1, v0}, Li/b/c;->g(Ljava/lang/String;Li/b/d;)V

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/f1/p$e;->j(Lio/grpc/b1;Lio/grpc/f1/r$a;Lio/grpc/q0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p1, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {p1}, Lio/grpc/f1/p;->q(Lio/grpc/f1/p;)Li/b/d;

    move-result-object p1

    invoke-static {v1, p1}, Li/b/c;->i(Ljava/lang/String;Li/b/d;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {p2}, Lio/grpc/f1/p;->q(Lio/grpc/f1/p;)Li/b/d;

    move-result-object p2

    invoke-static {v1, p2}, Li/b/c;->i(Ljava/lang/String;Li/b/d;)V

    throw p1
.end method
