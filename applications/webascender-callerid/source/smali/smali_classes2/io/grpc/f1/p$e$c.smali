.class final Lio/grpc/f1/p$e$c;
.super Lio/grpc/f1/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/p$e;->j(Lio/grpc/b1;Lio/grpc/f1/r$a;Lio/grpc/q0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic g:Li/b/b;

.field final synthetic h:Lio/grpc/b1;

.field final synthetic i:Lio/grpc/q0;

.field final synthetic j:Lio/grpc/f1/p$e;


# direct methods
.method constructor <init>(Lio/grpc/f1/p$e;Li/b/b;Lio/grpc/b1;Lio/grpc/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/f1/p$e$c;->j:Lio/grpc/f1/p$e;

    iput-object p2, p0, Lio/grpc/f1/p$e$c;->g:Li/b/b;

    iput-object p3, p0, Lio/grpc/f1/p$e$c;->h:Lio/grpc/b1;

    iput-object p4, p0, Lio/grpc/f1/p$e$c;->i:Lio/grpc/q0;

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
    iget-object v0, p0, Lio/grpc/f1/p$e$c;->j:Lio/grpc/f1/p$e;

    invoke-static {v0}, Lio/grpc/f1/p$e;->f(Lio/grpc/f1/p$e;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/f1/p$e$c;->j:Lio/grpc/f1/p$e;

    iget-object v1, p0, Lio/grpc/f1/p$e$c;->h:Lio/grpc/b1;

    iget-object v2, p0, Lio/grpc/f1/p$e$c;->i:Lio/grpc/q0;

    invoke-static {v0, v1, v2}, Lio/grpc/f1/p$e;->h(Lio/grpc/f1/p$e;Lio/grpc/b1;Lio/grpc/q0;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/f1/p$e$c;->j:Lio/grpc/f1/p$e;

    iget-object v0, v0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v0}, Lio/grpc/f1/p;->q(Lio/grpc/f1/p;)Li/b/d;

    move-result-object v0

    const-string v1, "ClientCall$Listener.onClose"

    invoke-static {v1, v0}, Li/b/c;->g(Ljava/lang/String;Li/b/d;)V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/p$e$c;->g:Li/b/b;

    invoke-static {v0}, Li/b/c;->d(Li/b/b;)V

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/grpc/f1/p$e$c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lio/grpc/f1/p$e$c;->j:Lio/grpc/f1/p$e;

    iget-object v0, v0, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v0}, Lio/grpc/f1/p;->q(Lio/grpc/f1/p;)Li/b/d;

    move-result-object v0

    invoke-static {v1, v0}, Li/b/c;->i(Ljava/lang/String;Li/b/d;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/f1/p$e$c;->j:Lio/grpc/f1/p$e;

    iget-object v2, v2, Lio/grpc/f1/p$e;->c:Lio/grpc/f1/p;

    invoke-static {v2}, Lio/grpc/f1/p;->q(Lio/grpc/f1/p;)Li/b/d;

    move-result-object v2

    invoke-static {v1, v2}, Li/b/c;->i(Ljava/lang/String;Li/b/d;)V

    throw v0
.end method
