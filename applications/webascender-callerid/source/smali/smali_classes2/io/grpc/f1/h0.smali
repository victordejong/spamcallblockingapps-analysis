.class abstract Lio/grpc/f1/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/r;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/f1/g2$a;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/h0;->f()Lio/grpc/f1/r;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/g2;->a(Lio/grpc/f1/g2$a;)V

    return-void
.end method

.method public b(Lio/grpc/b1;Lio/grpc/q0;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/h0;->f()Lio/grpc/f1/r;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/grpc/f1/r;->b(Lio/grpc/b1;Lio/grpc/q0;)V

    return-void
.end method

.method public c(Lio/grpc/q0;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/h0;->f()Lio/grpc/f1/r;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/r;->c(Lio/grpc/q0;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/h0;->f()Lio/grpc/f1/r;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/f1/g2;->d()V

    return-void
.end method

.method public e(Lio/grpc/b1;Lio/grpc/f1/r$a;Lio/grpc/q0;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/h0;->f()Lio/grpc/f1/r;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/f1/r;->e(Lio/grpc/b1;Lio/grpc/f1/r$a;Lio/grpc/q0;)V

    return-void
.end method

.method protected abstract f()Lio/grpc/f1/r;
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/h;->c(Ljava/lang/Object;)Lcom/google/common/base/h$b;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/f1/h0;->f()Lio/grpc/f1/r;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    invoke-virtual {v0}, Lcom/google/common/base/h$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
