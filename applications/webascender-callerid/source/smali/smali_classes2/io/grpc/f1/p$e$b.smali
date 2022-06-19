.class final Lio/grpc/f1/p$e$b;
.super Lio/grpc/f1/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/p$e;->a(Lio/grpc/f1/g2$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic g:Li/b/b;

.field final synthetic h:Lio/grpc/f1/g2$a;

.field final synthetic i:Lio/grpc/f1/p$e;


# direct methods
.method constructor <init>(Lio/grpc/f1/p$e;Li/b/b;Lio/grpc/f1/g2$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/f1/p$e$b;->i:Lio/grpc/f1/p$e;

    iput-object p2, p0, Lio/grpc/f1/p$e$b;->g:Li/b/b;

    iput-object p3, p0, Lio/grpc/f1/p$e$b;->h:Lio/grpc/f1/g2$a;

    .line 2
    iget-object p1, p1, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {p1}, Lio/grpc/f1/p;->o(Lio/grpc/f1/p;)Lio/grpc/r;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/f1/x;-><init>(Lio/grpc/r;)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/f1/p$e$b;->i:Lio/grpc/f1/p$e;

    invoke-static {v0}, Lio/grpc/f1/p$e;->f(Lio/grpc/f1/p$e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/f1/p$e$b;->h:Lio/grpc/f1/g2$a;

    invoke-static {v0}, Lio/grpc/f1/o0;->b(Lio/grpc/f1/g2$a;)V

    return-void

    .line 3
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/grpc/f1/p$e$b;->h:Lio/grpc/f1/g2$a;

    invoke-interface {v0}, Lio/grpc/f1/g2$a;->next()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 4
    :try_start_1
    iget-object v1, p0, Lio/grpc/f1/p$e$b;->i:Lio/grpc/f1/p$e;

    invoke-static {v1}, Lio/grpc/f1/p$e;->g(Lio/grpc/f1/p$e;)Lio/grpc/g$a;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/f1/p$e$b;->i:Lio/grpc/f1/p$e;

    iget-object v2, v2, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v2}, Lio/grpc/f1/p;->i(Lio/grpc/f1/p;)Lio/grpc/r0;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/grpc/r0;->i(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/g$a;->c(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 6
    invoke-static {v0}, Lio/grpc/f1/o0;->c(Ljava/io/InputStream;)V

    .line 7
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 8
    iget-object v1, p0, Lio/grpc/f1/p$e$b;->h:Lio/grpc/f1/g2$a;

    invoke-static {v1}, Lio/grpc/f1/o0;->b(Lio/grpc/f1/g2$a;)V

    .line 9
    sget-object v1, Lio/grpc/b1;->g:Lio/grpc/b1;

    .line 10
    invoke-virtual {v1, v0}, Lio/grpc/b1;->q(Ljava/lang/Throwable;)Lio/grpc/b1;

    move-result-object v0

    const-string v1, "Failed to read message."

    invoke-virtual {v0, v1}, Lio/grpc/b1;->r(Ljava/lang/String;)Lio/grpc/b1;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lio/grpc/f1/p$e$b;->i:Lio/grpc/f1/p$e;

    iget-object v1, v1, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v1}, Lio/grpc/f1/p;->f(Lio/grpc/f1/p;)Lio/grpc/f1/q;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/grpc/f1/q;->c(Lio/grpc/b1;)V

    .line 12
    iget-object v1, p0, Lio/grpc/f1/p$e$b;->i:Lio/grpc/f1/p$e;

    new-instance v2, Lio/grpc/q0;

    invoke-direct {v2}, Lio/grpc/q0;-><init>()V

    invoke-static {v1, v0, v2}, Lio/grpc/f1/p$e;->h(Lio/grpc/f1/p$e;Lio/grpc/b1;Lio/grpc/q0;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/f1/p$e$b;->i:Lio/grpc/f1/p$e;

    iget-object v0, v0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v0}, Lio/grpc/f1/p;->q(Lio/grpc/f1/p;)Li/b/d;

    move-result-object v0

    const-string v1, "ClientCall$Listener.messagesAvailable"

    invoke-static {v1, v0}, Li/b/c;->g(Ljava/lang/String;Li/b/d;)V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/p$e$b;->g:Li/b/b;

    invoke-static {v0}, Li/b/c;->d(Li/b/b;)V

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/grpc/f1/p$e$b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lio/grpc/f1/p$e$b;->i:Lio/grpc/f1/p$e;

    iget-object v0, v0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v0}, Lio/grpc/f1/p;->q(Lio/grpc/f1/p;)Li/b/d;

    move-result-object v0

    invoke-static {v1, v0}, Li/b/c;->i(Ljava/lang/String;Li/b/d;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/f1/p$e$b;->i:Lio/grpc/f1/p$e;

    iget-object v2, v2, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v2}, Lio/grpc/f1/p;->q(Lio/grpc/f1/p;)Li/b/d;

    move-result-object v2

    invoke-static {v1, v2}, Li/b/c;->i(Ljava/lang/String;Li/b/d;)V

    throw v0
.end method
