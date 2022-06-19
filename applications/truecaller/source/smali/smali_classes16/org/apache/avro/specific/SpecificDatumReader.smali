.class public Lorg/apache/avro/specific/SpecificDatumReader;
.super Lorg/apache/avro/generic/GenericDatumReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/avro/generic/GenericDatumReader<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/apache/avro/specific/SpecificData;->get()Lorg/apache/avro/specific/SpecificData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lorg/apache/avro/specific/SpecificDatumReader;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/specific/SpecificData;)V

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
    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getForClass(Ljava/lang/Class;)Lorg/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/avro/specific/SpecificDatumReader;-><init>(Lorg/apache/avro/specific/SpecificData;)V

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificDatumReader;->getSpecificData()Lorg/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/avro/specific/SpecificData;->getSchema(Ljava/lang/reflect/Type;)Lorg/apache/avro/Schema;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/avro/specific/SpecificDatumReader;->setSchema(Lorg/apache/avro/Schema;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;)V
    .locals 1

    .line 4
    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getForSchema(Lorg/apache/avro/Schema;)Lorg/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-direct {p0, p1, p1, v0}, Lorg/apache/avro/specific/SpecificDatumReader;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/specific/SpecificData;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)V
    .locals 1

    .line 5
    invoke-static {p2}, Lorg/apache/avro/specific/SpecificData;->getForSchema(Lorg/apache/avro/Schema;)Lorg/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/avro/specific/SpecificDatumReader;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/specific/SpecificData;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/specific/SpecificData;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumReader;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/specific/SpecificData;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lorg/apache/avro/generic/GenericDatumReader;-><init>(Lorg/apache/avro/generic/GenericData;)V

    return-void
.end method

.method private getPropAsClass(Lorg/apache/avro/Schema;Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lorg/apache/avro/JsonProperties;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/avro/generic/GenericDatumReader;->getData()Lorg/apache/avro/generic/GenericData;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/avro/generic/GenericData;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/apache/avro/util/ClassUtils;->forName(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {p2, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public findStringClass(Lorg/apache/avro/Schema;)Ljava/lang/Class;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "java-class"

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/apache/avro/specific/SpecificDatumReader;->getPropAsClass(Lorg/apache/avro/Schema;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "java-key-class"

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/apache/avro/specific/SpecificDatumReader;->getPropAsClass(Lorg/apache/avro/Schema;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    return-object v0

    .line 4
    :cond_2
    invoke-super {p0, p1}, Lorg/apache/avro/generic/GenericDatumReader;->findStringClass(Lorg/apache/avro/Schema;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/generic/GenericDatumReader;->getData()Lorg/apache/avro/generic/GenericData;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/specific/SpecificData;

    return-object v0
.end method

.method public readField(Ljava/lang/Object;Lorg/apache/avro/Schema$Field;Ljava/lang/Object;Lorg/apache/avro/io/ResolvingDecoder;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lorg/apache/avro/specific/SpecificRecordBase;

    if-eqz v0, :cond_1

    .line 2
    move-object p5, p1

    check-cast p5, Lorg/apache/avro/specific/SpecificRecordBase;

    invoke-virtual {p2}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v0

    invoke-virtual {p5, v0}, Lorg/apache/avro/specific/SpecificRecordBase;->getConversion(I)Lorg/apache/avro/Conversion;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3
    invoke-virtual {p2}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object p5

    invoke-virtual {p5}, Lorg/apache/avro/Schema;->getLogicalType()Lorg/apache/avro/LogicalType;

    move-result-object v4

    move-object v1, p0

    move-object v2, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/avro/generic/GenericDatumReader;->readWithConversion(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;Lorg/apache/avro/Conversion;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object p5

    invoke-virtual {p0, p3, p5, p4}, Lorg/apache/avro/generic/GenericDatumReader;->readWithoutConversion(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object p3

    .line 5
    :goto_0
    invoke-virtual {p0}, Lorg/apache/avro/generic/GenericDatumReader;->getData()Lorg/apache/avro/generic/GenericData;

    move-result-object p4

    invoke-virtual {p2}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result p2

    invoke-virtual {p4, p1, p5, p2, p3}, Lorg/apache/avro/generic/GenericData;->setField(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-super/range {p0 .. p5}, Lorg/apache/avro/generic/GenericDatumReader;->readField(Ljava/lang/Object;Lorg/apache/avro/Schema$Field;Ljava/lang/Object;Lorg/apache/avro/io/ResolvingDecoder;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public readRecord(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificDatumReader;->getSpecificData()Lorg/apache/avro/specific/SpecificData;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/apache/avro/specific/SpecificData;->useCustomCoders()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/apache/avro/specific/SpecificData;->newRecord(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    instance-of v0, p1, Lorg/apache/avro/specific/SpecificRecordBase;

    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    check-cast v0, Lorg/apache/avro/specific/SpecificRecordBase;

    .line 6
    invoke-virtual {v0}, Lorg/apache/avro/specific/SpecificRecordBase;->hasCustomCoders()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0, p3}, Lorg/apache/avro/specific/SpecificRecordBase;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    return-object v0

    .line 8
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumReader;->readRecord(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setSchema(Lorg/apache/avro/Schema;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/generic/GenericDatumReader;->getExpected()Lorg/apache/avro/Schema;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    sget-object v1, Lorg/apache/avro/Schema$Type;->RECORD:Lorg/apache/avro/Schema$Type;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificDatumReader;->getSpecificData()Lorg/apache/avro/specific/SpecificData;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/avro/specific/SpecificData;->getClass(Lorg/apache/avro/Schema;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    const-class v2, Lorg/apache/avro/specific/SpecificRecord;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Lorg/apache/avro/specific/SpecificData;->getSchema(Ljava/lang/reflect/Type;)Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/avro/generic/GenericDatumReader;->setExpected(Lorg/apache/avro/Schema;)V

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/avro/generic/GenericDatumReader;->setSchema(Lorg/apache/avro/Schema;)V

    return-void
.end method
