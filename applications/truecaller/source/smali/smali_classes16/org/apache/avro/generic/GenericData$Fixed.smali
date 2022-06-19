.class public Lorg/apache/avro/generic/GenericData$Fixed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/generic/GenericFixed;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/generic/GenericData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fixed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/avro/generic/GenericFixed;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/avro/generic/GenericData$Fixed;",
        ">;"
    }
.end annotation


# instance fields
.field private bytes:[B

.field private schema:Lorg/apache/avro/Schema;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData$Fixed;->setSchema(Lorg/apache/avro/Schema;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;[B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/apache/avro/generic/GenericData$Fixed;->schema:Lorg/apache/avro/Schema;

    .line 5
    iput-object p2, p0, Lorg/apache/avro/generic/GenericData$Fixed;->bytes:[B

    return-void
.end method


# virtual methods
.method public bytes([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/avro/generic/GenericData$Fixed;->bytes:[B

    return-void
.end method

.method public bytes()[B
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData$Fixed;->bytes:[B

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/avro/generic/GenericData$Fixed;

    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData$Fixed;->compareTo(Lorg/apache/avro/generic/GenericData$Fixed;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/avro/generic/GenericData$Fixed;)I
    .locals 6

    .line 2
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData$Fixed;->bytes:[B

    array-length v2, v0

    iget-object v3, p1, Lorg/apache/avro/generic/GenericData$Fixed;->bytes:[B

    array-length v5, v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lorg/apache/avro/io/BinaryData;->compareBytes([BII[BII)I

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
    instance-of v1, p1, Lorg/apache/avro/generic/GenericFixed;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/avro/generic/GenericData$Fixed;->bytes:[B

    check-cast p1, Lorg/apache/avro/generic/GenericFixed;

    invoke-interface {p1}, Lorg/apache/avro/generic/GenericFixed;->bytes()[B

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

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
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData$Fixed;->schema:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData$Fixed;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public setSchema(Lorg/apache/avro/Schema;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/avro/generic/GenericData$Fixed;->schema:Lorg/apache/avro/Schema;

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/avro/generic/GenericData$Fixed;->bytes:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData$Fixed;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
