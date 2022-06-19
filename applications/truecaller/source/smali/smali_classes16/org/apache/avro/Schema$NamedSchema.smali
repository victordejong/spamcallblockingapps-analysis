.class public abstract Lorg/apache/avro/Schema$NamedSchema;
.super Lorg/apache/avro/Schema;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NamedSchema"
.end annotation


# instance fields
.field public aliases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/avro/Schema$Name;",
            ">;"
        }
    .end annotation
.end field

.field public final doc:Ljava/lang/String;

.field public final name:Lorg/apache/avro/Schema$Name;


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema$Type;Lorg/apache/avro/Schema$Name;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/Schema;-><init>(Lorg/apache/avro/Schema$Type;)V

    .line 2
    iput-object p2, p0, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    .line 3
    iput-object p3, p0, Lorg/apache/avro/Schema$NamedSchema;->doc:Ljava/lang/String;

    .line 4
    sget-object p1, Lorg/apache/avro/Schema;->PRIMITIVES:Ljava/util/Map;

    invoke-static {p2}, Lorg/apache/avro/Schema$Name;->access$700(Lorg/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Lorg/apache/avro/AvroTypeException;

    const-string p3, "Schemas may not be named after primitives: "

    invoke-static {p3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p2}, Lorg/apache/avro/Schema$Name;->access$700(Lorg/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addAlias(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/avro/Schema$NamedSchema;->addAlias(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/avro/Schema$NamedSchema;->aliases:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/Schema$NamedSchema;->aliases:Ljava/util/Set;

    :cond_0
    if-nez p2, :cond_1

    .line 4
    iget-object p2, p0, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    invoke-static {p2}, Lorg/apache/avro/Schema$Name;->access$900(Lorg/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object p2

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/apache/avro/Schema$NamedSchema;->aliases:Ljava/util/Set;

    new-instance v1, Lorg/apache/avro/Schema$Name;

    invoke-direct {v1, p1, p2}, Lorg/apache/avro/Schema$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public aliasesToJson(Le/k/a/b/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$NamedSchema;->aliases:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "aliases"

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Le/k/a/b/g;->F1()V

    .line 4
    iget-object v0, p0, Lorg/apache/avro/Schema$NamedSchema;->aliases:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema$Name;

    .line 5
    iget-object v2, p0, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    invoke-static {v2}, Lorg/apache/avro/Schema$Name;->access$900(Lorg/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/avro/Schema$Name;->getQualified(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/g;->p0()V

    :cond_2
    :goto_1
    return-void
.end method

.method public computeHash()I
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/apache/avro/Schema;->computeHash()I

    move-result v0

    iget-object v1, p0, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    invoke-virtual {v1}, Lorg/apache/avro/Schema$Name;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public equalNames(Lorg/apache/avro/Schema$NamedSchema;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    iget-object p1, p1, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    invoke-virtual {v0, p1}, Lorg/apache/avro/Schema$Name;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAliases()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/apache/avro/Schema$NamedSchema;->aliases:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/avro/Schema$Name;

    .line 4
    invoke-static {v2}, Lorg/apache/avro/Schema$Name;->access$700(Lorg/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDoc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$NamedSchema;->doc:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    invoke-static {v0}, Lorg/apache/avro/Schema$Name;->access$700(Lorg/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    invoke-static {v0}, Lorg/apache/avro/Schema$Name;->access$800(Lorg/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    invoke-static {v0}, Lorg/apache/avro/Schema$Name;->access$900(Lorg/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeName(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    invoke-virtual {v0, p1, p2}, Lorg/apache/avro/Schema$Name;->writeName(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V

    return-void
.end method

.method public writeNameRef(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    invoke-virtual {p1}, Lorg/apache/avro/Schema$Names;->space()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/avro/Schema$Name;->getQualified(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    iget-object p2, p0, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    invoke-static {p2}, Lorg/apache/avro/Schema$Name;->access$800(Lorg/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    invoke-virtual {p1, p2, p0}, Lorg/apache/avro/Schema$Names;->put(Lorg/apache/avro/Schema$Name;Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
