.class public Lorg/apache/avro/specific/SpecificDatumWriter;
.super Lorg/apache/avro/generic/GenericDatumWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/avro/generic/GenericDatumWriter<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/avro/specific/SpecificData;->get()Lorg/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/avro/generic/GenericDatumWriter;-><init>(Lorg/apache/avro/generic/GenericData;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lorg/apache/avro/specific/SpecificData;->get()Lorg/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/avro/specific/SpecificData;->getSchema(Ljava/lang/reflect/Type;)Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getForClass(Ljava/lang/Class;)Lorg/apache/avro/specific/SpecificData;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/avro/generic/GenericDatumWriter;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;)V
    .locals 1

    .line 3
    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getForSchema(Lorg/apache/avro/Schema;)Lorg/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/avro/generic/GenericDatumWriter;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/specific/SpecificData;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/apache/avro/generic/GenericDatumWriter;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/specific/SpecificData;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/avro/generic/GenericDatumWriter;-><init>(Lorg/apache/avro/generic/GenericData;)V

    return-void
.end method


# virtual methods
.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/generic/GenericDatumWriter;->getData()Lorg/apache/avro/generic/GenericData;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/specific/SpecificData;

    return-object v0
.end method

.method public writeEnum(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Ljava/lang/Enum;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumWriter;->writeEnum(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    goto :goto_0

    .line 3
    :cond_0
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p3, p1}, Lorg/apache/avro/io/Encoder;->writeEnum(I)V

    :goto_0
    return-void
.end method

.method public writeField(Ljava/lang/Object;Lorg/apache/avro/Schema$Field;Lorg/apache/avro/io/Encoder;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lorg/apache/avro/specific/SpecificRecordBase;

    if-eqz v0, :cond_1

    .line 2
    move-object p4, p1

    check-cast p4, Lorg/apache/avro/specific/SpecificRecordBase;

    invoke-virtual {p2}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v0

    invoke-virtual {p4, v0}, Lorg/apache/avro/specific/SpecificRecordBase;->getConversion(I)Lorg/apache/avro/Conversion;

    move-result-object p4

    .line 3
    invoke-virtual {p2}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lorg/apache/avro/Schema;->getLogicalType()Lorg/apache/avro/LogicalType;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lorg/apache/avro/generic/GenericDatumWriter;->getData()Lorg/apache/avro/generic/GenericData;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result p2

    invoke-virtual {v2, p1, v3, p2}, Lorg/apache/avro/generic/GenericData;->getField(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p4, :cond_0

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0, v0, v1, p4, p1}, Lorg/apache/avro/generic/GenericDatumWriter;->convert(Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;Lorg/apache/avro/Conversion;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    :cond_0
    invoke-virtual {p0, v0, p1, p3}, Lorg/apache/avro/generic/GenericDatumWriter;->writeWithoutConversion(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/avro/generic/GenericDatumWriter;->writeField(Ljava/lang/Object;Lorg/apache/avro/Schema$Field;Lorg/apache/avro/io/Encoder;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public writeRecord(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lorg/apache/avro/specific/SpecificRecordBase;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificDatumWriter;->getSpecificData()Lorg/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/specific/SpecificData;->useCustomCoders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p2

    check-cast v0, Lorg/apache/avro/specific/SpecificRecordBase;

    .line 3
    invoke-virtual {v0}, Lorg/apache/avro/specific/SpecificRecordBase;->hasCustomCoders()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, p3}, Lorg/apache/avro/specific/SpecificRecordBase;->customEncode(Lorg/apache/avro/io/Encoder;)V

    return-void

    .line 5
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumWriter;->writeRecord(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method

.method public writeString(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of p1, p2, Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificDatumWriter;->getSpecificData()Lorg/apache/avro/specific/SpecificData;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/specific/SpecificData;->isStringable(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/apache/avro/generic/GenericDatumWriter;->writeString(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
