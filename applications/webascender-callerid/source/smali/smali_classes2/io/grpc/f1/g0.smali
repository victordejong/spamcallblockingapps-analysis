.class abstract Lio/grpc/f1/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/q;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/g0;->n()Lio/grpc/f1/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/f2;->b(I)V

    return-void
.end method

.method public c(Lio/grpc/b1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/g0;->n()Lio/grpc/f1/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/q;->c(Lio/grpc/b1;)V

    return-void
.end method

.method public d(Lio/grpc/m;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/g0;->n()Lio/grpc/f1/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/f2;->d(Lio/grpc/m;)V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/g0;->n()Lio/grpc/f1/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/q;->e(I)V

    return-void
.end method

.method public f(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/g0;->n()Lio/grpc/f1/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/q;->f(I)V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/g0;->n()Lio/grpc/f1/q;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/f1/f2;->flush()V

    return-void
.end method

.method public g(Lio/grpc/v;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/g0;->n()Lio/grpc/f1/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/q;->g(Lio/grpc/v;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/g0;->n()Lio/grpc/f1/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/q;->h(Ljava/lang/String;)V

    return-void
.end method

.method public i(Lio/grpc/f1/u0;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/g0;->n()Lio/grpc/f1/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/q;->i(Lio/grpc/f1/u0;)V

    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/g0;->n()Lio/grpc/f1/q;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/f1/q;->j()V

    return-void
.end method

.method public k(Lio/grpc/t;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/g0;->n()Lio/grpc/f1/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/q;->k(Lio/grpc/t;)V

    return-void
.end method

.method public l(Lio/grpc/f1/r;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/g0;->n()Lio/grpc/f1/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/q;->l(Lio/grpc/f1/r;)V

    return-void
.end method

.method public m(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/g0;->n()Lio/grpc/f1/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/f2;->m(Ljava/io/InputStream;)V

    return-void
.end method

.method protected abstract n()Lio/grpc/f1/q;
.end method

.method public o(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/g0;->n()Lio/grpc/f1/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/q;->o(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/h;->c(Ljava/lang/Object;)Lcom/google/common/base/h$b;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/f1/g0;->n()Lio/grpc/f1/q;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    invoke-virtual {v0}, Lcom/google/common/base/h$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
