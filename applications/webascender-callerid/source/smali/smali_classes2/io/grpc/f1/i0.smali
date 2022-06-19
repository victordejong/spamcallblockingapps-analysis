.class abstract Lio/grpc/f1/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/v;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lio/grpc/f1/v;
.end method

.method public b(Lio/grpc/b1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/i0;->a()Lio/grpc/f1/v;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/g1;->b(Lio/grpc/b1;)V

    return-void
.end method

.method public c(Lio/grpc/b1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/i0;->a()Lio/grpc/f1/v;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/g1;->c(Lio/grpc/b1;)V

    return-void
.end method

.method public d(Lio/grpc/f1/g1$a;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/i0;->a()Lio/grpc/f1/v;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/g1;->d(Lio/grpc/f1/g1$a;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public e()Lio/grpc/f0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/i0;->a()Lio/grpc/f1/v;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/j0;->e()Lio/grpc/f0;

    move-result-object v0

    return-object v0
.end method

.method public f(Lio/grpc/f1/s$a;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/i0;->a()Lio/grpc/f1/v;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/grpc/f1/s;->f(Lio/grpc/f1/s$a;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public g(Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/d;)Lio/grpc/f1/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/r0<",
            "**>;",
            "Lio/grpc/q0;",
            "Lio/grpc/d;",
            ")",
            "Lio/grpc/f1/q;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/i0;->a()Lio/grpc/f1/v;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/f1/s;->g(Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/d;)Lio/grpc/f1/q;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/h;->c(Ljava/lang/Object;)Lcom/google/common/base/h$b;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/f1/i0;->a()Lio/grpc/f1/v;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    invoke-virtual {v0}, Lcom/google/common/base/h$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
