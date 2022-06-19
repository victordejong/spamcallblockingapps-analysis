.class public Lorg/apache/avro/SchemaBuilder$NameContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameContext"
.end annotation


# static fields
.field private static final PRIMITIVES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final namespace:Ljava/lang/String;

.field private final schemas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/avro/Schema;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/apache/avro/SchemaBuilder$NameContext;->PRIMITIVES:Ljava/util/Set;

    const-string v1, "null"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "boolean"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "int"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "long"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "float"

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "double"

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "bytes"

    .line 8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "string"

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/SchemaBuilder$NameContext;->schemas:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lorg/apache/avro/SchemaBuilder$NameContext;->namespace:Ljava/lang/String;

    .line 5
    sget-object v1, Lorg/apache/avro/Schema$Type;->NULL:Lorg/apache/avro/Schema$Type;

    invoke-static {v1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lorg/apache/avro/Schema$Type;->BOOLEAN:Lorg/apache/avro/Schema$Type;

    invoke-static {v1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object v1

    const-string v2, "boolean"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lorg/apache/avro/Schema$Type;->INT:Lorg/apache/avro/Schema$Type;

    invoke-static {v1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object v1

    const-string v2, "int"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lorg/apache/avro/Schema$Type;->LONG:Lorg/apache/avro/Schema$Type;

    invoke-static {v1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object v1

    const-string v2, "long"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lorg/apache/avro/Schema$Type;->FLOAT:Lorg/apache/avro/Schema$Type;

    invoke-static {v1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object v1

    const-string v2, "float"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lorg/apache/avro/Schema$Type;->DOUBLE:Lorg/apache/avro/Schema$Type;

    invoke-static {v1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object v1

    const-string v2, "double"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lorg/apache/avro/Schema$Type;->BYTES:Lorg/apache/avro/Schema$Type;

    invoke-static {v1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object v1

    const-string v2, "bytes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Lorg/apache/avro/Schema$Type;->STRING:Lorg/apache/avro/Schema$Type;

    invoke-static {v1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/avro/Schema;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$NameContext;->schemas:Ljava/util/HashMap;

    const-string p1, ""

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lorg/apache/avro/SchemaBuilder$NameContext;->namespace:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/SchemaBuilder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/SchemaBuilder$NameContext;-><init>()V

    return-void
.end method

.method public static synthetic access$1100(Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/avro/Schema;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/avro/SchemaBuilder$NameContext;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$NameContext;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/SchemaBuilder$NameContext;->namespace(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$NameContext;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lorg/apache/avro/SchemaBuilder$NameContext;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/avro/SchemaBuilder$NameContext;->namespace:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/apache/avro/SchemaBuilder$NameContext;Lorg/apache/avro/Schema;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/SchemaBuilder$NameContext;->put(Lorg/apache/avro/Schema;)V

    return-void
.end method

.method public static synthetic access$600(Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)Lorg/apache/avro/Schema;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/SchemaBuilder$NameContext;->getFullname(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object p0

    return-object p0
.end method

.method private get(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/avro/Schema;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/avro/SchemaBuilder$NameContext;->resolveName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/avro/SchemaBuilder$NameContext;->getFullname(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1
.end method

.method private getFullname(Ljava/lang/String;)Lorg/apache/avro/Schema;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$NameContext;->schemas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/Schema;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/avro/SchemaParseException;

    const-string v1, "Undefined name: "

    invoke-static {v1, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private namespace(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$NameContext;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$NameContext;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$NameContext;->schemas:Ljava/util/HashMap;

    invoke-direct {v0, v1, p1}, Lorg/apache/avro/SchemaBuilder$NameContext;-><init>(Ljava/util/HashMap;Ljava/lang/String;)V

    return-object v0
.end method

.method private put(Lorg/apache/avro/Schema;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$NameContext;->schemas:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$NameContext;->schemas:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    new-instance p1, Lorg/apache/avro/SchemaParseException;

    const-string v1, "Can\'t redefine: "

    invoke-static {v1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private resolveName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/SchemaBuilder$NameContext;->PRIMITIVES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/16 v0, 0x2e

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    if-nez p2, :cond_1

    .line 3
    iget-object p2, p0, Lorg/apache/avro/SchemaBuilder$NameContext;->namespace:Ljava/lang/String;

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, ""

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "."

    .line 5
    invoke-static {p2, v0, p1}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method
