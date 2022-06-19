.class final Lio/grpc/r$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final f:Ljava/util/concurrent/Executor;

.field final g:Lio/grpc/r$b;

.field final synthetic h:Lio/grpc/r;


# direct methods
.method constructor <init>(Lio/grpc/r;Ljava/util/concurrent/Executor;Lio/grpc/r$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/r$d;->h:Lio/grpc/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/grpc/r$d;->f:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p3, p0, Lio/grpc/r$d;->g:Lio/grpc/r$b;

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/r$d;->f:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    sget-object v1, Lio/grpc/r;->j:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Exception notifying context listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/r$d;->g:Lio/grpc/r$b;

    iget-object v1, p0, Lio/grpc/r$d;->h:Lio/grpc/r;

    invoke-interface {v0, v1}, Lio/grpc/r$b;->a(Lio/grpc/r;)V

    return-void
.end method
