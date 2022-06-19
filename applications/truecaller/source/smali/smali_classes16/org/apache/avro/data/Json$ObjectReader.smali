.class public Lorg/apache/avro/data/Json$ObjectReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/io/DatumReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/data/Json;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/avro/io/DatumReader<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private resolver:Lorg/apache/avro/io/ResolvingDecoder;

.field private written:Lorg/apache/avro/Schema;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/lang/Object;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/apache/avro/data/Json$ObjectReader;->written:Lorg/apache/avro/Schema;

    if-nez p1, :cond_0

    .line 2
    invoke-static {p2}, Lorg/apache/avro/data/Json;->access$100(Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lorg/apache/avro/data/Json$ObjectReader;->resolver:Lorg/apache/avro/io/ResolvingDecoder;

    if-nez p1, :cond_1

    .line 4
    invoke-static {}, Lorg/apache/avro/io/DecoderFactory;->get()Lorg/apache/avro/io/DecoderFactory;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/avro/data/Json$ObjectReader;->written:Lorg/apache/avro/Schema;

    sget-object v1, Lorg/apache/avro/data/Json;->SCHEMA:Lorg/apache/avro/Schema;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/apache/avro/io/DecoderFactory;->resolvingDecoder(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)Lorg/apache/avro/io/ResolvingDecoder;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/data/Json$ObjectReader;->resolver:Lorg/apache/avro/io/ResolvingDecoder;

    .line 5
    :cond_1
    iget-object p1, p0, Lorg/apache/avro/data/Json$ObjectReader;->resolver:Lorg/apache/avro/io/ResolvingDecoder;

    invoke-virtual {p1, p2}, Lorg/apache/avro/io/ValidatingDecoder;->configure(Lorg/apache/avro/io/Decoder;)Lorg/apache/avro/io/ValidatingDecoder;

    .line 6
    iget-object p1, p0, Lorg/apache/avro/data/Json$ObjectReader;->resolver:Lorg/apache/avro/io/ResolvingDecoder;

    invoke-static {p1}, Lorg/apache/avro/data/Json;->access$100(Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lorg/apache/avro/data/Json$ObjectReader;->resolver:Lorg/apache/avro/io/ResolvingDecoder;

    invoke-virtual {p2}, Lorg/apache/avro/io/ResolvingDecoder;->drain()V

    return-object p1
.end method

.method public setSchema(Lorg/apache/avro/Schema;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/avro/data/Json;->SCHEMA:Lorg/apache/avro/Schema;

    iget-object v1, p0, Lorg/apache/avro/data/Json$ObjectReader;->written:Lorg/apache/avro/Schema;

    invoke-virtual {v0, v1}, Lorg/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lorg/apache/avro/data/Json$ObjectReader;->written:Lorg/apache/avro/Schema;

    return-void
.end method
