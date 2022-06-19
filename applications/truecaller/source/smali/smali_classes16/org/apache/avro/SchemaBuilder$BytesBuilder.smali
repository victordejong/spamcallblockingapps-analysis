.class public final Lorg/apache/avro/SchemaBuilder$BytesBuilder;
.super Lorg/apache/avro/SchemaBuilder$PrimitiveBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BytesBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/avro/SchemaBuilder$PrimitiveBuilder<",
        "TR;",
        "Lorg/apache/avro/SchemaBuilder$BytesBuilder<",
        "TR;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/SchemaBuilder$Completion<",
            "TR;>;",
            "Lorg/apache/avro/SchemaBuilder$NameContext;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/Schema$Type;->BYTES:Lorg/apache/avro/Schema$Type;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/avro/SchemaBuilder$PrimitiveBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Lorg/apache/avro/Schema$Type;)V

    return-void
.end method

.method public static synthetic access$1800(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$BytesBuilder;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/avro/SchemaBuilder$BytesBuilder;->create(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$BytesBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static create(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$BytesBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/avro/SchemaBuilder$Completion<",
            "TR;>;",
            "Lorg/apache/avro/SchemaBuilder$NameContext;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$BytesBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$BytesBuilder;

    invoke-direct {v0, p0, p1}, Lorg/apache/avro/SchemaBuilder$BytesBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)V

    return-object v0
.end method


# virtual methods
.method public endBytes()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/avro/SchemaBuilder$PrimitiveBuilder;->access$800(Lorg/apache/avro/SchemaBuilder$PrimitiveBuilder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public self()Lorg/apache/avro/SchemaBuilder$BytesBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$BytesBuilder<",
            "TR;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic self()Lorg/apache/avro/SchemaBuilder$PropBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$BytesBuilder;->self()Lorg/apache/avro/SchemaBuilder$BytesBuilder;

    move-result-object v0

    return-object v0
.end method
