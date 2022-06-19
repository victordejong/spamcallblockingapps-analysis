.class public interface abstract Lorg/apache/avro/data/ErrorBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/avro/data/RecordBuilder<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract clearCause()Lorg/apache/avro/data/ErrorBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/data/ErrorBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract clearValue()Lorg/apache/avro/data/ErrorBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/data/ErrorBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getCause()Ljava/lang/Throwable;
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public abstract hasCause()Z
.end method

.method public abstract hasValue()Z
.end method

.method public abstract setCause(Ljava/lang/Throwable;)Lorg/apache/avro/data/ErrorBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/apache/avro/data/ErrorBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setValue(Ljava/lang/Object;)Lorg/apache/avro/data/ErrorBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/avro/data/ErrorBuilder<",
            "TT;>;"
        }
    .end annotation
.end method
