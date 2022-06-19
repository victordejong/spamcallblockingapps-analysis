.class public final Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SchemaPairCompatibility"
.end annotation


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mReader:Lorg/apache/avro/Schema;

.field private final mResult:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

.field private final mWriter:Lorg/apache/avro/Schema;


# direct methods
.method public constructor <init>(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mResult:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    .line 3
    iput-object p2, p0, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mReader:Lorg/apache/avro/Schema;

    .line 4
    iput-object p3, p0, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mWriter:Lorg/apache/avro/Schema;

    .line 5
    iput-object p4, p0, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;

    .line 3
    iget-object v0, p1, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mResult:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    iget-object v2, p0, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mResult:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    invoke-static {v0, v2}, Lorg/apache/avro/SchemaCompatibility;->access$300(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mReader:Lorg/apache/avro/Schema;

    iget-object v2, p0, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mReader:Lorg/apache/avro/Schema;

    invoke-static {v0, v2}, Lorg/apache/avro/SchemaCompatibility;->access$300(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mWriter:Lorg/apache/avro/Schema;

    iget-object v2, p0, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mWriter:Lorg/apache/avro/Schema;

    .line 4
    invoke-static {v0, v2}, Lorg/apache/avro/SchemaCompatibility;->access$300(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mDescription:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mDescription:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/avro/SchemaCompatibility;->access$300(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getReader()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mReader:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getResult()Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mResult:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    return-object v0
.end method

.method public getType()Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mResult:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    invoke-virtual {v0}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->getCompatibility()Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    move-result-object v0

    return-object v0
.end method

.method public getWriter()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mWriter:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mResult:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mReader:Lorg/apache/avro/Schema;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mWriter:Lorg/apache/avro/Schema;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mDescription:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mResult:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mReader:Lorg/apache/avro/Schema;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mWriter:Lorg/apache/avro/Schema;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;->mDescription:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "SchemaPairCompatibility{result:%s, readerSchema:%s, writerSchema:%s, description:%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
