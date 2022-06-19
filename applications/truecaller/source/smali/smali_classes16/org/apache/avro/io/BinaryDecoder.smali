.class public Lorg/apache/avro/io/BinaryDecoder;
.super Lorg/apache/avro/io/Decoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;,
        Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;,
        Lorg/apache/avro/io/BinaryDecoder$ByteSource;,
        Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;
    }
.end annotation


# static fields
.field public static final MAX_ARRAY_SIZE:J = 0x7ffffff7L

.field private static final MAX_BYTES_LENGTH_PROPERTY:Ljava/lang/String; = "org.apache.org.apache.avro.limits.bytes.maxLength"


# instance fields
.field private buf:[B

.field private limit:I

.field private final maxBytesLength:I

.field private minPos:I

.field private pos:I

.field private final scratchUtf8:Lorg/apache/avro/util/Utf8;

.field private source:Lorg/apache/avro/io/BinaryDecoder$ByteSource;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/io/Decoder;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/avro/io/BinaryDecoder;->source:Lorg/apache/avro/io/BinaryDecoder$ByteSource;

    .line 3
    iput-object v0, p0, Lorg/apache/avro/io/BinaryDecoder;->buf:[B

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/apache/avro/io/BinaryDecoder;->minPos:I

    .line 5
    iput v0, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    .line 6
    iput v0, p0, Lorg/apache/avro/io/BinaryDecoder;->limit:I

    .line 7
    new-instance v0, Lorg/apache/avro/util/Utf8;

    invoke-direct {v0}, Lorg/apache/avro/util/Utf8;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/io/BinaryDecoder;->scratchUtf8:Lorg/apache/avro/util/Utf8;

    const-string v0, "org.apache.org.apache.avro.limits.bytes.maxLength"

    .line 8
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    :try_start_0
    invoke-static {v0}, Lorg/apache/avro/util/tc/Java8Support;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    const-class v2, Lorg/apache/avro/io/BinaryDecoder;

    invoke-static {v2}, Lw3/d/c;->b(Ljava/lang/Class;)Lw3/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse property org.apache.org.apache.avro.limits.bytes.maxLength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-interface {v2, v0, v1}, Lw3/d/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const v0, 0x7fffffff

    .line 12
    :goto_0
    iput v0, p0, Lorg/apache/avro/io/BinaryDecoder;->maxBytesLength:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/apache/avro/io/BinaryDecoder;-><init>()V

    .line 14
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/io/BinaryDecoder;->configure(Ljava/io/InputStream;I)Lorg/apache/avro/io/BinaryDecoder;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/apache/avro/io/BinaryDecoder;-><init>()V

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/io/BinaryDecoder;->configure([BII)Lorg/apache/avro/io/BinaryDecoder;

    return-void
.end method

.method public static synthetic access$200(Lorg/apache/avro/io/BinaryDecoder;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/avro/io/BinaryDecoder;->buf:[B

    return-object p0
.end method

.method public static synthetic access$202(Lorg/apache/avro/io/BinaryDecoder;[B)[B
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/avro/io/BinaryDecoder;->buf:[B

    return-object p1
.end method

.method public static synthetic access$300(Lorg/apache/avro/io/BinaryDecoder;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    return p0
.end method

.method public static synthetic access$302(Lorg/apache/avro/io/BinaryDecoder;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    return p1
.end method

.method public static synthetic access$400(Lorg/apache/avro/io/BinaryDecoder;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/avro/io/BinaryDecoder;->limit:I

    return p0
.end method

.method public static synthetic access$402(Lorg/apache/avro/io/BinaryDecoder;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/avro/io/BinaryDecoder;->limit:I

    return p1
.end method

.method public static synthetic access$502(Lorg/apache/avro/io/BinaryDecoder;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/avro/io/BinaryDecoder;->minPos:I

    return p1
.end method

.method private configureSource(ILorg/apache/avro/io/BinaryDecoder$ByteSource;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder;->source:Lorg/apache/avro/io/BinaryDecoder$ByteSource;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->detach()V

    .line 3
    :cond_0
    invoke-virtual {p2, p1, p0}, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->attach(ILorg/apache/avro/io/BinaryDecoder;)V

    .line 4
    iput-object p2, p0, Lorg/apache/avro/io/BinaryDecoder;->source:Lorg/apache/avro/io/BinaryDecoder$ByteSource;

    return-void
.end method

.method private doSkipItems()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/io/BinaryDecoder;->readLong()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/io/BinaryDecoder;->readLong()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/apache/avro/io/BinaryDecoder;->doSkipBytes(J)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/avro/io/BinaryDecoder;->readLong()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private ensureBounds(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/avro/io/BinaryDecoder;->limit:I

    iget v1, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_1

    .line 2
    iget-object p1, p0, Lorg/apache/avro/io/BinaryDecoder;->source:Lorg/apache/avro/io/BinaryDecoder$ByteSource;

    iget-object v2, p0, Lorg/apache/avro/io/BinaryDecoder;->buf:[B

    iget v3, p0, Lorg/apache/avro/io/BinaryDecoder;->minPos:I

    invoke-virtual {p1, v2, v1, v3, v0}, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->compactAndFill([BIII)V

    .line 3
    iget p1, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    iget v0, p0, Lorg/apache/avro/io/BinaryDecoder;->limit:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private innerLongDecode(J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder;->buf:[B

    iget v1, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-long v3, v2

    const-wide/16 v5, 0x7f

    and-long/2addr v3, v5

    const/16 v7, 0x1c

    shl-long/2addr v3, v7

    xor-long/2addr p1, v3

    const/16 v3, 0x7f

    if-le v2, v3, :cond_1

    const/4 v2, 0x2

    add-int/lit8 v4, v1, 0x1

    .line 2
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v9, 0x23

    shl-long/2addr v7, v9

    xor-long/2addr p1, v7

    if-le v4, v3, :cond_2

    const/4 v2, 0x3

    add-int/lit8 v4, v1, 0x2

    .line 3
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v9, 0x2a

    shl-long/2addr v7, v9

    xor-long/2addr p1, v7

    if-le v4, v3, :cond_2

    const/4 v2, 0x4

    add-int/lit8 v4, v1, 0x3

    .line 4
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v9, 0x31

    shl-long/2addr v7, v9

    xor-long/2addr p1, v7

    if-le v4, v3, :cond_2

    const/4 v2, 0x5

    add-int/lit8 v4, v1, 0x4

    .line 5
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v9, 0x38

    shl-long/2addr v7, v9

    xor-long/2addr p1, v7

    if-le v4, v3, :cond_2

    const/4 v2, 0x6

    add-int/lit8 v4, v1, 0x5

    .line 6
    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    int-to-long v7, v0

    and-long v4, v7, v5

    const/16 v6, 0x3f

    shl-long/2addr v4, v6

    xor-long/2addr p1, v4

    if-gt v0, v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lorg/apache/avro/InvalidNumberEncodingException;

    const-string p2, "Invalid long encoding"

    invoke-direct {p1, p2}, Lorg/apache/avro/InvalidNumberEncodingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_0
    add-int/2addr v1, v2

    .line 8
    iput v1, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    return-wide p1
.end method


# virtual methods
.method public arrayNext()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/io/BinaryDecoder;->doReadItemCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public clearBuf()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lorg/apache/avro/io/BinaryDecoder;->buf:[B

    return-void
.end method

.method public configure(Ljava/io/InputStream;I)Lorg/apache/avro/io/BinaryDecoder;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/avro/io/BinaryDecoder$InputStreamByteSource;-><init>(Ljava/io/InputStream;Lorg/apache/avro/io/BinaryDecoder$1;)V

    invoke-direct {p0, p2, v0}, Lorg/apache/avro/io/BinaryDecoder;->configureSource(ILorg/apache/avro/io/BinaryDecoder$ByteSource;)V

    return-object p0
.end method

.method public configure([BII)Lorg/apache/avro/io/BinaryDecoder;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/apache/avro/io/BinaryDecoder$ByteArrayByteSource;-><init>([BIILorg/apache/avro/io/BinaryDecoder$1;)V

    const/16 p1, 0x2000

    invoke-direct {p0, p1, v0}, Lorg/apache/avro/io/BinaryDecoder;->configureSource(ILorg/apache/avro/io/BinaryDecoder$ByteSource;)V

    return-object p0
.end method

.method public doReadBytes([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p3, :cond_1

    .line 1
    iget v0, p0, Lorg/apache/avro/io/BinaryDecoder;->limit:I

    iget v1, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt p3, v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder;->buf:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget p1, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lorg/apache/avro/io/BinaryDecoder;->buf:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 5
    iget v0, p0, Lorg/apache/avro/io/BinaryDecoder;->limit:I

    iput v0, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    .line 6
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder;->source:Lorg/apache/avro/io/BinaryDecoder$ByteSource;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->readRaw([BII)V

    :goto_0
    return-void

    .line 7
    :cond_1
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const-string p2, "Malformed data. Length is negative: "

    invoke-static {p2, p3}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doReadItemCount()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/io/BinaryDecoder;->readLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/io/BinaryDecoder;->readLong()J

    neg-long v0, v0

    :cond_0
    return-wide v0
.end method

.method public doSkipBytes(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/avro/io/BinaryDecoder;->limit:I

    iget v1, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    sub-int/2addr v0, v1

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    int-to-long v0, v1

    add-long/2addr v0, p1

    long-to-int p1, v0

    .line 2
    iput p1, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    iput v0, p0, Lorg/apache/avro/io/BinaryDecoder;->limit:I

    sub-long/2addr p1, v2

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder;->source:Lorg/apache/avro/io/BinaryDecoder$ByteSource;

    invoke-virtual {v0, p1, p2}, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->skipSourceBytes(J)V

    :goto_0
    return-void
.end method

.method public getBuf()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder;->buf:[B

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/avro/io/BinaryDecoder;->limit:I

    return v0
.end method

.method public getPos()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    return v0
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder;->source:Lorg/apache/avro/io/BinaryDecoder$ByteSource;

    return-object v0
.end method

.method public isEnd()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    iget v1, p0, Lorg/apache/avro/io/BinaryDecoder;->limit:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder;->source:Lorg/apache/avro/io/BinaryDecoder$ByteSource;

    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->isEof()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder;->source:Lorg/apache/avro/io/BinaryDecoder$ByteSource;

    iget-object v3, p0, Lorg/apache/avro/io/BinaryDecoder;->buf:[B

    array-length v4, v3

    invoke-virtual {v0, v3, v2, v4}, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->tryReadRaw([BII)I

    move-result v0

    .line 4
    iput v2, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    .line 5
    iput v0, p0, Lorg/apache/avro/io/BinaryDecoder;->limit:I

    if-nez v0, :cond_2

    move v2, v1

    :cond_2
    return v2
.end method

.method public mapNext()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/io/BinaryDecoder;->doReadItemCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public readArrayStart()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/io/BinaryDecoder;->doReadItemCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public readBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/avro/io/BinaryDecoder;->limit:I

    iget v1, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder;->source:Lorg/apache/avro/io/BinaryDecoder$ByteSource;

    iget-object v1, p0, Lorg/apache/avro/io/BinaryDecoder;->buf:[B

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/avro/io/BinaryDecoder$ByteSource;->tryReadRaw([BII)I

    move-result v0

    iput v0, p0, Lorg/apache/avro/io/BinaryDecoder;->limit:I

    .line 3
    iput v2, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder;->buf:[B

    iget v1, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    move v2, v1

    :cond_2
    return v2
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/io/BinaryDecoder;->readInt()I

    move-result v0

    int-to-long v1, v0

    const-wide/32 v3, 0x7ffffff7

    cmp-long v3, v1, v3

    if-gtz v3, :cond_3

    .line 2
    iget v3, p0, Lorg/apache/avro/io/BinaryDecoder;->maxBytesLength:I

    if-gt v0, v3, :cond_2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 6
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/avro/io/BinaryDecoder;->doReadBytes([BII)V

    .line 7
    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-object p1

    .line 8
    :cond_1
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const-string v1, "Malformed data. Length is negative: "

    invoke-static {v1, v0}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const-string v1, "Bytes length "

    const-string v2, " exceeds maximum allowed"

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot read arrays longer than 2147483639 bytes"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readDouble()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/io/BinaryDecoder;->ensureBounds(I)V

    .line 2
    iget-object v1, p0, Lorg/apache/avro/io/BinaryDecoder;->buf:[B

    iget v2, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v0

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x4

    .line 3
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x5

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v0

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x6

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x7

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v4

    add-int/lit8 v4, v2, 0x8

    .line 4
    iget v5, p0, Lorg/apache/avro/io/BinaryDecoder;->limit:I

    if-gt v4, v5, :cond_0

    add-int/2addr v2, v0

    .line 5
    iput v2, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    int-to-long v2, v3

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    int-to-long v0, v1

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 7
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/io/BinaryDecoder;->readInt()I

    move-result v0

    return v0
.end method

.method public readFixed([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/io/BinaryDecoder;->doReadBytes([BII)V

    return-void
.end method

.method public readFloat()F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/io/BinaryDecoder;->ensureBounds(I)V

    .line 2
    iget-object v1, p0, Lorg/apache/avro/io/BinaryDecoder;->buf:[B

    iget v2, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x3

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x4

    .line 3
    iget v4, p0, Lorg/apache/avro/io/BinaryDecoder;->limit:I

    if-gt v3, v4, :cond_0

    add-int/2addr v2, v0

    .line 4
    iput v2, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    .line 5
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0

    .line 6
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/io/BinaryDecoder;->readInt()I

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/io/BinaryDecoder;->ensureBounds(I)V

    .line 2
    iget-object v1, p0, Lorg/apache/avro/io/BinaryDecoder;->buf:[B

    iget v2, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v4, v3, 0x7f

    const/4 v5, 0x1

    const/16 v6, 0x7f

    if-le v3, v6, :cond_2

    const/4 v3, 0x2

    add-int/lit8 v7, v2, 0x1

    .line 3
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    and-int/lit8 v8, v7, 0x7f

    shl-int/lit8 v8, v8, 0x7

    xor-int/2addr v4, v8

    if-le v7, v6, :cond_1

    const/4 v3, 0x3

    add-int/lit8 v7, v2, 0x2

    .line 4
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    and-int/lit8 v8, v7, 0x7f

    shl-int/lit8 v8, v8, 0xe

    xor-int/2addr v4, v8

    if-le v7, v6, :cond_1

    const/4 v3, 0x4

    add-int/lit8 v7, v2, 0x3

    .line 5
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    and-int/lit8 v8, v7, 0x7f

    shl-int/lit8 v8, v8, 0x15

    xor-int/2addr v4, v8

    if-le v7, v6, :cond_1

    add-int/lit8 v3, v2, 0x4

    .line 6
    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v3, v1, 0x7f

    shl-int/lit8 v3, v3, 0x1c

    xor-int/2addr v4, v3

    if-gt v1, v6, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lorg/apache/avro/InvalidNumberEncodingException;

    const-string v1, "Invalid int encoding"

    invoke-direct {v0, v1}, Lorg/apache/avro/InvalidNumberEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v5

    :goto_0
    add-int/2addr v2, v0

    .line 8
    iput v2, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    .line 9
    iget v0, p0, Lorg/apache/avro/io/BinaryDecoder;->limit:I

    if-gt v2, v0, :cond_3

    ushr-int/lit8 v0, v4, 0x1

    and-int/lit8 v1, v4, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0

    .line 10
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/io/BinaryDecoder;->ensureBounds(I)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder;->buf:[B

    iget v1, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v3, v1, 0x7f

    const/16 v4, 0x7f

    if-le v1, v4, :cond_1

    add-int/lit8 v1, v2, 0x1

    .line 3
    iput v1, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0x7

    xor-int/2addr v3, v5

    if-le v2, v4, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 4
    iput v2, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v5, v1, 0x7f

    shl-int/lit8 v5, v5, 0xe

    xor-int/2addr v3, v5

    if-le v1, v4, :cond_1

    add-int/lit8 v1, v2, 0x1

    .line 5
    iput v1, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, v0, 0x7f

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v1, v3

    if-le v0, v4, :cond_0

    int-to-long v0, v1

    .line 6
    invoke-direct {p0, v0, v1}, Lorg/apache/avro/io/BinaryDecoder;->innerLongDecode(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    int-to-long v0, v1

    goto :goto_0

    :cond_1
    int-to-long v0, v3

    .line 7
    :goto_0
    iget v2, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    iget v3, p0, Lorg/apache/avro/io/BinaryDecoder;->limit:I

    if-gt v2, v3, :cond_2

    const/4 v2, 0x1

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    return-wide v0

    .line 8
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readMapStart()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/io/BinaryDecoder;->doReadItemCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public readNull()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder;->scratchUtf8:Lorg/apache/avro/util/Utf8;

    invoke-virtual {p0, v0}, Lorg/apache/avro/io/BinaryDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/util/Utf8;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/io/BinaryDecoder;->readLong()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lorg/apache/avro/util/Utf8;

    invoke-direct {p1}, Lorg/apache/avro/util/Utf8;-><init>()V

    :goto_0
    long-to-int v4, v0

    .line 3
    invoke-virtual {p1, v4}, Lorg/apache/avro/util/Utf8;->setByteLength(I)Lorg/apache/avro/util/Utf8;

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/apache/avro/util/Utf8;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v4}, Lorg/apache/avro/io/BinaryDecoder;->doReadBytes([BII)V

    :cond_1
    return-object p1

    .line 5
    :cond_2
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const-string v2, "Malformed data. Length is negative: "

    invoke-static {v2, v0, v1}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot read strings longer than 2147483639 bytes"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBuf([BII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/avro/io/BinaryDecoder;->buf:[B

    .line 2
    iput p2, p0, Lorg/apache/avro/io/BinaryDecoder;->pos:I

    add-int/2addr p2, p3

    .line 3
    iput p2, p0, Lorg/apache/avro/io/BinaryDecoder;->limit:I

    return-void
.end method

.method public skipArray()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/io/BinaryDecoder;->doSkipItems()J

    move-result-wide v0

    return-wide v0
.end method

.method public skipBytes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/io/BinaryDecoder;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/avro/io/BinaryDecoder;->doSkipBytes(J)V

    return-void
.end method

.method public skipFixed(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/apache/avro/io/BinaryDecoder;->doSkipBytes(J)V

    return-void
.end method

.method public skipMap()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/io/BinaryDecoder;->doSkipItems()J

    move-result-wide v0

    return-wide v0
.end method

.method public skipString()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/io/BinaryDecoder;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/avro/io/BinaryDecoder;->doSkipBytes(J)V

    return-void
.end method
