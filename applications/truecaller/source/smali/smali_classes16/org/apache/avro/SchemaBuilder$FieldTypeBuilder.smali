.class public final Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;
.super Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldTypeBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder<",
        "TR;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/SchemaBuilder$FieldBuilder<",
            "TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/SchemaBuilder$CompletionWrapper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/SchemaBuilder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;)V

    return-void
.end method


# virtual methods
.method public nullable()Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;->bldr:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    new-instance v2, Lorg/apache/avro/SchemaBuilder$NullableCompletionWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/avro/SchemaBuilder$NullableCompletionWrapper;-><init>(Lorg/apache/avro/SchemaBuilder$1;)V

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/SchemaBuilder$CompletionWrapper;)V

    return-object v0
.end method

.method public optional()Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder<",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;

    new-instance v1, Lorg/apache/avro/SchemaBuilder$OptionalCompletion;

    iget-object v2, p0, Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;->bldr:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    invoke-direct {v1, v2}, Lorg/apache/avro/SchemaBuilder$OptionalCompletion;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;)V

    iget-object v2, p0, Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Lorg/apache/avro/SchemaBuilder$1;)V

    return-object v0
.end method

.method public unionOf()Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;->bldr:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/SchemaBuilder$1;)V

    return-object v0
.end method
