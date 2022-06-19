.class public Lorg/apache/avro/UnresolvedUnionException;
.super Lorg/apache/avro/AvroRuntimeException;
.source "SourceFile"


# instance fields
.field private unionSchema:Lorg/apache/avro/Schema;

.field private unresolvedDatum:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema;Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not in union "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/UnresolvedUnionException;->unionSchema:Lorg/apache/avro/Schema;

    .line 3
    iput-object p2, p0, Lorg/apache/avro/UnresolvedUnionException;->unresolvedDatum:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not in union "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lorg/apache/avro/UnresolvedUnionException;->unionSchema:Lorg/apache/avro/Schema;

    .line 6
    iput-object p3, p0, Lorg/apache/avro/UnresolvedUnionException;->unresolvedDatum:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getUnionSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/UnresolvedUnionException;->unionSchema:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getUnresolvedDatum()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/UnresolvedUnionException;->unresolvedDatum:Ljava/lang/Object;

    return-object v0
.end method
