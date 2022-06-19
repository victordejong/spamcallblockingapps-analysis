.class public Lorg/apache/avro/Conversions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/Conversions$DecimalConversion;,
        Lorg/apache/avro/Conversions$UUIDConversion;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToLogicalType(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;Lorg/apache/avro/Conversion;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            "Lorg/apache/avro/Conversion<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-object p0

    .line 2
    :pswitch_1
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->fromBoolean(Ljava/lang/Boolean;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :pswitch_2
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->fromDouble(Ljava/lang/Double;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_3
    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->fromFloat(Ljava/lang/Float;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_4
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->fromLong(Ljava/lang/Long;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_5
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->fromInt(Ljava/lang/Integer;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_6
    move-object v0, p0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->fromBytes(Ljava/nio/ByteBuffer;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_7
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->fromCharSequence(Ljava/lang/CharSequence;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_8
    move-object v0, p0

    check-cast v0, Lorg/apache/avro/generic/GenericFixed;

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->fromFixed(Lorg/apache/avro/generic/GenericFixed;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_9
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->fromMap(Ljava/util/Map;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_a
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->fromArray(Ljava/util/Collection;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_b
    move-object v0, p0

    check-cast v0, Lorg/apache/avro/generic/GenericEnumSymbol;

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->fromEnumSymbol(Lorg/apache/avro/generic/GenericEnumSymbol;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 13
    :pswitch_c
    move-object v0, p0

    check-cast v0, Lorg/apache/avro/generic/IndexedRecord;

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->fromRecord(Lorg/apache/avro/generic/IndexedRecord;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 14
    new-instance p2, Lorg/apache/avro/AvroRuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot convert "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": expected generic type"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters cannot be null! Parameter values:"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    const/4 p0, 0x3

    aput-object p3, v2, p0

    .line 17
    invoke-static {v2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static convertToRawType(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;Lorg/apache/avro/Conversion;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            "Lorg/apache/avro/Conversion<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p3}, Lorg/apache/avro/Conversion;->getConvertedType()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    return-object p0

    .line 3
    :pswitch_1
    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->toBoolean(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_2
    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->toDouble(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_3
    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->toFloat(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_4
    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->toLong(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_5
    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->toInt(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_6
    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->toBytes(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_7
    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->toCharSequence(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_8
    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->toFixed(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Lorg/apache/avro/generic/GenericFixed;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_9
    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->toMap(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_a
    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->toArray(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 13
    :pswitch_b
    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->toEnumSymbol(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Lorg/apache/avro/generic/GenericEnumSymbol;

    move-result-object p0

    return-object p0

    .line 14
    :pswitch_c
    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/avro/Conversion;->toRecord(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Lorg/apache/avro/generic/IndexedRecord;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Lorg/apache/avro/AvroRuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot convert "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": expected logical type"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters cannot be null! Parameter values:"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    const/4 p0, 0x3

    aput-object p3, v2, p0

    .line 18
    invoke-static {v2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
