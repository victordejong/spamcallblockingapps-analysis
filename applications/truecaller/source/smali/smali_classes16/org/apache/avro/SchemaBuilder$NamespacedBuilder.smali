.class public abstract Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;
.super Lorg/apache/avro/SchemaBuilder$NamedBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NamespacedBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "S:",
        "Lorg/apache/avro/SchemaBuilder$NamespacedBuilder<",
        "TR;TS;>;>",
        "Lorg/apache/avro/SchemaBuilder$NamedBuilder<",
        "TS;>;"
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

.field private namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)V
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
    invoke-direct {p0, p2, p3}, Lorg/apache/avro/SchemaBuilder$NamedBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    return-void
.end method


# virtual methods
.method public final completeSchema(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$PropBuilder;->addPropsTo(Lorg/apache/avro/JsonProperties;)Lorg/apache/avro/JsonProperties;

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->addAliasesTo(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->names()Lorg/apache/avro/SchemaBuilder$NameContext;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/avro/SchemaBuilder$NameContext;->access$500(Lorg/apache/avro/SchemaBuilder$NameContext;Lorg/apache/avro/Schema;)V

    return-object p1
.end method

.method public final context()Lorg/apache/avro/SchemaBuilder$Completion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$Completion<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    return-object v0
.end method

.method public final namespace(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;->namespace:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$PropBuilder;->self()Lorg/apache/avro/SchemaBuilder$PropBuilder;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;

    return-object p1
.end method

.method public final space()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;->namespace:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->names()Lorg/apache/avro/SchemaBuilder$NameContext;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/avro/SchemaBuilder$NameContext;->access$400(Lorg/apache/avro/SchemaBuilder$NameContext;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
