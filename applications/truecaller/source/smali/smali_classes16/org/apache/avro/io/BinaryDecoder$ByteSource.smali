.class public abstract Lorg/apache/avro/io/BinaryDecoder$ByteSource;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/BinaryDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ByteSource"
.end annotation


# instance fields
.field public ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public attach(ILorg/apache/avro/io/BinaryDecoder;)V
    .locals 1

    .line 1
    new-array p1, p1, [B

    invoke-static {p2, p1}, Lorg/apache/avro/io/BinaryDecoder;->access$202(Lorg/apache/avro/io/BinaryDecoder;[B)[B

    const/4 p1, 0x0

    .line 2
    invoke-static {p2, p1}, Lorg/apache/avro/io/BinaryDecoder;->access$302(Lorg/apache/avro/io/BinaryDecoder;I)I

    .line 3
    invoke-static {p2, p1}, Lorg/apache/avro/io/BinaryDecoder;->access$502(Lorg/apache/avro/io/BinaryDecoder;I)I

    .line 4
    invoke-static {p2, p1}, Lorg/apache/avro/io/BinaryDecoder;->access$402(Lorg/apache/avro/io/BinaryDecoder;I)I

    .line 5
    new-instance p1, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;-><init>(Lorg/apache/avro/io/BinaryDecoder;Lorg/apache/avro/io/BinaryDecoder$1;)V

    iput-object p1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    return-void
.end method

.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->getLim()I

    move-result v0

    iget-object v1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v1}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public compactAndFill([BIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget-object p2, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {p2, p3}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->setPos(I)V

    add-int/2addr p3, p4

    .line 3
    array-length p2, p1

    sub-int/2addr p2, p4

    invoke-virtual {p0, p1, p3, p2}, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->tryReadRaw([BII)I

    move-result p1

    add-int/2addr p1, p4

    .line 4
    iget-object p2, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {p2, p1}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->setLimit(I)V

    return-void
.end method

.method public detach()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->detach()V

    return-void
.end method

.method public abstract isEof()Z
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->getLim()I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v1}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v1

    .line 3
    iget-object v2, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v2}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->getBuf()[B

    move-result-object v2

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    .line 4
    invoke-static {v2, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, p3

    .line 5
    iget-object p1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {p1, v1}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->setPos(I)V

    return p3

    .line 6
    :cond_0
    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v0

    .line 7
    iget-object v2, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v2, v1}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->setPos(I)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->tryReadRaw([BII)I

    move-result p1

    add-int/2addr p1, v0

    if-nez p1, :cond_1

    const/4 p1, -0x1

    :cond_1
    return p1
.end method

.method public abstract readRaw([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->getLim()I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v1}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v1

    sub-int v2, v0, v1

    int-to-long v2, v2

    cmp-long v4, v2, p1

    if-lez v4, :cond_0

    int-to-long v0, v1

    add-long/2addr v0, p1

    long-to-int v0, v0

    .line 3
    iget-object v1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v1, v0}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->setPos(I)V

    return-wide p1

    .line 4
    :cond_0
    iget-object v1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v1, v0}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->setPos(I)V

    sub-long/2addr p1, v2

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->trySkipBytes(J)J

    move-result-wide p1

    add-long/2addr p1, v2

    return-wide p1
.end method

.method public abstract skipSourceBytes(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract tryReadRaw([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract trySkipBytes(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
