.class public Lorg/apache/avro/message/BinaryMessageEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/message/MessageEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/message/BinaryMessageEncoder$V1MessageEncoder;
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
.field public static final V1_HEADER:[B


# instance fields
.field private final writeCodec:Lorg/apache/avro/message/RawMessageEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/message/RawMessageEncoder<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/avro/message/BinaryMessageEncoder;->V1_HEADER:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x3dt
        0x1t
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/apache/avro/message/BinaryMessageEncoder$V1MessageEncoder;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/avro/message/BinaryMessageEncoder$V1MessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;Z)V

    iput-object v0, p0, Lorg/apache/avro/message/BinaryMessageEncoder;->writeCodec:Lorg/apache/avro/message/RawMessageEncoder;

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
    iget-object v0, p0, Lorg/apache/avro/message/BinaryMessageEncoder;->writeCodec:Lorg/apache/avro/message/RawMessageEncoder;

    invoke-virtual {v0, p1}, Lorg/apache/avro/message/RawMessageEncoder;->encode(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 1
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

    .line 2
    iget-object v0, p0, Lorg/apache/avro/message/BinaryMessageEncoder;->writeCodec:Lorg/apache/avro/message/RawMessageEncoder;

    invoke-virtual {v0, p1, p2}, Lorg/apache/avro/message/RawMessageEncoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)V

    return-void
.end method
