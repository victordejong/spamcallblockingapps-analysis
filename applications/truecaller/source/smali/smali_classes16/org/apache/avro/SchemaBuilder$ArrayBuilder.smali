.class public final Lorg/apache/avro/SchemaBuilder$ArrayBuilder;
.super Lorg/apache/avro/SchemaBuilder$PropBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArrayBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/avro/SchemaBuilder$PropBuilder<",
        "Lorg/apache/avro/SchemaBuilder$ArrayBuilder<",
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


# direct methods
.method public constructor <init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/SchemaBuilder$Completion<",
            "TR;>;",
            "Lorg/apache/avro/SchemaBuilder$NameContext;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/SchemaBuilder$PropBuilder;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$ArrayBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    .line 3
    iput-object p2, p0, Lorg/apache/avro/SchemaBuilder$ArrayBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    return-void
.end method

.method public static synthetic access$2100(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$ArrayBuilder;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/avro/SchemaBuilder$ArrayBuilder;->create(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$ArrayBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static create(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$ArrayBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/avro/SchemaBuilder$Completion<",
            "TR;>;",
            "Lorg/apache/avro/SchemaBuilder$NameContext;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$ArrayBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$ArrayBuilder;

    invoke-direct {v0, p0, p1}, Lorg/apache/avro/SchemaBuilder$ArrayBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)V

    return-object v0
.end method


# virtual methods
.method public items(Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            ")TR;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/avro/SchemaBuilder$ArrayCompletion;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$ArrayBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/avro/SchemaBuilder$ArrayCompletion;-><init>(Lorg/apache/avro/SchemaBuilder$ArrayBuilder;Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$1;)V

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaBuilder$NestedCompletion;->complete(Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public items()Lorg/apache/avro/SchemaBuilder$TypeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$TypeBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$TypeBuilder;

    new-instance v1, Lorg/apache/avro/SchemaBuilder$ArrayCompletion;

    iget-object v2, p0, Lorg/apache/avro/SchemaBuilder$ArrayBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/apache/avro/SchemaBuilder$ArrayCompletion;-><init>(Lorg/apache/avro/SchemaBuilder$ArrayBuilder;Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$1;)V

    iget-object v2, p0, Lorg/apache/avro/SchemaBuilder$ArrayBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/avro/SchemaBuilder$TypeBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Lorg/apache/avro/SchemaBuilder$1;)V

    return-object v0
.end method

.method public self()Lorg/apache/avro/SchemaBuilder$ArrayBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$ArrayBuilder<",
            "TR;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic self()Lorg/apache/avro/SchemaBuilder$PropBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$ArrayBuilder;->self()Lorg/apache/avro/SchemaBuilder$ArrayBuilder;

    move-result-object v0

    return-object v0
.end method
