.class public abstract Lio/grpc/y;
.super Lio/grpc/v0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/y$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/v0<",
        "TReqT;TRespT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/v0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/v0;->f()Lio/grpc/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/g;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Lio/grpc/g$a;Lio/grpc/q0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/g$a<",
            "TRespT;>;",
            "Lio/grpc/q0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/v0;->f()Lio/grpc/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/g;->e(Lio/grpc/g$a;Lio/grpc/q0;)V

    return-void
.end method
