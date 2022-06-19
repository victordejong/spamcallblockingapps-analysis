.class public Lorg/apache/avro/LogicalTypes$Decimal;
.super Lorg/apache/avro/LogicalType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/LogicalTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decimal"
.end annotation


# static fields
.field private static final PRECISION_PROP:Ljava/lang/String; = "precision"

.field private static final SCALE_PROP:Ljava/lang/String; = "scale"


# instance fields
.field private final precision:I

.field private final scale:I


# direct methods
.method private constructor <init>(II)V
    .locals 1

    const-string v0, "decimal"

    .line 3
    invoke-direct {p0, v0}, Lorg/apache/avro/LogicalType;-><init>(Ljava/lang/String;)V

    .line 4
    iput p1, p0, Lorg/apache/avro/LogicalTypes$Decimal;->precision:I

    .line 5
    iput p2, p0, Lorg/apache/avro/LogicalTypes$Decimal;->scale:I

    return-void
.end method

.method public synthetic constructor <init>(IILorg/apache/avro/LogicalTypes$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/avro/LogicalTypes$Decimal;-><init>(II)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/avro/Schema;)V
    .locals 2

    const-string v0, "decimal"

    .line 6
    invoke-direct {p0, v0}, Lorg/apache/avro/LogicalType;-><init>(Ljava/lang/String;)V

    const-string v0, "precision"

    .line 7
    invoke-direct {p0, p1, v0}, Lorg/apache/avro/LogicalTypes$Decimal;->hasProperty(Lorg/apache/avro/Schema;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-direct {p0, p1, v0}, Lorg/apache/avro/LogicalTypes$Decimal;->getInt(Lorg/apache/avro/Schema;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/avro/LogicalTypes$Decimal;->precision:I

    const-string v0, "scale"

    .line 9
    invoke-direct {p0, p1, v0}, Lorg/apache/avro/LogicalTypes$Decimal;->hasProperty(Lorg/apache/avro/Schema;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-direct {p0, p1, v0}, Lorg/apache/avro/LogicalTypes$Decimal;->getInt(Lorg/apache/avro/Schema;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/avro/LogicalTypes$Decimal;->scale:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lorg/apache/avro/LogicalTypes$Decimal;->scale:I

    :goto_0
    return-void

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid decimal: missing precision"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalTypes$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/avro/LogicalTypes$Decimal;-><init>(Lorg/apache/avro/Schema;)V

    return-void
.end method

.method private getInt(Lorg/apache/avro/Schema;Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Lorg/apache/avro/JsonProperties;->getObjectProp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected int "

    const-string v2, ": "

    invoke-static {v1, p2, v2}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-nez p1, :cond_1

    const-string p1, "null"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasProperty(Lorg/apache/avro/Schema;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lorg/apache/avro/JsonProperties;->getObjectProp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private maxPrecision(Lorg/apache/avro/Schema;)J
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    sget-object v1, Lorg/apache/avro/Schema$Type;->BYTES:Lorg/apache/avro/Schema$Type;

    if-ne v0, v1, :cond_0

    const-wide/32 v0, 0x7fffffff

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    sget-object v1, Lorg/apache/avro/Schema$Type;->FIXED:Lorg/apache/avro/Schema$Type;

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, -0x1

    int-to-double v2, p1

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public addToSchema(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lorg/apache/avro/LogicalType;->addToSchema(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;

    .line 2
    iget v0, p0, Lorg/apache/avro/LogicalTypes$Decimal;->precision:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "precision"

    invoke-virtual {p1, v1, v0}, Lorg/apache/avro/Schema;->addProp(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget v0, p0, Lorg/apache/avro/LogicalTypes$Decimal;->scale:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scale"

    invoke-virtual {p1, v1, v0}, Lorg/apache/avro/Schema;->addProp(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/avro/LogicalTypes$Decimal;

    .line 3
    iget v2, p0, Lorg/apache/avro/LogicalTypes$Decimal;->precision:I

    iget v3, p1, Lorg/apache/avro/LogicalTypes$Decimal;->precision:I

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lorg/apache/avro/LogicalTypes$Decimal;->scale:I

    iget p1, p1, Lorg/apache/avro/LogicalTypes$Decimal;->scale:I

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getPrecision()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/avro/LogicalTypes$Decimal;->precision:I

    return v0
.end method

.method public getScale()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/avro/LogicalTypes$Decimal;->scale:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/avro/LogicalTypes$Decimal;->precision:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lorg/apache/avro/LogicalTypes$Decimal;->scale:I

    add-int/2addr v0, v1

    return v0
.end method

.method public validate(Lorg/apache/avro/Schema;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lorg/apache/avro/LogicalType;->validate(Lorg/apache/avro/Schema;)V

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    sget-object v1, Lorg/apache/avro/Schema$Type;->FIXED:Lorg/apache/avro/Schema$Type;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    sget-object v1, Lorg/apache/avro/Schema$Type;->BYTES:Lorg/apache/avro/Schema$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Logical type decimal must be backed by fixed or bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/avro/LogicalTypes$Decimal;->precision:I

    const-string v1, " (must be positive)"

    if-lez v0, :cond_5

    int-to-long v2, v0

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/avro/LogicalTypes$Decimal;->maxPrecision(Lorg/apache/avro/Schema;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    const-string v2, ")"

    if-gtz v0, :cond_4

    .line 6
    iget p1, p0, Lorg/apache/avro/LogicalTypes$Decimal;->scale:I

    const-string v0, "Invalid decimal scale: "

    if-ltz p1, :cond_3

    .line 7
    iget v1, p0, Lorg/apache/avro/LogicalTypes$Decimal;->precision:I

    if-gt p1, v1, :cond_2

    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/avro/LogicalTypes$Decimal;->scale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (greater than precision: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/avro/LogicalTypes$Decimal;->precision:I

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/apache/avro/LogicalTypes$Decimal;->scale:I

    invoke-static {v0, v2, v1}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fixed("

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") cannot store "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/avro/LogicalTypes$Decimal;->precision:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " digits (max "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {p0, p1}, Lorg/apache/avro/LogicalTypes$Decimal;->maxPrecision(Lorg/apache/avro/Schema;)J

    move-result-wide v3

    invoke-static {v1, v3, v4, v2}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid decimal precision: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/apache/avro/LogicalTypes$Decimal;->precision:I

    invoke-static {v0, v2, v1}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
