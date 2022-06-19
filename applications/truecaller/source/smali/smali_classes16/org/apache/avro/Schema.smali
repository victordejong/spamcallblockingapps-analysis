.class public abstract Lorg/apache/avro/Schema;
.super Lorg/apache/avro/JsonProperties;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/Schema$LockableArrayList;,
        Lorg/apache/avro/Schema$Names;,
        Lorg/apache/avro/Schema$Parser;,
        Lorg/apache/avro/Schema$NullSchema;,
        Lorg/apache/avro/Schema$BooleanSchema;,
        Lorg/apache/avro/Schema$DoubleSchema;,
        Lorg/apache/avro/Schema$FloatSchema;,
        Lorg/apache/avro/Schema$LongSchema;,
        Lorg/apache/avro/Schema$IntSchema;,
        Lorg/apache/avro/Schema$BytesSchema;,
        Lorg/apache/avro/Schema$StringSchema;,
        Lorg/apache/avro/Schema$FixedSchema;,
        Lorg/apache/avro/Schema$UnionSchema;,
        Lorg/apache/avro/Schema$MapSchema;,
        Lorg/apache/avro/Schema$ArraySchema;,
        Lorg/apache/avro/Schema$EnumSchema;,
        Lorg/apache/avro/Schema$RecordSchema;,
        Lorg/apache/avro/Schema$SeenPair;,
        Lorg/apache/avro/Schema$NamedSchema;,
        Lorg/apache/avro/Schema$Name;,
        Lorg/apache/avro/Schema$Field;,
        Lorg/apache/avro/Schema$Type;,
        Lorg/apache/avro/Schema$SerializableSchema;
    }
.end annotation


# static fields
.field private static final ENUM_RESERVED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FACTORY:Le/k/a/b/e;

.field private static final FIELD_RESERVED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOG:Lw3/d/b;

.field public static final MAPPER:Le/k/a/c/r;

.field private static final NO_HASHCODE:I = -0x80000000

.field public static final PRIMITIVES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/avro/Schema$Type;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCHEMA_RESERVED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEEN_EQUALS:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/HashSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEEN_HASHCODE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/IdentityHashMap;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALIDATE_DEFAULTS:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L

.field private static validateNames:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public hashCode:I

.field private logicalType:Lorg/apache/avro/LogicalType;

.field private final type:Lorg/apache/avro/Schema$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Le/k/a/b/e;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Le/k/a/b/e;-><init>(Le/k/a/b/n;)V

    .line 3
    sput-object v0, Lorg/apache/avro/Schema;->FACTORY:Le/k/a/b/e;

    .line 4
    const-class v2, Lorg/apache/avro/Schema;

    invoke-static {v2}, Lw3/d/c;->b(Ljava/lang/Class;)Lw3/d/b;

    move-result-object v2

    sput-object v2, Lorg/apache/avro/Schema;->LOG:Lw3/d/b;

    .line 5
    new-instance v2, Le/k/a/c/r;

    .line 6
    invoke-direct {v2, v0, v1, v1}, Le/k/a/c/r;-><init>(Le/k/a/b/e;Le/k/a/c/l0/j;Le/k/a/c/d0/l;)V

    .line 7
    sput-object v2, Lorg/apache/avro/Schema;->MAPPER:Le/k/a/c/r;

    .line 8
    sget-object v1, Le/k/a/b/j$a;->d:Le/k/a/b/j$a;

    .line 9
    iget v3, v0, Le/k/a/b/e;->d:I

    .line 10
    iget v1, v1, Le/k/a/b/j$a;->b:I

    or-int/2addr v1, v3

    .line 11
    iput v1, v0, Le/k/a/b/e;->d:I

    .line 12
    iput-object v2, v0, Le/k/a/b/e;->f:Le/k/a/b/n;

    .line 13
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "doc"

    const-string v2, "fields"

    const-string v3, "items"

    const-string v4, "name"

    const-string v5, "namespace"

    const-string v6, "size"

    const-string v7, "symbols"

    const-string v8, "values"

    const-string v9, "type"

    const-string v10, "aliases"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/apache/avro/Schema;->SCHEMA_RESERVED:Ljava/util/Set;

    .line 15
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lorg/apache/avro/Schema;->ENUM_RESERVED:Ljava/util/Set;

    const-string v0, "default"

    .line 16
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "default"

    const-string v2, "doc"

    const-string v3, "name"

    const-string v4, "order"

    const-string v5, "type"

    const-string v6, "aliases"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/avro/Schema;->FIELD_RESERVED:Ljava/util/Set;

    .line 19
    new-instance v0, Lorg/apache/avro/Schema$1;

    invoke-direct {v0}, Lorg/apache/avro/Schema$1;-><init>()V

    sput-object v0, Lorg/apache/avro/Schema;->SEEN_EQUALS:Ljava/lang/ThreadLocal;

    .line 20
    new-instance v0, Lorg/apache/avro/Schema$2;

    invoke-direct {v0}, Lorg/apache/avro/Schema$2;-><init>()V

    sput-object v0, Lorg/apache/avro/Schema;->SEEN_HASHCODE:Ljava/lang/ThreadLocal;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/avro/Schema;->PRIMITIVES:Ljava/util/Map;

    .line 22
    sget-object v1, Lorg/apache/avro/Schema$Type;->STRING:Lorg/apache/avro/Schema$Type;

    const-string v2, "string"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v1, Lorg/apache/avro/Schema$Type;->BYTES:Lorg/apache/avro/Schema$Type;

    const-string v2, "bytes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v1, Lorg/apache/avro/Schema$Type;->INT:Lorg/apache/avro/Schema$Type;

    const-string v2, "int"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v1, Lorg/apache/avro/Schema$Type;->LONG:Lorg/apache/avro/Schema$Type;

    const-string v2, "long"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v1, Lorg/apache/avro/Schema$Type;->FLOAT:Lorg/apache/avro/Schema$Type;

    const-string v2, "float"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v1, Lorg/apache/avro/Schema$Type;->DOUBLE:Lorg/apache/avro/Schema$Type;

    const-string v2, "double"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v1, Lorg/apache/avro/Schema$Type;->BOOLEAN:Lorg/apache/avro/Schema$Type;

    const-string v2, "boolean"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v1, Lorg/apache/avro/Schema$Type;->NULL:Lorg/apache/avro/Schema$Type;

    const-string v2, "null"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v0, Lorg/apache/avro/Schema$3;

    invoke-direct {v0}, Lorg/apache/avro/Schema$3;-><init>()V

    sput-object v0, Lorg/apache/avro/Schema;->validateNames:Ljava/lang/ThreadLocal;

    .line 31
    new-instance v0, Lorg/apache/avro/Schema$4;

    invoke-direct {v0}, Lorg/apache/avro/Schema$4;-><init>()V

    sput-object v0, Lorg/apache/avro/Schema;->VALIDATE_DEFAULTS:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema$Type;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Schema$Type;->ENUM:Lorg/apache/avro/Schema$Type;

    if-ne p1, v0, :cond_0

    sget-object v0, Lorg/apache/avro/Schema;->ENUM_RESERVED:Ljava/util/Set;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/avro/Schema;->SCHEMA_RESERVED:Ljava/util/Set;

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/avro/JsonProperties;-><init>(Ljava/util/Set;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/avro/Schema;->logicalType:Lorg/apache/avro/LogicalType;

    const/high16 v0, -0x80000000

    .line 3
    iput v0, p0, Lorg/apache/avro/Schema;->hashCode:I

    .line 4
    iput-object p1, p0, Lorg/apache/avro/Schema;->type:Lorg/apache/avro/Schema$Type;

    return-void
.end method

.method public static synthetic access$1100()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Schema;->SEEN_EQUALS:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static synthetic access$1200()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Schema;->SEEN_HASHCODE:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static synthetic access$1600()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Schema;->validateNames:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static synthetic access$1700()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Schema;->VALIDATE_DEFAULTS:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static synthetic access$300()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Schema;->FIELD_RESERVED:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/avro/Schema;->validateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Ljava/lang/String;Lorg/apache/avro/Schema;Le/k/a/c/l;)Le/k/a/c/l;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/apache/avro/Schema;->validateDefault(Ljava/lang/String;Lorg/apache/avro/Schema;Le/k/a/c/l;)Le/k/a/c/l;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema$Type;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/avro/Schema;->type:Lorg/apache/avro/Schema$Type;

    return-object p0
.end method

.method private static applyAliases(Lorg/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/Schema;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            "Ljava/util/Map<",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/apache/avro/Schema$Name;",
            "Lorg/apache/avro/Schema$Name;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/apache/avro/Schema$Name;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/apache/avro/Schema;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 9
    instance-of v4, v0, Lorg/apache/avro/Schema$NamedSchema;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Lorg/apache/avro/Schema$NamedSchema;

    iget-object v4, v4, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 10
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_8

    const/4 v7, 0x1

    if-eq v6, v7, :cond_6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    const/4 v1, 0x5

    if-eq v6, v1, :cond_1

    goto/16 :goto_2

    .line 11
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 12
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema$Name;

    invoke-static {v1}, Lorg/apache/avro/Schema$Name;->access$700(Lorg/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/avro/Schema;->getDoc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result v3

    invoke-static {v1, v2, v5, v3}, Lorg/apache/avro/Schema;->createFixed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/avro/Schema;

    move-result-object v1

    goto/16 :goto_4

    .line 13
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual/range {p0 .. p0}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/avro/Schema;

    .line 15
    invoke-static {v6, v1, v2, v3}, Lorg/apache/avro/Schema;->applyAliases(Lorg/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/Schema;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_3
    invoke-static {v4}, Lorg/apache/avro/Schema;->createUnion(Ljava/util/List;)Lorg/apache/avro/Schema;

    move-result-object v1

    goto/16 :goto_4

    .line 17
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/avro/Schema;->getValueType()Lorg/apache/avro/Schema;

    move-result-object v4

    invoke-static {v4, v1, v2, v3}, Lorg/apache/avro/Schema;->applyAliases(Lorg/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/Schema;

    move-result-object v1

    .line 18
    invoke-virtual/range {p0 .. p0}, Lorg/apache/avro/Schema;->getValueType()Lorg/apache/avro/Schema;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 19
    invoke-static {v1}, Lorg/apache/avro/Schema;->createMap(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;

    move-result-object v1

    goto/16 :goto_4

    .line 20
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object v4

    invoke-static {v4, v1, v2, v3}, Lorg/apache/avro/Schema;->applyAliases(Lorg/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/Schema;

    move-result-object v1

    .line 21
    invoke-virtual/range {p0 .. p0}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 22
    invoke-static {v1}, Lorg/apache/avro/Schema;->createArray(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;

    move-result-object v1

    goto/16 :goto_4

    .line 23
    :cond_6
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 24
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema$Name;

    invoke-static {v1}, Lorg/apache/avro/Schema$Name;->access$700(Lorg/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/avro/Schema;->getDoc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/avro/Schema;->getEnumDefault()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v5, v3, v4}, Lorg/apache/avro/Schema;->createEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v1

    goto/16 :goto_4

    :cond_7
    :goto_2
    move-object v1, v0

    goto :goto_4

    .line 25
    :cond_8
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 26
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/Schema;

    return-object v0

    .line 27
    :cond_9
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 28
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/avro/Schema$Name;

    .line 29
    :cond_a
    invoke-static {v4}, Lorg/apache/avro/Schema$Name;->access$700(Lorg/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/avro/Schema;->getDoc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/avro/Schema;->isError()Z

    move-result v8

    invoke-static {v6, v7, v5, v8}, Lorg/apache/avro/Schema;->createRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/avro/Schema;

    move-result-object v5

    .line 30
    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual/range {p0 .. p0}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/avro/Schema$Field;

    .line 33
    invoke-static {v8}, Lorg/apache/avro/Schema$Field;->access$1800(Lorg/apache/avro/Schema$Field;)Lorg/apache/avro/Schema;

    move-result-object v9

    invoke-static {v9, v1, v2, v3}, Lorg/apache/avro/Schema;->applyAliases(Lorg/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/Schema;

    move-result-object v12

    .line 34
    invoke-static {v8}, Lorg/apache/avro/Schema$Field;->access$1900(Lorg/apache/avro/Schema$Field;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9, v3}, Lorg/apache/avro/Schema;->getFieldAlias(Lorg/apache/avro/Schema$Name;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 35
    new-instance v9, Lorg/apache/avro/Schema$Field;

    invoke-static {v8}, Lorg/apache/avro/Schema$Field;->access$2000(Lorg/apache/avro/Schema$Field;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v8}, Lorg/apache/avro/Schema$Field;->access$2100(Lorg/apache/avro/Schema$Field;)Le/k/a/c/l;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v8}, Lorg/apache/avro/Schema$Field;->access$2200(Lorg/apache/avro/Schema$Field;)Lorg/apache/avro/Schema$Field$Order;

    move-result-object v16

    move-object v10, v9

    invoke-direct/range {v10 .. v16}, Lorg/apache/avro/Schema$Field;-><init>(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Le/k/a/c/l;ZLorg/apache/avro/Schema$Field$Order;)V

    .line 36
    invoke-virtual {v9, v8}, Lorg/apache/avro/JsonProperties;->putAll(Lorg/apache/avro/JsonProperties;)V

    .line 37
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 38
    :cond_b
    invoke-virtual {v5, v6}, Lorg/apache/avro/Schema;->setFields(Ljava/util/List;)V

    move-object v1, v5

    .line 39
    :goto_4
    invoke-virtual {v1, v0}, Lorg/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 40
    invoke-virtual {v1, v0}, Lorg/apache/avro/JsonProperties;->putAll(Lorg/apache/avro/JsonProperties;)V

    :cond_c
    return-object v1
.end method

.method public static applyAliases(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/IdentityHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    invoke-static {p1, v0, v2, v3}, Lorg/apache/avro/Schema;->getAliases(Lorg/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 6
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    return-object p0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 8
    invoke-static {p0, v0, v2, v3}, Lorg/apache/avro/Schema;->applyAliases(Lorg/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/Schema;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create a: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    new-instance p0, Lorg/apache/avro/Schema$NullSchema;

    invoke-direct {p0}, Lorg/apache/avro/Schema$NullSchema;-><init>()V

    return-object p0

    .line 4
    :pswitch_1
    new-instance p0, Lorg/apache/avro/Schema$BooleanSchema;

    invoke-direct {p0}, Lorg/apache/avro/Schema$BooleanSchema;-><init>()V

    return-object p0

    .line 5
    :pswitch_2
    new-instance p0, Lorg/apache/avro/Schema$DoubleSchema;

    invoke-direct {p0}, Lorg/apache/avro/Schema$DoubleSchema;-><init>()V

    return-object p0

    .line 6
    :pswitch_3
    new-instance p0, Lorg/apache/avro/Schema$FloatSchema;

    invoke-direct {p0}, Lorg/apache/avro/Schema$FloatSchema;-><init>()V

    return-object p0

    .line 7
    :pswitch_4
    new-instance p0, Lorg/apache/avro/Schema$LongSchema;

    invoke-direct {p0}, Lorg/apache/avro/Schema$LongSchema;-><init>()V

    return-object p0

    .line 8
    :pswitch_5
    new-instance p0, Lorg/apache/avro/Schema$IntSchema;

    invoke-direct {p0}, Lorg/apache/avro/Schema$IntSchema;-><init>()V

    return-object p0

    .line 9
    :pswitch_6
    new-instance p0, Lorg/apache/avro/Schema$BytesSchema;

    invoke-direct {p0}, Lorg/apache/avro/Schema$BytesSchema;-><init>()V

    return-object p0

    .line 10
    :pswitch_7
    new-instance p0, Lorg/apache/avro/Schema$StringSchema;

    invoke-direct {p0}, Lorg/apache/avro/Schema$StringSchema;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x6
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

.method public static createArray(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/Schema$ArraySchema;

    invoke-direct {v0, p0}, Lorg/apache/avro/Schema$ArraySchema;-><init>(Lorg/apache/avro/Schema;)V

    return-object v0
.end method

.method public static createEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/avro/Schema;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/avro/Schema;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/Schema$EnumSchema;

    new-instance v1, Lorg/apache/avro/Schema$Name;

    invoke-direct {v1, p0, p2}, Lorg/apache/avro/Schema$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lorg/apache/avro/Schema$LockableArrayList;

    invoke-direct {p0, p3}, Lorg/apache/avro/Schema$LockableArrayList;-><init>(Ljava/util/List;)V

    const/4 p2, 0x0

    invoke-direct {v0, v1, p1, p0, p2}, Lorg/apache/avro/Schema$EnumSchema;-><init>(Lorg/apache/avro/Schema$Name;Ljava/lang/String;Lorg/apache/avro/Schema$LockableArrayList;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/apache/avro/Schema;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/Schema;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/avro/Schema$EnumSchema;

    new-instance v1, Lorg/apache/avro/Schema$Name;

    invoke-direct {v1, p0, p2}, Lorg/apache/avro/Schema$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lorg/apache/avro/Schema$LockableArrayList;

    invoke-direct {p0, p3}, Lorg/apache/avro/Schema$LockableArrayList;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1, p1, p0, p4}, Lorg/apache/avro/Schema$EnumSchema;-><init>(Lorg/apache/avro/Schema$Name;Ljava/lang/String;Lorg/apache/avro/Schema$LockableArrayList;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createFixed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/avro/Schema;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/Schema$FixedSchema;

    new-instance v1, Lorg/apache/avro/Schema$Name;

    invoke-direct {v1, p0, p2}, Lorg/apache/avro/Schema$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, p3}, Lorg/apache/avro/Schema$FixedSchema;-><init>(Lorg/apache/avro/Schema$Name;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createMap(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/Schema$MapSchema;

    invoke-direct {v0, p0}, Lorg/apache/avro/Schema$MapSchema;-><init>(Lorg/apache/avro/Schema;)V

    return-object v0
.end method

.method public static createRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/avro/Schema;
    .locals 2

    .line 3
    new-instance v0, Lorg/apache/avro/Schema$RecordSchema;

    new-instance v1, Lorg/apache/avro/Schema$Name;

    invoke-direct {v1, p0, p2}, Lorg/apache/avro/Schema$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, p3}, Lorg/apache/avro/Schema$RecordSchema;-><init>(Lorg/apache/avro/Schema$Name;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static createRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lorg/apache/avro/Schema;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lorg/apache/avro/Schema$Field;",
            ">;)",
            "Lorg/apache/avro/Schema;"
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/apache/avro/Schema$RecordSchema;

    new-instance v1, Lorg/apache/avro/Schema$Name;

    invoke-direct {v1, p0, p2}, Lorg/apache/avro/Schema$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, p3, p4}, Lorg/apache/avro/Schema$RecordSchema;-><init>(Lorg/apache/avro/Schema$Name;Ljava/lang/String;ZLjava/util/List;)V

    return-object v0
.end method

.method public static createRecord(Ljava/util/List;)Lorg/apache/avro/Schema;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/avro/Schema$Field;",
            ">;)",
            "Lorg/apache/avro/Schema;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v0, v0, v1}, Lorg/apache/avro/Schema;->createRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/avro/Schema;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lorg/apache/avro/Schema;->setFields(Ljava/util/List;)V

    return-object v0
.end method

.method public static createUnion(Ljava/util/List;)Lorg/apache/avro/Schema;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/avro/Schema;",
            ">;)",
            "Lorg/apache/avro/Schema;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/Schema$UnionSchema;

    new-instance v1, Lorg/apache/avro/Schema$LockableArrayList;

    invoke-direct {v1, p0}, Lorg/apache/avro/Schema$LockableArrayList;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lorg/apache/avro/Schema$UnionSchema;-><init>(Lorg/apache/avro/Schema$LockableArrayList;)V

    return-object v0
.end method

.method public static varargs createUnion([Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/avro/Schema$LockableArrayList;

    invoke-direct {v0, p0}, Lorg/apache/avro/Schema$LockableArrayList;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/avro/Schema;->createUnion(Ljava/util/List;)Lorg/apache/avro/Schema;

    move-result-object p0

    return-object p0
.end method

.method private static getAliases(Lorg/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            "Ljava/util/Map<",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/apache/avro/Schema$Name;",
            "Lorg/apache/avro/Schema$Name;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/apache/avro/Schema$Name;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    instance-of v0, p0, Lorg/apache/avro/Schema$NamedSchema;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p0

    check-cast v0, Lorg/apache/avro/Schema$NamedSchema;

    .line 4
    iget-object v1, v0, Lorg/apache/avro/Schema$NamedSchema;->aliases:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/avro/Schema$Name;

    .line 6
    iget-object v3, v0, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto/16 :goto_5

    .line 8
    :cond_1
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/Schema;

    .line 9
    invoke-static {v0, p1, p2, p3}, Lorg/apache/avro/Schema;->getAliases(Lorg/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getValueType()Lorg/apache/avro/Schema;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/avro/Schema;->getAliases(Lorg/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_5

    .line 11
    :cond_3
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/avro/Schema;->getAliases(Lorg/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_5

    .line 12
    :cond_4
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 13
    :cond_5
    invoke-interface {p1, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-object v0, p0

    check-cast v0, Lorg/apache/avro/Schema$RecordSchema;

    .line 15
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema$Field;

    .line 16
    invoke-static {v1}, Lorg/apache/avro/Schema$Field;->access$1500(Lorg/apache/avro/Schema$Field;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 17
    invoke-static {v1}, Lorg/apache/avro/Schema$Field;->access$1500(Lorg/apache/avro/Schema$Field;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 18
    iget-object v4, v0, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    sget-object v5, Lw3/a/a/a;->a:Lw3/a/a/a;

    invoke-static {p3, v4, v5}, Lorg/apache/avro/util/tc/Java8Support;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Lorg/apache/avro/util/tc/Java8Support$MappingFunction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 19
    invoke-static {v1}, Lorg/apache/avro/Schema$Field;->access$1900(Lorg/apache/avro/Schema$Field;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 20
    :cond_6
    invoke-static {v1}, Lorg/apache/avro/Schema$Field;->access$1800(Lorg/apache/avro/Schema$Field;)Lorg/apache/avro/Schema;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lorg/apache/avro/Schema;->getAliases(Lorg/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_2

    .line 21
    :cond_7
    iget-object p0, v0, Lorg/apache/avro/Schema$NamedSchema;->aliases:Ljava/util/Set;

    if-eqz p0, :cond_8

    iget-object p0, v0, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    invoke-interface {p3, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 22
    iget-object p0, v0, Lorg/apache/avro/Schema$NamedSchema;->aliases:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/Schema$Name;

    .line 23
    iget-object p2, v0, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    :goto_5
    return-void
.end method

.method private static getFieldAlias(Lorg/apache/avro/Schema$Name;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema$Name;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lorg/apache/avro/Schema$Name;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    return-object p0
.end method

.method private static getOptionalText(Le/k/a/c/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/c/l;->L()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getRequiredText(Le/k/a/c/l;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lorg/apache/avro/Schema;->getOptionalText(Le/k/a/c/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lorg/apache/avro/SchemaParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static isValidDefault(Lorg/apache/avro/Schema;Le/k/a/c/l;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    return v0

    .line 2
    :pswitch_0
    invoke-virtual {p1}, Le/k/a/c/l;->H()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema$Field;

    .line 4
    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v3

    .line 5
    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Le/k/a/c/l;->w(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->defaultValue()Le/k/a/c/l;

    move-result-object v1

    .line 6
    :goto_0
    invoke-static {v3, v1}, Lorg/apache/avro/Schema;->isValidDefault(Lorg/apache/avro/Schema;Le/k/a/c/l;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_4
    return v2

    .line 7
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/avro/Schema;

    invoke-static {p0, p1}, Lorg/apache/avro/Schema;->isValidDefault(Lorg/apache/avro/Schema;Le/k/a/c/l;)Z

    move-result p0

    return p0

    .line 8
    :pswitch_2
    invoke-virtual {p1}, Le/k/a/c/l;->H()Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p1}, Le/k/a/c/l;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/k/a/c/l;

    .line 10
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getValueType()Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/apache/avro/Schema;->isValidDefault(Lorg/apache/avro/Schema;Le/k/a/c/l;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    :cond_7
    return v2

    .line 11
    :pswitch_3
    invoke-virtual {p1}, Le/k/a/c/l;->y()Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    .line 12
    :cond_8
    invoke-virtual {p1}, Le/k/a/c/l;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/k/a/c/l;

    .line 13
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/apache/avro/Schema;->isValidDefault(Lorg/apache/avro/Schema;Le/k/a/c/l;)Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    :cond_a
    return v2

    .line 14
    :pswitch_4
    invoke-virtual {p1}, Le/k/a/c/l;->F()Z

    move-result p0

    return p0

    .line 15
    :pswitch_5
    invoke-virtual {p1}, Le/k/a/c/l;->z()Z

    move-result p0

    return p0

    .line 16
    :pswitch_6
    invoke-virtual {p1}, Le/k/a/c/l;->G()Z

    move-result p0

    return p0

    .line 17
    :pswitch_7
    invoke-virtual {p1}, Le/k/a/c/l;->D()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {p1}, Le/k/a/c/l;->p()Z

    move-result p0

    if-eqz p0, :cond_b

    move v0, v2

    :cond_b
    return v0

    .line 18
    :pswitch_8
    invoke-virtual {p1}, Le/k/a/c/l;->D()Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-virtual {p1}, Le/k/a/c/l;->o()Z

    move-result p0

    if-eqz p0, :cond_c

    move v0, v2

    :cond_c
    return v0

    .line 19
    :pswitch_9
    invoke-virtual {p1}, Le/k/a/c/l;->I()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static parse(Le/k/a/c/l;Lorg/apache/avro/Schema$Names;)Lorg/apache/avro/Schema;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_28

    .line 5
    invoke-virtual/range {p0 .. p0}, Le/k/a/c/l;->I()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual/range {p0 .. p0}, Le/k/a/c/l;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/avro/Schema$Names;->get(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 7
    :cond_0
    new-instance v1, Lorg/apache/avro/SchemaParseException;

    const-string v2, "Undefined name: "

    invoke-static {v2, v0}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    invoke-virtual/range {p0 .. p0}, Le/k/a/c/l;->H()Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v2, "type"

    const-string v3, "No type"

    .line 9
    invoke-static {v0, v2, v3}, Lorg/apache/avro/Schema;->getRequiredText(Le/k/a/c/l;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/Schema$Names;->space()Ljava/lang/String;

    move-result-object v4

    const-string v5, "record"

    .line 11
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "fixed"

    const-string v8, "name"

    const-string v9, "doc"

    const-string v10, "enum"

    const-string v11, "error"

    const/4 v12, 0x0

    if-nez v6, :cond_3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move-object v13, v12

    move-object v14, v13

    goto :goto_1

    :cond_3
    :goto_0
    const-string v6, "namespace"

    .line 12
    invoke-static {v0, v6}, Lorg/apache/avro/Schema;->getOptionalText(Le/k/a/c/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-static {v0, v9}, Lorg/apache/avro/Schema;->getOptionalText(Le/k/a/c/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v6, :cond_4

    .line 14
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/Schema$Names;->space()Ljava/lang/String;

    move-result-object v6

    .line 15
    :cond_4
    new-instance v14, Lorg/apache/avro/Schema$Name;

    const-string v15, "No name in schema"

    invoke-static {v0, v8, v15}, Lorg/apache/avro/Schema;->getRequiredText(Le/k/a/c/l;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v6}, Lorg/apache/avro/Schema$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {v14}, Lorg/apache/avro/Schema$Name;->access$900(Lorg/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/apache/avro/Schema$Names;->space(Ljava/lang/String;)V

    .line 17
    :goto_1
    sget-object v6, Lorg/apache/avro/Schema;->PRIMITIVES:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 18
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/avro/Schema$Type;

    invoke-static {v2}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object v2

    goto/16 :goto_a

    .line 19
    :cond_5
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "default"

    if-nez v5, :cond_13

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto/16 :goto_4

    .line 20
    :cond_6
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "symbols"

    .line 21
    invoke-virtual {v0, v2}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 22
    invoke-virtual {v2}, Le/k/a/c/l;->y()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 23
    new-instance v5, Lorg/apache/avro/Schema$LockableArrayList;

    invoke-virtual {v2}, Le/k/a/c/l;->size()I

    move-result v7

    invoke-direct {v5, v7}, Lorg/apache/avro/Schema$LockableArrayList;-><init>(I)V

    .line 24
    invoke-virtual {v2}, Le/k/a/c/l;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/k/a/c/l;

    .line 25
    invoke-virtual {v7}, Le/k/a/c/l;->L()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/avro/Schema$LockableArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 26
    :cond_7
    invoke-virtual {v0, v6}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 27
    invoke-virtual {v2}, Le/k/a/c/l;->L()Ljava/lang/String;

    move-result-object v12

    .line 28
    :cond_8
    new-instance v2, Lorg/apache/avro/Schema$EnumSchema;

    invoke-direct {v2, v14, v13, v5, v12}, Lorg/apache/avro/Schema$EnumSchema;-><init>(Lorg/apache/avro/Schema$Name;Ljava/lang/String;Lorg/apache/avro/Schema$LockableArrayList;Ljava/lang/String;)V

    if-eqz v14, :cond_20

    .line 29
    invoke-virtual {v1, v2}, Lorg/apache/avro/Schema$Names;->add(Lorg/apache/avro/Schema;)V

    goto/16 :goto_a

    .line 30
    :cond_9
    new-instance v1, Lorg/apache/avro/SchemaParseException;

    const-string v2, "Enum has no symbols: "

    invoke-static {v2, v0}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    const-string v2, "array"

    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "items"

    .line 32
    invoke-virtual {v0, v2}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 33
    new-instance v5, Lorg/apache/avro/Schema$ArraySchema;

    invoke-static {v2, v1}, Lorg/apache/avro/Schema;->parse(Le/k/a/c/l;Lorg/apache/avro/Schema$Names;)Lorg/apache/avro/Schema;

    move-result-object v2

    invoke-direct {v5, v2}, Lorg/apache/avro/Schema$ArraySchema;-><init>(Lorg/apache/avro/Schema;)V

    :cond_b
    :goto_3
    move-object v2, v5

    goto/16 :goto_a

    .line 34
    :cond_c
    new-instance v1, Lorg/apache/avro/SchemaParseException;

    const-string v2, "Array has no items type: "

    invoke-static {v2, v0}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    const-string v2, "map"

    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "values"

    .line 36
    invoke-virtual {v0, v2}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 37
    new-instance v5, Lorg/apache/avro/Schema$MapSchema;

    invoke-static {v2, v1}, Lorg/apache/avro/Schema;->parse(Le/k/a/c/l;Lorg/apache/avro/Schema$Names;)Lorg/apache/avro/Schema;

    move-result-object v2

    invoke-direct {v5, v2}, Lorg/apache/avro/Schema$MapSchema;-><init>(Lorg/apache/avro/Schema;)V

    goto :goto_3

    .line 38
    :cond_e
    new-instance v1, Lorg/apache/avro/SchemaParseException;

    const-string v2, "Map has no values type: "

    invoke-static {v2, v0}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_f
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "size"

    .line 40
    invoke-virtual {v0, v2}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 41
    invoke-virtual {v2}, Le/k/a/c/l;->C()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 42
    new-instance v5, Lorg/apache/avro/Schema$FixedSchema;

    invoke-virtual {v2}, Le/k/a/c/l;->x()I

    move-result v2

    invoke-direct {v5, v14, v13, v2}, Lorg/apache/avro/Schema$FixedSchema;-><init>(Lorg/apache/avro/Schema$Name;Ljava/lang/String;I)V

    if-eqz v14, :cond_b

    .line 43
    invoke-virtual {v1, v5}, Lorg/apache/avro/Schema$Names;->add(Lorg/apache/avro/Schema;)V

    goto :goto_3

    .line 44
    :cond_10
    new-instance v1, Lorg/apache/avro/SchemaParseException;

    const-string v2, "Invalid or no size: "

    invoke-static {v2, v0}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_11
    new-instance v0, Lorg/apache/avro/Schema$Name;

    invoke-static/range {p1 .. p1}, Lorg/apache/avro/Schema$Names;->access$1300(Lorg/apache/avro/Schema$Names;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lorg/apache/avro/Schema$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 47
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/Schema;

    return-object v0

    .line 48
    :cond_12
    new-instance v0, Lorg/apache/avro/SchemaParseException;

    const-string v1, "Type not supported: "

    invoke-static {v1, v3}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_13
    :goto_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v7, Lorg/apache/avro/Schema$RecordSchema;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-direct {v7, v14, v13, v11}, Lorg/apache/avro/Schema$RecordSchema;-><init>(Lorg/apache/avro/Schema$Name;Ljava/lang/String;Z)V

    if-eqz v14, :cond_14

    .line 51
    invoke-virtual {v1, v7}, Lorg/apache/avro/Schema$Names;->add(Lorg/apache/avro/Schema;)V

    :cond_14
    const-string v11, "fields"

    .line 52
    invoke-virtual {v0, v11}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v11

    if-eqz v11, :cond_24

    .line 53
    invoke-virtual {v11}, Le/k/a/c/l;->y()Z

    move-result v12

    if-eqz v12, :cond_24

    .line 54
    invoke-virtual {v11}, Le/k/a/c/l;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/k/a/c/l;

    const-string v13, "No field name"

    .line 55
    invoke-static {v12, v8, v13}, Lorg/apache/avro/Schema;->getRequiredText(Le/k/a/c/l;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 56
    invoke-static {v12, v9}, Lorg/apache/avro/Schema;->getOptionalText(Le/k/a/c/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 57
    invoke-virtual {v12, v2}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v15

    if-eqz v15, :cond_1e

    .line 58
    invoke-virtual {v15}, Le/k/a/c/l;->I()Z

    move-result v16

    move-object/from16 v22, v2

    if-eqz v16, :cond_16

    invoke-virtual {v15}, Le/k/a/c/l;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/avro/Schema$Names;->get(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v2

    if-eqz v2, :cond_15

    goto :goto_6

    .line 59
    :cond_15
    new-instance v0, Lorg/apache/avro/SchemaParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a defined name. The type of the \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" field must be a defined name or a {\"type\": ...} expression."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_16
    :goto_6
    invoke-static {v15, v1}, Lorg/apache/avro/Schema;->parse(Le/k/a/c/l;Lorg/apache/avro/Schema$Names;)Lorg/apache/avro/Schema;

    move-result-object v2

    .line 61
    sget-object v15, Lorg/apache/avro/Schema$Field$Order;->ASCENDING:Lorg/apache/avro/Schema$Field$Order;

    move-object/from16 v23, v8

    const-string v8, "order"

    .line 62
    invoke-virtual {v12, v8}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v8

    if-eqz v8, :cond_17

    .line 63
    invoke-virtual {v8}, Le/k/a/c/l;->L()Ljava/lang/String;

    move-result-object v8

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/avro/Schema$Field$Order;->valueOf(Ljava/lang/String;)Lorg/apache/avro/Schema$Field$Order;

    move-result-object v8

    move-object/from16 v21, v8

    goto :goto_7

    :cond_17
    move-object/from16 v21, v15

    .line 64
    :goto_7
    invoke-virtual {v12, v6}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v8

    if-eqz v8, :cond_19

    .line 65
    sget-object v15, Lorg/apache/avro/Schema$Type;->FLOAT:Lorg/apache/avro/Schema$Type;

    move-object/from16 v24, v6

    .line 66
    invoke-virtual {v2}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    sget-object v6, Lorg/apache/avro/Schema$Type;->DOUBLE:Lorg/apache/avro/Schema$Type;

    invoke-virtual {v2}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 67
    :cond_18
    invoke-virtual {v8}, Le/k/a/c/l;->I()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 68
    new-instance v6, Le/k/a/c/k0/h;

    invoke-virtual {v8}, Le/k/a/c/l;->L()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    move-object/from16 v25, v9

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Le/k/a/c/k0/h;-><init>(D)V

    move-object/from16 v19, v6

    goto :goto_8

    :cond_19
    move-object/from16 v24, v6

    :cond_1a
    move-object/from16 v25, v9

    move-object/from16 v19, v8

    .line 69
    :goto_8
    new-instance v6, Lorg/apache/avro/Schema$Field;

    const/16 v20, 0x1

    move-object v15, v6

    move-object/from16 v16, v13

    move-object/from16 v17, v2

    invoke-direct/range {v15 .. v21}, Lorg/apache/avro/Schema$Field;-><init>(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Le/k/a/c/l;ZLorg/apache/avro/Schema$Field$Order;)V

    .line 70
    invoke-virtual {v12}, Le/k/a/c/l;->t()Ljava/util/Iterator;

    move-result-object v8

    .line 71
    :cond_1b
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 72
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 73
    sget-object v15, Lorg/apache/avro/Schema;->FIELD_RESERVED:Ljava/util/Set;

    invoke-interface {v15, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1b

    .line 74
    invoke-virtual {v12, v9}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v15

    invoke-virtual {v6, v9, v15}, Lorg/apache/avro/JsonProperties;->addProp(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    .line 75
    :cond_1c
    invoke-static {v12}, Lorg/apache/avro/Schema;->parseAliases(Le/k/a/c/l;)Ljava/util/Set;

    move-result-object v8

    invoke-static {v6, v8}, Lorg/apache/avro/Schema$Field;->access$1502(Lorg/apache/avro/Schema$Field;Ljava/util/Set;)Ljava/util/Set;

    .line 76
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v2}, Lorg/apache/avro/Schema;->getLogicalType()Lorg/apache/avro/LogicalType;

    move-result-object v2

    if-nez v2, :cond_1d

    const-string v2, "logicalType"

    invoke-static {v12, v2}, Lorg/apache/avro/Schema;->getOptionalText(Le/k/a/c/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1d

    .line 78
    sget-object v6, Lorg/apache/avro/Schema;->LOG:Lw3/d/b;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v14, v8, v9

    const/4 v9, 0x1

    aput-object v13, v8, v9

    const/4 v9, 0x2

    .line 79
    invoke-static {v12, v2}, Lorg/apache/avro/Schema;->getOptionalText(Le/k/a/c/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    const-string v2, "Ignored the {}.{}.logicalType property (\"{}\"). It should probably be nested inside the \"type\" for the field."

    .line 80
    invoke-interface {v6, v2, v8}, Lw3/d/b;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    move-object/from16 v2, v22

    move-object/from16 v8, v23

    move-object/from16 v6, v24

    move-object/from16 v9, v25

    goto/16 :goto_5

    .line 81
    :cond_1e
    new-instance v0, Lorg/apache/avro/SchemaParseException;

    const-string v1, "No field type: "

    invoke-static {v1, v12}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1f
    invoke-virtual {v7, v5}, Lorg/apache/avro/Schema$RecordSchema;->setFields(Ljava/util/List;)V

    move-object v2, v7

    .line 83
    :cond_20
    :goto_a
    invoke-virtual/range {p0 .. p0}, Le/k/a/c/l;->t()Ljava/util/Iterator;

    move-result-object v5

    .line 84
    sget-object v6, Lorg/apache/avro/Schema;->SCHEMA_RESERVED:Ljava/util/Set;

    .line 85
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 86
    sget-object v6, Lorg/apache/avro/Schema;->ENUM_RESERVED:Ljava/util/Set;

    .line 87
    :cond_21
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 88
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 89
    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 90
    invoke-virtual {v0, v3}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Lorg/apache/avro/Schema;->addProp(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b

    .line 91
    :cond_22
    invoke-static {v2}, Lorg/apache/avro/LogicalTypes;->fromSchemaIgnoreInvalid(Lorg/apache/avro/Schema;)Lorg/apache/avro/LogicalType;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/avro/Schema;->logicalType:Lorg/apache/avro/LogicalType;

    .line 92
    invoke-virtual {v1, v4}, Lorg/apache/avro/Schema$Names;->space(Ljava/lang/String;)V

    .line 93
    instance-of v1, v2, Lorg/apache/avro/Schema$NamedSchema;

    if-eqz v1, :cond_23

    .line 94
    invoke-static/range {p0 .. p0}, Lorg/apache/avro/Schema;->parseAliases(Le/k/a/c/l;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 95
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    invoke-virtual {v2, v1}, Lorg/apache/avro/Schema;->addAlias(Ljava/lang/String;)V

    goto :goto_c

    :cond_23
    return-object v2

    .line 97
    :cond_24
    new-instance v1, Lorg/apache/avro/SchemaParseException;

    const-string v2, "Record has no fields: "

    invoke-static {v2, v0}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_25
    invoke-virtual/range {p0 .. p0}, Le/k/a/c/l;->y()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 99
    new-instance v2, Lorg/apache/avro/Schema$LockableArrayList;

    invoke-virtual/range {p0 .. p0}, Le/k/a/c/l;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/apache/avro/Schema$LockableArrayList;-><init>(I)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Le/k/a/c/l;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/k/a/c/l;

    .line 101
    invoke-static {v3, v1}, Lorg/apache/avro/Schema;->parse(Le/k/a/c/l;Lorg/apache/avro/Schema$Names;)Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/avro/Schema$LockableArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 102
    :cond_26
    new-instance v0, Lorg/apache/avro/Schema$UnionSchema;

    invoke-direct {v0, v2}, Lorg/apache/avro/Schema$UnionSchema;-><init>(Lorg/apache/avro/Schema$LockableArrayList;)V

    return-object v0

    .line 103
    :cond_27
    new-instance v1, Lorg/apache/avro/SchemaParseException;

    const-string v2, "Schema not yet supported: "

    invoke-static {v2, v0}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_28
    new-instance v0, Lorg/apache/avro/SchemaParseException;

    const-string v1, "Cannot parse <null> schema"

    invoke-direct {v0, v1}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Ljava/io/File;)Lorg/apache/avro/Schema;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/Schema$Parser;

    invoke-direct {v0}, Lorg/apache/avro/Schema$Parser;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/avro/Schema$Parser;->parse(Ljava/io/File;)Lorg/apache/avro/Schema;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/apache/avro/Schema;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/avro/Schema$Parser;

    invoke-direct {v0}, Lorg/apache/avro/Schema$Parser;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/avro/Schema$Parser;->parse(Ljava/io/InputStream;)Lorg/apache/avro/Schema;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/avro/Schema;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-static {p0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Z)Lorg/apache/avro/Schema;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    new-instance v0, Lorg/apache/avro/Schema$Parser;

    invoke-direct {v0}, Lorg/apache/avro/Schema$Parser;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/avro/Schema$Parser;->setValidate(Z)Lorg/apache/avro/Schema$Parser;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/avro/Schema$Parser;->parse(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object p0

    return-object p0
.end method

.method public static parseAliases(Le/k/a/c/l;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "aliases"

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {v0}, Le/k/a/c/l;->y()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    invoke-virtual {v0}, Le/k/a/c/l;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/k/a/c/l;

    .line 5
    invoke-virtual {v1}, Le/k/a/c/l;->I()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v1}, Le/k/a/c/l;->L()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    new-instance p0, Lorg/apache/avro/SchemaParseException;

    const-string v0, "alias not a string: "

    invoke-static {v0, v1}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object p0

    .line 8
    :cond_3
    new-instance v0, Lorg/apache/avro/SchemaParseException;

    const-string v1, "aliases not an array: "

    invoke-static {v1, p0}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseJson(Ljava/lang/String;)Le/k/a/c/l;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lorg/apache/avro/Schema;->MAPPER:Le/k/a/c/r;

    sget-object v1, Lorg/apache/avro/Schema;->FACTORY:Le/k/a/b/e;

    invoke-virtual {v1, p0}, Le/k/a/b/e;->g(Ljava/lang/String;)Le/k/a/b/j;

    move-result-object p0

    invoke-virtual {v0, p0}, Le/k/a/c/r;->i(Le/k/a/b/j;)Le/k/a/b/t;

    move-result-object p0

    check-cast p0, Le/k/a/c/l;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseJsonToObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/avro/Schema;->parseJson(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/avro/util/internal/JacksonUtils;->toObject(Le/k/a/c/l;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static validateDefault(Ljava/lang/String;Lorg/apache/avro/Schema;Le/k/a/c/l;)Le/k/a/c/l;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/avro/Schema;->VALIDATE_DEFAULTS:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p1, p2}, Lorg/apache/avro/Schema;->isValidDefault(Lorg/apache/avro/Schema;Le/k/a/c/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid default for field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not a "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance p1, Lorg/apache/avro/AvroTypeException;

    invoke-direct {p1, p0}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method private static validateName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lorg/apache/avro/Schema;->validateNames:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    const/16 v3, 0x5f

    if-nez v2, :cond_2

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lorg/apache/avro/SchemaParseException;

    const-string v1, "Illegal initial character: "

    invoke-static {v1, p0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-ge v1, v0, :cond_5

    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 7
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_4

    if-ne v2, v3, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    new-instance v0, Lorg/apache/avro/SchemaParseException;

    const-string v1, "Illegal character in: "

    invoke-static {v1, p0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-object p0

    .line 9
    :cond_6
    new-instance p0, Lorg/apache/avro/SchemaParseException;

    const-string v0, "Empty name"

    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addAlias(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Not a named type: "

    invoke-static {v0, p0}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const-string p2, "Not a named type: "

    invoke-static {p2, p0}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addProp(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lorg/apache/avro/JsonProperties;->addProp(Ljava/lang/String;Ljava/lang/Object;)V

    const/high16 p1, -0x80000000

    .line 4
    iput p1, p0, Lorg/apache/avro/Schema;->hashCode:I

    return-void
.end method

.method public addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/apache/avro/JsonProperties;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, -0x80000000

    .line 2
    iput p1, p0, Lorg/apache/avro/Schema;->hashCode:I

    return-void
.end method

.method public computeHash()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/avro/JsonProperties;->propsHashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final equalCachedHash(Lorg/apache/avro/Schema;)Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/avro/Schema;->hashCode:I

    iget p1, p1, Lorg/apache/avro/Schema;->hashCode:I

    if-eq v0, p1, :cond_1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/avro/Schema;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/avro/Schema;

    .line 3
    iget-object v1, p0, Lorg/apache/avro/Schema;->type:Lorg/apache/avro/Schema$Type;

    iget-object v3, p1, Lorg/apache/avro/Schema;->type:Lorg/apache/avro/Schema$Type;

    if-eq v1, v3, :cond_2

    return v2

    .line 4
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/avro/Schema;->equalCachedHash(Lorg/apache/avro/Schema;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/avro/JsonProperties;->propsEqual(Lorg/apache/avro/JsonProperties;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public fieldsToJson(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const-string p2, "Not a record: "

    invoke-static {p2, p0}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAliases()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    const-string v1, "Not a named type: "

    invoke-static {v1, p0}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDoc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementType()Lorg/apache/avro/Schema;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    const-string v1, "Not an array: "

    invoke-static {v1, p0}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEnumDefault()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    const-string v1, "Not an enum: "

    invoke-static {v1, p0}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEnumOrdinal(Ljava/lang/String;)I
    .locals 1

    .line 1
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Not an enum: "

    invoke-static {v0, p0}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEnumSymbols()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    const-string v1, "Not an enum: "

    invoke-static {v1, p0}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;
    .locals 1

    .line 1
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Not a record: "

    invoke-static {v0, p0}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v0

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
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    const-string v1, "Not a record: "

    invoke-static {v1, p0}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFixedSize()I
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    const-string v1, "Not fixed: "

    invoke-static {v1, p0}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndexNamed(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 1
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Not a union: "

    invoke-static {v0, p0}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLogicalType()Lorg/apache/avro/LogicalType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema;->logicalType:Lorg/apache/avro/LogicalType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema;->type:Lorg/apache/avro/Schema$Type;

    invoke-static {v0}, Lorg/apache/avro/Schema$Type;->access$200(Lorg/apache/avro/Schema$Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    const-string v1, "Not a named type: "

    invoke-static {v1, p0}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()Lorg/apache/avro/Schema$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema;->type:Lorg/apache/avro/Schema$Type;

    return-object v0
.end method

.method public getTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/avro/Schema;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    const-string v1, "Not a union: "

    invoke-static {v1, p0}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueType()Lorg/apache/avro/Schema;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    const-string v1, "Not a map: "

    invoke-static {v1, p0}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasEnumSymbol(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Not an enum: "

    invoke-static {v0, p0}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/avro/Schema;->hashCode:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->computeHash()I

    move-result v0

    iput v0, p0, Lorg/apache/avro/Schema;->hashCode:I

    .line 3
    :cond_0
    iget v0, p0, Lorg/apache/avro/Schema;->hashCode:I

    return v0
.end method

.method public isError()Z
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    const-string v1, "Not a record: "

    invoke-static {v1, p0}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isNullable()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->isUnion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    sget-object v1, Lorg/apache/avro/Schema$Type;->NULL:Lorg/apache/avro/Schema$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema;

    .line 4
    invoke-virtual {v1}, Lorg/apache/avro/Schema;->isNullable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isUnion()Z
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/apache/avro/Schema$UnionSchema;

    return v0
.end method

.method public setFields(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/avro/Schema$Field;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Not a record: "

    invoke-static {v0, p0}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLogicalType(Lorg/apache/avro/LogicalType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/avro/Schema;->logicalType:Lorg/apache/avro/LogicalType;

    return-void
.end method

.method public toJson(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/JsonProperties;->hasProps()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Le/k/a/b/g;->M1()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "type"

    .line 5
    invoke-virtual {p2, v0}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2, p1}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p2}, Lorg/apache/avro/JsonProperties;->writeProps(Le/k/a/b/g;)V

    .line 8
    invoke-virtual {p2}, Le/k/a/b/g;->t0()V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/avro/Schema;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/util/Collection;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/avro/Schema;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/avro/Schema$Names;

    invoke-direct {v0}, Lorg/apache/avro/Schema$Names;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema;

    .line 5
    invoke-virtual {v0, v1}, Lorg/apache/avro/Schema$Names;->add(Lorg/apache/avro/Schema;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v0, p2}, Lorg/apache/avro/Schema;->toString(Lorg/apache/avro/Schema$Names;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Lorg/apache/avro/Schema$Names;Z)Ljava/lang/String;
    .locals 3

    .line 7
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 8
    sget-object v1, Lorg/apache/avro/Schema;->FACTORY:Le/k/a/b/e;

    invoke-virtual {v1, v0}, Le/k/a/b/e;->e(Ljava/io/Writer;)Le/k/a/b/g;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 9
    move-object p2, v1

    check-cast p2, Le/k/a/b/u/a;

    .line 10
    iget-object v2, p2, Le/k/a/b/g;->a:Le/k/a/b/o;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v2, Le/k/a/b/a0/e;

    invoke-direct {v2}, Le/k/a/b/a0/e;-><init>()V

    .line 12
    iput-object v2, p2, Le/k/a/b/g;->a:Le/k/a/b/o;

    .line 13
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v1}, Lorg/apache/avro/Schema;->toJson(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V

    .line 14
    invoke-virtual {v1}, Le/k/a/b/g;->flush()V

    .line 15
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {p2, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/avro/Schema$Names;

    invoke-direct {v0}, Lorg/apache/avro/Schema$Names;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/apache/avro/Schema;->toString(Lorg/apache/avro/Schema$Names;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/Schema$SerializableSchema;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/avro/Schema$SerializableSchema;-><init>(Lorg/apache/avro/Schema$1;)V

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/avro/Schema$SerializableSchema;->access$102(Lorg/apache/avro/Schema$SerializableSchema;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method
