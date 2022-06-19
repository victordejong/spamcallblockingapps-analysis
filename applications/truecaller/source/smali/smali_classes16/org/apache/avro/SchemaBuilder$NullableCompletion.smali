.class public Lorg/apache/avro/SchemaBuilder$NullableCompletion;
.super Lorg/apache/avro/SchemaBuilder$Completion;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullableCompletion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/avro/SchemaBuilder$Completion<",
        "TR;>;"
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


# direct methods
.method private constructor <init>(Lorg/apache/avro/SchemaBuilder$Completion;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/SchemaBuilder$Completion<",
            "TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaBuilder$Completion;-><init>(Lorg/apache/avro/SchemaBuilder$1;)V

    .line 3
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$NullableCompletion;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/SchemaBuilder$NullableCompletion;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;)V

    return-void
.end method


# virtual methods
.method public complete(Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            ")TR;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/avro/Schema;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    invoke-static {}, Lorg/apache/avro/SchemaBuilder;->access$5400()Lorg/apache/avro/Schema;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/avro/Schema;->createUnion(Ljava/util/List;)Lorg/apache/avro/Schema;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$NullableCompletion;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaBuilder$Completion;->complete(Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
