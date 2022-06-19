.class public Lorg/apache/avro/Protocol;
.super Lorg/apache/avro/JsonProperties;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/Protocol$TwoWayMessage;,
        Lorg/apache/avro/Protocol$Message;
    }
.end annotation


# static fields
.field private static final FIELD_RESERVED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MESSAGE_RESERVED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROTOCOL_RESERVED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_ERROR:Lorg/apache/avro/Schema;

.field public static final SYSTEM_ERRORS:Lorg/apache/avro/Schema;

.field public static final VERSION:J = 0x1L


# instance fields
.field private doc:Ljava/lang/String;

.field private md5:[B

.field private final messages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/avro/Protocol$Message;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private types:Lorg/apache/avro/Schema$Names;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "doc"

    const-string v2, "response"

    const-string v3, "request"

    const-string v4, "errors"

    const-string v5, "one-way"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/avro/Protocol;->MESSAGE_RESERVED:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    const-string v2, "name"

    const-string v3, "type"

    const-string v4, "default"

    const-string v5, "aliases"

    filled-new-array {v2, v3, v1, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/avro/Protocol;->FIELD_RESERVED:Ljava/util/Set;

    .line 5
    sget-object v0, Lorg/apache/avro/Schema$Type;->STRING:Lorg/apache/avro/Schema$Type;

    invoke-static {v0}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lorg/apache/avro/Protocol;->SYSTEM_ERROR:Lorg/apache/avro/Schema;

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/avro/Schema;->createUnion(Ljava/util/List;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lorg/apache/avro/Protocol;->SYSTEM_ERRORS:Lorg/apache/avro/Schema;

    .line 7
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "namespace"

    const-string v2, "protocol"

    const-string v3, "doc"

    const-string v4, "messages"

    const-string v5, "types"

    const-string v6, "errors"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/avro/Protocol;->PROTOCOL_RESERVED:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Protocol;->PROTOCOL_RESERVED:Ljava/util/Set;

    invoke-direct {p0, v0}, Lorg/apache/avro/JsonProperties;-><init>(Ljava/util/Set;)V

    .line 2
    new-instance v0, Lorg/apache/avro/Schema$Names;

    invoke-direct {v0}, Lorg/apache/avro/Schema$Names;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/Protocol;->types:Lorg/apache/avro/Schema$Names;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/Protocol;->messages:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/avro/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    sget-object v0, Lorg/apache/avro/Protocol;->PROTOCOL_RESERVED:Ljava/util/Set;

    invoke-direct {p0, v0}, Lorg/apache/avro/JsonProperties;-><init>(Ljava/util/Set;)V

    .line 7
    new-instance v0, Lorg/apache/avro/Schema$Names;

    invoke-direct {v0}, Lorg/apache/avro/Schema$Names;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/Protocol;->types:Lorg/apache/avro/Schema$Names;

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/Protocol;->messages:Ljava/util/Map;

    .line 9
    iput-object p1, p0, Lorg/apache/avro/Protocol;->name:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lorg/apache/avro/Protocol;->doc:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lorg/apache/avro/Protocol;->namespace:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Protocol;)V
    .locals 3

    .line 4
    invoke-virtual {p1}, Lorg/apache/avro/Protocol;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/avro/Protocol;->getDoc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/avro/Protocol;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/avro/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/avro/JsonProperties;->putAll(Lorg/apache/avro/JsonProperties;)V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Protocol;->MESSAGE_RESERVED:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic access$100(Lorg/apache/avro/Protocol;)Lorg/apache/avro/Schema$Names;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/avro/Protocol;->types:Lorg/apache/avro/Schema$Names;

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/avro/Protocol;->parse(Ljava/io/File;)Lorg/apache/avro/Protocol;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method private static parse(Le/k/a/b/j;)Lorg/apache/avro/Protocol;
    .locals 2

    .line 13
    :try_start_0
    new-instance v0, Lorg/apache/avro/Protocol;

    invoke-direct {v0}, Lorg/apache/avro/Protocol;-><init>()V

    .line 14
    sget-object v1, Lorg/apache/avro/Schema;->MAPPER:Le/k/a/c/r;

    invoke-virtual {v1, p0}, Le/k/a/c/r;->i(Le/k/a/b/j;)Le/k/a/b/t;

    move-result-object p0

    check-cast p0, Le/k/a/c/l;

    invoke-direct {v0, p0}, Lorg/apache/avro/Protocol;->parse(Le/k/a/c/l;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 15
    new-instance v0, Lorg/apache/avro/SchemaParseException;

    invoke-direct {v0, p0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parse(Ljava/io/File;)Lorg/apache/avro/Protocol;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/Schema;->FACTORY:Le/k/a/b/e;

    .line 2
    new-instance v1, Le/k/a/b/w/b;

    invoke-virtual {v0}, Le/k/a/b/e;->c()Le/k/a/b/a0/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Le/k/a/b/w/b;-><init>(Le/k/a/b/a0/a;Ljava/lang/Object;Z)V

    .line 3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    invoke-virtual {v0, v2, v1}, Le/k/a/b/e;->b(Ljava/io/InputStream;Le/k/a/b/w/b;)Le/k/a/b/j;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lorg/apache/avro/Protocol;->parse(Le/k/a/b/j;)Lorg/apache/avro/Protocol;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/apache/avro/Protocol;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lorg/apache/avro/Schema;->FACTORY:Le/k/a/b/e;

    invoke-virtual {v0, p0}, Le/k/a/b/e;->f(Ljava/io/InputStream;)Le/k/a/b/j;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/avro/Protocol;->parse(Le/k/a/b/j;)Lorg/apache/avro/Protocol;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/avro/Protocol;
    .locals 3

    .line 11
    :try_start_0
    sget-object v0, Lorg/apache/avro/Schema;->FACTORY:Le/k/a/b/e;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Le/k/a/b/e;->f(Ljava/io/InputStream;)Le/k/a/b/j;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/avro/Protocol;->parse(Le/k/a/b/j;)Lorg/apache/avro/Protocol;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 12
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {v0, p0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static varargs parse(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/avro/Protocol;
    .locals 3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p1, v1

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/avro/Protocol;->parse(Ljava/lang/String;)Lorg/apache/avro/Protocol;

    move-result-object p0

    return-object p0
.end method

.method private parse(Le/k/a/c/l;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lorg/apache/avro/Protocol;->parseNamespace(Le/k/a/c/l;)V

    .line 17
    invoke-direct {p0, p1}, Lorg/apache/avro/Protocol;->parseName(Le/k/a/c/l;)V

    .line 18
    invoke-direct {p0, p1}, Lorg/apache/avro/Protocol;->parseTypes(Le/k/a/c/l;)V

    .line 19
    invoke-direct {p0, p1}, Lorg/apache/avro/Protocol;->parseMessages(Le/k/a/c/l;)V

    .line 20
    invoke-direct {p0, p1}, Lorg/apache/avro/Protocol;->parseDoc(Le/k/a/c/l;)V

    .line 21
    invoke-direct {p0, p1}, Lorg/apache/avro/Protocol;->parseProps(Le/k/a/c/l;)V

    return-void
.end method

.method private parseDoc(Le/k/a/c/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/Protocol;->parseDocNode(Le/k/a/c/l;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/Protocol;->doc:Ljava/lang/String;

    return-void
.end method

.method private parseDocNode(Le/k/a/c/l;)Ljava/lang/String;
    .locals 1

    const-string v0, "doc"

    .line 1
    invoke-virtual {p1, v0}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Le/k/a/c/l;->L()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseMessage(Ljava/lang/String;Le/k/a/c/l;)Lorg/apache/avro/Protocol$Message;
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    .line 1
    invoke-direct {v9, v0}, Lorg/apache/avro/Protocol;->parseDocNode(Le/k/a/c/l;)Ljava/lang/String;

    move-result-object v3

    .line 2
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-virtual/range {p2 .. p2}, Le/k/a/c/l;->t()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    sget-object v5, Lorg/apache/avro/Protocol;->MESSAGE_RESERVED:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "request"

    .line 7
    invoke-virtual {v0, v1}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 8
    invoke-virtual {v1}, Le/k/a/c/l;->y()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {v1}, Le/k/a/c/l;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/k/a/c/l;

    const-string v6, "name"

    .line 11
    invoke-virtual {v5, v6}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v6

    if-eqz v6, :cond_7

    const-string v7, "type"

    .line 12
    invoke-virtual {v5, v7}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 13
    invoke-virtual {v6}, Le/k/a/c/l;->L()Ljava/lang/String;

    move-result-object v11

    const/4 v6, 0x0

    const-string v8, "doc"

    .line 14
    invoke-virtual {v5, v8}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 15
    invoke-virtual {v8}, Le/k/a/c/l;->L()Ljava/lang/String;

    move-result-object v6

    :cond_2
    move-object v13, v6

    .line 16
    new-instance v6, Lorg/apache/avro/Schema$Field;

    iget-object v8, v9, Lorg/apache/avro/Protocol;->types:Lorg/apache/avro/Schema$Names;

    invoke-static {v7, v8}, Lorg/apache/avro/Schema;->parse(Le/k/a/c/l;Lorg/apache/avro/Schema$Names;)Lorg/apache/avro/Schema;

    move-result-object v12

    const-string v7, "default"

    invoke-virtual {v5, v7}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v14

    const/4 v15, 0x1

    sget-object v16, Lorg/apache/avro/Schema$Field$Order;->ASCENDING:Lorg/apache/avro/Schema$Field$Order;

    move-object v10, v6

    invoke-direct/range {v10 .. v16}, Lorg/apache/avro/Schema$Field;-><init>(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Le/k/a/c/l;ZLorg/apache/avro/Schema$Field$Order;)V

    .line 17
    invoke-static {v5}, Lorg/apache/avro/Schema;->parseAliases(Le/k/a/c/l;)Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 18
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 19
    invoke-virtual {v6, v8}, Lorg/apache/avro/Schema$Field;->addAlias(Ljava/lang/String;)V

    goto :goto_2

    .line 20
    :cond_3
    invoke-virtual {v5}, Le/k/a/c/l;->t()Ljava/util/Iterator;

    move-result-object v7

    .line 21
    :cond_4
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 22
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 23
    sget-object v10, Lorg/apache/avro/Protocol;->FIELD_RESERVED:Ljava/util/Set;

    invoke-interface {v10, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 24
    invoke-virtual {v5, v8}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v10

    invoke-virtual {v6, v8, v10}, Lorg/apache/avro/JsonProperties;->addProp(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 25
    :cond_5
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 26
    :cond_6
    new-instance v0, Lorg/apache/avro/SchemaParseException;

    const-string v1, "No param type: "

    invoke-static {v1, v5}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_7
    new-instance v0, Lorg/apache/avro/SchemaParseException;

    const-string v1, "No param name: "

    invoke-static {v1, v5}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_8
    invoke-static {v2}, Lorg/apache/avro/Schema;->createRecord(Ljava/util/List;)Lorg/apache/avro/Schema;

    move-result-object v5

    const/4 v1, 0x0

    const-string v2, "one-way"

    .line 29
    invoke-virtual {v0, v2}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 30
    invoke-virtual {v2}, Le/k/a/c/l;->z()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 31
    invoke-virtual {v2}, Le/k/a/c/l;->n()Z

    move-result v1

    goto :goto_4

    .line 32
    :cond_9
    new-instance v1, Lorg/apache/avro/SchemaParseException;

    const-string v2, "one-way must be boolean: "

    invoke-static {v2, v0}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_4
    const-string v2, "response"

    .line 33
    invoke-virtual {v0, v2}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v2

    if-nez v1, :cond_c

    if-eqz v2, :cond_b

    goto :goto_5

    .line 34
    :cond_b
    new-instance v1, Lorg/apache/avro/SchemaParseException;

    const-string v2, "No response specified: "

    invoke-static {v2, v0}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_5
    const-string v6, "errors"

    .line 35
    invoke-virtual {v0, v6}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v6

    if-eqz v1, :cond_10

    if-nez v6, :cond_f

    if-eqz v2, :cond_e

    .line 36
    iget-object v1, v9, Lorg/apache/avro/Protocol;->types:Lorg/apache/avro/Schema$Names;

    invoke-static {v2, v1}, Lorg/apache/avro/Schema;->parse(Le/k/a/c/l;Lorg/apache/avro/Schema$Names;)Lorg/apache/avro/Schema;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v2, Lorg/apache/avro/Schema$Type;->NULL:Lorg/apache/avro/Schema$Type;

    if-ne v1, v2, :cond_d

    goto :goto_6

    .line 37
    :cond_d
    new-instance v1, Lorg/apache/avro/SchemaParseException;

    const-string v2, "One way response must be null: "

    invoke-static {v2, v0}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_e
    :goto_6
    new-instance v7, Lorg/apache/avro/Protocol$Message;

    const/4 v6, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/avro/Protocol$Message;-><init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/avro/Schema;Lorg/apache/avro/Protocol$1;)V

    return-object v7

    .line 39
    :cond_f
    new-instance v1, Lorg/apache/avro/SchemaParseException;

    const-string v2, "one-way can\'t have errors: "

    invoke-static {v2, v0}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_10
    iget-object v1, v9, Lorg/apache/avro/Protocol;->types:Lorg/apache/avro/Schema$Names;

    invoke-static {v2, v1}, Lorg/apache/avro/Schema;->parse(Le/k/a/c/l;Lorg/apache/avro/Schema$Names;)Lorg/apache/avro/Schema;

    move-result-object v7

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    sget-object v2, Lorg/apache/avro/Protocol;->SYSTEM_ERROR:Lorg/apache/avro/Schema;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_14

    .line 43
    invoke-virtual {v6}, Le/k/a/c/l;->y()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 44
    invoke-virtual {v6}, Le/k/a/c/l;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/k/a/c/l;

    .line 45
    invoke-virtual {v2}, Le/k/a/c/l;->L()Ljava/lang/String;

    move-result-object v2

    .line 46
    iget-object v6, v9, Lorg/apache/avro/Protocol;->types:Lorg/apache/avro/Schema$Names;

    invoke-virtual {v6, v2}, Lorg/apache/avro/Schema$Names;->get(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 47
    invoke-virtual {v6}, Lorg/apache/avro/Schema;->isError()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 48
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 49
    :cond_11
    new-instance v0, Lorg/apache/avro/SchemaParseException;

    const-string v1, "Not an error: "

    invoke-static {v1, v2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_12
    new-instance v0, Lorg/apache/avro/SchemaParseException;

    const-string v1, "Undefined error: "

    invoke-static {v1, v2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_13
    new-instance v1, Lorg/apache/avro/SchemaParseException;

    const-string v2, "Errors not an array: "

    invoke-static {v2, v0}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_14
    new-instance v10, Lorg/apache/avro/Protocol$TwoWayMessage;

    invoke-static {v1}, Lorg/apache/avro/Schema;->createUnion(Ljava/util/List;)Lorg/apache/avro/Schema;

    move-result-object v8

    const/4 v11, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v6, v7

    move-object v7, v8

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lorg/apache/avro/Protocol$TwoWayMessage;-><init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Protocol$1;)V

    return-object v10

    .line 53
    :cond_15
    new-instance v1, Lorg/apache/avro/SchemaParseException;

    const-string v2, "No request specified: "

    invoke-static {v2, v0}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseMessages(Le/k/a/c/l;)V
    .locals 4

    const-string v0, "messages"

    .line 1
    invoke-virtual {p1, v0}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Le/k/a/c/l;->t()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lorg/apache/avro/Protocol;->messages:Ljava/util/Map;

    invoke-virtual {p1, v1}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/apache/avro/Protocol;->parseMessage(Ljava/lang/String;Le/k/a/c/l;)Lorg/apache/avro/Protocol$Message;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private parseName(Le/k/a/c/l;)V
    .locals 2

    const-string v0, "protocol"

    .line 1
    invoke-virtual {p1, v0}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Le/k/a/c/l;->L()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/Protocol;->name:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    new-instance v0, Lorg/apache/avro/SchemaParseException;

    const-string v1, "No protocol name specified: "

    invoke-static {v1, p1}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseNamespace(Le/k/a/c/l;)V
    .locals 1

    const-string v0, "namespace"

    .line 1
    invoke-virtual {p1, v0}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Le/k/a/c/l;->L()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/Protocol;->namespace:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lorg/apache/avro/Protocol;->types:Lorg/apache/avro/Schema$Names;

    invoke-virtual {v0, p1}, Lorg/apache/avro/Schema$Names;->space(Ljava/lang/String;)V

    return-void
.end method

.method private parseProps(Le/k/a/c/l;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Le/k/a/c/l;->t()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    sget-object v2, Lorg/apache/avro/Protocol;->PROTOCOL_RESERVED:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/avro/JsonProperties;->addProp(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private parseTypes(Le/k/a/c/l;)V
    .locals 2

    const-string v0, "types"

    .line 1
    invoke-virtual {p1, v0}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Le/k/a/c/l;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p1}, Le/k/a/c/l;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/k/a/c/l;

    .line 4
    invoke-virtual {v0}, Le/k/a/c/l;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lorg/apache/avro/Protocol;->types:Lorg/apache/avro/Schema$Names;

    invoke-static {v0, v1}, Lorg/apache/avro/Schema;->parse(Le/k/a/c/l;Lorg/apache/avro/Schema$Names;)Lorg/apache/avro/Schema;

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lorg/apache/avro/SchemaParseException;

    const-string v1, "Type not an object: "

    invoke-static {v1, v0}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void

    .line 7
    :cond_3
    new-instance v0, Lorg/apache/avro/SchemaParseException;

    const-string v1, "Types not an array: "

    invoke-static {v1, p1}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/avro/Schema;)Lorg/apache/avro/Protocol$Message;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lorg/apache/avro/Schema;",
            ")",
            "Lorg/apache/avro/Protocol$Message;"
        }
    .end annotation

    .line 4
    new-instance v7, Lorg/apache/avro/Protocol$Message;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/avro/Protocol$Message;-><init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/avro/Schema;Lorg/apache/avro/Protocol$1;)V

    return-object v7
.end method

.method public createMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/Protocol$Message;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            ")",
            "Lorg/apache/avro/Protocol$Message;"
        }
    .end annotation

    .line 8
    new-instance v9, Lorg/apache/avro/Protocol$TwoWayMessage;

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/avro/Protocol$TwoWayMessage;-><init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Protocol$1;)V

    return-object v9
.end method

.method public createMessage(Ljava/lang/String;Ljava/lang/String;Lorg/apache/avro/JsonProperties;Lorg/apache/avro/Schema;)Lorg/apache/avro/Protocol$Message;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/avro/JsonProperties;",
            "Lorg/apache/avro/Schema;",
            ")",
            "Lorg/apache/avro/Protocol$Message;"
        }
    .end annotation

    .line 3
    new-instance v7, Lorg/apache/avro/Protocol$Message;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/avro/Protocol$Message;-><init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Lorg/apache/avro/JsonProperties;Lorg/apache/avro/Schema;Lorg/apache/avro/Protocol$1;)V

    return-object v7
.end method

.method public createMessage(Ljava/lang/String;Ljava/lang/String;Lorg/apache/avro/JsonProperties;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/Protocol$Message;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/avro/JsonProperties;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            ")",
            "Lorg/apache/avro/Protocol$Message;"
        }
    .end annotation

    .line 7
    new-instance v9, Lorg/apache/avro/Protocol$TwoWayMessage;

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/avro/Protocol$TwoWayMessage;-><init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Lorg/apache/avro/JsonProperties;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Protocol$1;)V

    return-object v9
.end method

.method public createMessage(Ljava/lang/String;Ljava/lang/String;Lorg/apache/avro/Schema;)Lorg/apache/avro/Protocol$Message;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v7, Lorg/apache/avro/Protocol$Message;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/avro/Protocol$Message;-><init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/avro/Schema;Lorg/apache/avro/Protocol$1;)V

    return-object v7
.end method

.method public createMessage(Ljava/lang/String;Ljava/lang/String;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/Protocol$Message;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    new-instance v9, Lorg/apache/avro/Protocol$TwoWayMessage;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lorg/apache/avro/Protocol$TwoWayMessage;-><init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Protocol$1;)V

    return-object v9
.end method

.method public createMessage(Lorg/apache/avro/Protocol$Message;Lorg/apache/avro/Schema;)Lorg/apache/avro/Protocol$Message;
    .locals 8

    .line 2
    new-instance v7, Lorg/apache/avro/Protocol$Message;

    iget-object v2, p0, Lorg/apache/avro/Protocol;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/avro/Protocol;->doc:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/avro/Protocol$Message;-><init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Lorg/apache/avro/JsonProperties;Lorg/apache/avro/Schema;Lorg/apache/avro/Protocol$1;)V

    return-object v7
.end method

.method public createMessage(Lorg/apache/avro/Protocol$Message;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/Protocol$Message;
    .locals 10

    .line 6
    new-instance v9, Lorg/apache/avro/Protocol$TwoWayMessage;

    invoke-virtual {p1}, Lorg/apache/avro/Protocol$Message;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/avro/Protocol$Message;->getDoc()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lorg/apache/avro/Protocol$TwoWayMessage;-><init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Lorg/apache/avro/JsonProperties;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Protocol$1;)V

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/avro/Protocol;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/avro/Protocol;

    .line 3
    iget-object v1, p0, Lorg/apache/avro/Protocol;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/avro/Protocol;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/avro/Protocol;->namespace:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/avro/Protocol;->namespace:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/avro/Protocol;->types:Lorg/apache/avro/Schema$Names;

    iget-object v3, p1, Lorg/apache/avro/Protocol;->types:Lorg/apache/avro/Schema$Names;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/avro/Protocol;->messages:Ljava/util/Map;

    iget-object v3, p1, Lorg/apache/avro/Protocol;->messages:Ljava/util/Map;

    .line 4
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

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

.method public getDoc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Protocol;->doc:Ljava/lang/String;

    return-object v0
.end method

.method public getMD5()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Protocol;->md5:[B

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "MD5"

    .line 2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/avro/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/avro/Protocol;->md5:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/avro/Protocol;->md5:[B

    return-object v0
.end method

.method public getMessages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/avro/Protocol$Message;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Protocol;->messages:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Protocol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Protocol;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Protocol;->types:Lorg/apache/avro/Schema$Names;

    invoke-virtual {v0, p1}, Lorg/apache/avro/Schema$Names;->get(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1
.end method

.method public getTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/avro/Schema;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Protocol;->types:Lorg/apache/avro/Schema$Names;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Protocol;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/avro/Protocol;->namespace:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/apache/avro/Protocol;->types:Lorg/apache/avro/Schema$Names;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/avro/Protocol;->messages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lorg/apache/avro/JsonProperties;->propsHashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public setTypes(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/avro/Schema;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/Schema$Names;

    invoke-direct {v0}, Lorg/apache/avro/Schema$Names;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/Protocol;->types:Lorg/apache/avro/Schema$Names;

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/Schema;

    .line 3
    iget-object v1, p0, Lorg/apache/avro/Protocol;->types:Lorg/apache/avro/Schema$Names;

    invoke-virtual {v1, v0}, Lorg/apache/avro/Schema$Names;->add(Lorg/apache/avro/Schema;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toJson(Le/k/a/b/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Protocol;->types:Lorg/apache/avro/Schema$Names;

    iget-object v1, p0, Lorg/apache/avro/Protocol;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/avro/Schema$Names;->space(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Le/k/a/b/g;->M1()V

    .line 3
    iget-object v0, p0, Lorg/apache/avro/Protocol;->name:Ljava/lang/String;

    const-string v1, "protocol"

    .line 4
    invoke-virtual {p1, v1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v0}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lorg/apache/avro/Protocol;->namespace:Ljava/lang/String;

    const-string v1, "namespace"

    .line 7
    invoke-virtual {p1, v1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v0}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lorg/apache/avro/Protocol;->doc:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "doc"

    .line 10
    invoke-virtual {p1, v1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v0}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/avro/JsonProperties;->writeProps(Le/k/a/b/g;)V

    const-string v0, "types"

    .line 13
    invoke-virtual {p1, v0}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Le/k/a/b/g;->F1()V

    .line 15
    new-instance v0, Lorg/apache/avro/Schema$Names;

    iget-object v1, p0, Lorg/apache/avro/Protocol;->namespace:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/avro/Schema$Names;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lorg/apache/avro/Protocol;->types:Lorg/apache/avro/Schema$Names;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/avro/Schema;

    .line 17
    invoke-virtual {v0, v2}, Lorg/apache/avro/Schema$Names;->contains(Lorg/apache/avro/Schema;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 18
    invoke-virtual {v2, v0, p1}, Lorg/apache/avro/Schema;->toJson(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p1}, Le/k/a/b/g;->p0()V

    const-string v0, "messages"

    .line 20
    invoke-virtual {p1, v0}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Le/k/a/b/g;->M1()V

    .line 22
    iget-object v0, p0, Lorg/apache/avro/Protocol;->messages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 24
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Protocol$Message;

    invoke-virtual {v1, p1}, Lorg/apache/avro/Protocol$Message;->toJson(Le/k/a/b/g;)V

    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {p1}, Le/k/a/b/g;->t0()V

    .line 26
    invoke-virtual {p1}, Le/k/a/b/g;->t0()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/avro/Protocol;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 3

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 3
    sget-object v1, Lorg/apache/avro/Schema;->FACTORY:Le/k/a/b/e;

    invoke-virtual {v1, v0}, Le/k/a/b/e;->e(Ljava/io/Writer;)Le/k/a/b/g;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 4
    move-object p1, v1

    check-cast p1, Le/k/a/b/u/a;

    .line 5
    iget-object v2, p1, Le/k/a/b/g;->a:Le/k/a/b/o;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Le/k/a/b/a0/e;

    invoke-direct {v2}, Le/k/a/b/a0/e;-><init>()V

    .line 7
    iput-object v2, p1, Le/k/a/b/g;->a:Le/k/a/b/o;

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/avro/Protocol;->toJson(Le/k/a/b/g;)V

    .line 9
    invoke-virtual {v1}, Le/k/a/b/g;->flush()V

    .line 10
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {v0, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
