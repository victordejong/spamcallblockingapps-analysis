.class public final Lorg/apache/avro/SchemaCompatibility$Incompatibility;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Incompatibility"
.end annotation


# instance fields
.field private final mLocation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessage:Ljava/lang/String;

.field private final mReaderFragment:Lorg/apache/avro/Schema;

.field private final mType:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

.field private final mWriterFragment:Lorg/apache/avro/Schema;


# direct methods
.method public constructor <init>(Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mType:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    .line 3
    iput-object p2, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mReaderFragment:Lorg/apache/avro/Schema;

    .line 4
    iput-object p3, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mWriterFragment:Lorg/apache/avro/Schema;

    .line 5
    iput-object p4, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mMessage:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mLocation:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    const-class v2, Lorg/apache/avro/SchemaCompatibility$Incompatibility;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lorg/apache/avro/SchemaCompatibility$Incompatibility;

    .line 3
    iget-object v2, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mType:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    iget-object v3, p1, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mType:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    if-eq v2, v3, :cond_3

    return v1

    .line 4
    :cond_3
    iget-object v2, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mReaderFragment:Lorg/apache/avro/Schema;

    if-nez v2, :cond_4

    .line 5
    iget-object v2, p1, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mReaderFragment:Lorg/apache/avro/Schema;

    if-eqz v2, :cond_5

    return v1

    .line 6
    :cond_4
    iget-object v3, p1, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mReaderFragment:Lorg/apache/avro/Schema;

    invoke-virtual {v2, v3}, Lorg/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 7
    :cond_5
    iget-object v2, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mWriterFragment:Lorg/apache/avro/Schema;

    if-nez v2, :cond_6

    .line 8
    iget-object v2, p1, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mWriterFragment:Lorg/apache/avro/Schema;

    if-eqz v2, :cond_7

    return v1

    .line 9
    :cond_6
    iget-object v3, p1, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mWriterFragment:Lorg/apache/avro/Schema;

    invoke-virtual {v2, v3}, Lorg/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 10
    :cond_7
    iget-object v2, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mMessage:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 11
    iget-object v2, p1, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mMessage:Ljava/lang/String;

    if-eqz v2, :cond_9

    return v1

    .line 12
    :cond_8
    iget-object v3, p1, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 13
    :cond_9
    iget-object v2, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mLocation:Ljava/util/List;

    if-nez v2, :cond_b

    .line 14
    iget-object p1, p1, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mLocation:Ljava/util/List;

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    move v0, v1

    :goto_0
    return v0

    .line 15
    :cond_b
    iget-object p1, p1, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mLocation:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getLocation()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mLocation:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v2, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    const/16 v5, 0x2f

    .line 3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const-string v5, "~"

    const-string v6, "~0"

    .line 4
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "~1"

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getReaderFragment()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mReaderFragment:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getType()Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mType:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    return-object v0
.end method

.method public getWriterFragment()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mWriterFragment:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mType:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 2
    iget-object v3, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mReaderFragment:Lorg/apache/avro/Schema;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lorg/apache/avro/Schema;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 3
    iget-object v3, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mWriterFragment:Lorg/apache/avro/Schema;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lorg/apache/avro/Schema;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 4
    iget-object v3, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mMessage:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5
    iget-object v2, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mLocation:Ljava/util/List;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mType:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->getLocation()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mMessage:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mReaderFragment:Lorg/apache/avro/Schema;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/avro/SchemaCompatibility$Incompatibility;->mWriterFragment:Lorg/apache/avro/Schema;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Incompatibility{type:%s, location:%s, message:%s, reader:%s, writer:%s}"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
