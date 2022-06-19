.class Lio/grpc/f1/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/f;->j(Lio/grpc/f1/s1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/f1/s1;

.field final synthetic g:Lio/grpc/f1/f;


# direct methods
.method constructor <init>(Lio/grpc/f1/f;Lio/grpc/f1/s1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/f$b;->g:Lio/grpc/f1/f;

    iput-object p2, p0, Lio/grpc/f1/f$b;->f:Lio/grpc/f1/s1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/f1/f$b;->g:Lio/grpc/f1/f;

    invoke-static {v0}, Lio/grpc/f1/f;->k(Lio/grpc/f1/f;)Lio/grpc/f1/h1;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/f$b;->f:Lio/grpc/f1/s1;

    invoke-virtual {v0, v1}, Lio/grpc/f1/h1;->j(Lio/grpc/f1/s1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lio/grpc/f1/f$b;->g:Lio/grpc/f1/f;

    invoke-virtual {v1, v0}, Lio/grpc/f1/f;->h(Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lio/grpc/f1/f$b;->g:Lio/grpc/f1/f;

    invoke-static {v0}, Lio/grpc/f1/f;->k(Lio/grpc/f1/f;)Lio/grpc/f1/h1;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/f1/h1;->close()V

    :goto_0
    return-void
.end method
