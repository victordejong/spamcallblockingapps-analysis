.class public final Lorg/apache/avro/SchemaCompatibility$ReaderWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReaderWriter"
.end annotation


# instance fields
.field private final mReader:Lorg/apache/avro/Schema;

.field private final mWriter:Lorg/apache/avro/Schema;


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/SchemaCompatibility$ReaderWriter;->mReader:Lorg/apache/avro/Schema;

    .line 3
    iput-object p2, p0, Lorg/apache/avro/SchemaCompatibility$ReaderWriter;->mWriter:Lorg/apache/avro/Schema;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/apache/avro/SchemaCompatibility$ReaderWriter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lorg/apache/avro/SchemaCompatibility$ReaderWriter;

    .line 3
    iget-object v0, p0, Lorg/apache/avro/SchemaCompatibility$ReaderWriter;->mReader:Lorg/apache/avro/Schema;

    iget-object v2, p1, Lorg/apache/avro/SchemaCompatibility$ReaderWriter;->mReader:Lorg/apache/avro/Schema;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/avro/SchemaCompatibility$ReaderWriter;->mWriter:Lorg/apache/avro/Schema;

    iget-object p1, p1, Lorg/apache/avro/SchemaCompatibility$ReaderWriter;->mWriter:Lorg/apache/avro/Schema;

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaCompatibility$ReaderWriter;->mReader:Lorg/apache/avro/Schema;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/avro/SchemaCompatibility$ReaderWriter;->mWriter:Lorg/apache/avro/Schema;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lorg/apache/avro/SchemaCompatibility$ReaderWriter;->mReader:Lorg/apache/avro/Schema;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/avro/SchemaCompatibility$ReaderWriter;->mWriter:Lorg/apache/avro/Schema;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ReaderWriter{reader:%s, writer:%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
