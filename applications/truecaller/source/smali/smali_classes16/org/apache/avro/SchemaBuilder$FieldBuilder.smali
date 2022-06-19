.class public final Lorg/apache/avro/SchemaBuilder$FieldBuilder;
.super Lorg/apache/avro/SchemaBuilder$NamedBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/avro/SchemaBuilder$NamedBuilder<",
        "Lorg/apache/avro/SchemaBuilder$FieldBuilder<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field private final fields:Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation
.end field

.field private order:Lorg/apache/avro/Schema$Field$Order;


# direct methods
.method private constructor <init>(Lorg/apache/avro/SchemaBuilder$FieldAssembler;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;",
            "Lorg/apache/avro/SchemaBuilder$NameContext;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p2, p3}, Lorg/apache/avro/SchemaBuilder$NamedBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)V

    .line 3
    sget-object p2, Lorg/apache/avro/Schema$Field$Order;->ASCENDING:Lorg/apache/avro/Schema$Field$Order;

    iput-object p2, p0, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->order:Lorg/apache/avro/Schema$Field$Order;

    .line 4
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->fields:Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/SchemaBuilder$FieldAssembler;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;Lorg/apache/avro/SchemaBuilder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$FieldAssembler;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$5100(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/Schema;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->completeField(Lorg/apache/avro/Schema;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$5200(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/Schema;Ljava/lang/Object;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->completeField(Lorg/apache/avro/Schema;Ljava/lang/Object;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p0

    return-object p0
.end method

.method private completeField(Lorg/apache/avro/Schema;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->completeField(Lorg/apache/avro/Schema;Le/k/a/c/l;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method

.method private completeField(Lorg/apache/avro/Schema;Le/k/a/c/l;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            "Le/k/a/c/l;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 4
    new-instance v7, Lorg/apache/avro/Schema$Field;

    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->doc()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->order:Lorg/apache/avro/Schema$Field$Order;

    const/4 v5, 0x1

    move-object v0, v7

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/avro/Schema$Field;-><init>(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Le/k/a/c/l;ZLorg/apache/avro/Schema$Field$Order;)V

    .line 5
    invoke-virtual {p0, v7}, Lorg/apache/avro/SchemaBuilder$PropBuilder;->addPropsTo(Lorg/apache/avro/JsonProperties;)Lorg/apache/avro/JsonProperties;

    .line 6
    invoke-virtual {p0, v7}, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->addAliasesTo(Lorg/apache/avro/Schema$Field;)Lorg/apache/avro/Schema$Field;

    .line 7
    iget-object p1, p0, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->fields:Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    invoke-static {p1, v7}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->access$4900(Lorg/apache/avro/SchemaBuilder$FieldAssembler;Lorg/apache/avro/Schema$Field;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method

.method private completeField(Lorg/apache/avro/Schema;Ljava/lang/Object;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/apache/avro/SchemaBuilder;->access$4800(Ljava/lang/Object;)Le/k/a/c/l;

    move-result-object p2

    .line 2
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->completeField(Lorg/apache/avro/Schema;Le/k/a/c/l;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public orderAscending()Lorg/apache/avro/SchemaBuilder$FieldBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$FieldBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/Schema$Field$Order;->ASCENDING:Lorg/apache/avro/Schema$Field$Order;

    iput-object v0, p0, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->order:Lorg/apache/avro/Schema$Field$Order;

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->self()Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object v0

    return-object v0
.end method

.method public orderDescending()Lorg/apache/avro/SchemaBuilder$FieldBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$FieldBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/Schema$Field$Order;->DESCENDING:Lorg/apache/avro/Schema$Field$Order;

    iput-object v0, p0, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->order:Lorg/apache/avro/Schema$Field$Order;

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->self()Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object v0

    return-object v0
.end method

.method public orderIgnore()Lorg/apache/avro/SchemaBuilder$FieldBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$FieldBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/Schema$Field$Order;->IGNORE:Lorg/apache/avro/Schema$Field$Order;

    iput-object v0, p0, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->order:Lorg/apache/avro/Schema$Field$Order;

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->self()Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object v0

    return-object v0
.end method

.method public self()Lorg/apache/avro/SchemaBuilder$FieldBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$FieldBuilder<",
            "TR;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic self()Lorg/apache/avro/SchemaBuilder$PropBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->self()Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object v0

    return-object v0
.end method

.method public type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/SchemaBuilder$1;)V

    return-object v0
.end method

.method public type(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$GenericDefault;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$GenericDefault<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$GenericDefault;

    move-result-object p1

    return-object p1
.end method

.method public type(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$GenericDefault;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$GenericDefault<",
            "TR;>;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->names()Lorg/apache/avro/SchemaBuilder$NameContext;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/avro/SchemaBuilder$NameContext;->access$1100(Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type(Lorg/apache/avro/Schema;)Lorg/apache/avro/SchemaBuilder$GenericDefault;

    move-result-object p1

    return-object p1
.end method

.method public type(Lorg/apache/avro/Schema;)Lorg/apache/avro/SchemaBuilder$GenericDefault;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$GenericDefault<",
            "TR;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/avro/SchemaBuilder$GenericDefault;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/avro/SchemaBuilder$GenericDefault;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/Schema;Lorg/apache/avro/SchemaBuilder$1;)V

    return-object v0
.end method
