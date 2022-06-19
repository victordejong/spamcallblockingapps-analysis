.class public final Lorg/apache/avro/SchemaBuilder$UnionBuilder;
.super Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnionBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder<",
        "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
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

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/avro/SchemaBuilder$UnionBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/SchemaBuilder$Completion<",
            "TR;>;",
            "Lorg/apache/avro/SchemaBuilder$NameContext;",
            "Ljava/util/List<",
            "Lorg/apache/avro/Schema;",
            ">;)V"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/avro/SchemaBuilder$UnionCompletion;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/apache/avro/SchemaBuilder$UnionCompletion;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/util/List;Lorg/apache/avro/SchemaBuilder$1;)V

    invoke-direct {p0, v0, p2, v1}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Lorg/apache/avro/SchemaBuilder$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/util/List;Lorg/apache/avro/SchemaBuilder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaBuilder$UnionBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$2500(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$UnionBuilder;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/avro/SchemaBuilder$UnionBuilder;->create(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$UnionBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static create(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$UnionBuilder;
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
            "Lorg/apache/avro/SchemaBuilder$UnionBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$UnionBuilder;

    invoke-direct {v0, p0, p1}, Lorg/apache/avro/SchemaBuilder$UnionBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)V

    return-object v0
.end method
