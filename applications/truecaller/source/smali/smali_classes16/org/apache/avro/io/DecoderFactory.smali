.class public Lorg/apache/avro/io/DecoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/io/DecoderFactory$DefaultDecoderFactory;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field private static final DEFAULT_FACTORY:Lorg/apache/avro/io/DecoderFactory;


# instance fields
.field public binaryDecoderBufferSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/io/DecoderFactory$DefaultDecoderFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/avro/io/DecoderFactory$DefaultDecoderFactory;-><init>(Lorg/apache/avro/io/DecoderFactory$1;)V

    sput-object v0, Lorg/apache/avro/io/DecoderFactory;->DEFAULT_FACTORY:Lorg/apache/avro/io/DecoderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 2
    iput v0, p0, Lorg/apache/avro/io/DecoderFactory;->binaryDecoderBufferSize:I

    return-void
.end method

.method public static defaultFactory()Lorg/apache/avro/io/DecoderFactory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/avro/io/DecoderFactory;->get()Lorg/apache/avro/io/DecoderFactory;

    move-result-object v0

    return-object v0
.end method

.method public static get()Lorg/apache/avro/io/DecoderFactory;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/io/DecoderFactory;->DEFAULT_FACTORY:Lorg/apache/avro/io/DecoderFactory;

    return-object v0
.end method


# virtual methods
.method public binaryDecoder(Ljava/io/InputStream;Lorg/apache/avro/io/BinaryDecoder;)Lorg/apache/avro/io/BinaryDecoder;
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/avro/io/BinaryDecoder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lorg/apache/avro/io/DecoderFactory;->binaryDecoderBufferSize:I

    invoke-virtual {p2, p1, v0}, Lorg/apache/avro/io/BinaryDecoder;->configure(Ljava/io/InputStream;I)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    :goto_0
    new-instance p2, Lorg/apache/avro/io/BinaryDecoder;

    iget v0, p0, Lorg/apache/avro/io/DecoderFactory;->binaryDecoderBufferSize:I

    invoke-direct {p2, p1, v0}, Lorg/apache/avro/io/BinaryDecoder;-><init>(Ljava/io/InputStream;I)V

    return-object p2
.end method

.method public binaryDecoder([BIILorg/apache/avro/io/BinaryDecoder;)Lorg/apache/avro/io/BinaryDecoder;
    .locals 2

    if-eqz p4, :cond_1

    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/avro/io/BinaryDecoder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p4, p1, p2, p3}, Lorg/apache/avro/io/BinaryDecoder;->configure([BII)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    :goto_0
    new-instance p4, Lorg/apache/avro/io/BinaryDecoder;

    invoke-direct {p4, p1, p2, p3}, Lorg/apache/avro/io/BinaryDecoder;-><init>([BII)V

    return-object p4
.end method

.method public binaryDecoder([BLorg/apache/avro/io/BinaryDecoder;)Lorg/apache/avro/io/BinaryDecoder;
    .locals 2

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lorg/apache/avro/io/DecoderFactory;->binaryDecoder([BIILorg/apache/avro/io/BinaryDecoder;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object p1

    return-object p1
.end method

.method public configureDecoderBufferSize(I)Lorg/apache/avro/io/DecoderFactory;
    .locals 1

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    const/high16 v0, 0x1000000

    if-le p1, v0, :cond_1

    move p1, v0

    .line 1
    :cond_1
    iput p1, p0, Lorg/apache/avro/io/DecoderFactory;->binaryDecoderBufferSize:I

    return-object p0
.end method

.method public createBinaryDecoder(Ljava/io/InputStream;Lorg/apache/avro/io/BinaryDecoder;)Lorg/apache/avro/io/BinaryDecoder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/io/DecoderFactory;->binaryDecoder(Ljava/io/InputStream;Lorg/apache/avro/io/BinaryDecoder;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object p1

    return-object p1
.end method

.method public createBinaryDecoder([BIILorg/apache/avro/io/BinaryDecoder;)Lorg/apache/avro/io/BinaryDecoder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p4, :cond_1

    .line 2
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/avro/io/BinaryDecoder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p4, p1, p2, p3}, Lorg/apache/avro/io/BinaryDecoder;->configure([BII)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    :goto_0
    new-instance p4, Lorg/apache/avro/io/BinaryDecoder;

    invoke-direct {p4, p1, p2, p3}, Lorg/apache/avro/io/BinaryDecoder;-><init>([BII)V

    return-object p4
.end method

.method public createBinaryDecoder([BLorg/apache/avro/io/BinaryDecoder;)Lorg/apache/avro/io/BinaryDecoder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lorg/apache/avro/io/DecoderFactory;->binaryDecoder([BIILorg/apache/avro/io/BinaryDecoder;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object p1

    return-object p1
.end method

.method public directBinaryDecoder(Ljava/io/InputStream;Lorg/apache/avro/io/BinaryDecoder;)Lorg/apache/avro/io/BinaryDecoder;
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/avro/io/DirectBinaryDecoder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p2, Lorg/apache/avro/io/DirectBinaryDecoder;

    invoke-virtual {p2, p1}, Lorg/apache/avro/io/DirectBinaryDecoder;->configure(Ljava/io/InputStream;)Lorg/apache/avro/io/DirectBinaryDecoder;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    :goto_0
    new-instance p2, Lorg/apache/avro/io/DirectBinaryDecoder;

    invoke-direct {p2, p1}, Lorg/apache/avro/io/DirectBinaryDecoder;-><init>(Ljava/io/InputStream;)V

    return-object p2
.end method

.method public getConfiguredBufferSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/avro/io/DecoderFactory;->binaryDecoderBufferSize:I

    return v0
.end method

.method public jsonDecoder(Lorg/apache/avro/Schema;Ljava/io/InputStream;)Lorg/apache/avro/io/JsonDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/io/JsonDecoder;

    invoke-direct {v0, p1, p2}, Lorg/apache/avro/io/JsonDecoder;-><init>(Lorg/apache/avro/Schema;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public jsonDecoder(Lorg/apache/avro/Schema;Ljava/lang/String;)Lorg/apache/avro/io/JsonDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/avro/io/JsonDecoder;

    invoke-direct {v0, p1, p2}, Lorg/apache/avro/io/JsonDecoder;-><init>(Lorg/apache/avro/Schema;Ljava/lang/String;)V

    return-object v0
.end method

.method public resolvingDecoder(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)Lorg/apache/avro/io/ResolvingDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/io/ResolvingDecoder;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/avro/io/ResolvingDecoder;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)V

    return-object v0
.end method

.method public validatingDecoder(Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)Lorg/apache/avro/io/ValidatingDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/io/ValidatingDecoder;

    invoke-direct {v0, p1, p2}, Lorg/apache/avro/io/ValidatingDecoder;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)V

    return-object v0
.end method
