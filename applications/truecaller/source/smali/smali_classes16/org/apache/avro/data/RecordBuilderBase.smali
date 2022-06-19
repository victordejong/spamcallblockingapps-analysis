.class public abstract Lorg/apache/avro/data/RecordBuilderBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/avro/generic/IndexedRecord;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/avro/data/RecordBuilder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final data:Lorg/apache/avro/generic/GenericData;

.field private final fieldSetFlags:[Z

.field private final fields:[Lorg/apache/avro/Schema$Field;

.field private final schema:Lorg/apache/avro/Schema;


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/data/RecordBuilderBase;->schema:Lorg/apache/avro/Schema;

    .line 3
    iput-object p2, p0, Lorg/apache/avro/data/RecordBuilderBase;->data:Lorg/apache/avro/generic/GenericData;

    .line 4
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lorg/apache/avro/Schema$Field;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/avro/Schema$Field;

    iput-object p1, p0, Lorg/apache/avro/data/RecordBuilderBase;->fields:[Lorg/apache/avro/Schema$Field;

    .line 5
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags:[Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/data/RecordBuilderBase;Lorg/apache/avro/generic/GenericData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/data/RecordBuilderBase<",
            "TT;>;",
            "Lorg/apache/avro/generic/GenericData;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object v0, p1, Lorg/apache/avro/data/RecordBuilderBase;->schema:Lorg/apache/avro/Schema;

    iput-object v0, p0, Lorg/apache/avro/data/RecordBuilderBase;->schema:Lorg/apache/avro/Schema;

    .line 8
    iput-object p2, p0, Lorg/apache/avro/data/RecordBuilderBase;->data:Lorg/apache/avro/generic/GenericData;

    .line 9
    invoke-virtual {v0}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/avro/Schema$Field;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/apache/avro/Schema$Field;

    iput-object p2, p0, Lorg/apache/avro/data/RecordBuilderBase;->fields:[Lorg/apache/avro/Schema$Field;

    .line 10
    iget-object p1, p1, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags:[Z

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags:[Z

    return-void
.end method

.method public static isValidValue(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object p1

    .line 3
    sget-object v1, Lorg/apache/avro/Schema$Type;->NULL:Lorg/apache/avro/Schema$Type;

    if-ne p1, v1, :cond_1

    return v0

    .line 4
    :cond_1
    sget-object v1, Lorg/apache/avro/Schema$Type;->UNION:Lorg/apache/avro/Schema$Type;

    if-ne p1, v1, :cond_3

    .line 5
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/Schema;

    .line 6
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object p1

    sget-object v1, Lorg/apache/avro/Schema$Type;->NULL:Lorg/apache/avro/Schema$Type;

    if-ne p1, v1, :cond_2

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final data()Lorg/apache/avro/generic/GenericData;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/data/RecordBuilderBase;->data:Lorg/apache/avro/generic/GenericData;

    return-object v0
.end method

.method public defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/data/RecordBuilderBase;->data:Lorg/apache/avro/generic/GenericData;

    invoke-virtual {p1}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/avro/data/RecordBuilderBase;->data:Lorg/apache/avro/generic/GenericData;

    invoke-virtual {v2, p1}, Lorg/apache/avro/generic/GenericData;->getDefaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/apache/avro/generic/GenericData;->deepCopy(Lorg/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lorg/apache/avro/data/RecordBuilderBase;

    .line 3
    iget-object v2, p0, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags:[Z

    iget-object v3, p1, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags:[Z

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 4
    :cond_3
    iget-object v2, p0, Lorg/apache/avro/data/RecordBuilderBase;->schema:Lorg/apache/avro/Schema;

    if-nez v2, :cond_5

    .line 5
    iget-object p1, p1, Lorg/apache/avro/data/RecordBuilderBase;->schema:Lorg/apache/avro/Schema;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    .line 6
    :cond_5
    iget-object p1, p1, Lorg/apache/avro/data/RecordBuilderBase;->schema:Lorg/apache/avro/Schema;

    invoke-virtual {v2, p1}, Lorg/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final fieldSetFlags()[Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags:[Z

    return-object v0
.end method

.method public final fields()[Lorg/apache/avro/Schema$Field;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/data/RecordBuilderBase;->fields:[Lorg/apache/avro/Schema$Field;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags:[Z

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lorg/apache/avro/data/RecordBuilderBase;->schema:Lorg/apache/avro/Schema;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/avro/Schema;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final schema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/data/RecordBuilderBase;->schema:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lorg/apache/avro/data/RecordBuilderBase;->isValidValue(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/avro/Schema$Field;->defaultVal()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Lorg/apache/avro/AvroRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not accept null values"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method
