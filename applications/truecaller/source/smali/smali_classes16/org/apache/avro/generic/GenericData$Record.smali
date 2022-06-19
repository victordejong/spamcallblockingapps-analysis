.class public Lorg/apache/avro/generic/GenericData$Record;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/generic/GenericRecord;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/generic/GenericData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Record"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/avro/generic/GenericRecord;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/avro/generic/GenericData$Record;",
        ">;"
    }
.end annotation


# instance fields
.field private final schema:Lorg/apache/avro/Schema;

.field private final values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lorg/apache/avro/Schema$Type;->RECORD:Lorg/apache/avro/Schema$Type;

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lorg/apache/avro/generic/GenericData$Record;->schema:Lorg/apache/avro/Schema;

    .line 4
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/avro/generic/GenericData$Record;->values:[Ljava/lang/Object;

    return-void

    .line 5
    :cond_0
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    const-string v1, "Not a record schema: "

    invoke-static {v1, p1}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/avro/generic/GenericData$Record;Z)V
    .locals 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object v0, p1, Lorg/apache/avro/generic/GenericData$Record;->schema:Lorg/apache/avro/Schema;

    iput-object v0, p0, Lorg/apache/avro/generic/GenericData$Record;->schema:Lorg/apache/avro/Schema;

    .line 8
    invoke-virtual {v0}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/avro/generic/GenericData$Record;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 9
    :goto_0
    iget-object p2, p0, Lorg/apache/avro/generic/GenericData$Record;->values:[Ljava/lang/Object;

    array-length v0, p2

    if-ge v1, v0, :cond_1

    .line 10
    invoke-static {}, Lorg/apache/avro/generic/GenericData;->access$000()Lorg/apache/avro/generic/GenericData;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/avro/generic/GenericData$Record;->schema:Lorg/apache/avro/Schema;

    invoke-virtual {v2}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/avro/Schema$Field;

    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v2

    iget-object v3, p1, Lorg/apache/avro/generic/GenericData$Record;->values:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/apache/avro/generic/GenericData;->deepCopy(Lorg/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p1, Lorg/apache/avro/generic/GenericData$Record;->values:[Ljava/lang/Object;

    array-length p2, p1

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/avro/generic/GenericData$Record;

    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData$Record;->compareTo(Lorg/apache/avro/generic/GenericData$Record;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/avro/generic/GenericData$Record;)I
    .locals 2

    .line 2
    invoke-static {}, Lorg/apache/avro/generic/GenericData;->get()Lorg/apache/avro/generic/GenericData;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/avro/generic/GenericData$Record;->schema:Lorg/apache/avro/Schema;

    invoke-virtual {v0, p0, p1, v1}, Lorg/apache/avro/generic/GenericData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/avro/Schema;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/avro/generic/GenericData$Record;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/avro/generic/GenericData$Record;

    .line 3
    iget-object v1, p0, Lorg/apache/avro/generic/GenericData$Record;->schema:Lorg/apache/avro/Schema;

    iget-object v3, p1, Lorg/apache/avro/generic/GenericData$Record;->schema:Lorg/apache/avro/Schema;

    invoke-virtual {v1, v3}, Lorg/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 4
    :cond_2
    invoke-static {}, Lorg/apache/avro/generic/GenericData;->get()Lorg/apache/avro/generic/GenericData;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/avro/generic/GenericData$Record;->schema:Lorg/apache/avro/Schema;

    invoke-virtual {v1, p0, p1, v3, v0}, Lorg/apache/avro/generic/GenericData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/avro/Schema;Z)I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData$Record;->values:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData$Record;->schema:Lorg/apache/avro/Schema;

    invoke-virtual {v0, p1}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lorg/apache/avro/generic/GenericData$Record;->values:[Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v0

    aget-object p1, p1, v0

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

.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData$Record;->schema:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/generic/GenericData$Record;->getSchema()Lorg/apache/avro/Schema;

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
    invoke-static {}, Lorg/apache/avro/generic/GenericData;->get()Lorg/apache/avro/generic/GenericData;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/avro/generic/GenericData$Record;->schema:Lorg/apache/avro/Schema;

    invoke-virtual {v0, p0, v1}, Lorg/apache/avro/generic/GenericData;->hashCode(Ljava/lang/Object;Lorg/apache/avro/Schema;)I

    move-result v0

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData$Record;->values:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData$Record;->schema:Lorg/apache/avro/Schema;

    invoke-virtual {v0, p1}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lorg/apache/avro/generic/GenericData$Record;->values:[Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v0

    aput-object p2, p1, v0

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

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/avro/generic/GenericData;->get()Lorg/apache/avro/generic/GenericData;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/avro/generic/GenericData;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
