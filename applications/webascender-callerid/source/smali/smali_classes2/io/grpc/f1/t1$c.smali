.class Lio/grpc/f1/t1$c;
.super Lio/grpc/f1/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field f:I

.field final g:I

.field final h:[B


# direct methods
.method constructor <init>([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lio/grpc/f1/t1$c;-><init>([BII)V

    return-void
.end method

.method constructor <init>([BII)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lio/grpc/f1/c;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "offset must be >= 0"

    .line 3
    invoke-static {v2, v3}, Lcom/google/common/base/m;->e(ZLjava/lang/Object;)V

    if-ltz p3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "length must be >= 0"

    .line 4
    invoke-static {v2, v3}, Lcom/google/common/base/m;->e(ZLjava/lang/Object;)V

    add-int/2addr p3, p2

    .line 5
    array-length v2, p1

    if-gt p3, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string v1, "offset + length exceeds array boundary"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->e(ZLjava/lang/Object;)V

    const-string v0, "bytes"

    .line 6
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, [B

    iput-object p1, p0, Lio/grpc/f1/t1$c;->h:[B

    .line 7
    iput p2, p0, Lio/grpc/f1/t1$c;->f:I

    .line 8
    iput p3, p0, Lio/grpc/f1/t1$c;->g:I

    return-void
.end method


# virtual methods
.method public bridge synthetic I(I)Lio/grpc/f1/s1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/f1/t1$c;->b(I)Lio/grpc/f1/t1$c;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lio/grpc/f1/t1$c;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/f1/c;->a(I)V

    .line 2
    iget v0, p0, Lio/grpc/f1/t1$c;->f:I

    add-int v1, v0, p1

    .line 3
    iput v1, p0, Lio/grpc/f1/t1$c;->f:I

    .line 4
    new-instance v1, Lio/grpc/f1/t1$c;

    iget-object v2, p0, Lio/grpc/f1/t1$c;->h:[B

    invoke-direct {v1, v2, v0, p1}, Lio/grpc/f1/t1$c;-><init>([BII)V

    return-object v1
.end method

.method public k()I
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/f1/t1$c;->g:I

    iget v1, p0, Lio/grpc/f1/t1$c;->f:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readUnsignedByte()I
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lio/grpc/f1/c;->a(I)V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/t1$c;->h:[B

    iget v1, p0, Lio/grpc/f1/t1$c;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/grpc/f1/t1$c;->f:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public w0([BII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/t1$c;->h:[B

    iget v1, p0, Lio/grpc/f1/t1$c;->f:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget p1, p0, Lio/grpc/f1/t1$c;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lio/grpc/f1/t1$c;->f:I

    return-void
.end method
