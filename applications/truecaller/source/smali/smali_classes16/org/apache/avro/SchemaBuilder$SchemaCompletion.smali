.class public Lorg/apache/avro/SchemaBuilder$SchemaCompletion;
.super Lorg/apache/avro/SchemaBuilder$Completion;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SchemaCompletion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/avro/SchemaBuilder$Completion<",
        "Lorg/apache/avro/Schema;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaBuilder$Completion;-><init>(Lorg/apache/avro/SchemaBuilder$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/SchemaBuilder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/SchemaBuilder$SchemaCompletion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic complete(Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$SchemaCompletion;->complete(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1
.end method

.method public complete(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;
    .locals 0

    return-object p1
.end method
