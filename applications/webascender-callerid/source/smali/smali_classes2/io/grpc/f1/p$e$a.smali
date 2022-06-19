.class final Lio/grpc/f1/p$e$a;
.super Lio/grpc/f1/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/p$e;->c(Lio/grpc/q0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic g:Li/b/b;

.field final synthetic h:Lio/grpc/q0;

.field final synthetic i:Lio/grpc/f1/p$e;


# direct methods
.method constructor <init>(Lio/grpc/f1/p$e;Li/b/b;Lio/grpc/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/f1/p$e$a;->i:Lio/grpc/f1/p$e;

    iput-object p2, p0, Lio/grpc/f1/p$e$a;->g:Li/b/b;

    iput-object p3, p0, Lio/grpc/f1/p$e$a;->h:Lio/grpc/q0;

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
    iget-object v0, p0, Lio/grpc/f1/p$e$a;->i:Lio/grpc/f1/p$e;

    invoke-static {v0}, Lio/grpc/f1/p$e;->f(Lio/grpc/f1/p$e;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/grpc/f1/p$e$a;->i:Lio/grpc/f1/p$e;

    invoke-static {v0}, Lio/grpc/f1/p$e;->g(Lio/grpc/f1/p$e;)Lio/grpc/g$a;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/p$e$a;->h:Lio/grpc/q0;

    invoke-virtual {v0, v1}, Lio/grpc/g$a;->b(Lio/grpc/q0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lio/grpc/b1;->g:Lio/grpc/b1;

    .line 4
    invoke-virtual {v1, v0}, Lio/grpc/b1;->q(Ljava/lang/Throwable;)Lio/grpc/b1;

    move-result-object v0

    const-string v1, "Failed to read headers"

    invoke-virtual {v0, v1}, Lio/grpc/b1;->r(Ljava/lang/String;)Lio/grpc/b1;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/grpc/f1/p$e$a;->i:Lio/grpc/f1/p$e;

    iget-object v1, v1, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v1}, Lio/grpc/f1/p;->f(Lio/grpc/f1/p;)Lio/grpc/f1/q;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/grpc/f1/q;->c(Lio/grpc/b1;)V

    .line 6
    iget-object v1, p0, Lio/grpc/f1/p$e$a;->i:Lio/grpc/f1/p$e;

    new-instance v2, Lio/grpc/q0;

    invoke-direct {v2}, Lio/grpc/q0;-><init>()V

    invoke-static {v1, v0, v2}, Lio/grpc/f1/p$e;->h(Lio/grpc/f1/p$e;Lio/grpc/b1;Lio/grpc/q0;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/f1/p$e$a;->i:Lio/grpc/f1/p$e;

    iget-object v0, v0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v0}, Lio/grpc/f1/p;->q(Lio/grpc/f1/p;)Li/b/d;

    move-result-object v0

    const-string v1, "ClientCall$Listener.headersRead"

    invoke-static {v1, v0}, Li/b/c;->g(Ljava/lang/String;Li/b/d;)V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/p$e$a;->g:Li/b/b;

    invoke-static {v0}, Li/b/c;->d(Li/b/b;)V

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/grpc/f1/p$e$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lio/grpc/f1/p$e$a;->i:Lio/grpc/f1/p$e;

    iget-object v0, v0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v0}, Lio/grpc/f1/p;->q(Lio/grpc/f1/p;)Li/b/d;

    move-result-object v0

    invoke-static {v1, v0}, Li/b/c;->i(Ljava/lang/String;Li/b/d;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/f1/p$e$a;->i:Lio/grpc/f1/p$e;

    iget-object v2, v2, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v2}, Lio/grpc/f1/p;->q(Lio/grpc/f1/p;)Li/b/d;

    move-result-object v2

    invoke-static {v1, v2}, Li/b/c;->i(Ljava/lang/String;Li/b/d;)V

    throw v0
.end method
