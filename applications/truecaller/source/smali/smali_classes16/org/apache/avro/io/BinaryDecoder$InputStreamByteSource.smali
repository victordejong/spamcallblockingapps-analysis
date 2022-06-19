.class public Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;
.super Lorg/apache/avro/io/BinaryDecoder$ByteSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/BinaryDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStreamByteSource"
.end annotation


# instance fields
.field private in:Ljava/io/InputStream;

.field public isEof:Z


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/io/BinaryDecoder$ByteSource;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;->isEof:Z

    .line 4
    iput-object p1, p0, Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;->in:Ljava/io/InputStream;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/InputStream;Lorg/apache/avro/io/BinaryDecoder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public isEof()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;->isEof:Z

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

    iget-object v1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v1}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v0

    .line 4
    iget-object v1, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v1}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->getBuf()[B

    move-result-object v1

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    .line 5
    iget-object v2, p0, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->setPos(I)V

    return v1
.end method

.method public readRaw([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_0

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;->isEof:Z

    .line 3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public skipSourceBytes(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_3

    .line 1
    iget-object v4, p0, Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;->in:Ljava/io/InputStream;

    invoke-virtual {v4, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    sub-long/2addr p1, v4

    goto :goto_0

    :cond_0
    if-nez v2, :cond_2

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_0

    .line 2
    :cond_1
    iput-boolean v0, p0, Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;->isEof:Z

    .line 3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 4
    :cond_2
    iput-boolean v0, p0, Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;->isEof:Z

    .line 5
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public tryReadRaw([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p3

    :goto_0
    if-lez v0, :cond_1

    const/4 v1, 0x1

    .line 1
    :try_start_0
    iget-object v2, p0, Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_0

    .line 2
    iput-boolean v1, p0, Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;->isEof:Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    sub-int/2addr v0, v2

    add-int/2addr p2, v2

    goto :goto_0

    .line 3
    :catch_0
    iput-boolean v1, p0, Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;->isEof:Z

    :cond_1
    :goto_1
    sub-int/2addr p3, v0

    return p3
.end method

.method public trySkipBytes(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-wide v2, p1

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    .line 1
    :try_start_0
    iget-object v6, p0, Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;->in:Ljava/io/InputStream;

    invoke-virtual {v6, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_0

    sub-long/2addr v2, v6

    goto :goto_0

    :cond_0
    if-nez v4, :cond_2

    if-eqz v0, :cond_1

    .line 2
    iput-boolean v1, p0, Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;->isEof:Z

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    .line 3
    :cond_2
    iput-boolean v1, p0, Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;->isEof:Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4
    :catch_0
    iput-boolean v1, p0, Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;->isEof:Z

    :cond_3
    :goto_1
    sub-long/2addr p1, v2

    return-wide p1
.end method
