.class public Lorg/apache/avro/Schema$FixedSchema;
.super Lorg/apache/avro/Schema$NamedSchema;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedSchema"
.end annotation


# instance fields
.field private final size:I


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema$Name;Ljava/lang/String;I)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Schema$Type;->FIXED:Lorg/apache/avro/Schema$Type;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/avro/Schema$NamedSchema;-><init>(Lorg/apache/avro/Schema$Type;Lorg/apache/avro/Schema$Name;Ljava/lang/String;)V

    if-ltz p3, :cond_0

    .line 2
    iput p3, p0, Lorg/apache/avro/Schema$FixedSchema;->size:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid fixed size: "

    invoke-static {p2, p3}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public computeHash()I
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/apache/avro/Schema$NamedSchema;->computeHash()I

    move-result v0

    iget v1, p0, Lorg/apache/avro/Schema$FixedSchema;->size:I

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/avro/Schema$FixedSchema;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/avro/Schema$FixedSchema;

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/avro/Schema;->equalCachedHash(Lorg/apache/avro/Schema;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/avro/Schema$NamedSchema;->equalNames(Lorg/apache/avro/Schema$NamedSchema;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/apache/avro/Schema$FixedSchema;->size:I

    iget v3, p1, Lorg/apache/avro/Schema$FixedSchema;->size:I

    if-ne v1, v3, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/avro/JsonProperties;->propsEqual(Lorg/apache/avro/JsonProperties;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getFixedSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/avro/Schema$FixedSchema;->size:I

    return v0
.end method

.method public toJson(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/Schema$NamedSchema;->writeNameRef(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Le/k/a/b/g;->M1()V

    const-string v0, "type"

    .line 3
    invoke-virtual {p2, v0}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    const-string v0, "fixed"

    .line 4
    invoke-virtual {p2, v0}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/Schema$NamedSchema;->writeName(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V

    .line 6
    invoke-virtual {p0}, Lorg/apache/avro/Schema$NamedSchema;->getDoc()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lorg/apache/avro/Schema$NamedSchema;->getDoc()Ljava/lang/String;

    move-result-object p1

    const-string v0, "doc"

    .line 8
    invoke-virtual {p2, v0}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2, p1}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    .line 10
    :cond_1
    iget p1, p0, Lorg/apache/avro/Schema$FixedSchema;->size:I

    const-string v0, "size"

    .line 11
    invoke-virtual {p2, v0}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2, p1}, Le/k/a/b/g;->J0(I)V

    .line 13
    invoke-virtual {p0, p2}, Lorg/apache/avro/JsonProperties;->writeProps(Le/k/a/b/g;)V

    .line 14
    invoke-virtual {p0, p2}, Lorg/apache/avro/Schema$NamedSchema;->aliasesToJson(Le/k/a/b/g;)V

    .line 15
    invoke-virtual {p2}, Le/k/a/b/g;->t0()V

    return-void
.end method
