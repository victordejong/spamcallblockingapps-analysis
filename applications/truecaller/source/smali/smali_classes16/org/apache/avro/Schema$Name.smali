.class public Lorg/apache/avro/Schema$Name;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Name"
.end annotation


# instance fields
.field private final full:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final space:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    iput-object v0, p0, Lorg/apache/avro/Schema$Name;->full:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/avro/Schema$Name;->space:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/avro/Schema$Name;->name:Ljava/lang/String;

    return-void

    :cond_0
    const/16 v1, 0x2e

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 4
    invoke-static {p1}, Lorg/apache/avro/Schema;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/Schema$Name;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v1, v1, 0x1

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/avro/Schema;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/Schema$Name;->name:Ljava/lang/String;

    :goto_0
    const-string p1, ""

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p2

    .line 8
    :goto_1
    iput-object v0, p0, Lorg/apache/avro/Schema$Name;->space:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 9
    iget-object p1, p0, Lorg/apache/avro/Schema$Name;->name:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string p1, "."

    invoke-static {v0, p1}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/avro/Schema$Name;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lorg/apache/avro/Schema$Name;->full:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$700(Lorg/apache/avro/Schema$Name;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/avro/Schema$Name;->full:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$800(Lorg/apache/avro/Schema$Name;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/avro/Schema$Name;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$900(Lorg/apache/avro/Schema$Name;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/avro/Schema$Name;->space:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lorg/apache/avro/Schema$Name;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/avro/Schema$Name;

    .line 3
    iget-object v0, p0, Lorg/apache/avro/Schema$Name;->full:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/avro/Schema$Name;->full:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getQualified(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$Name;->space:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/avro/Schema$Name;->full:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/avro/Schema$Name;->name:Ljava/lang/String;

    :goto_1
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$Name;->full:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$Name;->full:Ljava/lang/String;

    return-object v0
.end method

.method public writeName(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$Name;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "name"

    .line 2
    invoke-virtual {p2, v1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2, v0}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/Schema$Name;->space:Ljava/lang/String;

    const-string v1, "namespace"

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lorg/apache/avro/Schema$Names;->space()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lorg/apache/avro/Schema$Name;->space:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, v1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2, p1}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lorg/apache/avro/Schema$Names;->space()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p2, v1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    const-string p1, ""

    .line 11
    invoke-virtual {p2, p1}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
