.class public Lorg/apache/avro/io/EncoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/io/EncoderFactory$DefaultEncoderFactory;
    }
.end annotation


# static fields
.field private static final DEFAULT_BLOCK_BUFFER_SIZE:I = 0x10000

.field private static final DEFAULT_BUFFER_SIZE:I = 0x800

.field private static final DEFAULT_FACTORY:Lorg/apache/avro/io/EncoderFactory;

.field private static final MAX_BLOCK_BUFFER_SIZE:I = 0x40000000

.field private static final MIN_BLOCK_BUFFER_SIZE:I = 0x40


# instance fields
.field public binaryBlockSize:I

.field public binaryBufferSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/io/EncoderFactory$DefaultEncoderFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/avro/io/EncoderFactory$DefaultEncoderFactory;-><init>(Lorg/apache/avro/io/EncoderFactory$1;)V

    sput-object v0, Lorg/apache/avro/io/EncoderFactory;->DEFAULT_FACTORY:Lorg/apache/avro/io/EncoderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 2
    iput v0, p0, Lorg/apache/avro/io/EncoderFactory;->binaryBufferSize:I

    const/high16 v0, 0x10000

    .line 3
    iput v0, p0, Lorg/apache/avro/io/EncoderFactory;->binaryBlockSize:I

    return-void
.end method

.method public static get()Lorg/apache/avro/io/EncoderFactory;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/io/EncoderFactory;->DEFAULT_FACTORY:Lorg/apache/avro/io/EncoderFactory;

    return-object v0
.end method


# virtual methods
.method public binaryEncoder(Ljava/io/OutputStream;Lorg/apache/avro/io/BinaryEncoder;)Lorg/apache/avro/io/BinaryEncoder;
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/avro/io/BufferedBinaryEncoder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p2, Lorg/apache/avro/io/BufferedBinaryEncoder;

    iget v0, p0, Lorg/apache/avro/io/EncoderFactory;->binaryBufferSize:I

    invoke-virtual {p2, p1, v0}, Lorg/apache/avro/io/BufferedBinaryEncoder;->configure(Ljava/io/OutputStream;I)Lorg/apache/avro/io/BufferedBinaryEncoder;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    :goto_0
    new-instance p2, Lorg/apache/avro/io/BufferedBinaryEncoder;

    iget v0, p0, Lorg/apache/avro/io/EncoderFactory;->binaryBufferSize:I

    invoke-direct {p2, p1, v0}, Lorg/apache/avro/io/BufferedBinaryEncoder;-><init>(Ljava/io/OutputStream;I)V

    return-object p2
.end method

.method public blockingBinaryEncoder(Ljava/io/OutputStream;Lorg/apache/avro/io/BinaryEncoder;)Lorg/apache/avro/io/BinaryEncoder;
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/avro/io/EncoderFactory;->binaryBlockSize:I

    mul-int/lit8 v1, v0, 0x2

    .line 2
    iget v2, p0, Lorg/apache/avro/io/EncoderFactory;->binaryBufferSize:I

    if-lt v1, v2, :cond_0

    const/16 v2, 0x20

    :cond_0
    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/apache/avro/io/BlockingBinaryEncoder;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    check-cast p2, Lorg/apache/avro/io/BlockingBinaryEncoder;

    invoke-virtual {p2, p1, v0, v2}, Lorg/apache/avro/io/BlockingBinaryEncoder;->configure(Ljava/io/OutputStream;II)Lorg/apache/avro/io/BlockingBinaryEncoder;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    :goto_0
    new-instance p2, Lorg/apache/avro/io/BlockingBinaryEncoder;

    invoke-direct {p2, p1, v0, v2}, Lorg/apache/avro/io/BlockingBinaryEncoder;-><init>(Ljava/io/OutputStream;II)V

    return-object p2
.end method

.method public configureBlockSize(I)Lorg/apache/avro/io/EncoderFactory;
    .locals 1

    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_1

    move p1, v0

    .line 1
    :cond_1
    iput p1, p0, Lorg/apache/avro/io/EncoderFactory;->binaryBlockSize:I

    return-object p0
.end method

.method public configureBufferSize(I)Lorg/apache/avro/io/EncoderFactory;
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
    iput p1, p0, Lorg/apache/avro/io/EncoderFactory;->binaryBufferSize:I

    return-object p0
.end method

.method public directBinaryEncoder(Ljava/io/OutputStream;Lorg/apache/avro/io/BinaryEncoder;)Lorg/apache/avro/io/BinaryEncoder;
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/avro/io/DirectBinaryEncoder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p2, Lorg/apache/avro/io/DirectBinaryEncoder;

    invoke-virtual {p2, p1}, Lorg/apache/avro/io/DirectBinaryEncoder;->configure(Ljava/io/OutputStream;)Lorg/apache/avro/io/DirectBinaryEncoder;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    :goto_0
    new-instance p2, Lorg/apache/avro/io/DirectBinaryEncoder;

    invoke-direct {p2, p1}, Lorg/apache/avro/io/DirectBinaryEncoder;-><init>(Ljava/io/OutputStream;)V

    return-object p2
.end method

.method public getBlockSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/avro/io/EncoderFactory;->binaryBlockSize:I

    return v0
.end method

.method public getBufferSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/avro/io/EncoderFactory;->binaryBufferSize:I

    return v0
.end method

.method public jsonEncoder(Lorg/apache/avro/Schema;Le/k/a/b/g;)Lorg/apache/avro/io/JsonEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/avro/io/JsonEncoder;

    invoke-direct {v0, p1, p2}, Lorg/apache/avro/io/JsonEncoder;-><init>(Lorg/apache/avro/Schema;Le/k/a/b/g;)V

    return-object v0
.end method

.method public jsonEncoder(Lorg/apache/avro/Schema;Ljava/io/OutputStream;)Lorg/apache/avro/io/JsonEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/io/JsonEncoder;

    invoke-direct {v0, p1, p2}, Lorg/apache/avro/io/JsonEncoder;-><init>(Lorg/apache/avro/Schema;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public jsonEncoder(Lorg/apache/avro/Schema;Ljava/io/OutputStream;Z)Lorg/apache/avro/io/JsonEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/avro/io/JsonEncoder;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/avro/io/JsonEncoder;-><init>(Lorg/apache/avro/Schema;Ljava/io/OutputStream;Z)V

    return-object v0
.end method

.method public validatingEncoder(Lorg/apache/avro/Schema;Lorg/apache/avro/io/Encoder;)Lorg/apache/avro/io/ValidatingEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/io/ValidatingEncoder;

    invoke-direct {v0, p1, p2}, Lorg/apache/avro/io/ValidatingEncoder;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/io/Encoder;)V

    return-object v0
.end method
