.class public Lorg/apache/avro/message/BinaryMessageDecoder;
.super Lorg/apache/avro/message/MessageDecoder$BaseDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/avro/message/MessageDecoder$BaseDecoder<",
        "TD;>;"
    }
.end annotation


# static fields
.field private static final FP_BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEADER_BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final codecByFingerprint:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/avro/message/RawMessageDecoder<",
            "TD;>;>;"
        }
    .end annotation
.end field

.field private final model:Lorg/apache/avro/generic/GenericData;

.field private final readSchema:Lorg/apache/avro/Schema;

.field private final resolver:Lorg/apache/avro/message/SchemaStore;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/message/BinaryMessageDecoder$1;

    invoke-direct {v0}, Lorg/apache/avro/message/BinaryMessageDecoder$1;-><init>()V

    sput-object v0, Lorg/apache/avro/message/BinaryMessageDecoder;->HEADER_BUFFER:Ljava/lang/ThreadLocal;

    .line 2
    new-instance v0, Lorg/apache/avro/message/BinaryMessageDecoder$2;

    invoke-direct {v0}, Lorg/apache/avro/message/BinaryMessageDecoder$2;-><init>()V

    sput-object v0, Lorg/apache/avro/message/BinaryMessageDecoder;->FP_BUFFER:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;Lorg/apache/avro/message/SchemaStore;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;Lorg/apache/avro/message/SchemaStore;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/message/MessageDecoder$BaseDecoder;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/message/BinaryMessageDecoder;->codecByFingerprint:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lorg/apache/avro/message/BinaryMessageDecoder;->model:Lorg/apache/avro/generic/GenericData;

    .line 5
    iput-object p2, p0, Lorg/apache/avro/message/BinaryMessageDecoder;->readSchema:Lorg/apache/avro/Schema;

    .line 6
    iput-object p3, p0, Lorg/apache/avro/message/BinaryMessageDecoder;->resolver:Lorg/apache/avro/message/SchemaStore;

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p0, p2}, Lorg/apache/avro/message/BinaryMessageDecoder;->addSchema(Lorg/apache/avro/Schema;)V

    :cond_0
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/message/BinaryMessageDecoder;->HEADER_BUFFER:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method private getDecoder(J)Lorg/apache/avro/message/RawMessageDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/apache/avro/message/RawMessageDecoder<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/message/BinaryMessageDecoder;->codecByFingerprint:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/message/RawMessageDecoder;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/message/BinaryMessageDecoder;->resolver:Lorg/apache/avro/message/SchemaStore;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1, p2}, Lorg/apache/avro/message/SchemaStore;->findByFingerprint(J)Lorg/apache/avro/Schema;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;->addSchema(Lorg/apache/avro/Schema;)V

    .line 5
    iget-object v0, p0, Lorg/apache/avro/message/BinaryMessageDecoder;->codecByFingerprint:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/message/RawMessageDecoder;

    return-object p1

    .line 6
    :cond_1
    new-instance v0, Lorg/apache/avro/message/MissingSchemaException;

    const-string v1, "Cannot resolve schema for fingerprint: "

    invoke-static {v1, p1, p2}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/avro/message/MissingSchemaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readFully(Ljava/io/InputStream;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    array-length v2, p2

    sub-int/2addr v2, v1

    if-lez v2, :cond_0

    array-length v2, p2

    sub-int/2addr v2, v1

    invoke-virtual {p1, p2, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    .line 2
    :cond_0
    array-length p1, p2

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public addSchema(Lorg/apache/avro/Schema;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lorg/apache/avro/SchemaNormalization;->parsingFingerprint64(Lorg/apache/avro/Schema;)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lorg/apache/avro/message/BinaryMessageDecoder;->readSchema:Lorg/apache/avro/Schema;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 3
    :goto_0
    iget-object v3, p0, Lorg/apache/avro/message/BinaryMessageDecoder;->codecByFingerprint:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lorg/apache/avro/message/RawMessageDecoder;

    iget-object v4, p0, Lorg/apache/avro/message/BinaryMessageDecoder;->model:Lorg/apache/avro/generic/GenericData;

    invoke-direct {v1, v4, p1, v2}, Lorg/apache/avro/message/RawMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)V

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public decode(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "TD;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/message/BinaryMessageDecoder;->HEADER_BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2
    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;->readFully(Ljava/io/InputStream;[B)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 3
    sget-object v1, Lorg/apache/avro/message/BinaryMessageEncoder;->V1_HEADER:[B

    const/4 v2, 0x0

    aget-byte v3, v1, v2

    aget-byte v4, v0, v2

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    aget-byte v1, v1, v6

    aget-byte v3, v0, v6

    if-ne v1, v3, :cond_0

    .line 4
    sget-object v0, Lorg/apache/avro/message/BinaryMessageDecoder;->FP_BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/avro/message/BinaryMessageDecoder;->getDecoder(J)Lorg/apache/avro/message/RawMessageDecoder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/apache/avro/message/RawMessageDecoder;->decode(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Lorg/apache/avro/message/BadHeaderException;

    new-array p2, v5, [Ljava/lang/Object;

    aget-byte v1, v0, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, p2, v2

    aget-byte v0, v0, v6

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, p2, v6

    const-string v0, "Unrecognized header bytes: 0x%02X 0x%02X"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/avro/message/BadHeaderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    :try_start_1
    new-instance p1, Lorg/apache/avro/message/BadHeaderException;

    const-string p2, "Not enough header bytes"

    invoke-direct {p1, p2}, Lorg/apache/avro/message/BadHeaderException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Failed to read header and fingerprint bytes"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
