.class public final Lorg/apache/avro/SchemaBuilder$FieldAssembler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldAssembler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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

.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/avro/Schema$Field;",
            ">;"
        }
    .end annotation
.end field

.field private final names:Lorg/apache/avro/SchemaBuilder$NameContext;

.field private final record:Lorg/apache/avro/Schema;


# direct methods
.method private constructor <init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Lorg/apache/avro/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/SchemaBuilder$Completion<",
            "TR;>;",
            "Lorg/apache/avro/SchemaBuilder$NameContext;",
            "Lorg/apache/avro/Schema;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->fields:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    .line 5
    iput-object p2, p0, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    .line 6
    iput-object p3, p0, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->record:Lorg/apache/avro/Schema;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Lorg/apache/avro/Schema;Lorg/apache/avro/SchemaBuilder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Lorg/apache/avro/Schema;)V

    return-void
.end method

.method public static synthetic access$4900(Lorg/apache/avro/SchemaBuilder$FieldAssembler;Lorg/apache/avro/Schema$Field;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->addField(Lorg/apache/avro/Schema$Field;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p0

    return-object p0
.end method

.method private addField(Lorg/apache/avro/Schema$Field;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema$Field;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->fields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method public endRecord()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->record:Lorg/apache/avro/Schema;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->fields:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/avro/Schema;->setFields(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->record:Lorg/apache/avro/Schema;

    invoke-virtual {v0, v1}, Lorg/apache/avro/SchemaBuilder$Completion;->complete(Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$FieldAssembler;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;Lorg/apache/avro/SchemaBuilder$1;)V

    return-object v0
.end method

.method public nullableBoolean(Ljava/lang/String;Z)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;->nullable()Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;->booleanType()Lorg/apache/avro/SchemaBuilder$BooleanDefault;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/avro/SchemaBuilder$BooleanDefault;->booleanDefault(Z)Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method

.method public nullableBytes(Ljava/lang/String;[B)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;->nullable()Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;->bytesType()Lorg/apache/avro/SchemaBuilder$BytesDefault;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/avro/SchemaBuilder$BytesDefault;->bytesDefault([B)Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method

.method public nullableDouble(Ljava/lang/String;D)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;->nullable()Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;->doubleType()Lorg/apache/avro/SchemaBuilder$DoubleDefault;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/apache/avro/SchemaBuilder$DoubleDefault;->doubleDefault(D)Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method

.method public nullableFloat(Ljava/lang/String;F)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;->nullable()Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;->floatType()Lorg/apache/avro/SchemaBuilder$FloatDefault;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/avro/SchemaBuilder$FloatDefault;->floatDefault(F)Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method

.method public nullableInt(Ljava/lang/String;I)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;->nullable()Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;->intType()Lorg/apache/avro/SchemaBuilder$IntDefault;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/avro/SchemaBuilder$IntDefault;->intDefault(I)Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method

.method public nullableLong(Ljava/lang/String;J)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;->nullable()Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;->longType()Lorg/apache/avro/SchemaBuilder$LongDefault;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/apache/avro/SchemaBuilder$LongDefault;->longDefault(J)Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method

.method public nullableString(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;->nullable()Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;->stringType()Lorg/apache/avro/SchemaBuilder$StringDefault;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/avro/SchemaBuilder$StringDefault;->stringDefault(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method

.method public optionalBoolean(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;->optional()Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->booleanType()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    return-object p1
.end method

.method public optionalBytes(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;->optional()Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->bytesType()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    return-object p1
.end method

.method public optionalDouble(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;->optional()Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->doubleType()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    return-object p1
.end method

.method public optionalFloat(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;->optional()Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->floatType()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    return-object p1
.end method

.method public optionalInt(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;->optional()Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->intType()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    return-object p1
.end method

.method public optionalLong(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;->optional()Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->longType()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    return-object p1
.end method

.method public optionalString(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;->optional()Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->stringType()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    return-object p1
.end method

.method public requiredBoolean(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;->booleanType()Lorg/apache/avro/SchemaBuilder$BooleanDefault;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldDefault;->noDefault()Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method

.method public requiredBytes(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;->bytesType()Lorg/apache/avro/SchemaBuilder$BytesDefault;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldDefault;->noDefault()Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method

.method public requiredDouble(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;->doubleType()Lorg/apache/avro/SchemaBuilder$DoubleDefault;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldDefault;->noDefault()Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method

.method public requiredFloat(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;->floatType()Lorg/apache/avro/SchemaBuilder$FloatDefault;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldDefault;->noDefault()Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method

.method public requiredInt(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;->intType()Lorg/apache/avro/SchemaBuilder$IntDefault;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldDefault;->noDefault()Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method

.method public requiredLong(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;->longType()Lorg/apache/avro/SchemaBuilder$LongDefault;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldDefault;->noDefault()Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method

.method public requiredString(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldAssembler;->name(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->type()Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;->stringType()Lorg/apache/avro/SchemaBuilder$StringDefault;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$FieldDefault;->noDefault()Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method
