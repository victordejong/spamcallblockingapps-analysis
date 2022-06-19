.class public final Lorg/apache/avro/SchemaBuilder$EnumBuilder;
.super Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/avro/SchemaBuilder$NamespacedBuilder<",
        "TR;",
        "Lorg/apache/avro/SchemaBuilder$EnumBuilder<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field private enumDefault:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/SchemaBuilder$Completion<",
            "TR;>;",
            "Lorg/apache/avro/SchemaBuilder$NameContext;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$EnumBuilder;->enumDefault:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$2300(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$EnumBuilder;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/apache/avro/SchemaBuilder$EnumBuilder;->create(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$EnumBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static create(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$EnumBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/avro/SchemaBuilder$Completion<",
            "TR;>;",
            "Lorg/apache/avro/SchemaBuilder$NameContext;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$EnumBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$EnumBuilder;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/avro/SchemaBuilder$EnumBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public defaultSymbol(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$EnumBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$EnumBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$EnumBuilder;->enumDefault:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$EnumBuilder;->self()Lorg/apache/avro/SchemaBuilder$EnumBuilder;

    move-result-object p1

    return-object p1
.end method

.method public self()Lorg/apache/avro/SchemaBuilder$EnumBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$EnumBuilder<",
            "TR;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic self()Lorg/apache/avro/SchemaBuilder$PropBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$EnumBuilder;->self()Lorg/apache/avro/SchemaBuilder$EnumBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs symbols([Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->doc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;->space()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v3, p0, Lorg/apache/avro/SchemaBuilder$EnumBuilder;->enumDefault:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, v3}, Lorg/apache/avro/Schema;->createEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;->completeSchema(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;->context()Lorg/apache/avro/SchemaBuilder$Completion;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaBuilder$Completion;->complete(Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
