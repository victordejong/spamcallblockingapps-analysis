.class public abstract Lorg/apache/avro/SchemaBuilder$NestedCompletion;
.super Lorg/apache/avro/SchemaBuilder$Completion;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NestedCompletion"
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
.field private final assembler:Lorg/apache/avro/SchemaBuilder$PropBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/SchemaBuilder$PropBuilder<",
            "*>;"
        }
    .end annotation
.end field

.field private final context:Lorg/apache/avro/SchemaBuilder$Completion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/SchemaBuilder$Completion<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/avro/SchemaBuilder$PropBuilder;Lorg/apache/avro/SchemaBuilder$Completion;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/SchemaBuilder$PropBuilder<",
            "*>;",
            "Lorg/apache/avro/SchemaBuilder$Completion<",
            "TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaBuilder$Completion;-><init>(Lorg/apache/avro/SchemaBuilder$1;)V

    .line 3
    iput-object p2, p0, Lorg/apache/avro/SchemaBuilder$NestedCompletion;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    .line 4
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$NestedCompletion;->assembler:Lorg/apache/avro/SchemaBuilder$PropBuilder;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/SchemaBuilder$PropBuilder;Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/avro/SchemaBuilder$NestedCompletion;-><init>(Lorg/apache/avro/SchemaBuilder$PropBuilder;Lorg/apache/avro/SchemaBuilder$Completion;)V

    return-void
.end method


# virtual methods
.method public final complete(Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            ")TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$NestedCompletion;->outerSchema(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$NestedCompletion;->assembler:Lorg/apache/avro/SchemaBuilder$PropBuilder;

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaBuilder$PropBuilder;->addPropsTo(Lorg/apache/avro/JsonProperties;)Lorg/apache/avro/JsonProperties;

    .line 3
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$NestedCompletion;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaBuilder$Completion;->complete(Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract outerSchema(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;
.end method
