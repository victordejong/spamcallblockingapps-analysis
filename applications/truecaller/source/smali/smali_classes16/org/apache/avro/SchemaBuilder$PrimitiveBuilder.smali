.class public abstract Lorg/apache/avro/SchemaBuilder$PrimitiveBuilder;
.super Lorg/apache/avro/SchemaBuilder$PropBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PrimitiveBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Lorg/apache/avro/SchemaBuilder$PrimitiveBuilder<",
        "TR;TP;>;>",
        "Lorg/apache/avro/SchemaBuilder$PropBuilder<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final context:Lorg/apache/avro/SchemaBuilder$Completion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/SchemaBuilder$Completion<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final immutable:Lorg/apache/avro/Schema;


# direct methods
.method public constructor <init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Lorg/apache/avro/Schema$Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/SchemaBuilder$Completion<",
            "TR;>;",
            "Lorg/apache/avro/SchemaBuilder$NameContext;",
            "Lorg/apache/avro/Schema$Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/SchemaBuilder$PropBuilder;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$PrimitiveBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    .line 3
    invoke-virtual {p3}, Lorg/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/apache/avro/SchemaBuilder$NameContext;->access$600(Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$PrimitiveBuilder;->immutable:Lorg/apache/avro/Schema;

    return-void
.end method

.method public static synthetic access$800(Lorg/apache/avro/SchemaBuilder$PrimitiveBuilder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/SchemaBuilder$PrimitiveBuilder;->end()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private end()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$PrimitiveBuilder;->immutable:Lorg/apache/avro/Schema;

    .line 2
    invoke-static {p0}, Lorg/apache/avro/SchemaBuilder$PropBuilder;->access$700(Lorg/apache/avro/SchemaBuilder$PropBuilder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$PrimitiveBuilder;->immutable:Lorg/apache/avro/Schema;

    invoke-virtual {v0}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lorg/apache/avro/SchemaBuilder$PropBuilder;->addPropsTo(Lorg/apache/avro/JsonProperties;)Lorg/apache/avro/JsonProperties;

    .line 5
    :cond_0
    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$PrimitiveBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    invoke-virtual {v1, v0}, Lorg/apache/avro/SchemaBuilder$Completion;->complete(Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
