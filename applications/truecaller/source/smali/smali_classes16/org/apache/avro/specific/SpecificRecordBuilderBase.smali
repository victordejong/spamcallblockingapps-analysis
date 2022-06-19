.class public abstract Lorg/apache/avro/specific/SpecificRecordBuilderBase;
.super Lorg/apache/avro/data/RecordBuilderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/avro/specific/SpecificRecord;",
        ">",
        "Lorg/apache/avro/data/RecordBuilderBase<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getForSchema(Lorg/apache/avro/Schema;)Lorg/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/avro/data/RecordBuilderBase;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/specific/SpecificRecord;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Lorg/apache/avro/generic/GenericContainer;->getSchema()Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/avro/generic/GenericContainer;->getSchema()Lorg/apache/avro/Schema;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getForSchema(Lorg/apache/avro/Schema;)Lorg/apache/avro/specific/SpecificData;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/specific/SpecificRecordBuilderBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/specific/SpecificRecordBuilderBase<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/data/RecordBuilderBase;->data()Lorg/apache/avro/generic/GenericData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/avro/data/RecordBuilderBase;-><init>(Lorg/apache/avro/data/RecordBuilderBase;Lorg/apache/avro/generic/GenericData;)V

    return-void
.end method
