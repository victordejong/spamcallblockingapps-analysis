.class public Lorg/apache/avro/Resolver$ReaderUnion;
.super Lorg/apache/avro/Resolver$Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Resolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReaderUnion"
.end annotation


# instance fields
.field public final actualAction:Lorg/apache/avro/Resolver$Action;

.field public final firstMatch:I


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;ILorg/apache/avro/Resolver$Action;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Resolver$Action$Type;->READER_UNION:Lorg/apache/avro/Resolver$Action$Type;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/avro/Resolver$Action;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Resolver$Action$Type;)V

    .line 2
    iput p4, p0, Lorg/apache/avro/Resolver$ReaderUnion;->firstMatch:I

    .line 3
    iput-object p5, p0, Lorg/apache/avro/Resolver$ReaderUnion;->actualAction:Lorg/apache/avro/Resolver$Action;

    return-void
.end method

.method private static firstMatchingBranch(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Ljava/util/Map;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/generic/GenericData;",
            "Ljava/util/Map<",
            "Lorg/apache/avro/Schema$SeenPair;",
            "Lorg/apache/avro/Resolver$Action;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/avro/Schema;

    .line 3
    invoke-virtual {v6}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v7

    if-ne v0, v7, :cond_4

    .line 4
    sget-object v7, Lorg/apache/avro/Schema$Type;->RECORD:Lorg/apache/avro/Schema$Type;

    if-eq v0, v7, :cond_1

    sget-object v8, Lorg/apache/avro/Schema$Type;->ENUM:Lorg/apache/avro/Schema$Type;

    if-eq v0, v8, :cond_1

    sget-object v8, Lorg/apache/avro/Schema$Type;->FIXED:Lorg/apache/avro/Schema$Type;

    if-ne v0, v8, :cond_0

    goto :goto_1

    :cond_0
    return v5

    .line 5
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-virtual {v6}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_2

    .line 7
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    return v5

    :cond_2
    if-ne v0, v7, :cond_4

    .line 8
    invoke-static {p0, v6, p2, p3}, Lorg/apache/avro/Resolver$RecordAdjust;->resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Ljava/util/Map;)Lorg/apache/avro/Resolver$Action;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/avro/Resolver$ReaderUnion;->hasMatchError(Lorg/apache/avro/Resolver$Action;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 9
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getName()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual {v6}, Lorg/apache/avro/Schema;->getName()Ljava/lang/String;

    move-result-object v6

    if-ltz v4, :cond_3

    if-eqz v7, :cond_4

    .line 11
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-ltz v4, :cond_6

    return v4

    .line 12
    :cond_6
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/Schema;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/16 p3, 0xb

    packed-switch p2, :pswitch_data_0

    goto :goto_3

    .line 14
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_7

    goto :goto_3

    :cond_7
    return v3

    .line 15
    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x7

    if-eq p1, p2, :cond_8

    goto :goto_3

    :cond_8
    return v3

    .line 16
    :pswitch_2
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eq p1, p3, :cond_9

    goto :goto_3

    :cond_9
    return v3

    .line 17
    :pswitch_3
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_a

    if-eq p1, p3, :cond_a

    goto :goto_3

    :cond_a
    return v3

    .line 18
    :pswitch_4
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_5
    return v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static hasMatchError(Lorg/apache/avro/Resolver$Action;)Z
    .locals 5

    .line 1
    instance-of v0, p0, Lorg/apache/avro/Resolver$ErrorAction;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p0, Lorg/apache/avro/Resolver$RecordAdjust;

    iget-object p0, p0, Lorg/apache/avro/Resolver$RecordAdjust;->fieldActions:[Lorg/apache/avro/Resolver$Action;

    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p0, v3

    .line 3
    instance-of v4, v4, Lorg/apache/avro/Resolver$ErrorAction;

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Ljava/util/Map;)Lorg/apache/avro/Resolver$Action;
    .locals 8
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

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    sget-object v1, Lorg/apache/avro/Schema$Type;->UNION:Lorg/apache/avro/Schema$Type;

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {p0, p1, p2, p3}, Lorg/apache/avro/Resolver$ReaderUnion;->firstMatchingBranch(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Ljava/util/Map;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 3
    new-instance v0, Lorg/apache/avro/Resolver$ReaderUnion;

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema;

    invoke-static {p0, v1, p2, p3}, Lorg/apache/avro/Resolver;->access$000(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Ljava/util/Map;)Lorg/apache/avro/Resolver$Action;

    move-result-object v7

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lorg/apache/avro/Resolver$ReaderUnion;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;ILorg/apache/avro/Resolver$Action;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p3, Lorg/apache/avro/Resolver$ErrorAction;

    sget-object v0, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;->NO_MATCHING_BRANCH:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    invoke-direct {p3, p0, p1, p2, v0}, Lorg/apache/avro/Resolver$ErrorAction;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Resolver$ErrorAction$ErrorType;)V

    return-object p3

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Writer schema is union."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
