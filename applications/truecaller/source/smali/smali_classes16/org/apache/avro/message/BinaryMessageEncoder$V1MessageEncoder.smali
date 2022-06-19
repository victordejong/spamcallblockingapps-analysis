.class public Lorg/apache/avro/message/BinaryMessageEncoder$V1MessageEncoder;
.super Lorg/apache/avro/message/RawMessageEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/message/BinaryMessageEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "V1MessageEncoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/avro/message/RawMessageEncoder<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final headerBytes:[B


# direct methods
.method public constructor <init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/message/RawMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;Z)V

    .line 2
    invoke-static {p2}, Lorg/apache/avro/message/BinaryMessageEncoder$V1MessageEncoder;->getWriteHeader(Lorg/apache/avro/Schema;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/message/BinaryMessageEncoder$V1MessageEncoder;->headerBytes:[B

    return-void
.end method

.method private static getWriteHeader(Lorg/apache/avro/Schema;)[B
    .locals 4

    :try_start_0
    const-string v0, "CRC-64-AVRO"

    .line 1
    invoke-static {v0, p0}, Lorg/apache/avro/SchemaNormalization;->parsingFingerprint(Ljava/lang/String;Lorg/apache/avro/Schema;)[B

    move-result-object p0

    .line 2
    sget-object v0, Lorg/apache/avro/message/BinaryMessageEncoder;->V1_HEADER:[B

    array-length v1, v0

    array-length v2, p0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    array-length v0, v0

    array-length v2, p0

    invoke-static {p0, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {v0, p0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
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

    .line 1
    iget-object v0, p0, Lorg/apache/avro/message/BinaryMessageEncoder$V1MessageEncoder;->headerBytes:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2
    invoke-super {p0, p1, p2}, Lorg/apache/avro/message/RawMessageEncoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)V

    return-void
.end method
