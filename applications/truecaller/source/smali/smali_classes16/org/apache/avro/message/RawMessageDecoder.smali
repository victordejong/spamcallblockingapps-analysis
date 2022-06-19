.class public Lorg/apache/avro/message/RawMessageDecoder;
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
.field private static final DECODER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/avro/io/BinaryDecoder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final reader:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/avro/message/RawMessageDecoder;->DECODER:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p2}, Lorg/apache/avro/message/RawMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/message/MessageDecoder$BaseDecoder;-><init>()V

    .line 3
    invoke-virtual {p1, p2, p3}, Lorg/apache/avro/generic/GenericData;->createDatumReader(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/message/RawMessageDecoder;->reader:Lorg/apache/avro/io/DatumReader;

    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "TD;)TD;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/avro/io/DecoderFactory;->get()Lorg/apache/avro/io/DecoderFactory;

    move-result-object v0

    sget-object v1, Lorg/apache/avro/message/RawMessageDecoder;->DECODER:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/avro/io/BinaryDecoder;

    invoke-virtual {v0, p1, v2}, Lorg/apache/avro/io/DecoderFactory;->directBinaryDecoder(Ljava/io/InputStream;Lorg/apache/avro/io/BinaryDecoder;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object p1

    .line 2
    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lorg/apache/avro/message/RawMessageDecoder;->reader:Lorg/apache/avro/io/DatumReader;

    invoke-interface {v0, p2, p1}, Lorg/apache/avro/io/DatumReader;->read(Ljava/lang/Object;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Decoding datum failed"

    invoke-direct {p2, v0, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
