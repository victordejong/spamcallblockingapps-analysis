.class public Lorg/apache/avro/io/EncoderFactory$DefaultEncoderFactory;
.super Lorg/apache/avro/io/EncoderFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/EncoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultEncoderFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/io/EncoderFactory;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/io/EncoderFactory$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/io/EncoderFactory$DefaultEncoderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public configureBlockSize(I)Lorg/apache/avro/io/EncoderFactory;
    .locals 1

    .line 1
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Default EncoderFactory cannot be configured"

    invoke-direct {p1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public configureBufferSize(I)Lorg/apache/avro/io/EncoderFactory;
    .locals 1

    .line 1
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Default EncoderFactory cannot be configured"

    invoke-direct {p1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
