.class public abstract Lio/grpc/f1/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/s1;


# instance fields
.field private final f:Lio/grpc/f1/s1;


# direct methods
.method public constructor <init>(Lio/grpc/f1/s1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "buf"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/f1/s1;

    iput-object p1, p0, Lio/grpc/f1/l0;->f:Lio/grpc/f1/s1;

    return-void
.end method


# virtual methods
.method public I(I)Lio/grpc/f1/s1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/l0;->f:Lio/grpc/f1/s1;

    invoke-interface {v0, p1}, Lio/grpc/f1/s1;->I(I)Lio/grpc/f1/s1;

    move-result-object p1

    return-object p1
.end method

.method public k()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/l0;->f:Lio/grpc/f1/s1;

    invoke-interface {v0}, Lio/grpc/f1/s1;->k()I

    move-result v0

    return v0
.end method

.method public readUnsignedByte()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/l0;->f:Lio/grpc/f1/s1;

    invoke-interface {v0}, Lio/grpc/f1/s1;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/h;->c(Ljava/lang/Object;)Lcom/google/common/base/h$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/l0;->f:Lio/grpc/f1/s1;

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    invoke-virtual {v0}, Lcom/google/common/base/h$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w0([BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/l0;->f:Lio/grpc/f1/s1;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/f1/s1;->w0([BII)V

    return-void
.end method
