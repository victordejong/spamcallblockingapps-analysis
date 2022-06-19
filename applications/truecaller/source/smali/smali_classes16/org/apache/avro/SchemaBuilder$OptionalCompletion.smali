.class public Lorg/apache/avro/SchemaBuilder$OptionalCompletion;
.super Lorg/apache/avro/SchemaBuilder$Completion;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionalCompletion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/avro/SchemaBuilder$Completion<",
        "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field private final bldr:Lorg/apache/avro/SchemaBuilder$FieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/SchemaBuilder$FieldBuilder<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/SchemaBuilder$FieldBuilder<",
            "TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaBuilder$Completion;-><init>(Lorg/apache/avro/SchemaBuilder$1;)V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$OptionalCompletion;->bldr:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    return-void
.end method


# virtual methods
.method public bridge synthetic complete(Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$OptionalCompletion;->complete(Lorg/apache/avro/Schema;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method

.method public complete(Lorg/apache/avro/Schema;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/avro/Schema;

    .line 2
    invoke-static {}, Lorg/apache/avro/SchemaBuilder;->access$5400()Lorg/apache/avro/Schema;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/avro/Schema;->createUnion(Ljava/util/List;)Lorg/apache/avro/Schema;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$OptionalCompletion;->bldr:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->access$5200(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/Schema;Ljava/lang/Object;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method
