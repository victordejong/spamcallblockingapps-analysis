.class public interface abstract Lorg/apache/avro/SchemaValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract validate(Lorg/apache/avro/Schema;Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            "Ljava/lang/Iterable<",
            "Lorg/apache/avro/Schema;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/avro/SchemaValidationException;
        }
    .end annotation
.end method
