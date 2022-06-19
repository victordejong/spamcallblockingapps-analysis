.class public abstract Lorg/apache/avro/SchemaBuilder$PropBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PropBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/apache/avro/SchemaBuilder$PropBuilder<",
        "TS;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private props:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/k/a/c/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/avro/SchemaBuilder$PropBuilder;->props:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$700(Lorg/apache/avro/SchemaBuilder$PropBuilder;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/SchemaBuilder$PropBuilder;->hasProps()Z

    move-result p0

    return p0
.end method

.method private hasProps()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$PropBuilder;->props:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final addPropsTo(Lorg/apache/avro/JsonProperties;)Lorg/apache/avro/JsonProperties;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/avro/JsonProperties;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/SchemaBuilder$PropBuilder;->hasProps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$PropBuilder;->props:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/apache/avro/JsonProperties;->addProp(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final prop(Ljava/lang/String;Le/k/a/c/l;)Lorg/apache/avro/SchemaBuilder$PropBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/k/a/c/l;",
            ")TS;"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/apache/avro/SchemaBuilder$PropBuilder;->hasProps()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/SchemaBuilder$PropBuilder;->props:Ljava/util/Map;

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$PropBuilder;->props:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$PropBuilder;->self()Lorg/apache/avro/SchemaBuilder$PropBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final prop(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/avro/SchemaBuilder$PropBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TS;"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lorg/apache/avro/util/internal/JacksonUtils;->toJsonNode(Ljava/lang/Object;)Le/k/a/c/l;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/SchemaBuilder$PropBuilder;->prop(Ljava/lang/String;Le/k/a/c/l;)Lorg/apache/avro/SchemaBuilder$PropBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final prop(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$PropBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Le/k/a/c/k0/u;->M(Ljava/lang/String;)Le/k/a/c/k0/u;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/SchemaBuilder$PropBuilder;->prop(Ljava/lang/String;Le/k/a/c/l;)Lorg/apache/avro/SchemaBuilder$PropBuilder;

    move-result-object p1

    return-object p1
.end method

.method public abstract self()Lorg/apache/avro/SchemaBuilder$PropBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method
