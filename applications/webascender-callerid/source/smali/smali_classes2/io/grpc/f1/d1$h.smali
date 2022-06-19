.class final Lio/grpc/f1/d1$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field private final a:Lio/grpc/f1/l1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/f1/l1<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lio/grpc/f1/l1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/f1/l1<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "executorPool"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/f1/l1;

    iput-object p1, p0, Lio/grpc/f1/d1$h;->a:Lio/grpc/f1/l1;

    return-void
.end method


# virtual methods
.method declared-synchronized a()Ljava/util/concurrent/Executor;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/f1/d1$h;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/f1/d1$h;->a:Lio/grpc/f1/l1;

    invoke-interface {v0}, Lio/grpc/f1/l1;->a()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s.getObject()"

    iget-object v2, p0, Lio/grpc/f1/d1$h;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/common/base/m;->q(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/f1/d1$h;->b:Ljava/util/concurrent/Executor;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/f1/d1$h;->b:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/f1/d1$h;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lio/grpc/f1/d1$h;->a:Lio/grpc/f1/l1;

    invoke-interface {v1, v0}, Lio/grpc/f1/l1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/f1/d1$h;->b:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
