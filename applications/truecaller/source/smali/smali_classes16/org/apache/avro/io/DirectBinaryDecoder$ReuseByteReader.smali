.class public Lorg/apache/avro/io/DirectBinaryDecoder$ReuseByteReader;
.super Lorg/apache/avro/io/DirectBinaryDecoder$ByteReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/DirectBinaryDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReuseByteReader"
.end annotation


# instance fields
.field private final bbi:Lorg/apache/avro/util/ByteBufferInputStream;

.field public final synthetic this$0:Lorg/apache/avro/io/DirectBinaryDecoder;


# direct methods
.method public constructor <init>(Lorg/apache/avro/io/DirectBinaryDecoder;Lorg/apache/avro/util/ByteBufferInputStream;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/apache/avro/io/DirectBinaryDecoder$ReuseByteReader;->this$0:Lorg/apache/avro/io/DirectBinaryDecoder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/avro/io/DirectBinaryDecoder$ByteReader;-><init>(Lorg/apache/avro/io/DirectBinaryDecoder;Lorg/apache/avro/io/DirectBinaryDecoder$1;)V

    .line 2
    iput-object p2, p0, Lorg/apache/avro/io/DirectBinaryDecoder$ReuseByteReader;->bbi:Lorg/apache/avro/util/ByteBufferInputStream;

    return-void
.end method


# virtual methods
.method public read(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/apache/avro/io/DirectBinaryDecoder$ByteReader;->read(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p0, Lorg/apache/avro/io/DirectBinaryDecoder$ReuseByteReader;->bbi:Lorg/apache/avro/util/ByteBufferInputStream;

    invoke-virtual {p1, p2}, Lorg/apache/avro/util/ByteBufferInputStream;->readBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method
