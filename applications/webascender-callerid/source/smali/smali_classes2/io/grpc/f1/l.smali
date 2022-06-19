.class final Lio/grpc/f1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/f1/l$a;
    }
.end annotation


# instance fields
.field private final f:Lio/grpc/f1/t;

.field private final g:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lio/grpc/f1/t;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/f1/t;

    iput-object p1, p0, Lio/grpc/f1/l;->f:Lio/grpc/f1/t;

    const-string p1, "appExecutor"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lio/grpc/f1/l;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lio/grpc/f1/l;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/l;->g:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public A0(Ljava/net/SocketAddress;Lio/grpc/f1/t$a;Lio/grpc/f;)Lio/grpc/f1/v;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/f1/l$a;

    iget-object v1, p0, Lio/grpc/f1/l;->f:Lio/grpc/f1/t;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lio/grpc/f1/t;->A0(Ljava/net/SocketAddress;Lio/grpc/f1/t$a;Lio/grpc/f;)Lio/grpc/f1/v;

    move-result-object p1

    invoke-virtual {p2}, Lio/grpc/f1/t$a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/f1/l$a;-><init>(Lio/grpc/f1/l;Lio/grpc/f1/v;Ljava/lang/String;)V

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/l;->f:Lio/grpc/f1/t;

    invoke-interface {v0}, Lio/grpc/f1/t;->close()V

    return-void
.end method

.method public e1()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/l;->f:Lio/grpc/f1/t;

    invoke-interface {v0}, Lio/grpc/f1/t;->e1()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
