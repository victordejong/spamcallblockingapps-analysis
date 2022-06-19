.class public Lorg/apache/avro/SchemaBuilder$UnionCompletion;
.super Lorg/apache/avro/SchemaBuilder$Completion;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnionCompletion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/avro/SchemaBuilder$Completion<",
        "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
        "TR;>;>;"
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

.field private final names:Lorg/apache/avro/SchemaBuilder$NameContext;

.field private final schemas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/avro/Schema;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/util/List;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaBuilder$Completion;-><init>(Lorg/apache/avro/SchemaBuilder$1;)V

    .line 3
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$UnionCompletion;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    .line 4
    iput-object p2, p0, Lorg/apache/avro/SchemaBuilder$UnionCompletion;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    .line 5
    iput-object p3, p0, Lorg/apache/avro/SchemaBuilder$UnionCompletion;->schemas:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/util/List;Lorg/apache/avro/SchemaBuilder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaBuilder$UnionCompletion;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic complete(Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$UnionCompletion;->complete(Lorg/apache/avro/Schema;)Lorg/apache/avro/SchemaBuilder$UnionAccumulator;

    move-result-object p1

    return-object p1
.end method

.method public complete(Lorg/apache/avro/Schema;)Lorg/apache/avro/SchemaBuilder$UnionAccumulator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "TR;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionCompletion;->schemas:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p1, Lorg/apache/avro/SchemaBuilder$UnionAccumulator;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionCompletion;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    iget-object v2, p0, Lorg/apache/avro/SchemaBuilder$UnionCompletion;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v0, v3}, Lorg/apache/avro/SchemaBuilder$UnionAccumulator;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/util/List;Lorg/apache/avro/SchemaBuilder$1;)V

    return-object p1
.end method
