.class public Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;
.super Lorg/apache/avro/io/BinaryDecoder$ByteSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/BinaryDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteArrayByteSource"
.end annotation


# static fields
.field private static final MIN_SIZE:I = 0x10


# instance fields
.field private compacted:Z

.field private data:[B

.field private max:I

.field private position:I


# direct methods
.method private constructor <init>([BII)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/io/BinaryDecoder$ByteSource;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->compacted:Z

    const/16 v1, 0x10

    if-ge p3, v1, :cond_0

    add-int/lit8 v1, p2, 0x10

    .line 4
    invoke-static {p1, p2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->data:[B

    .line 5
    iput v0, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    .line 6
    iput p3, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->max:I

    goto :goto_0

    .line 7
    :cond_0
    iput-object p1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->data:[B

    .line 8
    iput p2, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    add-int/2addr p2, p3

    .line 9
    iput p2, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->max:I

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>([BIILorg/apache/avro/io/BinaryDecoder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;-><init>([BII)V

    return-void
.end method


# virtual methods
.method public attach(ILorg/apache/avro/io/BinaryDecoder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->data:[B

    invoke-static {p2, p1}, Lorg/apache/avro/io/BinaryDecoder;->access$202(Lorg/apache/avro/io/BinaryDecoder;[B)[B

    .line 2
    iget p1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    invoke-static {p2, p1}, Lorg/apache/avro/io/BinaryDecoder;->access$302(Lorg/apache/avro/io/BinaryDecoder;I)I

    .line 3
    iget p1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    invoke-static {p2, p1}, Lorg/apache/avro/io/BinaryDecoder;->access$502(Lorg/apache/avro/io/BinaryDecoder;I)I

    .line 4
    iget p1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->max:I

    invoke-static {p2, p1}, Lorg/apache/avro/io/BinaryDecoder;->access$402(Lorg/apache/avro/io/BinaryDecoder;I)I

    .line 5
    new-instance p1, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;-><init>(Lorg/apache/avro/io/BinaryDecoder;Lorg/apache/avro/io/BinaryDecoder$1;)V

    iput-object p1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->getLim()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->setPos(I)V

    return-void
.end method

.method public compactAndFill([BIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean p3, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->compacted:Z

    if-nez p3, :cond_0

    add-int/lit8 p3, p4, 0x10

    .line 2
    new-array p3, p3, [B

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, p2, p3, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object p1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {p1, p3, v0, p4}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->setBuf([BII)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->compacted:Z

    :cond_0
    return-void
.end method

.method public isEof()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->getLim()I

    move-result v0

    iget-object v1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v1}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read()I
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

    iput v0, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->max:I

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v0

    iput v0, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    .line 3
    iget v1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->max:I

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->getBuf()[B

    move-result-object v0

    iget v1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 5
    iget-object v1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v1, v2}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->setPos(I)V

    return v0
.end method

.method public readRaw([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->tryReadRaw([BII)I

    move-result p1

    if-lt p1, p3, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public skipSourceBytes(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->trySkipBytes(J)J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public tryReadRaw([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public trySkipBytes(J)J
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

    iput v0, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->max:I

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v0

    iput v0, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    .line 3
    iget v1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->max:I

    int-to-long v1, v1

    int-to-long v3, v0

    sub-long/2addr v1, v3

    cmp-long v3, v1, p1

    if-ltz v3, :cond_0

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    .line 4
    iput v0, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    .line 5
    iget-object v1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v1, v0}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->setPos(I)V

    return-wide p1

    :cond_0
    int-to-long p1, v0

    add-long/2addr p1, v1

    long-to-int p1, p1

    .line 6
    iput p1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    .line 7
    iget-object p2, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {p2, p1}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->setPos(I)V

    return-wide v1
.end method
