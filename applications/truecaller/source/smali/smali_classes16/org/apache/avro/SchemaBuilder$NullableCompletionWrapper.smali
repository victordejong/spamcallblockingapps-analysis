.class public final Lorg/apache/avro/SchemaBuilder$NullableCompletionWrapper;
.super Lorg/apache/avro/SchemaBuilder$CompletionWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NullableCompletionWrapper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaBuilder$CompletionWrapper;-><init>(Lorg/apache/avro/SchemaBuilder$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/SchemaBuilder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/SchemaBuilder$NullableCompletionWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public wrap(Lorg/apache/avro/SchemaBuilder$Completion;)Lorg/apache/avro/SchemaBuilder$Completion;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/avro/SchemaBuilder$Completion<",
            "TR;>;)",
            "Lorg/apache/avro/SchemaBuilder$Completion<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$NullableCompletion;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/avro/SchemaBuilder$NullableCompletion;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$1;)V

    return-object v0
.end method
