.class public Lorg/apache/avro/io/BufferedBinaryEncoder$OutputStreamSink;
.super Lorg/apache/avro/io/BufferedBinaryEncoder$ByteSink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/BufferedBinaryEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStreamSink"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/WritableByteChannel;

.field private final out:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/io/BufferedBinaryEncoder$ByteSink;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder$OutputStreamSink;->out:Ljava/io/OutputStream;

    .line 4
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/io/BufferedBinaryEncoder$OutputStreamSink;->channel:Ljava/nio/channels/WritableByteChannel;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/OutputStream;Lorg/apache/avro/io/BufferedBinaryEncoder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/io/BufferedBinaryEncoder$OutputStreamSink;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public innerFlush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BufferedBinaryEncoder$OutputStreamSink;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public innerWrite(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/BufferedBinaryEncoder$OutputStreamSink;->channel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public innerWrite([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BufferedBinaryEncoder$OutputStreamSink;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
