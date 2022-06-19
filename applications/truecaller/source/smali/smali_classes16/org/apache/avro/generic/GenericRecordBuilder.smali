.class public Lorg/apache/avro/generic/GenericRecordBuilder;
.super Lorg/apache/avro/data/RecordBuilderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/avro/data/RecordBuilderBase<",
        "Lorg/apache/avro/generic/GenericData$Record;",
        ">;"
    }
.end annotation


# instance fields
.field private final record:Lorg/apache/avro/generic/GenericData$Record;


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/avro/generic/GenericData;->get()Lorg/apache/avro/generic/GenericData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/avro/data/RecordBuilderBase;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V

    .line 2
    new-instance v0, Lorg/apache/avro/generic/GenericData$Record;

    invoke-direct {v0, p1}, Lorg/apache/avro/generic/GenericData$Record;-><init>(Lorg/apache/avro/Schema;)V

    iput-object v0, p0, Lorg/apache/avro/generic/GenericRecordBuilder;->record:Lorg/apache/avro/generic/GenericData$Record;

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/generic/GenericData$Record;)V
    .locals 5

    .line 5
    invoke-virtual {p1}, Lorg/apache/avro/generic/GenericData$Record;->getSchema()Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-static {}, Lorg/apache/avro/generic/GenericData;->get()Lorg/apache/avro/generic/GenericData;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/avro/data/RecordBuilderBase;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V

    .line 6
    new-instance v0, Lorg/apache/avro/generic/GenericData$Record;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/avro/generic/GenericData$Record;-><init>(Lorg/apache/avro/generic/GenericData$Record;Z)V

    iput-object v0, p0, Lorg/apache/avro/generic/GenericRecordBuilder;->record:Lorg/apache/avro/generic/GenericData$Record;

    .line 7
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->schema()Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema$Field;

    .line 8
    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/apache/avro/generic/GenericData$Record;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 9
    invoke-static {v1, v2}, Lorg/apache/avro/data/RecordBuilderBase;->isValidValue(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->data()Lorg/apache/avro/generic/GenericData;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/apache/avro/generic/GenericData;->deepCopy(Lorg/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/avro/generic/GenericRecordBuilder;->set(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)Lorg/apache/avro/generic/GenericRecordBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/generic/GenericRecordBuilder;)V
    .locals 2

    .line 3
    invoke-static {}, Lorg/apache/avro/generic/GenericData;->get()Lorg/apache/avro/generic/GenericData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/avro/data/RecordBuilderBase;-><init>(Lorg/apache/avro/data/RecordBuilderBase;Lorg/apache/avro/generic/GenericData;)V

    .line 4
    new-instance v0, Lorg/apache/avro/generic/GenericData$Record;

    iget-object p1, p1, Lorg/apache/avro/generic/GenericRecordBuilder;->record:Lorg/apache/avro/generic/GenericData$Record;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/avro/generic/GenericData$Record;-><init>(Lorg/apache/avro/generic/GenericData$Record;Z)V

    iput-object v0, p0, Lorg/apache/avro/generic/GenericRecordBuilder;->record:Lorg/apache/avro/generic/GenericData$Record;

    return-void
.end method

.method private getWithDefault(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/avro/generic/GenericRecordBuilder;->record:Lorg/apache/avro/generic/GenericData$Record;

    invoke-virtual {p1}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/avro/generic/GenericData$Record;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private set(Lorg/apache/avro/Schema$Field;ILjava/lang/Object;)Lorg/apache/avro/generic/GenericRecordBuilder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lorg/apache/avro/generic/GenericRecordBuilder;->record:Lorg/apache/avro/generic/GenericData$Record;

    invoke-virtual {p1, p2, p3}, Lorg/apache/avro/generic/GenericData$Record;->put(ILjava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 p3, 0x1

    aput-boolean p3, p1, p2

    return-object p0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/generic/GenericRecordBuilder;->build()Lorg/apache/avro/generic/GenericData$Record;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/avro/generic/GenericData$Record;
    .locals 6

    .line 2
    :try_start_0
    new-instance v0, Lorg/apache/avro/generic/GenericData$Record;

    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->schema()Lorg/apache/avro/Schema;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/generic/GenericData$Record;-><init>(Lorg/apache/avro/Schema;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 4
    :try_start_1
    invoke-direct {p0, v4}, Lorg/apache/avro/generic/GenericRecordBuilder;->getWithDefault(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/avro/generic/GenericData$Record;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return-object v0

    :catch_1
    move-exception v0

    .line 7
    new-instance v1, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clear(I)Lorg/apache/avro/generic/GenericRecordBuilder;
    .locals 2

    .line 3
    iget-object v0, p0, Lorg/apache/avro/generic/GenericRecordBuilder;->record:Lorg/apache/avro/generic/GenericData$Record;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/avro/generic/GenericData$Record;->put(ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    return-object p0
.end method

.method public clear(Ljava/lang/String;)Lorg/apache/avro/generic/GenericRecordBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->schema()Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericRecordBuilder;->clear(Lorg/apache/avro/Schema$Field;)Lorg/apache/avro/generic/GenericRecordBuilder;

    move-result-object p1

    return-object p1
.end method

.method public clear(Lorg/apache/avro/Schema$Field;)Lorg/apache/avro/generic/GenericRecordBuilder;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericRecordBuilder;->clear(I)Lorg/apache/avro/generic/GenericRecordBuilder;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->equals(Ljava/lang/Object;)Z

    move-result v1

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
    check-cast p1, Lorg/apache/avro/generic/GenericRecordBuilder;

    .line 4
    iget-object v1, p0, Lorg/apache/avro/generic/GenericRecordBuilder;->record:Lorg/apache/avro/generic/GenericData$Record;

    if-nez v1, :cond_4

    .line 5
    iget-object p1, p1, Lorg/apache/avro/generic/GenericRecordBuilder;->record:Lorg/apache/avro/generic/GenericData$Record;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0

    .line 6
    :cond_4
    iget-object p1, p1, Lorg/apache/avro/generic/GenericRecordBuilder;->record:Lorg/apache/avro/generic/GenericData$Record;

    invoke-virtual {v1, p1}, Lorg/apache/avro/generic/GenericData$Record;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/apache/avro/generic/GenericRecordBuilder;->record:Lorg/apache/avro/generic/GenericData$Record;

    invoke-virtual {v0, p1}, Lorg/apache/avro/generic/GenericData$Record;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->schema()Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericRecordBuilder;->get(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericRecordBuilder;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public has(I)Z
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aget-boolean p1, v0, p1

    return p1
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->schema()Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericRecordBuilder;->has(Lorg/apache/avro/Schema$Field;)Z

    move-result p1

    return p1
.end method

.method public has(Lorg/apache/avro/Schema$Field;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericRecordBuilder;->has(I)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/apache/avro/data/RecordBuilderBase;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lorg/apache/avro/generic/GenericRecordBuilder;->record:Lorg/apache/avro/generic/GenericData$Record;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/avro/generic/GenericData$Record;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public set(ILjava/lang/Object;)Lorg/apache/avro/generic/GenericRecordBuilder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/avro/generic/GenericRecordBuilder;->set(Lorg/apache/avro/Schema$Field;ILjava/lang/Object;)Lorg/apache/avro/generic/GenericRecordBuilder;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/avro/generic/GenericRecordBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->schema()Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/generic/GenericRecordBuilder;->set(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)Lorg/apache/avro/generic/GenericRecordBuilder;

    move-result-object p1

    return-object p1
.end method

.method public set(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)Lorg/apache/avro/generic/GenericRecordBuilder;
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/avro/generic/GenericRecordBuilder;->set(Lorg/apache/avro/Schema$Field;ILjava/lang/Object;)Lorg/apache/avro/generic/GenericRecordBuilder;

    move-result-object p1

    return-object p1
.end method
