.class public Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseTypeBuilder"
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

.field private final names:Lorg/apache/avro/SchemaBuilder$NameContext;


# direct methods
.method private constructor <init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)V
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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    .line 4
    iput-object p2, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Lorg/apache/avro/SchemaBuilder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)V

    return-void
.end method


# virtual methods
.method public final array()Lorg/apache/avro/SchemaBuilder$ArrayBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$ArrayBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$ArrayBuilder;->access$2100(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$ArrayBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final booleanBuilder()Lorg/apache/avro/SchemaBuilder$BooleanBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$BooleanBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$BooleanBuilder;->access$1200(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$BooleanBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final booleanType()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->booleanBuilder()Lorg/apache/avro/SchemaBuilder$BooleanBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/SchemaBuilder$BooleanBuilder;->endBoolean()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bytesBuilder()Lorg/apache/avro/SchemaBuilder$BytesBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$BytesBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$BytesBuilder;->access$1800(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$BytesBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final bytesType()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->bytesBuilder()Lorg/apache/avro/SchemaBuilder$BytesBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/SchemaBuilder$BytesBuilder;->endBytes()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final doubleBuilder()Lorg/apache/avro/SchemaBuilder$DoubleBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$DoubleBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$DoubleBuilder;->access$1600(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$DoubleBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final doubleType()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->doubleBuilder()Lorg/apache/avro/SchemaBuilder$DoubleBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/SchemaBuilder$DoubleBuilder;->endDouble()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final enumeration(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$EnumBuilder;
    .locals 2
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
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1, p1}, Lorg/apache/avro/SchemaBuilder$EnumBuilder;->access$2300(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$EnumBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final fixed(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FixedBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FixedBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1, p1}, Lorg/apache/avro/SchemaBuilder$FixedBuilder;->access$2200(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FixedBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final floatBuilder()Lorg/apache/avro/SchemaBuilder$FloatBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$FloatBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$FloatBuilder;->access$1500(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$FloatBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final floatType()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->floatBuilder()Lorg/apache/avro/SchemaBuilder$FloatBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/SchemaBuilder$FloatBuilder;->endFloat()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final intBuilder()Lorg/apache/avro/SchemaBuilder$IntBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$IntBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$IntBuilder;->access$1300(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$IntBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final intType()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->intBuilder()Lorg/apache/avro/SchemaBuilder$IntBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/SchemaBuilder$IntBuilder;->endInt()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final longBuilder()Lorg/apache/avro/SchemaBuilder$LongBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$LongBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$LongBuilder;->access$1400(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$LongBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final longType()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->longBuilder()Lorg/apache/avro/SchemaBuilder$LongBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/SchemaBuilder$LongBuilder;->endLong()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final map()Lorg/apache/avro/SchemaBuilder$MapBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$MapBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$MapBuilder;->access$2000(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$MapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final nullBuilder()Lorg/apache/avro/SchemaBuilder$NullBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$NullBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$NullBuilder;->access$1900(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$NullBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final nullType()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->nullBuilder()Lorg/apache/avro/SchemaBuilder$NullBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/SchemaBuilder$NullBuilder;->endNull()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nullable()Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;

    new-instance v1, Lorg/apache/avro/SchemaBuilder$NullableCompletion;

    iget-object v2, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/avro/SchemaBuilder$NullableCompletion;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$1;)V

    iget-object v2, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)V

    return-object v0
.end method

.method public final record(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$RecordBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$RecordBuilder<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1, p1}, Lorg/apache/avro/SchemaBuilder$RecordBuilder;->access$2400(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$RecordBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final stringBuilder()Lorg/apache/avro/SchemaBuilder$StringBldr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$StringBldr<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$StringBldr;->access$1700(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$StringBldr;

    move-result-object v0

    return-object v0
.end method

.method public final stringType()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->stringBuilder()Lorg/apache/avro/SchemaBuilder$StringBldr;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/SchemaBuilder$StringBldr;->endString()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final type(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->type(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final type(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, p1, p2}, Lorg/apache/avro/SchemaBuilder$NameContext;->access$1100(Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->type(Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final type(Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            ")TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaBuilder$Completion;->complete(Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public unionOf()Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder<",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "TR;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->context:Lorg/apache/avro/SchemaBuilder$Completion;

    iget-object v1, p0, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->names:Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaBuilder$UnionBuilder;->access$2500(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;)Lorg/apache/avro/SchemaBuilder$UnionBuilder;

    move-result-object v0

    return-object v0
.end method
