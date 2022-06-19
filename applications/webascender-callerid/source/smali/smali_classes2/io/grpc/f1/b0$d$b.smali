.class Lio/grpc/f1/b0$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/b0$d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/f1/b0$c;

.field final synthetic g:Lio/grpc/f1/b0$d;


# direct methods
.method constructor <init>(Lio/grpc/f1/b0$d;Lio/grpc/f1/b0$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/b0$d$b;->g:Lio/grpc/f1/b0$d;

    iput-object p2, p0, Lio/grpc/f1/b0$d$b;->f:Lio/grpc/f1/b0$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/grpc/f1/b0$d$b;->g:Lio/grpc/f1/b0$d;

    iget-object v0, v0, Lio/grpc/f1/b0$d;->g:Lio/grpc/f1/b0;

    iget-object v1, p0, Lio/grpc/f1/b0$d$b;->f:Lio/grpc/f1/b0$c;

    invoke-static {v0, v1}, Lio/grpc/f1/b0;->r(Lio/grpc/f1/b0;Lio/grpc/f1/b0$c;)Lio/grpc/f1/b0$c;

    .line 2
    iget-object v0, p0, Lio/grpc/f1/b0$d$b;->g:Lio/grpc/f1/b0$d;

    iget-object v0, v0, Lio/grpc/f1/b0$d;->g:Lio/grpc/f1/b0;

    invoke-static {v0}, Lio/grpc/f1/b0;->s(Lio/grpc/f1/b0;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    iget-object v0, p0, Lio/grpc/f1/b0$d$b;->g:Lio/grpc/f1/b0$d;

    iget-object v0, v0, Lio/grpc/f1/b0$d;->g:Lio/grpc/f1/b0;

    invoke-static {v0}, Lio/grpc/f1/b0;->h(Lio/grpc/f1/b0;)Lcom/google/common/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/q;->f()Lcom/google/common/base/q;

    invoke-virtual {v0}, Lcom/google/common/base/q;->g()Lcom/google/common/base/q;

    :cond_0
    return-void
.end method
