.class public Lorg/apache/avro/Schema$RecordSchema;
.super Lorg/apache/avro/Schema$NamedSchema;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordSchema"
.end annotation


# instance fields
.field private fieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/avro/Schema$Field;",
            ">;"
        }
    .end annotation
.end field

.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/avro/Schema$Field;",
            ">;"
        }
    .end annotation
.end field

.field private final isError:Z


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema$Name;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Schema$Type;->RECORD:Lorg/apache/avro/Schema$Type;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/avro/Schema$NamedSchema;-><init>(Lorg/apache/avro/Schema$Type;Lorg/apache/avro/Schema$Name;Ljava/lang/String;)V

    .line 2
    iput-boolean p3, p0, Lorg/apache/avro/Schema$RecordSchema;->isError:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema$Name;Ljava/lang/String;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema$Name;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lorg/apache/avro/Schema$Field;",
            ">;)V"
        }
    .end annotation

    .line 3
    sget-object v0, Lorg/apache/avro/Schema$Type;->RECORD:Lorg/apache/avro/Schema$Type;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/avro/Schema$NamedSchema;-><init>(Lorg/apache/avro/Schema$Type;Lorg/apache/avro/Schema$Name;Ljava/lang/String;)V

    .line 4
    iput-boolean p3, p0, Lorg/apache/avro/Schema$RecordSchema;->isError:Z

    .line 5
    invoke-virtual {p0, p4}, Lorg/apache/avro/Schema$RecordSchema;->setFields(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public computeHash()I
    .locals 4

    .line 1
    invoke-static {}, Lorg/apache/avro/Schema;->access$1200()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    .line 4
    :try_start_0
    invoke-interface {v0, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-super {p0}, Lorg/apache/avro/Schema$NamedSchema;->computeHash()I

    move-result v2

    iget-object v3, p0, Lorg/apache/avro/Schema$RecordSchema;->fields:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v2, v3

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 7
    :cond_2
    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/avro/Schema$RecordSchema;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/avro/Schema$RecordSchema;

    .line 3
    invoke-virtual {p0, v1}, Lorg/apache/avro/Schema;->equalCachedHash(Lorg/apache/avro/Schema;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    .line 4
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/avro/Schema$NamedSchema;->equalNames(Lorg/apache/avro/Schema$NamedSchema;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    .line 5
    :cond_3
    invoke-virtual {p0, v1}, Lorg/apache/avro/JsonProperties;->propsEqual(Lorg/apache/avro/JsonProperties;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    .line 6
    :cond_4
    invoke-static {}, Lorg/apache/avro/Schema;->access$1100()Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 7
    new-instance v3, Lorg/apache/avro/Schema$SeenPair;

    invoke-direct {v3, p0, p1}, Lorg/apache/avro/Schema$SeenPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    .line 10
    :try_start_0
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lorg/apache/avro/Schema$RecordSchema;->fields:Ljava/util/List;

    iget-object v1, v1, Lorg/apache/avro/Schema$RecordSchema;->fields:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    .line 12
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    :cond_6
    return v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_7

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 13
    :cond_7
    throw v0
.end method

.method public fieldsToJson(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Le/k/a/b/g;->F1()V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/Schema$RecordSchema;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema$Field;

    .line 3
    invoke-virtual {p2}, Le/k/a/b/g;->M1()V

    .line 4
    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    .line 5
    invoke-virtual {p2, v3}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2, v2}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    const-string v2, "type"

    .line 7
    invoke-virtual {p2, v2}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/apache/avro/Schema;->toJson(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V

    .line 9
    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->doc()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->doc()Ljava/lang/String;

    move-result-object v2

    const-string v3, "doc"

    .line 11
    invoke-virtual {p2, v3}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2, v2}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    .line 13
    :cond_0
    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->hasDefaultValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "default"

    .line 14
    invoke-virtual {p2, v2}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->defaultValue()Le/k/a/c/l;

    move-result-object v2

    invoke-virtual {p2, v2}, Le/k/a/b/g;->Y1(Le/k/a/b/t;)V

    .line 16
    :cond_1
    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->order()Lorg/apache/avro/Schema$Field$Order;

    move-result-object v2

    sget-object v3, Lorg/apache/avro/Schema$Field$Order;->ASCENDING:Lorg/apache/avro/Schema$Field$Order;

    if-eq v2, v3, :cond_2

    .line 17
    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->order()Lorg/apache/avro/Schema$Field$Order;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/avro/Schema$Field$Order;->access$1400(Lorg/apache/avro/Schema$Field$Order;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "order"

    .line 18
    invoke-virtual {p2, v3}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2, v2}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    .line 20
    :cond_2
    invoke-static {v1}, Lorg/apache/avro/Schema$Field;->access$1500(Lorg/apache/avro/Schema$Field;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lorg/apache/avro/Schema$Field;->access$1500(Lorg/apache/avro/Schema$Field;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "aliases"

    .line 21
    invoke-virtual {p2, v2}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Le/k/a/b/g;->F1()V

    .line 23
    invoke-static {v1}, Lorg/apache/avro/Schema$Field;->access$1500(Lorg/apache/avro/Schema$Field;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 24
    invoke-virtual {p2, v3}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {p2}, Le/k/a/b/g;->p0()V

    .line 26
    :cond_4
    invoke-virtual {v1, p2}, Lorg/apache/avro/JsonProperties;->writeProps(Le/k/a/b/g;)V

    .line 27
    invoke-virtual {p2}, Le/k/a/b/g;->t0()V

    goto/16 :goto_0

    .line 28
    :cond_5
    invoke-virtual {p2}, Le/k/a/b/g;->p0()V

    return-void
.end method

.method public getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$RecordSchema;->fieldMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/Schema$Field;

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Schema fields not set yet"

    invoke-direct {p1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/avro/Schema$Field;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$RecordSchema;->fields:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    const-string v1, "Schema fields not set yet"

    invoke-direct {v0, v1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isError()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/avro/Schema$RecordSchema;->isError:Z

    return v0
.end method

.method public setFields(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/avro/Schema$Field;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$RecordSchema;->fields:Ljava/util/List;

    if-nez v0, :cond_3

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lorg/apache/avro/util/tc/Java8Support;->multiplyExact(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/avro/Schema$RecordSchema;->fieldMap:Ljava/util/Map;

    .line 3
    new-instance v0, Lorg/apache/avro/Schema$LockableArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/avro/Schema$LockableArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/avro/Schema$Field;

    .line 5
    invoke-static {v4}, Lorg/apache/avro/Schema$Field;->access$1000(Lorg/apache/avro/Schema$Field;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 6
    invoke-static {v4, v3}, Lorg/apache/avro/Schema$Field;->access$1002(Lorg/apache/avro/Schema$Field;I)I

    .line 7
    iget-object v3, p0, Lorg/apache/avro/Schema$RecordSchema;->fieldMap:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/avro/Schema$Field;

    if-nez v3, :cond_0

    .line 8
    invoke-virtual {v0, v4}, Lorg/apache/avro/Schema$LockableArrayList;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    iget-object v1, p0, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    const/4 v5, 0x1

    aput-object v1, v0, v5

    aput-object v4, v0, v2

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const-string v1, "Duplicate field %s in record %s: %s and %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field already used: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    invoke-virtual {v0}, Lorg/apache/avro/Schema$LockableArrayList;->lock()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/Schema$RecordSchema;->fields:Ljava/util/List;

    const/high16 p1, -0x80000000

    .line 13
    iput p1, p0, Lorg/apache/avro/Schema;->hashCode:I

    return-void

    .line 14
    :cond_3
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Fields are already set"

    invoke-direct {p1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toJson(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/Schema$NamedSchema;->writeNameRef(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lorg/apache/avro/Schema$Names;->access$1300(Lorg/apache/avro/Schema$Names;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Le/k/a/b/g;->M1()V

    .line 4
    iget-boolean v1, p0, Lorg/apache/avro/Schema$RecordSchema;->isError:Z

    if-eqz v1, :cond_1

    const-string v1, "error"

    goto :goto_0

    :cond_1
    const-string v1, "record"

    :goto_0
    const-string v2, "type"

    .line 5
    invoke-virtual {p2, v2}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2, v1}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/Schema$NamedSchema;->writeName(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V

    .line 8
    iget-object v1, p0, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    invoke-static {v1}, Lorg/apache/avro/Schema$Name;->access$900(Lorg/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/avro/Schema$Names;->access$1302(Lorg/apache/avro/Schema$Names;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Lorg/apache/avro/Schema$NamedSchema;->getDoc()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p0}, Lorg/apache/avro/Schema$NamedSchema;->getDoc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "doc"

    .line 11
    invoke-virtual {p2, v2}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2, v1}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object v1, p0, Lorg/apache/avro/Schema$RecordSchema;->fields:Ljava/util/List;

    if-eqz v1, :cond_3

    const-string v1, "fields"

    .line 14
    invoke-virtual {p2, v1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/Schema$RecordSchema;->fieldsToJson(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V

    .line 16
    :cond_3
    invoke-virtual {p0, p2}, Lorg/apache/avro/JsonProperties;->writeProps(Le/k/a/b/g;)V

    .line 17
    invoke-virtual {p0, p2}, Lorg/apache/avro/Schema$NamedSchema;->aliasesToJson(Le/k/a/b/g;)V

    .line 18
    invoke-virtual {p2}, Le/k/a/b/g;->t0()V

    .line 19
    invoke-static {p1, v0}, Lorg/apache/avro/Schema$Names;->access$1302(Lorg/apache/avro/Schema$Names;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
