.class Lio/grpc/f1/v0$l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/v0$l;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/f1/v0$l;


# direct methods
.method constructor <init>(Lio/grpc/f1/v0$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/v0$l$c;->f:Lio/grpc/f1/v0$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0$l$c;->f:Lio/grpc/f1/v0$l;

    iget-object v0, v0, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->p(Lio/grpc/f1/v0;)Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/v0$l$c;->f:Lio/grpc/f1/v0$l;

    iget-object v1, v1, Lio/grpc/f1/v0$l;->a:Lio/grpc/f1/v;

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lio/grpc/f1/v0$l$c;->f:Lio/grpc/f1/v0$l;

    iget-object v0, v0, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->i(Lio/grpc/f1/v0;)Lio/grpc/p;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/p;->c()Lio/grpc/o;

    move-result-object v0

    sget-object v1, Lio/grpc/o;->SHUTDOWN:Lio/grpc/o;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/f1/v0$l$c;->f:Lio/grpc/f1/v0$l;

    iget-object v0, v0, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->p(Lio/grpc/f1/v0;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/grpc/f1/v0$l$c;->f:Lio/grpc/f1/v0$l;

    iget-object v0, v0, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->q(Lio/grpc/f1/v0;)V

    :cond_0
    return-void
.end method
