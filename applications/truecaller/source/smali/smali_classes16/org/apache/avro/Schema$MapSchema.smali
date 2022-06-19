.class public Lorg/apache/avro/Schema$MapSchema;
.super Lorg/apache/avro/Schema;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapSchema"
.end annotation


# instance fields
.field private final valueType:Lorg/apache/avro/Schema;


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Schema$Type;->MAP:Lorg/apache/avro/Schema$Type;

    invoke-direct {p0, v0}, Lorg/apache/avro/Schema;-><init>(Lorg/apache/avro/Schema$Type;)V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/Schema$MapSchema;->valueType:Lorg/apache/avro/Schema;

    return-void
.end method


# virtual methods
.method public computeHash()I
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/apache/avro/Schema;->computeHash()I

    move-result v0

    iget-object v1, p0, Lorg/apache/avro/Schema$MapSchema;->valueType:Lorg/apache/avro/Schema;

    invoke-virtual {v1}, Lorg/apache/avro/Schema;->computeHash()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/avro/Schema$MapSchema;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/avro/Schema$MapSchema;

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/avro/Schema;->equalCachedHash(Lorg/apache/avro/Schema;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/avro/Schema$MapSchema;->valueType:Lorg/apache/avro/Schema;

    iget-object v3, p1, Lorg/apache/avro/Schema$MapSchema;->valueType:Lorg/apache/avro/Schema;

    invoke-virtual {v1, v3}, Lorg/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/avro/JsonProperties;->propsEqual(Lorg/apache/avro/JsonProperties;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getValueType()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$MapSchema;->valueType:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public toJson(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Le/k/a/b/g;->M1()V

    const-string v0, "type"

    .line 2
    invoke-virtual {p2, v0}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    const-string v0, "map"

    .line 3
    invoke-virtual {p2, v0}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    const-string v0, "values"

    .line 4
    invoke-virtual {p2, v0}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lorg/apache/avro/Schema$MapSchema;->valueType:Lorg/apache/avro/Schema;

    invoke-virtual {v0, p1, p2}, Lorg/apache/avro/Schema;->toJson(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V

    .line 6
    invoke-virtual {p0, p2}, Lorg/apache/avro/JsonProperties;->writeProps(Le/k/a/b/g;)V

    .line 7
    invoke-virtual {p2}, Le/k/a/b/g;->t0()V

    return-void
.end method
