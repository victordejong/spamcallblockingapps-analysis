.class public Lorg/apache/avro/Conversions$UUIDConversion;
.super Lorg/apache/avro/Conversion;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Conversions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UUIDConversion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/avro/Conversion<",
        "Ljava/util/UUID;",
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


# virtual methods
.method public bridge synthetic fromCharSequence(Ljava/lang/CharSequence;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/Conversions$UUIDConversion;->fromCharSequence(Ljava/lang/CharSequence;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/util/UUID;

    move-result-object p1

    return-object p1
.end method

.method public fromCharSequence(Ljava/lang/CharSequence;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/util/UUID;
    .locals 0

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    return-object p1
.end method

.method public getConvertedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/UUID;

    return-object v0
.end method

.method public getLogicalTypeName()Ljava/lang/String;
    .locals 1

    const-string v0, "uuid"

    return-object v0
.end method

.method public getRecommendedSchema()Lorg/apache/avro/Schema;
    .locals 2

    .line 1
    invoke-static {}, Lorg/apache/avro/LogicalTypes;->uuid()Lorg/apache/avro/LogicalType;

    move-result-object v0

    sget-object v1, Lorg/apache/avro/Schema$Type;->STRING:Lorg/apache/avro/Schema$Type;

    invoke-static {v1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/avro/LogicalType;->addToSchema(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCharSequence(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/UUID;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/Conversions$UUIDConversion;->toCharSequence(Ljava/util/UUID;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toCharSequence(Ljava/util/UUID;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;)Ljava/lang/CharSequence;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
