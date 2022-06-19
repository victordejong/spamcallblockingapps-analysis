.class public final Lorg/apache/avro/SchemaBuilder$UnionAccumulator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnionAccumulator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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
    .locals 0
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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$UnionAccumulator;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    .line 4
    iput-object p2, p0, Lorg/apache/avro/SchemaBuilder$UnionAccumulator;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    .line 5
    iput-object p3, p0, Lorg/apache/avro/SchemaBuilder$UnionAccumulator;->schemas:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/util/List;Lorg/apache/avro/SchemaBuilder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaBuilder$UnionAccumulator;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public and()Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder<",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "TR;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$UnionBuilder;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionAccumulator;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    iget-object v2, p0, Lorg/apache/avro/SchemaBuilder$UnionAccumulator;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    iget-object v3, p0, Lorg/apache/avro/SchemaBuilder$UnionAccumulator;->schemas:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/avro/SchemaBuilder$UnionBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/util/List;Lorg/apache/avro/SchemaBuilder$1;)V

    return-object v0
.end method

.method public endUnion()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$UnionAccumulator;->schemas:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/avro/Schema;->createUnion(Ljava/util/List;)Lorg/apache/avro/Schema;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionAccumulator;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    invoke-virtual {v1, v0}, Lorg/apache/avro/SchemaBuilder$Completion;->complete(Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
