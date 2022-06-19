.class public Lorg/apache/avro/generic/GenericDatumWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/io/DatumWriter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/avro/io/DatumWriter<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final data:Lorg/apache/avro/generic/GenericData;

.field private root:Lorg/apache/avro/Schema;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/avro/generic/GenericData;->get()Lorg/apache/avro/generic/GenericData;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/avro/generic/GenericDatumWriter;-><init>(Lorg/apache/avro/generic/GenericData;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/avro/generic/GenericDatumWriter;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericDatumWriter;->setSchema(Lorg/apache/avro/Schema;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V
    .locals 0

    .line 6
    invoke-direct {p0, p2}, Lorg/apache/avro/generic/GenericDatumWriter;-><init>(Lorg/apache/avro/generic/GenericData;)V

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericDatumWriter;->setSchema(Lorg/apache/avro/Schema;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/generic/GenericData;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/avro/generic/GenericDatumWriter;->data:Lorg/apache/avro/generic/GenericData;

    return-void
.end method

.method private error(Lorg/apache/avro/Schema;Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/avro/AvroTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addAvroTypeMsg(Lorg/apache/avro/AvroTypeException;Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/avro/AvroTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method public addClassCastMsg(Ljava/lang/ClassCastException;Ljava/lang/String;)Ljava/lang/ClassCastException;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/ClassCastException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ClassCastException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassCastException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method public convert(Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;Lorg/apache/avro/Conversion;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            "Lorg/apache/avro/Conversion<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p3, :cond_0

    return-object p4

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p4, p1, p2, p3}, Lorg/apache/avro/Conversions;->convertToRawType(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;Lorg/apache/avro/Conversion;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/avro/AvroRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-class p4, Ljava/lang/ClassCastException;

    if-ne p3, p4, :cond_1

    .line 4
    check-cast p2, Ljava/lang/ClassCastException;

    throw p2

    .line 5
    :cond_1
    throw p1
.end method

.method public getArrayElements(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public getArraySize(Ljava/lang/Object;)J
    .locals 2

    .line 1
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getData()Lorg/apache/avro/generic/GenericData;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericDatumWriter;->data:Lorg/apache/avro/generic/GenericData;

    return-object v0
.end method

.method public getMapEntries(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getMapSize(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    return p1
.end method

.method public npe(Ljava/lang/NullPointerException;Ljava/lang/String;)Ljava/lang/NullPointerException;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method public resolveUnion(Lorg/apache/avro/Schema;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericDatumWriter;->data:Lorg/apache/avro/generic/GenericData;

    invoke-virtual {v0, p1, p2}, Lorg/apache/avro/generic/GenericData;->resolveUnion(Lorg/apache/avro/Schema;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public setSchema(Lorg/apache/avro/Schema;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/avro/generic/GenericDatumWriter;->root:Lorg/apache/avro/Schema;

    return-void
.end method

.method public write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V
    .locals 1
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

    const-string v0, "Encoder cannot be null"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/generic/GenericDatumWriter;->root:Lorg/apache/avro/Schema;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/avro/generic/GenericDatumWriter;->write(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method

.method public write(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getLogicalType()Lorg/apache/avro/LogicalType;

    move-result-object v0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/apache/avro/generic/GenericDatumWriter;->getData()Lorg/apache/avro/generic/GenericData;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/avro/generic/GenericData;->getConversionByClass(Ljava/lang/Class;Lorg/apache/avro/LogicalType;)Lorg/apache/avro/Conversion;

    move-result-object v1

    .line 5
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/avro/generic/GenericDatumWriter;->convert(Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;Lorg/apache/avro/Conversion;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumWriter;->writeWithoutConversion(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumWriter;->writeWithoutConversion(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    :goto_0
    return-void
.end method

.method public writeArray(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericDatumWriter;->getArraySize(Ljava/lang/Object;)J

    move-result-wide v0

    .line 3
    invoke-virtual {p3}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 4
    invoke-virtual {p3, v0, v1}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 5
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericDatumWriter;->getArrayElements(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p2

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {p3}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 7
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, p1, v4, p3}, Lorg/apache/avro/generic/GenericDatumWriter;->write(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p3}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long p1, v2, v0

    if-nez p1, :cond_1

    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/util/ConcurrentModificationException;

    const-string p2, "Size of array written was "

    const-string p3, ", but number of elements written was "

    invoke-static {p2, v0, v1, p3}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ". "

    invoke-static {p2, v2, v3, p3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeBytes(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Lorg/apache/avro/io/Encoder;->writeBytes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public writeEnum(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericDatumWriter;->data:Lorg/apache/avro/generic/GenericData;

    invoke-virtual {v0, p2}, Lorg/apache/avro/generic/GenericData;->isEnum(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/avro/Schema;->getEnumOrdinal(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Lorg/apache/avro/io/Encoder;->writeEnum(I)V

    return-void

    .line 3
    :cond_0
    new-instance p3, Lorg/apache/avro/AvroTypeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not an enum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for schema: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public writeField(Ljava/lang/Object;Lorg/apache/avro/Schema$Field;Lorg/apache/avro/io/Encoder;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, " in field "

    .line 1
    iget-object v1, p0, Lorg/apache/avro/generic/GenericDatumWriter;->data:Lorg/apache/avro/generic/GenericData;

    invoke-virtual {p2}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3, p4}, Lorg/apache/avro/generic/GenericData;->getField(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object p4

    invoke-virtual {p0, p4, p1, p3}, Lorg/apache/avro/generic/GenericDatumWriter;->write(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V
    :try_end_0
    .catch Lorg/apache/avro/UnresolvedUnionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/avro/AvroTypeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/generic/GenericDatumWriter;->addAvroTypeMsg(Lorg/apache/avro/AvroTypeException;Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 4
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/generic/GenericDatumWriter;->addClassCastMsg(Ljava/lang/ClassCastException;Ljava/lang/String;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    .line 5
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/generic/GenericDatumWriter;->npe(Ljava/lang/NullPointerException;Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p1

    throw p1

    :catch_3
    move-exception p3

    .line 6
    new-instance p4, Lorg/apache/avro/UnresolvedUnionException;

    invoke-virtual {p2}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-direct {p4, v0, p2, p1}, Lorg/apache/avro/UnresolvedUnionException;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p4, p3}, Ljava/lang/RuntimeException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 8
    throw p4
.end method

.method public writeFixed(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/avro/generic/GenericFixed;

    invoke-interface {p2}, Lorg/apache/avro/generic/GenericFixed;->bytes()[B

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0, p1}, Lorg/apache/avro/io/Encoder;->writeFixed([BII)V

    return-void
.end method

.method public writeMap(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getValueType()Lorg/apache/avro/Schema;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericDatumWriter;->getMapSize(Ljava/lang/Object;)I

    move-result v0

    .line 3
    invoke-virtual {p3}, Lorg/apache/avro/io/Encoder;->writeMapStart()V

    int-to-long v1, v0

    .line 4
    invoke-virtual {p3, v1, v2}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 5
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericDatumWriter;->getMapEntries(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-virtual {p3}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lorg/apache/avro/generic/GenericDatumWriter;->writeString(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p3}, Lorg/apache/avro/generic/GenericDatumWriter;->write(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p3}, Lorg/apache/avro/io/Encoder;->writeMapEnd()V

    if-ne v1, v0, :cond_1

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/util/ConcurrentModificationException;

    const-string p2, "Size of map written was "

    const-string p3, ", but number of entries written was "

    const-string v2, ". "

    invoke-static {p2, v0, p3, v1, v2}, Le/d/c/a/a;->n2(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeRecord(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericDatumWriter;->data:Lorg/apache/avro/generic/GenericData;

    invoke-virtual {v0, p2, p1}, Lorg/apache/avro/generic/GenericData;->getRecordState(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema$Field;

    .line 3
    invoke-virtual {p0, p2, v1, p3, v0}, Lorg/apache/avro/generic/GenericDatumWriter;->writeField(Ljava/lang/Object;Lorg/apache/avro/Schema$Field;Lorg/apache/avro/io/Encoder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeString(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public writeString(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p3}, Lorg/apache/avro/generic/GenericDatumWriter;->writeString(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method

.method public writeWithoutConversion(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/avro/generic/GenericDatumWriter;->error(Lorg/apache/avro/Schema;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p3}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_0

    .line 4
    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p3, p2}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    goto :goto_0

    .line 5
    :pswitch_2
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lorg/apache/avro/io/Encoder;->writeDouble(D)V

    goto :goto_0

    .line 6
    :pswitch_3
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p3, p2}, Lorg/apache/avro/io/Encoder;->writeFloat(F)V

    goto :goto_0

    .line 7
    :pswitch_4
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lorg/apache/avro/io/Encoder;->writeLong(J)V

    goto :goto_0

    .line 8
    :pswitch_5
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p3, p2}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    goto :goto_0

    .line 9
    :pswitch_6
    invoke-virtual {p0, p2, p3}, Lorg/apache/avro/generic/GenericDatumWriter;->writeBytes(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    goto :goto_0

    .line 10
    :pswitch_7
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumWriter;->writeString(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    goto :goto_0

    .line 11
    :pswitch_8
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumWriter;->writeFixed(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    goto :goto_0

    .line 12
    :pswitch_9
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/generic/GenericDatumWriter;->resolveUnion(Lorg/apache/avro/Schema;Ljava/lang/Object;)I

    move-result v0

    .line 13
    invoke-virtual {p3, v0}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 14
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/Schema;

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/avro/generic/GenericDatumWriter;->write(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    goto :goto_0

    .line 15
    :pswitch_a
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumWriter;->writeMap(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    goto :goto_0

    .line 16
    :pswitch_b
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumWriter;->writeArray(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    goto :goto_0

    .line 17
    :pswitch_c
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumWriter;->writeEnum(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    goto :goto_0

    .line 18
    :pswitch_d
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumWriter;->writeRecord(Lorg/apache/avro/Schema;Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p2

    const-string p3, " of "

    .line 19
    invoke-static {p3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/apache/avro/generic/GenericDatumWriter;->npe(Ljava/lang/NullPointerException;Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
