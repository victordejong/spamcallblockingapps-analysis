.class abstract Lio/grpc/v0;
.super Lio/grpc/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/g<",
        "TReqT;TRespT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/v0;->f()Lio/grpc/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/v0;->f()Lio/grpc/g;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/g;->b()V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/v0;->f()Lio/grpc/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/g;->c(I)V

    return-void
.end method

.method protected abstract f()Lio/grpc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/g<",
            "**>;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/h;->c(Ljava/lang/Object;)Lcom/google/common/base/h$b;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/v0;->f()Lio/grpc/g;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    invoke-virtual {v0}, Lcom/google/common/base/h$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
