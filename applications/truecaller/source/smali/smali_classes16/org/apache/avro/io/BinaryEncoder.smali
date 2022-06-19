.class public abstract Lorg/apache/avro/io/BinaryEncoder;
.super Lorg/apache/avro/io/Encoder;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/io/Encoder;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bytesBuffered()I
.end method

.method public setItemCount(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/io/Encoder;->writeLong(J)V

    :cond_0
    return-void
.end method

.method public startItem()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public writeArrayEnd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/io/BinaryEncoder;->writeZero()V

    return-void
.end method

.method public writeArrayStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/io/BinaryEncoder;->writeZero()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/avro/io/Encoder;->writeFixed(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method public writeBytes([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 5
    invoke-virtual {p0}, Lorg/apache/avro/io/BinaryEncoder;->writeZero()V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p3}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/io/Encoder;->writeFixed([BII)V

    return-void
.end method

.method public writeEnum(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    return-void
.end method

.method public writeIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    return-void
.end method

.method public writeMapEnd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/io/BinaryEncoder;->writeZero()V

    return-void
.end method

.method public writeMapStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public writeNull()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/io/BinaryEncoder;->writeZero()V

    return-void

    .line 4
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 5
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    const/4 v0, 0x0

    .line 6
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/avro/io/Encoder;->writeFixed([BII)V

    return-void
.end method

.method public writeString(Lorg/apache/avro/util/Utf8;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/util/Utf8;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/avro/util/Utf8;->getByteLength()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/avro/io/BinaryEncoder;->writeBytes([BII)V

    return-void
.end method

.method public abstract writeZero()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
