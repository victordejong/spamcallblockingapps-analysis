.class public final Lorg/apache/avro/SchemaBuilder$TypeBuilder;
.super Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypeBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder<",
        "TR;>;"
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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Lorg/apache/avro/SchemaBuilder$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Lorg/apache/avro/SchemaBuilder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/avro/SchemaBuilder$TypeBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)V

    return-void
.end method


# virtual methods
.method public nullable()Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->nullable()Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public unionOf()Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder<",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "TR;>;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->unionOf()Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;

    move-result-object v0

    return-object v0
.end method
