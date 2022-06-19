.class public Lorg/apache/avro/generic/GenericData$EnumSymbol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/generic/GenericEnumSymbol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/generic/GenericData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnumSymbol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/avro/generic/GenericEnumSymbol<",
        "Lorg/apache/avro/generic/GenericData$EnumSymbol;",
        ">;"
    }
.end annotation


# instance fields
.field private schema:Lorg/apache/avro/Schema;

.field private symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema;Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/avro/generic/GenericData$EnumSymbol;-><init>(Lorg/apache/avro/Schema;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/generic/GenericData$EnumSymbol;->schema:Lorg/apache/avro/Schema;

    .line 3
    iput-object p2, p0, Lorg/apache/avro/generic/GenericData$EnumSymbol;->symbol:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/avro/generic/GenericData$EnumSymbol;

    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData$EnumSymbol;->compareTo(Lorg/apache/avro/generic/GenericData$EnumSymbol;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/avro/generic/GenericData$EnumSymbol;)I
    .locals 2

    .line 2
    invoke-static {}, Lorg/apache/avro/generic/GenericData;->get()Lorg/apache/avro/generic/GenericData;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/avro/generic/GenericData$EnumSymbol;->schema:Lorg/apache/avro/Schema;

    invoke-virtual {v0, p0, p1, v1}, Lorg/apache/avro/generic/GenericData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/avro/Schema;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/avro/generic/GenericEnumSymbol;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/avro/generic/GenericData$EnumSymbol;->symbol:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData$EnumSymbol;->schema:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData$EnumSymbol;->symbol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData$EnumSymbol;->symbol:Ljava/lang/String;

    return-object v0
.end method
