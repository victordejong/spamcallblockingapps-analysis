.class public final Lorg/apache/avro/SchemaBuilder$GenericDefault;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GenericDefault"
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
.field private final field:Lorg/apache/avro/SchemaBuilder$FieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/SchemaBuilder$FieldBuilder<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final schema:Lorg/apache/avro/Schema;


# direct methods
.method private constructor <init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/Schema;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/SchemaBuilder$FieldBuilder<",
            "TR;>;",
            "Lorg/apache/avro/Schema;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$GenericDefault;->field:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    .line 4
    iput-object p2, p0, Lorg/apache/avro/SchemaBuilder$GenericDefault;->schema:Lorg/apache/avro/Schema;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/Schema;Lorg/apache/avro/SchemaBuilder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/avro/SchemaBuilder$GenericDefault;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/Schema;)V

    return-void
.end method


# virtual methods
.method public noDefault()Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$GenericDefault;->field:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$GenericDefault;->schema:Lorg/apache/avro/Schema;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->access$5100(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/Schema;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object v0

    return-object v0
.end method

.method public withDefault(Ljava/lang/Object;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$GenericDefault;->field:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$GenericDefault;->schema:Lorg/apache/avro/Schema;

    invoke-static {v0, v1, p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->access$5200(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/Schema;Ljava/lang/Object;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method
