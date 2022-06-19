.class public abstract Lorg/apache/avro/specific/SpecificRecordBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;
.implements Ljava/lang/Comparable;
.implements Lorg/apache/avro/generic/GenericRecord;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/avro/specific/SpecificRecord;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/avro/specific/SpecificRecord;",
        ">;",
        "Lorg/apache/avro/generic/GenericRecord;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/avro/specific/SpecificRecord;

    invoke-virtual {p0, p1}, Lorg/apache/avro/specific/SpecificRecordBase;->compareTo(Lorg/apache/avro/specific/SpecificRecord;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/avro/specific/SpecificRecord;)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificRecordBase;->getSpecificData()Lorg/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificRecordBase;->getSchema()Lorg/apache/avro/Schema;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lorg/apache/avro/generic/GenericData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/avro/Schema;)I

    move-result p1

    return p1
.end method

.method public customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public customEncode(Lorg/apache/avro/io/Encoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/avro/specific/SpecificRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    .line 3
    :cond_2
    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificRecordBase;->getSpecificData()Lorg/apache/avro/specific/SpecificData;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificRecordBase;->getSchema()Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-virtual {v1, p0, p1, v3, v0}, Lorg/apache/avro/specific/SpecificData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/avro/Schema;Z)I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public abstract get(I)Ljava/lang/Object;
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificRecordBase;->getSchema()Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/avro/specific/SpecificRecordBase;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    const-string v1, "Not a valid schema field: "

    invoke-static {v1, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConversion(I)Lorg/apache/avro/Conversion;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/avro/Conversion<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getConversion(Ljava/lang/String;)Lorg/apache/avro/Conversion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/Conversion<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificRecordBase;->getSchema()Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/avro/specific/SpecificRecordBase;->getConversion(I)Lorg/apache/avro/Conversion;

    move-result-object p1

    return-object p1
.end method

.method public abstract getSchema()Lorg/apache/avro/Schema;
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/avro/specific/SpecificData;->get()Lorg/apache/avro/specific/SpecificData;

    move-result-object v0

    return-object v0
.end method

.method public hasCustomCoders()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificRecordBase;->getSchema()Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificRecordBase;->getSpecificData()Lorg/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificRecordBase;->getSchema()Lorg/apache/avro/Schema;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/avro/generic/GenericData;->hashCode(Ljava/lang/Object;Lorg/apache/avro/Schema;)I

    move-result v0

    return v0
.end method

.method public abstract put(ILjava/lang/Object;)V
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificRecordBase;->getSchema()Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/specific/SpecificRecordBase;->put(ILjava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance p2, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Not a valid schema field: "

    invoke-static {v0, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/specific/SpecificDatumReader;

    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificRecordBase;->getSchema()Lorg/apache/avro/Schema;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/specific/SpecificDatumReader;-><init>(Lorg/apache/avro/Schema;)V

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getDecoder(Ljava/io/ObjectInput;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/apache/avro/generic/GenericDatumReader;->read(Ljava/lang/Object;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificRecordBase;->getSpecificData()Lorg/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/avro/generic/GenericData;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/specific/SpecificDatumWriter;

    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificRecordBase;->getSchema()Lorg/apache/avro/Schema;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/specific/SpecificDatumWriter;-><init>(Lorg/apache/avro/Schema;)V

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/apache/avro/generic/GenericDatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
