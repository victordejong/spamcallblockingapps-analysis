.class public Lorg/apache/avro/util/ReusableByteBufferInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field private static final EMPTY_BUFFER:Ljava/nio/ByteBuffer;


# instance fields
.field private buffer:Ljava/nio/Buffer;

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private mark:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/avro/util/ReusableByteBufferInputStream;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    sget-object v0, Lorg/apache/avro/util/ReusableByteBufferInputStream;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/apache/avro/util/ReusableByteBufferInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 3
    iput-object v0, p0, Lorg/apache/avro/util/ReusableByteBufferInputStream;->buffer:Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/apache/avro/util/ReusableByteBufferInputStream;->mark:I

    return-void
.end method


# virtual methods
.method public declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lorg/apache/avro/util/ReusableByteBufferInputStream;->buffer:Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    iput p1, p0, Lorg/apache/avro/util/ReusableByteBufferInputStream;->mark:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/util/ReusableByteBufferInputStream;->buffer:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/avro/util/ReusableByteBufferInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/apache/avro/util/ReusableByteBufferInputStream;->buffer:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/util/ReusableByteBufferInputStream;->buffer:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 5
    iget-object v0, p0, Lorg/apache/avro/util/ReusableByteBufferInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/avro/util/ReusableByteBufferInputStream;->buffer:Ljava/nio/Buffer;

    iget v1, p0, Lorg/apache/avro/util/ReusableByteBufferInputStream;->mark:I

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/avro/util/ReusableByteBufferInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 2
    iput-object v0, p0, Lorg/apache/avro/util/ReusableByteBufferInputStream;->buffer:Ljava/nio/Buffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lorg/apache/avro/util/ReusableByteBufferInputStream;->mark:I

    return-void
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/util/ReusableByteBufferInputStream;->buffer:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object p1, p0, Lorg/apache/avro/util/ReusableByteBufferInputStream;->buffer:Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    goto :goto_0

    :cond_1
    long-to-int p1, p1

    .line 2
    :goto_0
    iget-object p2, p0, Lorg/apache/avro/util/ReusableByteBufferInputStream;->buffer:Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    int-to-long p1, p1

    return-wide p1
.end method
