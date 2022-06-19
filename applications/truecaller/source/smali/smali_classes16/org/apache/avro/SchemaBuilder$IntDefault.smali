.class public Lorg/apache/avro/SchemaBuilder$IntDefault;
.super Lorg/apache/avro/SchemaBuilder$FieldDefault;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntDefault"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/avro/SchemaBuilder$FieldDefault<",
        "TR;",
        "Lorg/apache/avro/SchemaBuilder$IntDefault<",
        "TR;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/SchemaBuilder$FieldBuilder<",
            "TR;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldDefault;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/SchemaBuilder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/SchemaBuilder$IntDefault;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;)V

    return-void
.end method


# virtual methods
.method public final intDefault(I)Lorg/apache/avro/SchemaBuilder$FieldAssembler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/avro/SchemaBuilder$FieldAssembler<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/avro/SchemaBuilder$FieldDefault;->access$5300(Lorg/apache/avro/SchemaBuilder$FieldDefault;Ljava/lang/Object;)Lorg/apache/avro/SchemaBuilder$FieldAssembler;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic self()Lorg/apache/avro/SchemaBuilder$FieldDefault;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$IntDefault;->self()Lorg/apache/avro/SchemaBuilder$IntDefault;

    move-result-object v0

    return-object v0
.end method

.method public final self()Lorg/apache/avro/SchemaBuilder$IntDefault;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$IntDefault<",
            "TR;>;"
        }
    .end annotation

    return-object p0
.end method
