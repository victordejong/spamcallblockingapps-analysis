.class Lio/grpc/f1/z0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/f1/z0;


# direct methods
.method constructor <init>(Lio/grpc/f1/z0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/z0$a;->f:Lio/grpc/f1/z0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/f1/z0$a;->f:Lio/grpc/f1/z0;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/f1/z0$a;->f:Lio/grpc/f1/z0;

    invoke-static {v1}, Lio/grpc/f1/z0;->a(Lio/grpc/f1/z0;)Lio/grpc/f1/z0$e;

    move-result-object v1

    sget-object v2, Lio/grpc/f1/z0$e;->DISCONNECTED:Lio/grpc/f1/z0$e;

    if-eq v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/f1/z0$a;->f:Lio/grpc/f1/z0;

    invoke-static {v1, v2}, Lio/grpc/f1/z0;->b(Lio/grpc/f1/z0;Lio/grpc/f1/z0$e;)Lio/grpc/f1/z0$e;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lio/grpc/f1/z0$a;->f:Lio/grpc/f1/z0;

    invoke-static {v0}, Lio/grpc/f1/z0;->c(Lio/grpc/f1/z0;)Lio/grpc/f1/z0$d;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/f1/z0$d;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
