.class public Lorg/apache/avro/Schema$UnionSchema;
.super Lorg/apache/avro/Schema;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnionSchema"
.end annotation


# instance fields
.field private final indexByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/avro/Schema;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema$LockableArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema$LockableArrayList<",
            "Lorg/apache/avro/Schema;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/Schema$Type;->UNION:Lorg/apache/avro/Schema$Type;

    invoke-direct {p0, v0}, Lorg/apache/avro/Schema;-><init>(Lorg/apache/avro/Schema$Type;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lorg/apache/avro/util/tc/Java8Support;->multiplyExact(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/avro/Schema$UnionSchema;->indexByName:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/Schema$LockableArrayList;->lock()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/avro/Schema$UnionSchema;->types:Ljava/util/List;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema;

    .line 5
    invoke-virtual {v1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v2

    sget-object v3, Lorg/apache/avro/Schema$Type;->UNION:Lorg/apache/avro/Schema$Type;

    if-eq v2, v3, :cond_2

    .line 6
    invoke-virtual {v1}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v2, p0, Lorg/apache/avro/Schema$UnionSchema;->indexByName:Ljava/util/Map;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Duplicate in union:"

    invoke-static {v0, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nameless in union:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nested union: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method


# virtual methods
.method public addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t set properties on a union: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public computeHash()I
    .locals 3

    .line 1
    invoke-super {p0}, Lorg/apache/avro/Schema;->computeHash()I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/apache/avro/Schema$UnionSchema;->types:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/avro/Schema;

    .line 3
    invoke-virtual {v2}, Lorg/apache/avro/Schema;->computeHash()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/avro/Schema$UnionSchema;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/avro/Schema$UnionSchema;

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/avro/Schema;->equalCachedHash(Lorg/apache/avro/Schema;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/avro/Schema$UnionSchema;->types:Ljava/util/List;

    iget-object v3, p1, Lorg/apache/avro/Schema$UnionSchema;->types:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/avro/JsonProperties;->propsEqual(Lorg/apache/avro/JsonProperties;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getIndexNamed(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$UnionSchema;->indexByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public getTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/avro/Schema;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$UnionSchema;->types:Ljava/util/List;

    return-object v0
.end method

.method public toJson(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Le/k/a/b/g;->F1()V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/Schema$UnionSchema;->types:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema;

    .line 3
    invoke-virtual {v1, p1, p2}, Lorg/apache/avro/Schema;->toJson(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Le/k/a/b/g;->p0()V

    return-void
.end method
