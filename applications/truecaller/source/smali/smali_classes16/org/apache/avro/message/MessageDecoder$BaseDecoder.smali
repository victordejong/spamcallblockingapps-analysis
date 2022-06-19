.class public abstract Lorg/apache/avro/message/MessageDecoder$BaseDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/message/MessageDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/message/MessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/avro/message/MessageDecoder<",
        "TD;>;"
    }
.end annotation


# static fields
.field private static final BYTE_ARRAY_IN:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/avro/util/ReusableByteArrayInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private static final BYTE_BUFFER_IN:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/avro/util/ReusableByteBufferInputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/message/MessageDecoder$BaseDecoder$1;

    invoke-direct {v0}, Lorg/apache/avro/message/MessageDecoder$BaseDecoder$1;-><init>()V

    sput-object v0, Lorg/apache/avro/message/MessageDecoder$BaseDecoder;->BYTE_ARRAY_IN:Ljava/lang/ThreadLocal;

    .line 2
    new-instance v0, Lorg/apache/avro/message/MessageDecoder$BaseDecoder$2;

    invoke-direct {v0}, Lorg/apache/avro/message/MessageDecoder$BaseDecoder$2;-><init>()V

    sput-object v0, Lorg/apache/avro/message/MessageDecoder$BaseDecoder;->BYTE_BUFFER_IN:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, v0}, Lorg/apache/avro/message/MessageDecoder;->decode(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/apache/avro/message/MessageDecoder$BaseDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/nio/ByteBuffer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "TD;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    sget-object v0, Lorg/apache/avro/message/MessageDecoder$BaseDecoder;->BYTE_BUFFER_IN:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/util/ReusableByteBufferInputStream;

    .line 5
    invoke-virtual {v0, p1}, Lorg/apache/avro/util/ReusableByteBufferInputStream;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 6
    invoke-interface {p0, v0, p2}, Lorg/apache/avro/message/MessageDecoder;->decode(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public decode([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/apache/avro/message/MessageDecoder$BaseDecoder;->decode([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public decode([BLjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BTD;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lorg/apache/avro/message/MessageDecoder$BaseDecoder;->BYTE_ARRAY_IN:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/util/ReusableByteArrayInputStream;

    .line 8
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lorg/apache/avro/util/ReusableByteArrayInputStream;->setByteArray([BII)V

    .line 9
    invoke-interface {p0, v0, p2}, Lorg/apache/avro/message/MessageDecoder;->decode(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
