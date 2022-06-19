.class Lio/grpc/f1/d1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/d1;-><init>(Lio/grpc/f1/b;Lio/grpc/f1/t;Lio/grpc/f1/j$a;Lio/grpc/f1/l1;Lcom/google/common/base/s;Ljava/util/List;Lio/grpc/f1/h2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/f1/d1;


# direct methods
.method constructor <init>(Lio/grpc/f1/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/d1$d;->f:Lio/grpc/f1/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$d;->f:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->x(Lio/grpc/f1/d1;)Lio/grpc/f1/d1$h;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/f1/d1$h;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
