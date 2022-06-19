.class public Lorg/apache/avro/Conversions$DecimalConversion;
.super Lorg/apache/avro/Conversion;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Conversions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecimalConversion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/avro/Conversion<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/Conversion;-><init>()V

    return-void
.end method

.method private static validate(Lorg/apache/avro/LogicalTypes$Decimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/LogicalTypes$Decimal;->getScale()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v2, 0x7

    .line 3
    :try_start_0
    invoke-virtual {p1, v0, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    .line 4
    :catch_0
    new-instance p0, Lorg/apache/avro/AvroTypeException;

    const-string p1, "Cannot encode decimal with scale "

    const-string v2, " as scale "

    const-string v3, " without rounding"

    invoke-static {p1, v1, v2, v0, v3}, Le/d/c/a/a;->n2(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lorg/apache/avro/LogicalTypes$Decimal;->getPrecision()I

    move-result p0

    .line 6
    invoke-virtual {p1}, Ljava/math/BigDecimal;->precision()I

    move-result v3

    if-le v3, p0, :cond_2

    const-string p1, " as max precision "

    const-string v4, "Cannot encode decimal with precision "

    if-eqz v2, :cond_1

    .line 7
    new-instance v2, Lorg/apache/avro/AvroTypeException;

    const-string v5, ". This is after safely adjusting scale from "

    invoke-static {v4, v3, p1, p0, v5}, Le/d/c/a/a;->F(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to required "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_1
    new-instance v0, Lorg/apache/avro/AvroTypeException;

    invoke-static {v4, v3, p1, p0}, Le/d/c/a/a;->m2(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object p1
.end method


# virtual methods
.method public bridge synthetic fromBytes(Ljava/nio/ByteBuffer;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/Conversions$DecimalConversion;->fromBytes(Ljava/nio/ByteBuffer;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public fromBytes(Ljava/nio/ByteBuffer;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/math/BigDecimal;
    .locals 1

    .line 2
    check-cast p3, Lorg/apache/avro/LogicalTypes$Decimal;

    invoke-virtual {p3}, Lorg/apache/avro/LogicalTypes$Decimal;->getScale()I

    move-result p2

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p3

    new-array p3, p3, [B

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 5
    new-instance p1, Ljava/math/BigDecimal;

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {p1, v0, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object p1
.end method

.method public bridge synthetic fromFixed(Lorg/apache/avro/generic/GenericFixed;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/Conversions$DecimalConversion;->fromFixed(Lorg/apache/avro/generic/GenericFixed;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public fromFixed(Lorg/apache/avro/generic/GenericFixed;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/math/BigDecimal;
    .locals 1

    .line 2
    check-cast p3, Lorg/apache/avro/LogicalTypes$Decimal;

    invoke-virtual {p3}, Lorg/apache/avro/LogicalTypes$Decimal;->getScale()I

    move-result p2

    .line 3
    new-instance p3, Ljava/math/BigDecimal;

    new-instance v0, Ljava/math/BigInteger;

    invoke-interface {p1}, Lorg/apache/avro/generic/GenericFixed;->bytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {p3, v0, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object p3
.end method

.method public getConvertedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getLogicalTypeName()Ljava/lang/String;
    .locals 1

    const-string v0, "decimal"

    return-object v0
.end method

.method public getRecommendedSchema()Lorg/apache/avro/Schema;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No recommended schema for decimal (scale is required)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic toBytes(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/Conversions$DecimalConversion;->toBytes(Ljava/math/BigDecimal;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public toBytes(Ljava/math/BigDecimal;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 2
    check-cast p3, Lorg/apache/avro/LogicalTypes$Decimal;

    invoke-static {p3, p1}, Lorg/apache/avro/Conversions$DecimalConversion;->validate(Lorg/apache/avro/LogicalTypes$Decimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toFixed(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Lorg/apache/avro/generic/GenericFixed;
    .locals 0

    .line 1
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/Conversions$DecimalConversion;->toFixed(Ljava/math/BigDecimal;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Lorg/apache/avro/generic/GenericFixed;

    move-result-object p1

    return-object p1
.end method

.method public toFixed(Ljava/math/BigDecimal;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Lorg/apache/avro/generic/GenericFixed;
    .locals 4

    .line 2
    check-cast p3, Lorg/apache/avro/LogicalTypes$Decimal;

    invoke-static {p3, p1}, Lorg/apache/avro/Conversions$DecimalConversion;->validate(Lorg/apache/avro/LogicalTypes$Decimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result p3

    const/4 v0, 0x0

    if-gez p3, :cond_0

    const/16 p3, 0xff

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    int-to-byte p3, p3

    .line 4
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result v1

    new-array v2, v1, [B

    .line 6
    array-length v3, p1

    sub-int v3, v1, v3

    .line 7
    invoke-static {v2, v0, v3, p3}, Ljava/util/Arrays;->fill([BIIB)V

    sub-int/2addr v1, v3

    .line 8
    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    new-instance p1, Lorg/apache/avro/generic/GenericData$Fixed;

    invoke-direct {p1, p2, v2}, Lorg/apache/avro/generic/GenericData$Fixed;-><init>(Lorg/apache/avro/Schema;[B)V

    return-object p1
.end method
