.class public Lorg/apache/avro/io/DirectBinaryDecoder;
.super Lorg/apache/avro/io/BinaryDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/io/DirectBinaryDecoder$ReuseByteReader;,
        Lorg/apache/avro/io/DirectBinaryDecoder$ByteReader;
    }
.end annotation


# instance fields
.field private final buf:[B

.field private byteReader:Lorg/apache/avro/io/DirectBinaryDecoder$ByteReader;

.field private in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/io/BinaryDecoder;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lorg/apache/avro/io/DirectBinaryDecoder;->buf:[B

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/avro/io/DirectBinaryDecoder;->configure(Ljava/io/InputStream;)Lorg/apache/avro/io/DirectBinaryDecoder;

    return-void
.end method


# virtual methods
.method public configure(Ljava/io/InputStream;)Lorg/apache/avro/io/DirectBinaryDecoder;
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/apache/avro/io/DirectBinaryDecoder;->in:Ljava/io/InputStream;

    .line 2
    instance-of v0, p1, Lorg/apache/avro/util/ByteBufferInputStream;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/avro/io/DirectBinaryDecoder$ReuseByteReader;

    check-cast p1, Lorg/apache/avro/util/ByteBufferInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/avro/io/DirectBinaryDecoder$ReuseByteReader;-><init>(Lorg/apache/avro/io/DirectBinaryDecoder;Lorg/apache/avro/util/ByteBufferInputStream;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/avro/io/DirectBinaryDecoder$ByteReader;

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lorg/apache/avro/io/DirectBinaryDecoder$ByteReader;-><init>(Lorg/apache/avro/io/DirectBinaryDecoder;Lorg/apache/avro/io/DirectBinaryDecoder$1;)V

    :goto_0
    iput-object v0, p0, Lorg/apache/avro/io/DirectBinaryDecoder;->byteReader:Lorg/apache/avro/io/DirectBinaryDecoder$ByteReader;

    return-object p0
.end method

.method public doReadBytes([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lorg/apache/avro/io/DirectBinaryDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, p3, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    if-ltz v0, :cond_1

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public doSkipBytes(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 1
    iget-object v2, p0, Lorg/apache/avro/io/DirectBinaryDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    sub-long/2addr p1, v2

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/DirectBinaryDecoder;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public isEnd()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/DirectBinaryDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/io/DirectBinaryDecoder;->readInt()I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/apache/avro/io/DirectBinaryDecoder;->byteReader:Lorg/apache/avro/io/DirectBinaryDecoder$ByteReader;

    invoke-virtual {v1, p1, v0}, Lorg/apache/avro/io/DirectBinaryDecoder$ByteReader;->read(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public readDouble()D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/DirectBinaryDecoder;->buf:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/avro/io/DirectBinaryDecoder;->doReadBytes([BII)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/DirectBinaryDecoder;->buf:[B

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    shl-long v1, v7, v2

    or-long/2addr v1, v3

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x10

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x18

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    const/4 v3, 0x4

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x20

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    const/4 v3, 0x5

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x28

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    const/4 v3, 0x6

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x30

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    const/4 v3, 0x7

    aget-byte v0, v0, v3

    int-to-long v3, v0

    and-long/2addr v3, v5

    const/16 v0, 0x38

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/DirectBinaryDecoder;->buf:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/avro/io/DirectBinaryDecoder;->doReadBytes([BII)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/DirectBinaryDecoder;->buf:[B

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    .line 3
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lorg/apache/avro/io/DirectBinaryDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ltz v2, :cond_2

    and-int/lit8 v3, v2, 0x7f

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x7

    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance v0, Lorg/apache/avro/InvalidNumberEncodingException;

    const-string v1, "Invalid int encoding"

    invoke-direct {v0, v1}, Lorg/apache/avro/InvalidNumberEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readLong()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, p0, Lorg/apache/avro/io/DirectBinaryDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_2

    int-to-long v4, v3

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    const/4 v2, 0x1

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance v0, Lorg/apache/avro/InvalidNumberEncodingException;

    const-string v1, "Invalid long encoding"

    invoke-direct {v0, v1}, Lorg/apache/avro/InvalidNumberEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method
