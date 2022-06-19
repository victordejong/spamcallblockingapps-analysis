.class public Lorg/apache/avro/Resolver$EnumAdjust;
.super Lorg/apache/avro/Resolver$Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Resolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnumAdjust"
.end annotation


# instance fields
.field public final adjustments:[I

.field public final noAdjustmentsNeeded:Z

.field public final values:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;[I[Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/avro/Resolver$Action$Type;->ENUM:Lorg/apache/avro/Resolver$Action$Type;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/avro/Resolver$Action;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Resolver$Action$Type;)V

    .line 2
    iput-object p4, p0, Lorg/apache/avro/Resolver$EnumAdjust;->adjustments:[I

    .line 3
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 4
    array-length p2, p4

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 5
    array-length p3, p4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p3, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    move p3, v1

    :goto_1
    if-eqz p1, :cond_2

    if-ge p3, p2, :cond_2

    .line 6
    aget v2, p4, p3

    if-ne p3, v2, :cond_1

    move v2, v0

    goto :goto_2

    :cond_1
    move v2, v1

    :goto_2
    and-int/2addr p1, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 7
    :cond_2
    iput-boolean p1, p0, Lorg/apache/avro/Resolver$EnumAdjust;->noAdjustmentsNeeded:Z

    .line 8
    iput-object p5, p0, Lorg/apache/avro/Resolver$EnumAdjust;->values:[Ljava/lang/Object;

    return-void
.end method

.method public static resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)Lorg/apache/avro/Resolver$Action;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/avro/Resolver$ErrorAction;

    sget-object v1, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;->NAMES_DONT_MATCH:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/apache/avro/Resolver$ErrorAction;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Resolver$ErrorAction$ErrorType;)V

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getEnumDefault()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getEnumDefault()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v9, v4, [I

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v10, v5, [Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getEnumDefault()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, p1}, Lorg/apache/avro/generic/GenericData;->createEnum(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_5

    .line 9
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_3

    move v6, v2

    .line 10
    :cond_3
    aput v6, v9, v5

    if-ne v6, v2, :cond_4

    move-object v6, v3

    goto :goto_3

    .line 11
    :cond_4
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p2, v6, p1}, Lorg/apache/avro/generic/GenericData;->createEnum(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v6

    :goto_3
    aput-object v6, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 12
    :cond_5
    new-instance v0, Lorg/apache/avro/Resolver$EnumAdjust;

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v5 .. v10}, Lorg/apache/avro/Resolver$EnumAdjust;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;[I[Ljava/lang/Object;)V

    return-object v0
.end method
