.class public abstract Lorg/apache/avro/SchemaBuilder$FieldDefault;
.super Lorg/apache/avro/SchemaBuilder$Completion;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FieldDefault"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "S:",
        "Lorg/apache/avro/SchemaBuilder$FieldDefault<",
        "TR;TS;>;>",
        "Lorg/apache/avro/SchemaBuilder$Completion<",
        "TS;>;"
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

.field private schema:Lorg/apache/avro/Schema;


# direct methods
.method public constructor <init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/SchemaBuilder$FieldBuilder<",
            "TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaBuilder$Completion;-><init>(Lorg/apache/avro/SchemaBuilder$1;)V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$FieldDefault;->field:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    return-void
.end method

.method public static synthetic access$5300(Lorg/apache/avro/SchemaBuilder$FieldDefault;Ljava/lang/Object;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldDefault;->usingDefault(Ljava/lang/Object;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p0

    return-object p0
.end method

.method private usingDefault(Ljava/lang/Object;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
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
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$FieldDefault;->field:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$FieldDefault;->schema:Lorg/apache/avro/Schema;

    invoke-static {v0, v1, p1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->access$5200(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/Schema;Ljava/lang/Object;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic complete(Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldDefault;->complete(Lorg/apache/avro/Schema;)Lorg/apache/avro/SchemaBuilder$FieldDefault;

    move-result-object p1

    return-object p1
.end method

.method public final complete(Lorg/apache/avro/Schema;)Lorg/apache/avro/SchemaBuilder$FieldDefault;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            ")TS;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$FieldDefault;->schema:Lorg/apache/avro/Schema;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$FieldDefault;->self()Lorg/apache/avro/SchemaBuilder$FieldDefault;

    move-result-object p1

    return-object p1
.end method

.method public final noDefault()Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$FieldDefault;->field:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$FieldDefault;->schema:Lorg/apache/avro/Schema;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$FieldBuilder;->access$5100(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/Schema;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object v0

    return-object v0
.end method

.method public abstract self()Lorg/apache/avro/SchemaBuilder$FieldDefault;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method
