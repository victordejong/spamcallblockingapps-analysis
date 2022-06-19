.class public final Lorg/apache/avro/SchemaBuilder$RecordBuilder;
.super Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecordBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/avro/SchemaBuilder$NamespacedBuilder<",
        "TR;",
        "Lorg/apache/avro/SchemaBuilder$RecordBuilder<",
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

.method public static synthetic access$2400(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$RecordBuilder;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/apache/avro/SchemaBuilder$RecordBuilder;->create(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$RecordBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static create(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$RecordBuilder;
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
            "Lorg/apache/avro/SchemaBuilder$RecordBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$RecordBuilder;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/avro/SchemaBuilder$RecordBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public fields()Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->doc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;->space()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/apache/avro/Schema;->createRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/avro/Schema;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;->completeSchema(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;

    .line 3
    new-instance v1, Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;->context()Lorg/apache/avro/SchemaBuilder$Completion;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->names()Lorg/apache/avro/SchemaBuilder$NameContext;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/avro/Schema;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/avro/SchemaBuilder$NameContext;->access$300(Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$NameContext;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Lorg/apache/avro/Schema;Lorg/apache/avro/SchemaBuilder$1;)V

    return-object v1
.end method

.method public bridge synthetic self()Lorg/apache/avro/SchemaBuilder$PropBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$RecordBuilder;->self()Lorg/apache/avro/SchemaBuilder$RecordBuilder;

    move-result-object v0

    return-object v0
.end method

.method public self()Lorg/apache/avro/SchemaBuilder$RecordBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$RecordBuilder<",
            "TR;>;"
        }
    .end annotation

    return-object p0
.end method
