.class public Lorg/apache/avro/Resolver$ErrorAction;
.super Lorg/apache/avro/Resolver$Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Resolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/Resolver$ErrorAction$ErrorType;
    }
.end annotation


# instance fields
.field public final error:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Resolver$ErrorAction$ErrorType;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Resolver$Action$Type;->ERROR:Lorg/apache/avro/Resolver$Action$Type;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/avro/Resolver$Action;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Resolver$Action$Type;)V

    .line 2
    iput-object p4, p0, Lorg/apache/avro/Resolver$ErrorAction;->error:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Resolver$ErrorAction;->error:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, ", expecting "

    const-string v2, "Found "

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/apache/avro/Resolver$Action;->reader:Lorg/apache/avro/Schema;

    invoke-virtual {v0}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v3, "<oops>"

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/avro/Schema$Field;

    .line 5
    iget-object v5, p0, Lorg/apache/avro/Resolver$Action;->writer:Lorg/apache/avro/Schema;

    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->defaultValue()Le/k/a/c/l;

    move-result-object v5

    if-nez v5, :cond_2

    .line 6
    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/avro/Resolver$Action;->writer:Lorg/apache/avro/Schema;

    invoke-virtual {v2}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/avro/Resolver$Action;->reader:Lorg/apache/avro/Schema;

    invoke-virtual {v1}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", missing required field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8
    :cond_4
    :goto_1
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/avro/Resolver$Action;->writer:Lorg/apache/avro/Schema;

    invoke-virtual {v2}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/avro/Resolver$Action;->reader:Lorg/apache/avro/Schema;

    invoke-virtual {v1}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
