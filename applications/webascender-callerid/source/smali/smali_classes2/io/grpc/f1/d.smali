.class public abstract Lio/grpc/f1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/f2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/f1/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lio/grpc/m;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/d;->q()Lio/grpc/f1/m0;

    move-result-object v0

    const-string v1, "compressor"

    invoke-static {p1, v1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/m;

    invoke-interface {v0, p1}, Lio/grpc/f1/m0;->d(Lio/grpc/m;)Lio/grpc/f1/m0;

    return-void
.end method

.method public final flush()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/d;->q()Lio/grpc/f1/m0;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/f1/m0;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/f1/d;->q()Lio/grpc/f1/m0;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/f1/m0;->flush()V

    :cond_0
    return-void
.end method

.method public final m(Ljava/io/InputStream;)V
    .locals 1

    const-string v0, "message"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/f1/d;->q()Lio/grpc/f1/m0;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/f1/m0;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/grpc/f1/d;->q()Lio/grpc/f1/m0;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/m0;->g(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    invoke-static {p1}, Lio/grpc/f1/o0;->c(Ljava/io/InputStream;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lio/grpc/f1/o0;->c(Ljava/io/InputStream;)V

    throw v0
.end method

.method protected final p()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/d;->q()Lio/grpc/f1/m0;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/f1/m0;->close()V

    return-void
.end method

.method protected abstract q()Lio/grpc/f1/m0;
.end method

.method protected final r(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/d;->s()Lio/grpc/f1/d$a;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/f1/d$a;->c(Lio/grpc/f1/d$a;I)V

    return-void
.end method

.method protected abstract s()Lio/grpc/f1/d$a;
.end method
