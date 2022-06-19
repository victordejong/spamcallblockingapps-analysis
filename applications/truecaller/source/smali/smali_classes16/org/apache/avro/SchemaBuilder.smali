.class public Lorg/apache/avro/SchemaBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/SchemaBuilder$UnionAccumulator;,
        Lorg/apache/avro/SchemaBuilder$UnionCompletion;,
        Lorg/apache/avro/SchemaBuilder$ArrayCompletion;,
        Lorg/apache/avro/SchemaBuilder$MapCompletion;,
        Lorg/apache/avro/SchemaBuilder$NestedCompletion;,
        Lorg/apache/avro/SchemaBuilder$NullableCompletionWrapper;,
        Lorg/apache/avro/SchemaBuilder$CompletionWrapper;,
        Lorg/apache/avro/SchemaBuilder$OptionalCompletion;,
        Lorg/apache/avro/SchemaBuilder$NullableCompletion;,
        Lorg/apache/avro/SchemaBuilder$SchemaCompletion;,
        Lorg/apache/avro/SchemaBuilder$Completion;,
        Lorg/apache/avro/SchemaBuilder$GenericDefault;,
        Lorg/apache/avro/SchemaBuilder$RecordDefault;,
        Lorg/apache/avro/SchemaBuilder$EnumDefault;,
        Lorg/apache/avro/SchemaBuilder$FixedDefault;,
        Lorg/apache/avro/SchemaBuilder$ArrayDefault;,
        Lorg/apache/avro/SchemaBuilder$MapDefault;,
        Lorg/apache/avro/SchemaBuilder$NullDefault;,
        Lorg/apache/avro/SchemaBuilder$BytesDefault;,
        Lorg/apache/avro/SchemaBuilder$StringDefault;,
        Lorg/apache/avro/SchemaBuilder$DoubleDefault;,
        Lorg/apache/avro/SchemaBuilder$FloatDefault;,
        Lorg/apache/avro/SchemaBuilder$LongDefault;,
        Lorg/apache/avro/SchemaBuilder$IntDefault;,
        Lorg/apache/avro/SchemaBuilder$BooleanDefault;,
        Lorg/apache/avro/SchemaBuilder$FieldDefault;,
        Lorg/apache/avro/SchemaBuilder$FieldBuilder;,
        Lorg/apache/avro/SchemaBuilder$FieldAssembler;,
        Lorg/apache/avro/SchemaBuilder$RecordBuilder;,
        Lorg/apache/avro/SchemaBuilder$UnionFieldTypeBuilder;,
        Lorg/apache/avro/SchemaBuilder$FieldTypeBuilder;,
        Lorg/apache/avro/SchemaBuilder$BaseFieldTypeBuilder;,
        Lorg/apache/avro/SchemaBuilder$UnionBuilder;,
        Lorg/apache/avro/SchemaBuilder$TypeBuilder;,
        Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;,
        Lorg/apache/avro/SchemaBuilder$NameContext;,
        Lorg/apache/avro/SchemaBuilder$ArrayBuilder;,
        Lorg/apache/avro/SchemaBuilder$MapBuilder;,
        Lorg/apache/avro/SchemaBuilder$EnumBuilder;,
        Lorg/apache/avro/SchemaBuilder$FixedBuilder;,
        Lorg/apache/avro/SchemaBuilder$NullBuilder;,
        Lorg/apache/avro/SchemaBuilder$BytesBuilder;,
        Lorg/apache/avro/SchemaBuilder$StringBldr;,
        Lorg/apache/avro/SchemaBuilder$DoubleBuilder;,
        Lorg/apache/avro/SchemaBuilder$FloatBuilder;,
        Lorg/apache/avro/SchemaBuilder$LongBuilder;,
        Lorg/apache/avro/SchemaBuilder$IntBuilder;,
        Lorg/apache/avro/SchemaBuilder$BooleanBuilder;,
        Lorg/apache/avro/SchemaBuilder$PrimitiveBuilder;,
        Lorg/apache/avro/SchemaBuilder$NamespacedBuilder;,
        Lorg/apache/avro/SchemaBuilder$NamedBuilder;,
        Lorg/apache/avro/SchemaBuilder$PropBuilder;
    }
.end annotation


# static fields
.field private static final NULL_SCHEMA:Lorg/apache/avro/Schema;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Schema$Type;->NULL:Lorg/apache/avro/Schema$Type;

    invoke-static {v0}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lorg/apache/avro/SchemaBuilder;->NULL_SCHEMA:Lorg/apache/avro/Schema;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$4800(Ljava/lang/Object;)Le/k/a/c/l;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/avro/SchemaBuilder;->toJsonNode(Ljava/lang/Object;)Le/k/a/c/l;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$5400()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/SchemaBuilder;->NULL_SCHEMA:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public static array()Lorg/apache/avro/SchemaBuilder$ArrayBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$ArrayBuilder<",
            "Lorg/apache/avro/Schema;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/avro/SchemaBuilder;->builder()Lorg/apache/avro/SchemaBuilder$TypeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->array()Lorg/apache/avro/SchemaBuilder$ArrayBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lorg/apache/avro/SchemaBuilder$TypeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$TypeBuilder<",
            "Lorg/apache/avro/Schema;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaBuilder$TypeBuilder;

    new-instance v1, Lorg/apache/avro/SchemaBuilder$SchemaCompletion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/avro/SchemaBuilder$SchemaCompletion;-><init>(Lorg/apache/avro/SchemaBuilder$1;)V

    new-instance v3, Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-direct {v3, v2}, Lorg/apache/avro/SchemaBuilder$NameContext;-><init>(Lorg/apache/avro/SchemaBuilder$1;)V

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/avro/SchemaBuilder$TypeBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Lorg/apache/avro/SchemaBuilder$1;)V

    return-object v0
.end method

.method public static builder(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$TypeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$TypeBuilder<",
            "Lorg/apache/avro/Schema;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/avro/SchemaBuilder$TypeBuilder;

    new-instance v1, Lorg/apache/avro/SchemaBuilder$SchemaCompletion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/avro/SchemaBuilder$SchemaCompletion;-><init>(Lorg/apache/avro/SchemaBuilder$1;)V

    new-instance v3, Lorg/apache/avro/SchemaBuilder$NameContext;

    invoke-direct {v3, v2}, Lorg/apache/avro/SchemaBuilder$NameContext;-><init>(Lorg/apache/avro/SchemaBuilder$1;)V

    invoke-static {v3, p0}, Lorg/apache/avro/SchemaBuilder$NameContext;->access$300(Lorg/apache/avro/SchemaBuilder$NameContext;Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$NameContext;

    move-result-object p0

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/avro/SchemaBuilder$TypeBuilder;-><init>(Lorg/apache/avro/SchemaBuilder$Completion;Lorg/apache/avro/SchemaBuilder$NameContext;Lorg/apache/avro/SchemaBuilder$1;)V

    return-object v0
.end method

.method public static enumeration(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$EnumBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$EnumBuilder<",
            "Lorg/apache/avro/Schema;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/avro/SchemaBuilder;->builder()Lorg/apache/avro/SchemaBuilder$TypeBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->enumeration(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$EnumBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static fixed(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FixedBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$FixedBuilder<",
            "Lorg/apache/avro/Schema;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/avro/SchemaBuilder;->builder()Lorg/apache/avro/SchemaBuilder$TypeBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->fixed(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$FixedBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static map()Lorg/apache/avro/SchemaBuilder$MapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$MapBuilder<",
            "Lorg/apache/avro/Schema;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/avro/SchemaBuilder;->builder()Lorg/apache/avro/SchemaBuilder$TypeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->map()Lorg/apache/avro/SchemaBuilder$MapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static nullable()Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder<",
            "Lorg/apache/avro/Schema;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/avro/SchemaBuilder;->builder()Lorg/apache/avro/SchemaBuilder$TypeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/SchemaBuilder$TypeBuilder;->nullable()Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static record(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$RecordBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/avro/SchemaBuilder$RecordBuilder<",
            "Lorg/apache/avro/Schema;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/avro/SchemaBuilder;->builder()Lorg/apache/avro/SchemaBuilder$TypeBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;->record(Ljava/lang/String;)Lorg/apache/avro/SchemaBuilder$RecordBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static toJsonNode(Ljava/lang/Object;)Le/k/a/c/l;
    .locals 3

    const-string v0, "\""

    .line 1
    :try_start_0
    instance-of v1, p0, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    .line 2
    check-cast p0, Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 5
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {p0}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    .line 7
    new-instance p0, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 8
    sget-object v1, Le/k/a/b/w/d;->c:Le/k/a/b/w/d;

    .line 9
    invoke-virtual {v1, p0}, Le/k/a/b/w/d;->d(Ljava/lang/String;)[C

    move-result-object p0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 11
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 12
    new-instance v0, Ljava/lang/String;

    check-cast p0, [B

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 13
    sget-object p0, Le/k/a/b/w/d;->c:Le/k/a/b/w/d;

    .line 14
    invoke-virtual {p0, v0}, Le/k/a/b/w/d;->d(Ljava/lang/String;)[C

    move-result-object p0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lorg/apache/avro/generic/GenericData;->get()Lorg/apache/avro/generic/GenericData;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/avro/generic/GenericData;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 17
    :goto_0
    new-instance v0, Le/k/a/c/r;

    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1, v1, v1}, Le/k/a/c/r;-><init>(Le/k/a/b/e;Le/k/a/c/l0/j;Le/k/a/c/d0/l;)V

    const-string v1, "content"

    .line 19
    invoke-virtual {v0, v1, p0}, Le/k/a/c/r;->c(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 20
    :try_start_1
    iget-object v1, v0, Le/k/a/c/r;->a:Le/k/a/b/e;

    invoke-virtual {v1, p0}, Le/k/a/b/e;->g(Ljava/lang/String;)Le/k/a/b/j;

    move-result-object p0

    invoke-virtual {v0, p0}, Le/k/a/c/r;->f(Le/k/a/b/j;)Le/k/a/c/l;

    move-result-object p0
    :try_end_1
    .catch Le/k/a/b/k; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 21
    :try_start_2
    invoke-static {p0}, Le/k/a/c/k;->e(Ljava/io/IOException;)Le/k/a/c/k;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 22
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception p0

    .line 23
    new-instance v0, Lorg/apache/avro/SchemaBuilderException;

    invoke-direct {v0, p0}, Lorg/apache/avro/SchemaBuilderException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static unionOf()Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder<",
            "Lorg/apache/avro/SchemaBuilder$UnionAccumulator<",
            "Lorg/apache/avro/Schema;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/avro/SchemaBuilder;->builder()Lorg/apache/avro/SchemaBuilder$TypeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/SchemaBuilder$TypeBuilder;->unionOf()Lorg/apache/avro/SchemaBuilder$BaseTypeBuilder;

    move-result-object v0

    return-object v0
.end method
