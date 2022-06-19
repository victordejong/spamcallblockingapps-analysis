.class public Lorg/apache/avro/io/DirectBinaryDecoder$ByteReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/DirectBinaryDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ByteReader"
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/avro/io/DirectBinaryDecoder;


# direct methods
.method private constructor <init>(Lorg/apache/avro/io/DirectBinaryDecoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/avro/io/DirectBinaryDecoder$ByteReader;->this$0:Lorg/apache/avro/io/DirectBinaryDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/io/DirectBinaryDecoder;Lorg/apache/avro/io/DirectBinaryDecoder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/avro/io/DirectBinaryDecoder$ByteReader;-><init>(Lorg/apache/avro/io/DirectBinaryDecoder;)V

    return-void
.end method


# virtual methods
.method public read(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 4
    :goto_0
    iget-object v0, p0, Lorg/apache/avro/io/DirectBinaryDecoder$ByteReader;->this$0:Lorg/apache/avro/io/DirectBinaryDecoder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lorg/apache/avro/io/DirectBinaryDecoder;->doReadBytes([BII)V

    .line 5
    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-object p1
.end method
