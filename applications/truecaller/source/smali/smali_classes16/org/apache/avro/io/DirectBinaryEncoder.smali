.class public Lorg/apache/avro/io/DirectBinaryEncoder;
.super Lorg/apache/avro/io/BinaryEncoder;
.source "SourceFile"


# instance fields
.field private final buf:[B

.field private out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/io/BinaryEncoder;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->buf:[B

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/avro/io/DirectBinaryEncoder;->configure(Ljava/io/OutputStream;)Lorg/apache/avro/io/DirectBinaryEncoder;

    return-void
.end method


# virtual methods
.method public bytesBuffered()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public configure(Ljava/io/OutputStream;)Lorg/apache/avro/io/DirectBinaryEncoder;
    .locals 1

    const-string v0, "OutputStream cannot be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

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
    iget-object v0, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public writeDouble(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->buf:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lorg/apache/avro/io/BinaryData;->encodeDouble(D[BI)I

    move-result p1

    .line 2
    iget-object p2, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    iget-object v0, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->buf:[B

    invoke-virtual {p2, v0, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public writeFixed([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public writeFloat(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->buf:[B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/apache/avro/io/BinaryData;->encodeFloat(F[BI)I

    move-result p1

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->buf:[B

    invoke-virtual {v0, v2, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public writeInt(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p1, 0x1f

    xor-int/2addr v0, v1

    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_0

    .line 1
    iget-object p1, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_0
    and-int/lit16 v1, v0, -0x4000

    if-nez v1, :cond_1

    .line 2
    iget-object p1, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    or-int/lit16 v1, v0, 0x80

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 3
    iget-object p1, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->buf:[B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/apache/avro/io/BinaryData;->encodeInt(I[BI)I

    move-result p1

    .line 5
    iget-object v0, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->buf:[B

    invoke-virtual {v0, v2, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public writeLong(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long v2, p1, v2

    xor-long/2addr v0, v2

    const-wide/32 v2, -0x80000000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    long-to-int p1, v0

    :goto_0
    and-int/lit8 p2, p1, -0x80

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    int-to-byte p1, p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->buf:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lorg/apache/avro/io/BinaryData;->encodeLong(J[BI)I

    move-result p1

    .line 4
    iget-object p2, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    iget-object v0, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->buf:[B

    invoke-virtual {p2, v0, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public writeZero()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
