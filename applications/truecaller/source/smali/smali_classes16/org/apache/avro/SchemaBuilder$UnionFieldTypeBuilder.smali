.class public final Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnionFieldTypeBuilder"
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
.field private final bldr:Lorg/apache/avro/SchemaBuilder$FieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/SchemaBuilder$FieldBuilder<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final names:Lorg/apache/avro/SchemaBuilder$NameContext;


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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->bldr:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    .line 4
    invoke-virtual {p1}, Lorg/apache/avro/SchemaBuilder$NamedBuilder;->names()Lorg/apache/avro/SchemaBuilder$NameContext;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/SchemaBuilder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;)V

    return-void
.end method

.method private completion(Lorg/apache/avro/SchemaBuilder$Completion;)Lorg/apache/avro/SchemaBuilder$UnionCompletion;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/avro/SchemaBuilder$Completion<",
            "TC;>;)",
            "Lorg/apache/avro/SchemaBuilder$UnionCompletion<",
            "TC;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$UnionCompletion;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/apache/avro/SchemaBuilder$UnionCompletion;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/util/List;Lorg/apache/avro/SchemaBuilder$1;)V

    return-object v0
.end method


# virtual methods
.method public array()Lorg/apache/avro/SchemaBuilder$ArrayBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$ArrayBuilder<",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/SchemaBuilder$ArrayDefault<",
            "TR;>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$ArrayDefault;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->bldr:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/SchemaBuilder$ArrayDefault;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/SchemaBuilder$1;)V

    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->completion(Lorg/apache/avro/SchemaBuilder$Completion;)Lorg/apache/avro/SchemaBuilder$UnionCompletion;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$ArrayBuilder;->access$2100(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$ArrayBuilder;

    move-result-object v0

    return-object v0
.end method

.method public booleanBuilder()Lorg/apache/avro/SchemaBuilder$BooleanBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$BooleanBuilder<",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/SchemaBuilder$BooleanDefault<",
            "TR;>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$BooleanDefault;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->bldr:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/SchemaBuilder$BooleanDefault;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/SchemaBuilder$1;)V

    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->completion(Lorg/apache/avro/SchemaBuilder$Completion;)Lorg/apache/avro/SchemaBuilder$UnionCompletion;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$BooleanBuilder;->access$1200(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$BooleanBuilder;

    move-result-object v0

    return-object v0
.end method

.method public booleanType()Lorg/apache/avro/SchemaBuilder$UnionAccumulator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/SchemaBuilder$BooleanDefault<",
            "TR;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->booleanBuilder()Lorg/apache/avro/SchemaBuilder$BooleanBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/SchemaBuilder$BooleanBuilder;->endBoolean()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/SchemaBuilder$UnionAccumulator;

    return-object v0
.end method

.method public bytesBuilder()Lorg/apache/avro/SchemaBuilder$BytesBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$BytesBuilder<",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/SchemaBuilder$BytesDefault<",
            "TR;>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$BytesDefault;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->bldr:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/SchemaBuilder$BytesDefault;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/SchemaBuilder$1;)V

    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->completion(Lorg/apache/avro/SchemaBuilder$Completion;)Lorg/apache/avro/SchemaBuilder$UnionCompletion;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$BytesBuilder;->access$1800(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$BytesBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bytesType()Lorg/apache/avro/SchemaBuilder$UnionAccumulator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/SchemaBuilder$BytesDefault<",
            "TR;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->bytesBuilder()Lorg/apache/avro/SchemaBuilder$BytesBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/SchemaBuilder$BytesBuilder;->endBytes()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/SchemaBuilder$UnionAccumulator;

    return-object v0
.end method

.method public doubleBuilder()Lorg/apache/avro/SchemaBuilder$DoubleBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$DoubleBuilder<",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/SchemaBuilder$DoubleDefault<",
            "TR;>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$DoubleDefault;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->bldr:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/SchemaBuilder$DoubleDefault;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/SchemaBuilder$1;)V

    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->completion(Lorg/apache/avro/SchemaBuilder$Completion;)Lorg/apache/avro/SchemaBuilder$UnionCompletion;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$DoubleBuilder;->access$1600(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$DoubleBuilder;

    move-result-object v0

    return-object v0
.end method

.method public doubleType()Lorg/apache/avro/SchemaBuilder$UnionAccumulator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/SchemaBuilder$DoubleDefault<",
            "TR;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->doubleBuilder()Lorg/apache/avro/SchemaBuilder$DoubleBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/SchemaBuilder$DoubleBuilder;->endDouble()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/SchemaBuilder$UnionAccumulator;

    return-object v0
.end method

.method public enumeration(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$EnumBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$EnumBuilder<",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/SchemaBuilder$EnumDefault<",
            "TR;>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$EnumDefault;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->bldr:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/SchemaBuilder$EnumDefault;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/SchemaBuilder$1;)V

    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->completion(Lorg/apache/avro/SchemaBuilder$Completion;)Lorg/apache/avro/SchemaBuilder$UnionCompletion;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1, p1}, Lorg/apache/avro/SchemaBuilder$EnumBuilder;->access$2300(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$EnumBuilder;

    move-result-object p1

    return-object p1
.end method

.method public fixed(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FixedBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FixedBuilder<",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/SchemaBuilder$FixedDefault<",
            "TR;>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$FixedDefault;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->bldr:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/SchemaBuilder$FixedDefault;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/SchemaBuilder$1;)V

    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->completion(Lorg/apache/avro/SchemaBuilder$Completion;)Lorg/apache/avro/SchemaBuilder$UnionCompletion;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1, p1}, Lorg/apache/avro/SchemaBuilder$FixedBuilder;->access$2200(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FixedBuilder;

    move-result-object p1

    return-object p1
.end method

.method public floatBuilder()Lorg/apache/avro/SchemaBuilder$FloatBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$FloatBuilder<",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/SchemaBuilder$FloatDefault<",
            "TR;>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$FloatDefault;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->bldr:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/SchemaBuilder$FloatDefault;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/SchemaBuilder$1;)V

    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->completion(Lorg/apache/avro/SchemaBuilder$Completion;)Lorg/apache/avro/SchemaBuilder$UnionCompletion;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$FloatBuilder;->access$1500(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$FloatBuilder;

    move-result-object v0

    return-object v0
.end method

.method public floatType()Lorg/apache/avro/SchemaBuilder$UnionAccumulator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/SchemaBuilder$FloatDefault<",
            "TR;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->floatBuilder()Lorg/apache/avro/SchemaBuilder$FloatBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/SchemaBuilder$FloatBuilder;->endFloat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/SchemaBuilder$UnionAccumulator;

    return-object v0
.end method

.method public intBuilder()Lorg/apache/avro/SchemaBuilder$IntBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$IntBuilder<",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/SchemaBuilder$IntDefault<",
            "TR;>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$IntDefault;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->bldr:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/SchemaBuilder$IntDefault;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/SchemaBuilder$1;)V

    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->completion(Lorg/apache/avro/SchemaBuilder$Completion;)Lorg/apache/avro/SchemaBuilder$UnionCompletion;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$IntBuilder;->access$1300(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$IntBuilder;

    move-result-object v0

    return-object v0
.end method

.method public intType()Lorg/apache/avro/SchemaBuilder$UnionAccumulator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/SchemaBuilder$IntDefault<",
            "TR;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->intBuilder()Lorg/apache/avro/SchemaBuilder$IntBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/SchemaBuilder$IntBuilder;->endInt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/SchemaBuilder$UnionAccumulator;

    return-object v0
.end method

.method public longBuilder()Lorg/apache/avro/SchemaBuilder$LongBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$LongBuilder<",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/SchemaBuilder$LongDefault<",
            "TR;>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$LongDefault;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->bldr:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/SchemaBuilder$LongDefault;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/SchemaBuilder$1;)V

    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->completion(Lorg/apache/avro/SchemaBuilder$Completion;)Lorg/apache/avro/SchemaBuilder$UnionCompletion;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$LongBuilder;->access$1400(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$LongBuilder;

    move-result-object v0

    return-object v0
.end method

.method public longType()Lorg/apache/avro/SchemaBuilder$UnionAccumulator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/SchemaBuilder$LongDefault<",
            "TR;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->longBuilder()Lorg/apache/avro/SchemaBuilder$LongBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/SchemaBuilder$LongBuilder;->endLong()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/SchemaBuilder$UnionAccumulator;

    return-object v0
.end method

.method public map()Lorg/apache/avro/SchemaBuilder$MapBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$MapBuilder<",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/SchemaBuilder$MapDefault<",
            "TR;>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$MapDefault;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->bldr:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/SchemaBuilder$MapDefault;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/SchemaBuilder$1;)V

    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->completion(Lorg/apache/avro/SchemaBuilder$Completion;)Lorg/apache/avro/SchemaBuilder$UnionCompletion;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$MapBuilder;->access$2000(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$MapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public nullBuilder()Lorg/apache/avro/SchemaBuilder$NullBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$NullBuilder<",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/SchemaBuilder$NullDefault<",
            "TR;>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$NullDefault;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->bldr:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/SchemaBuilder$NullDefault;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/SchemaBuilder$1;)V

    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->completion(Lorg/apache/avro/SchemaBuilder$Completion;)Lorg/apache/avro/SchemaBuilder$UnionCompletion;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$NullBuilder;->access$1900(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$NullBuilder;

    move-result-object v0

    return-object v0
.end method

.method public nullType()Lorg/apache/avro/SchemaBuilder$UnionAccumulator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/SchemaBuilder$NullDefault<",
            "TR;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->nullBuilder()Lorg/apache/avro/SchemaBuilder$NullBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/SchemaBuilder$NullBuilder;->endNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/SchemaBuilder$UnionAccumulator;

    return-object v0
.end method

.method public record(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$RecordBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$RecordBuilder<",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/SchemaBuilder$RecordDefault<",
            "TR;>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$RecordDefault;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->bldr:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/SchemaBuilder$RecordDefault;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/SchemaBuilder$1;)V

    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->completion(Lorg/apache/avro/SchemaBuilder$Completion;)Lorg/apache/avro/SchemaBuilder$UnionCompletion;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1, p1}, Lorg/apache/avro/SchemaBuilder$RecordBuilder;->access$2400(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$RecordBuilder;

    move-result-object p1

    return-object p1
.end method

.method public stringBuilder()Lorg/apache/avro/SchemaBuilder$StringBldr;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$StringBldr<",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/SchemaBuilder$StringDefault<",
            "TR;>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$StringDefault;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->bldr:Lorg/apache/avro/SchemaBuilder$FieldBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/SchemaBuilder$StringDefault;-><init>(Lorg/apache/avro/SchemaBuilder$FieldBuilder;Lorg/apache/avro/SchemaBuilder$1;)V

    invoke-direct {p0, v0}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->completion(Lorg/apache/avro/SchemaBuilder$Completion;)Lorg/apache/avro/SchemaBuilder$UnionCompletion;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$StringBldr;->access$1700(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$StringBldr;

    move-result-object v0

    return-object v0
.end method

.method public stringType()Lorg/apache/avro/SchemaBuilder$UnionAccumulator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/SchemaBuilder$StringDefault<",
            "TR;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;->stringBuilder()Lorg/apache/avro/SchemaBuilder$StringBldr;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/SchemaBuilder$StringBldr;->endString()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/SchemaBuilder$UnionAccumulator;

    return-object v0
.end method
