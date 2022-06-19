.class public abstract Lorg/apache/avro/SchemaBuilder$NamedBuilder;
.super Lorg/apache/avro/SchemaBuilder$PropBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NamedBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/apache/avro/SchemaBuilder$NamedBuilder<",
        "TS;>;>",
        "Lorg/apache/avro/SchemaBuilder$PropBuilder<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private aliases:[Ljava/lang/String;

.field private doc:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final names:Lorg/apache/avro/SchemaBuilder$NameContext;


# direct methods
.method public constructor <init>(Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/SchemaBuilder$PropBuilder;-><init>()V

    const-string v0, "Type must have a name"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->name:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    return-void
.end method


# virtual methods
.method public final addAliasesTo(Lorg/apache/avro/Schema$Field;)Lorg/apache/avro/Schema$Field;
    .locals 4

    .line 4
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->aliases:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 6
    invoke-virtual {p1, v3}, Lorg/apache/avro/Schema$Field;->addAlias(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final addAliasesTo(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->aliases:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {p1, v3}, Lorg/apache/avro/Schema;->addAlias(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final varargs aliases([Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$NamedBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->aliases:[Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$PropBuilder;->self()Lorg/apache/avro/SchemaBuilder$PropBuilder;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/SchemaBuilder$NamedBuilder;

    return-object p1
.end method

.method public final doc()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->doc:Ljava/lang/String;

    return-object v0
.end method

.method public final doc(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$NamedBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->doc:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$PropBuilder;->self()Lorg/apache/avro/SchemaBuilder$PropBuilder;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/SchemaBuilder$NamedBuilder;

    return-object p1
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final names()Lorg/apache/avro/SchemaBuilder$NameContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    return-object v0
.end method
