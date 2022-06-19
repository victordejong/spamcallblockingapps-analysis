.class public Lorg/apache/avro/Schema$EnumSchema;
.super Lorg/apache/avro/Schema$NamedSchema;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnumSchema"
.end annotation


# instance fields
.field private final enumDefault:Ljava/lang/String;

.field private final ordinals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final symbols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema$Name;Ljava/lang/String;Lorg/apache/avro/Schema$LockableArrayList;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema$Name;",
            "Ljava/lang/String;",
            "Lorg/apache/avro/Schema$LockableArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/Schema$Type;->ENUM:Lorg/apache/avro/Schema$Type;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/avro/Schema$NamedSchema;-><init>(Lorg/apache/avro/Schema$Type;Lorg/apache/avro/Schema$Name;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p3}, Lorg/apache/avro/Schema$LockableArrayList;->lock()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/Schema$EnumSchema;->symbols:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x2

    invoke-static {v0, p2}, Lorg/apache/avro/util/tc/Java8Support;->multiplyExact(II)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lorg/apache/avro/Schema$EnumSchema;->ordinals:Ljava/util/Map;

    .line 4
    iput-object p4, p0, Lorg/apache/avro/Schema$EnumSchema;->enumDefault:Ljava/lang/String;

    .line 5
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lorg/apache/avro/Schema$EnumSchema;->ordinals:Ljava/util/Map;

    invoke-static {v0}, Lorg/apache/avro/Schema;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    move p2, v3

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lorg/apache/avro/SchemaParseException;

    const-string p2, "Duplicate enum symbol: "

    invoke-static {p2, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz p4, :cond_3

    .line 8
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    new-instance p1, Lorg/apache/avro/SchemaParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The Enum Default: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " is not in the enum symbol set: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public computeHash()I
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/apache/avro/Schema$NamedSchema;->computeHash()I

    move-result v0

    iget-object v1, p0, Lorg/apache/avro/Schema$EnumSchema;->symbols:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/avro/Schema$EnumSchema;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/avro/Schema$EnumSchema;

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/avro/Schema;->equalCachedHash(Lorg/apache/avro/Schema;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/avro/Schema$NamedSchema;->equalNames(Lorg/apache/avro/Schema$NamedSchema;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/avro/Schema$EnumSchema;->symbols:Ljava/util/List;

    iget-object v3, p1, Lorg/apache/avro/Schema$EnumSchema;->symbols:Ljava/util/List;

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

.method public getEnumDefault()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$EnumSchema;->enumDefault:Ljava/lang/String;

    return-object v0
.end method

.method public getEnumOrdinal(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$EnumSchema;->ordinals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getEnumSymbols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$EnumSchema;->symbols:Ljava/util/List;

    return-object v0
.end method

.method public hasEnumSymbol(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$EnumSchema;->ordinals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toJson(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V
    .locals 1
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
    invoke-virtual {p2}, Le/k/a/b/g;->M1()V

    const-string v0, "type"

    .line 3
    invoke-virtual {p2, v0}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    const-string v0, "enum"

    .line 4
    invoke-virtual {p2, v0}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/Schema$NamedSchema;->writeName(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V

    .line 6
    invoke-virtual {p0}, Lorg/apache/avro/Schema$NamedSchema;->getDoc()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lorg/apache/avro/Schema$NamedSchema;->getDoc()Ljava/lang/String;

    move-result-object p1

    const-string v0, "doc"

    .line 8
    invoke-virtual {p2, v0}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2, p1}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    :cond_1
    const-string p1, "symbols"

    .line 10
    invoke-virtual {p2, p1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Le/k/a/b/g;->F1()V

    .line 12
    iget-object p1, p0, Lorg/apache/avro/Schema$EnumSchema;->symbols:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    invoke-virtual {p2, v0}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p2}, Le/k/a/b/g;->p0()V

    .line 15
    invoke-virtual {p0}, Lorg/apache/avro/Schema$EnumSchema;->getEnumDefault()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p0}, Lorg/apache/avro/Schema$EnumSchema;->getEnumDefault()Ljava/lang/String;

    move-result-object p1

    const-string v0, "default"

    .line 17
    invoke-virtual {p2, v0}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2, p1}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    .line 19
    :cond_3
    invoke-virtual {p0, p2}, Lorg/apache/avro/JsonProperties;->writeProps(Le/k/a/b/g;)V

    .line 20
    invoke-virtual {p0, p2}, Lorg/apache/avro/Schema$NamedSchema;->aliasesToJson(Le/k/a/b/g;)V

    .line 21
    invoke-virtual {p2}, Le/k/a/b/g;->t0()V

    return-void
.end method
