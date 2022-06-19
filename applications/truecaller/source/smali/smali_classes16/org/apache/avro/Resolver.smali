.class public Lorg/apache/avro/Resolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/Resolver$ReaderUnion;,
        Lorg/apache/avro/Resolver$WriterUnion;,
        Lorg/apache/avro/Resolver$RecordAdjust;,
        Lorg/apache/avro/Resolver$Skip;,
        Lorg/apache/avro/Resolver$EnumAdjust;,
        Lorg/apache/avro/Resolver$Container;,
        Lorg/apache/avro/Resolver$Promote;,
        Lorg/apache/avro/Resolver$ErrorAction;,
        Lorg/apache/avro/Resolver$DoNothing;,
        Lorg/apache/avro/Resolver$Action;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Ljava/util/Map;)Lorg/apache/avro/Resolver$Action;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/apache/avro/Resolver;->resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Ljava/util/Map;)Lorg/apache/avro/Resolver$Action;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Map;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/apache/avro/Resolver;->unionEquiv(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/Resolver$Action;
    .locals 1

    .line 2
    invoke-static {}, Lorg/apache/avro/generic/GenericData;->get()Lorg/apache/avro/generic/GenericData;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/avro/Resolver;->resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)Lorg/apache/avro/Resolver$Action;

    move-result-object p0

    return-object p0
.end method

.method public static resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)Lorg/apache/avro/Resolver$Action;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lorg/apache/avro/Schema;->applyAliases(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lorg/apache/avro/Resolver;->resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Ljava/util/Map;)Lorg/apache/avro/Resolver$Action;

    move-result-object p0

    return-object p0
.end method

.method private static resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Ljava/util/Map;)Lorg/apache/avro/Resolver$Action;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/generic/GenericData;",
            "Ljava/util/Map<",
            "Lorg/apache/avro/Schema$SeenPair;",
            "Lorg/apache/avro/Resolver$Action;",
            ">;)",
            "Lorg/apache/avro/Resolver$Action;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    .line 5
    sget-object v2, Lorg/apache/avro/Schema$Type;->UNION:Lorg/apache/avro/Schema$Type;

    if-ne v0, v2, :cond_0

    .line 6
    invoke-static {p0, p1, p2, p3}, Lorg/apache/avro/Resolver$WriterUnion;->resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Ljava/util/Map;)Lorg/apache/avro/Resolver$Action;

    move-result-object p0

    return-object p0

    :cond_0
    if-ne v0, v1, :cond_3

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 8
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown type for schema: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :pswitch_1
    invoke-static {p0, p1, p2, p3}, Lorg/apache/avro/Resolver$RecordAdjust;->resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Ljava/util/Map;)Lorg/apache/avro/Resolver$Action;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_2
    invoke-static {p0, p1, p2}, Lorg/apache/avro/Resolver$EnumAdjust;->resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)Lorg/apache/avro/Resolver$Action;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getValueType()Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getValueType()Lorg/apache/avro/Schema;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lorg/apache/avro/Resolver;->resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Ljava/util/Map;)Lorg/apache/avro/Resolver$Action;

    move-result-object p3

    .line 12
    new-instance v0, Lorg/apache/avro/Resolver$Container;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/avro/Resolver$Container;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Resolver$Action;)V

    return-object v0

    .line 13
    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lorg/apache/avro/Resolver;->resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Ljava/util/Map;)Lorg/apache/avro/Resolver$Action;

    move-result-object p3

    .line 14
    new-instance v0, Lorg/apache/avro/Resolver$Container;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/avro/Resolver$Container;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Resolver$Action;)V

    return-object v0

    .line 15
    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 16
    new-instance p3, Lorg/apache/avro/Resolver$ErrorAction;

    sget-object v0, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;->NAMES_DONT_MATCH:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    invoke-direct {p3, p0, p1, p2, v0}, Lorg/apache/avro/Resolver$ErrorAction;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Resolver$ErrorAction$ErrorType;)V

    return-object p3

    .line 17
    :cond_1
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result p3

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result v0

    if-eq p3, v0, :cond_2

    .line 18
    new-instance p3, Lorg/apache/avro/Resolver$ErrorAction;

    sget-object v0, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;->SIZES_DONT_MATCH:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    invoke-direct {p3, p0, p1, p2, v0}, Lorg/apache/avro/Resolver$ErrorAction;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Resolver$ErrorAction$ErrorType;)V

    return-object p3

    .line 19
    :cond_2
    new-instance p3, Lorg/apache/avro/Resolver$DoNothing;

    invoke-direct {p3, p0, p1, p2}, Lorg/apache/avro/Resolver$DoNothing;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V

    return-object p3

    .line 20
    :pswitch_6
    new-instance p3, Lorg/apache/avro/Resolver$DoNothing;

    invoke-direct {p3, p0, p1, p2}, Lorg/apache/avro/Resolver$DoNothing;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V

    return-object p3

    :cond_3
    if-ne v1, v2, :cond_4

    .line 21
    invoke-static {p0, p1, p2, p3}, Lorg/apache/avro/Resolver$ReaderUnion;->resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Ljava/util/Map;)Lorg/apache/avro/Resolver$Action;

    move-result-object p0

    return-object p0

    .line 22
    :cond_4
    invoke-static {p0, p1, p2}, Lorg/apache/avro/Resolver$Promote;->resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)Lorg/apache/avro/Resolver$Action;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private static unionEquiv(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            "Ljava/util/Map<",
            "Lorg/apache/avro/Schema$SeenPair;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return v3

    .line 3
    :cond_0
    sget-object v2, Lorg/apache/avro/Schema$Type;->RECORD:Lorg/apache/avro/Schema$Type;

    if-eq v1, v2, :cond_1

    sget-object v2, Lorg/apache/avro/Schema$Type;->FIXED:Lorg/apache/avro/Schema$Type;

    if-eq v1, v2, :cond_1

    sget-object v2, Lorg/apache/avro/Schema$Type;->ENUM:Lorg/apache/avro/Schema$Type;

    if-ne v1, v2, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown schema type: "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    return v2

    .line 7
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result p1

    if-ne p0, p1, :cond_3

    move v3, v2

    :cond_3
    return v3

    .line 8
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object p0

    .line 9
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_4

    return v3

    :cond_4
    move v0, v3

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 12
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/avro/Schema;

    invoke-static {v1, v4, p2}, Lorg/apache/avro/Resolver;->unionEquiv(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return v2

    .line 13
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getValueType()Lorg/apache/avro/Schema;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getValueType()Lorg/apache/avro/Schema;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/apache/avro/Resolver;->unionEquiv(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Map;)Z

    move-result p0

    return p0

    .line 14
    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/apache/avro/Resolver;->unionEquiv(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Map;)Z

    move-result p0

    return p0

    .line 15
    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object p0

    .line 16
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object p1

    .line 17
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 18
    :pswitch_6
    new-instance v1, Lorg/apache/avro/Schema$SeenPair;

    invoke-direct {v1, p0, p1}, Lorg/apache/avro/Schema$SeenPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 20
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object p0

    .line 22
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object p1

    .line 23
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_7

    .line 24
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 25
    :cond_7
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_a

    .line 26
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/avro/Schema$Field;

    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/avro/Schema$Field;

    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 27
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/avro/Schema$Field;

    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/avro/Schema$Field;

    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v4

    invoke-static {v2, v4, p2}, Lorg/apache/avro/Resolver;->unionEquiv(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 28
    :cond_9
    :goto_2
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_a
    :goto_3
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
