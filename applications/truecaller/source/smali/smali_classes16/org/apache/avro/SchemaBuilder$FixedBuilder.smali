.class public final Lorg/apache/avro/SchemaBuilder$FixedBuilder;
.super Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FixedBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/avro/SchemaBuilder$NamespacedBuilder<",
        "TR;",
        "Lorg/apache/avro/SchemaBuilder$FixedBuilder<",
        "TR;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/SchemaBuilder$Completion<",
            "TR;>;",
            "Lorg/apache/avro/SchemaBuilder$NameContext;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2200(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FixedBuilder;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/apache/avro/SchemaBuilder$FixedBuilder;->create(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FixedBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static create(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FixedBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/avro/SchemaBuilder$Completion<",
            "TR;>;",
            "Lorg/apache/avro/SchemaBuilder$NameContext;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FixedBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$FixedBuilder;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/avro/SchemaBuilder$FixedBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public self()Lorg/apache/avro/SchemaBuilder$FixedBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$FixedBuilder<",
            "TR;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic self()Lorg/apache/avro/SchemaBuilder$PropBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$FixedBuilder;->self()Lorg/apache/avro/SchemaBuilder$FixedBuilder;

    move-result-object v0

    return-object v0
.end method

.method public size(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->name()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->doc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;->space()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lorg/apache/avro/Schema;->createFixed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/avro/Schema;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;->completeSchema(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;->context()Lorg/apache/avro/SchemaBuilder$Completion;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaBuilder$Completion;->complete(Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
