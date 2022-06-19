.class public Lorg/apache/avro/io/DecoderFactory$DefaultDecoderFactory;
.super Lorg/apache/avro/io/DecoderFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/DecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultDecoderFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/io/DecoderFactory;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/io/DecoderFactory$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/io/DecoderFactory$DefaultDecoderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public configureDecoderBufferSize(I)Lorg/apache/avro/io/DecoderFactory;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This Factory instance is Immutable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
