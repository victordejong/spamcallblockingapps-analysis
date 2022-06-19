.class public Lorg/apache/avro/io/BufferedBinaryEncoder;
.super Lorg/apache/avro/io/BinaryEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/io/BufferedBinaryEncoder$OutputStreamSink;,
        Lorg/apache/avro/io/BufferedBinaryEncoder$ByteSink;
    }
.end annotation


# instance fields
.field private buf:[B

.field private bulkLimit:I

.field private pos:I

.field private sink:Lorg/apache/avro/io/BufferedBinaryEncoder$ByteSink;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/io/BinaryEncoder;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/io/BufferedBinaryEncoder;->configure(Ljava/io/OutputStream;I)Lorg/apache/avro/io/BufferedBinaryEncoder;

    return-void
.end method

.method private ensureBounds(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/io/BufferedBinaryEncoder;->flushBuffer()V

    :cond_0
    return-void
.end method

.method private flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->sink:Lorg/apache/avro/io/BufferedBinaryEncoder$ByteSink;

    iget-object v3, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    invoke-virtual {v2, v3, v1, v0}, Lorg/apache/avro/io/BufferedBinaryEncoder$ByteSink;->innerWrite([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput v1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    goto :goto_0

    :catchall_0
    move-exception v0

    iput v1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    .line 4
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private writeByte(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    iget-object v1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/io/BufferedBinaryEncoder;->flushBuffer()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    iget v1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method


# virtual methods
.method public bytesBuffered()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    return v0
.end method

.method public configure(Ljava/io/OutputStream;I)Lorg/apache/avro/io/BufferedBinaryEncoder;
    .locals 2

    const-string v0, "OutputStream cannot be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->sink:Lorg/apache/avro/io/BufferedBinaryEncoder$ByteSink;

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    if-lez v0, :cond_0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lorg/apache/avro/io/BufferedBinaryEncoder;->flushBuffer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Failure flushing old output"

    invoke-direct {p2, v0, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 6
    :cond_0
    :goto_0
    new-instance v0, Lorg/apache/avro/io/BufferedBinaryEncoder$OutputStreamSink;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/avro/io/BufferedBinaryEncoder$OutputStreamSink;-><init>(Ljava/io/OutputStream;Lorg/apache/avro/io/BufferedBinaryEncoder$1;)V

    iput-object v0, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->sink:Lorg/apache/avro/io/BufferedBinaryEncoder$ByteSink;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    .line 8
    iget-object p1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    if-eqz p1, :cond_1

    array-length p1, p1

    if-eq p1, p2, :cond_2

    .line 9
    :cond_1
    new-array p1, p2, [B

    iput-object p1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    .line 10
    :cond_2
    iget-object p1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    array-length p1, p1

    ushr-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->bulkLimit:I

    const/16 p2, 0x200

    if-le p1, p2, :cond_3

    .line 11
    iput p2, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->bulkLimit:I

    :cond_3
    return-object p0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/io/BufferedBinaryEncoder;->flushBuffer()V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->sink:Lorg/apache/avro/io/BufferedBinaryEncoder$ByteSink;

    invoke-virtual {v0}, Lorg/apache/avro/io/BufferedBinaryEncoder$ByteSink;->innerFlush()V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/io/BufferedBinaryEncoder;->flushBuffer()V

    .line 3
    :cond_0
    iget v0, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    iget-object v1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    invoke-static {p1, v1, v0}, Lorg/apache/avro/io/BinaryData;->encodeBoolean(Z[BI)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    return-void
.end method

.method public writeDouble(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/io/BufferedBinaryEncoder;->ensureBounds(I)V

    .line 2
    iget v0, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    iget-object v1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    invoke-static {p1, p2, v1, v0}, Lorg/apache/avro/io/BinaryData;->encodeDouble(D[BI)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    return-void
.end method

.method public writeFixed(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    iget v1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->bulkLimit:I

    if-le p1, v1, :cond_0

    .line 9
    invoke-direct {p0}, Lorg/apache/avro/io/BufferedBinaryEncoder;->flushBuffer()V

    .line 10
    iget-object p1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->sink:Lorg/apache/avro/io/BufferedBinaryEncoder$ByteSink;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/BufferedBinaryEncoder$ByteSink;->innerWrite(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-super {p0, v0}, Lorg/apache/avro/io/Encoder;->writeFixed(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method public writeFixed([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->bulkLimit:I

    if-le p3, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/io/BufferedBinaryEncoder;->flushBuffer()V

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->sink:Lorg/apache/avro/io/BufferedBinaryEncoder$ByteSink;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/avro/io/BufferedBinaryEncoder$ByteSink;->innerWrite([BII)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p3}, Lorg/apache/avro/io/BufferedBinaryEncoder;->ensureBounds(I)V

    .line 5
    iget-object v0, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    iget v1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget p1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    return-void
.end method

.method public writeFloat(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/io/BufferedBinaryEncoder;->ensureBounds(I)V

    .line 2
    iget v0, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    iget-object v1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    invoke-static {p1, v1, v0}, Lorg/apache/avro/io/BinaryData;->encodeFloat(F[BI)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/io/BufferedBinaryEncoder;->ensureBounds(I)V

    .line 2
    iget v0, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    iget-object v1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    invoke-static {p1, v1, v0}, Lorg/apache/avro/io/BinaryData;->encodeInt(I[BI)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    return-void
.end method

.method public writeLong(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/io/BufferedBinaryEncoder;->ensureBounds(I)V

    .line 2
    iget v0, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    iget-object v1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    invoke-static {p1, p2, v1, v0}, Lorg/apache/avro/io/BinaryData;->encodeLong(J[BI)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder;->pos:I

    return-void
.end method

.method public writeZero()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/io/BufferedBinaryEncoder;->writeByte(I)V

    return-void
.end method
