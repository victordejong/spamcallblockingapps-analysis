.class final Lio/grpc/f1/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lio/grpc/f1/b1;
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/f1/u1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/grpc/f1/u1;

    invoke-direct {v0}, Lio/grpc/f1/u1;-><init>()V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lio/grpc/f1/h;

    invoke-direct {v0}, Lio/grpc/f1/h;-><init>()V

    return-object v0
.end method
