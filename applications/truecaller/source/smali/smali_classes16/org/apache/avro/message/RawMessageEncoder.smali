.class public Lorg/apache/avro/message/RawMessageEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/message/MessageEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/message/RawMessageEncoder$BufferOutputStream;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/avro/message/MessageEncoder<",
        "TD;>;"
    }
.end annotation


# static fields
.field private static final ENCODER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/avro/io/BinaryEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEMP:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/avro/message/RawMessageEncoder$BufferOutputStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final copyOutputBytes:Z

.field private final writer:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/message/RawMessageEncoder$1;

    invoke-direct {v0}, Lorg/apache/avro/message/RawMessageEncoder$1;-><init>()V

    sput-object v0, Lorg/apache/avro/message/RawMessageEncoder;->TEMP:Ljava/lang/ThreadLocal;

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/avro/message/RawMessageEncoder;->ENCODER:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/avro/message/RawMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p3, p0, Lorg/apache/avro/message/RawMessageEncoder;->copyOutputBytes:Z

    .line 4
    invoke-virtual {p1, p2}, Lorg/apache/avro/generic/GenericData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/message/RawMessageEncoder;->writer:Lorg/apache/avro/io/DatumWriter;

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/message/RawMessageEncoder;->TEMP:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/message/RawMessageEncoder$BufferOutputStream;

    .line 2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/apache/avro/message/RawMessageEncoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 4
    iget-boolean p1, p0, Lorg/apache/avro/message/RawMessageEncoder;->copyOutputBytes:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0}, Lorg/apache/avro/message/RawMessageEncoder$BufferOutputStream;->toBufferWithCopy()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {v0}, Lorg/apache/avro/message/RawMessageEncoder$BufferOutputStream;->toBufferWithoutCopy()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-static {}, Lorg/apache/avro/io/EncoderFactory;->get()Lorg/apache/avro/io/EncoderFactory;

    move-result-object v0

    sget-object v1, Lorg/apache/avro/message/RawMessageEncoder;->ENCODER:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/avro/io/BinaryEncoder;

    invoke-virtual {v0, p2, v2}, Lorg/apache/avro/io/EncoderFactory;->directBinaryEncoder(Ljava/io/OutputStream;Lorg/apache/avro/io/BinaryEncoder;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p2

    .line 8
    invoke-virtual {v1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lorg/apache/avro/message/RawMessageEncoder;->writer:Lorg/apache/avro/io/DatumWriter;

    invoke-interface {v0, p1, p2}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    .line 10
    invoke-interface {p2}, Ljava/io/Flushable;->flush()V

    return-void
.end method
