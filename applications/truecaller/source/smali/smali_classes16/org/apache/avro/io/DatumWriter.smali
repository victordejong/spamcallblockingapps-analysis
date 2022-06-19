.class public interface abstract Lorg/apache/avro/io/DatumWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract setSchema(Lorg/apache/avro/Schema;)V
.end method

.method public abstract write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lorg/apache/avro/io/Encoder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
