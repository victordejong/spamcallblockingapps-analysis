.class public abstract Lorg/apache/avro/JsonProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/JsonProperties$Null;
    }
.end annotation


# static fields
.field public static final NULL_VALUE:Lorg/apache/avro/JsonProperties$Null;


# instance fields
.field private props:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Le/k/a/c/l;",
            ">;"
        }
    .end annotation
.end field

.field private reserved:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/JsonProperties$1;

    invoke-direct {v0}, Lorg/apache/avro/JsonProperties$1;-><init>()V

    invoke-static {v0}, Lorg/apache/avro/util/internal/Accessor;->setAccessor(Lorg/apache/avro/util/internal/Accessor$JsonPropertiesAccessor;)V

    .line 2
    new-instance v0, Lorg/apache/avro/JsonProperties$Null;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/avro/JsonProperties$Null;-><init>(Lorg/apache/avro/JsonProperties$1;)V

    sput-object v0, Lorg/apache/avro/JsonProperties;->NULL_VALUE:Lorg/apache/avro/JsonProperties$Null;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/avro/JsonProperties$2;

    invoke-direct {v0, p0}, Lorg/apache/avro/JsonProperties$2;-><init>(Lorg/apache/avro/JsonProperties;)V

    iput-object v0, p0, Lorg/apache/avro/JsonProperties;->props:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    iput-object p1, p0, Lorg/apache/avro/JsonProperties;->reserved:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lorg/apache/avro/JsonProperties$2;

    invoke-direct {v0, p0}, Lorg/apache/avro/JsonProperties$2;-><init>(Lorg/apache/avro/JsonProperties;)V

    iput-object v0, p0, Lorg/apache/avro/JsonProperties;->props:Ljava/util/concurrent/ConcurrentMap;

    .line 6
    iput-object p1, p0, Lorg/apache/avro/JsonProperties;->reserved:Ljava/util/Set;

    .line 7
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Le/k/a/c/k0/u;->M(Ljava/lang/String;)Le/k/a/c/k0/u;

    move-result-object v0

    goto :goto_1

    .line 11
    :cond_0
    instance-of v1, v0, Le/k/a/c/l;

    if-eqz v1, :cond_1

    .line 12
    check-cast v0, Le/k/a/c/l;

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {v0}, Lorg/apache/avro/util/internal/JacksonUtils;->toJsonNode(Ljava/lang/Object;)Le/k/a/c/l;

    move-result-object v0

    .line 14
    :goto_1
    iget-object v1, p0, Lorg/apache/avro/JsonProperties;->props:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic access$000(Lorg/apache/avro/JsonProperties;Ljava/lang/String;Le/k/a/c/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/avro/JsonProperties;->addProp(Ljava/lang/String;Le/k/a/c/l;)V

    return-void
.end method

.method private addProp(Ljava/lang/String;Le/k/a/c/l;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/apache/avro/JsonProperties;->reserved:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    .line 6
    iget-object v0, p0, Lorg/apache/avro/JsonProperties;->props:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/k/a/c/l;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p2}, Le/k/a/c/l;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p2, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Can\'t overwrite property: "

    invoke-static {v0, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-void

    .line 9
    :cond_2
    new-instance p2, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Can\'t set a property to null: "

    invoke-static {v0, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_3
    new-instance p2, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Can\'t set reserved property: "

    invoke-static {v0, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private getJsonProp(Ljava/lang/String;)Le/k/a/c/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/JsonProperties;->props:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/k/a/c/l;

    return-object p1
.end method


# virtual methods
.method public addAllProps(Lorg/apache/avro/JsonProperties;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lorg/apache/avro/JsonProperties;->props:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/k/a/c/l;

    invoke-direct {p0, v1, v0}, Lorg/apache/avro/JsonProperties;->addProp(Ljava/lang/String;Le/k/a/c/l;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addProp(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 2
    instance-of v0, p2, Le/k/a/c/l;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Le/k/a/c/l;

    invoke-direct {p0, p1, p2}, Lorg/apache/avro/JsonProperties;->addProp(Ljava/lang/String;Le/k/a/c/l;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2}, Lorg/apache/avro/util/internal/JacksonUtils;->toJsonNode(Ljava/lang/Object;)Le/k/a/c/l;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/avro/JsonProperties;->addProp(Ljava/lang/String;Le/k/a/c/l;)V

    :goto_0
    return-void
.end method

.method public addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p2}, Le/k/a/c/k0/u;->M(Ljava/lang/String;)Le/k/a/c/k0/u;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/avro/JsonProperties;->addProp(Ljava/lang/String;Le/k/a/c/l;)V

    return-void
.end method

.method public getObjectProp(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/JsonProperties;->props:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/k/a/c/l;

    invoke-static {p1}, Lorg/apache/avro/util/internal/JacksonUtils;->toObject(Le/k/a/c/l;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObjectProps()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/apache/avro/JsonProperties;->props:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/k/a/c/l;

    invoke-static {v2}, Lorg/apache/avro/util/internal/JacksonUtils;->toObject(Le/k/a/c/l;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/JsonProperties;->getJsonProp(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Le/k/a/c/l;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Le/k/a/c/l;->L()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public hasProps()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/JsonProperties;->props:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public propsEqual(Lorg/apache/avro/JsonProperties;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/JsonProperties;->props:Ljava/util/concurrent/ConcurrentMap;

    iget-object p1, p1, Lorg/apache/avro/JsonProperties;->props:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public propsHashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/JsonProperties;->props:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public putAll(Lorg/apache/avro/JsonProperties;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lorg/apache/avro/JsonProperties;->props:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/k/a/c/l;

    invoke-direct {p0, v1, v0}, Lorg/apache/avro/JsonProperties;->addProp(Ljava/lang/String;Le/k/a/c/l;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeProps(Le/k/a/b/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/JsonProperties;->props:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {p1, v2}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v1}, Le/k/a/b/g;->j1(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
