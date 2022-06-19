.class public abstract Lorg/apache/avro/Conversion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustAndSetValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, " = "

    const-string v1, ";"

    .line 1
    invoke-static {p1, v0, p2, v1}, Le/d/c/a/a;->D2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public fromArray(Ljava/util/Collection;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "fromArray is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromBoolean(Ljava/lang/Boolean;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "fromBoolean is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromBytes(Ljava/nio/ByteBuffer;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "fromBytes is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromCharSequence(Ljava/lang/CharSequence;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "fromCharSequence is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromDouble(Ljava/lang/Double;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "fromDouble is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromEnumSymbol(Lorg/apache/avro/generic/GenericEnumSymbol;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/generic/GenericEnumSymbol;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "fromEnumSymbol is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromFixed(Lorg/apache/avro/generic/GenericFixed;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/generic/GenericFixed;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "fromFixed is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromFloat(Ljava/lang/Float;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "fromFloat is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromInt(Ljava/lang/Integer;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "fromInt is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromLong(Ljava/lang/Long;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "fromLong is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromMap(Ljava/util/Map;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "fromMap is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromRecord(Lorg/apache/avro/generic/IndexedRecord;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/generic/IndexedRecord;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "fromRecord is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getConvertedType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getLogicalTypeName()Ljava/lang/String;
.end method

.method public getRecommendedSchema()Lorg/apache/avro/Schema;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No recommended schema for "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/avro/Conversion;->getLogicalTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toArray(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")",
            "Ljava/util/Collection<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "toArray is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toBoolean(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "toBoolean is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toBytes(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "toBytes is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toCharSequence(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "toCharSequence is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toDouble(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Double;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")",
            "Ljava/lang/Double;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "toDouble is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toEnumSymbol(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Lorg/apache/avro/generic/GenericEnumSymbol;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")",
            "Lorg/apache/avro/generic/GenericEnumSymbol;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "toEnumSymbol is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toFixed(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Lorg/apache/avro/generic/GenericFixed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")",
            "Lorg/apache/avro/generic/GenericFixed;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "toFixed is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toFloat(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "toFloat is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toInt(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "toInt is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toLong(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Long;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "toLong is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toMap(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "toMap is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toRecord(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Lorg/apache/avro/generic/IndexedRecord;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            ")",
            "Lorg/apache/avro/generic/IndexedRecord;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "toRecord is not supported for "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p2}, Le/d/c/a/a;->s(Lorg/apache/avro/LogicalType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
