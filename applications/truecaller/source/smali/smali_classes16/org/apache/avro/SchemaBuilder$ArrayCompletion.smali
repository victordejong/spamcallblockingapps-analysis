.class public Lorg/apache/avro/SchemaBuilder$ArrayCompletion;
.super Lorg/apache/avro/SchemaBuilder$NestedCompletion;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayCompletion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/avro/SchemaBuilder$NestedCompletion<",
        "TR;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/avro/SchemaBuilder$ArrayBuilder;Lorg/apache/avro/SchemaBuilder$Completion;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/SchemaBuilder$ArrayBuilder<",
            "TR;>;",
            "Lorg/apache/avro/SchemaBuilder$Completion<",
            "TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/avro/SchemaBuilder$NestedCompletion;-><init>(Lorg/apache/avro/SchemaBuilder$PropBuilder;Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/SchemaBuilder$ArrayBuilder;Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/avro/SchemaBuilder$ArrayCompletion;-><init>(Lorg/apache/avro/SchemaBuilder$ArrayBuilder;Lorg/apache/avro/SchemaBuilder$Completion;)V

    return-void
.end method


# virtual methods
.method public outerSchema(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/avro/Schema;->createArray(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1
.end method
