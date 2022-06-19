.class public Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;
.super Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator;
.source "SourceFile"


# static fields
.field private static factory:Lorg/apache/avro/io/EncoderFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator$1;

    invoke-direct {v0}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator$1;-><init>()V

    invoke-static {v0}, Lorg/apache/avro/util/internal/Accessor;->setAccessor(Lorg/apache/avro/util/internal/Accessor$ResolvingGrammarGeneratorAccessor;)V

    .line 2
    new-instance v0, Lorg/apache/avro/io/EncoderFactory;

    invoke-direct {v0}, Lorg/apache/avro/io/EncoderFactory;-><init>()V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/EncoderFactory;->configureBufferSize(I)Lorg/apache/avro/io/EncoderFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->factory:Lorg/apache/avro/io/EncoderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator;-><init>()V

    return-void
.end method

.method public static encode(Lorg/apache/avro/io/Encoder;Lorg/apache/avro/Schema;Le/k/a/c/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 2
    :pswitch_0
    invoke-virtual {p2}, Le/k/a/c/l;->F()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto/16 :goto_3

    .line 4
    :cond_0
    new-instance p0, Lorg/apache/avro/AvroTypeException;

    const-string p1, "Non-null default value for null type: "

    invoke-static {p1, p2}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :pswitch_1
    invoke-virtual {p2}, Le/k/a/c/l;->z()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p2}, Le/k/a/c/l;->n()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    goto/16 :goto_3

    .line 7
    :cond_1
    new-instance p0, Lorg/apache/avro/AvroTypeException;

    const-string p1, "Non-boolean default for boolean: "

    invoke-static {p1, p2}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :pswitch_2
    invoke-virtual {p2}, Le/k/a/c/l;->G()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p2}, Le/k/a/c/l;->q()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/io/Encoder;->writeDouble(D)V

    goto/16 :goto_3

    .line 10
    :cond_2
    new-instance p0, Lorg/apache/avro/AvroTypeException;

    const-string p1, "Non-numeric default value for double: "

    invoke-static {p1, p2}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :pswitch_3
    invoke-virtual {p2}, Le/k/a/c/l;->G()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p2}, Le/k/a/c/l;->q()D

    move-result-wide p1

    double-to-float p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/avro/io/Encoder;->writeFloat(F)V

    goto/16 :goto_3

    .line 13
    :cond_3
    new-instance p0, Lorg/apache/avro/AvroTypeException;

    const-string p1, "Non-numeric default value for float: "

    invoke-static {p1, p2}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :pswitch_4
    invoke-virtual {p2}, Le/k/a/c/l;->G()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p2}, Le/k/a/c/l;->K()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/io/Encoder;->writeLong(J)V

    goto/16 :goto_3

    .line 16
    :cond_4
    new-instance p0, Lorg/apache/avro/AvroTypeException;

    const-string p1, "Non-numeric default value for long: "

    invoke-static {p1, p2}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :pswitch_5
    invoke-virtual {p2}, Le/k/a/c/l;->G()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 18
    invoke-virtual {p2}, Le/k/a/c/l;->x()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    goto/16 :goto_3

    .line 19
    :cond_5
    new-instance p0, Lorg/apache/avro/AvroTypeException;

    const-string p1, "Non-numeric default value for int: "

    invoke-static {p1, p2}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :pswitch_6
    invoke-virtual {p2}, Le/k/a/c/l;->I()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 21
    invoke-virtual {p2}, Le/k/a/c/l;->L()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/avro/io/Encoder;->writeBytes([B)V

    goto/16 :goto_3

    .line 22
    :cond_6
    new-instance p0, Lorg/apache/avro/AvroTypeException;

    const-string p1, "Non-string default value for bytes: "

    invoke-static {p1, p2}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :pswitch_7
    invoke-virtual {p2}, Le/k/a/c/l;->I()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 24
    invoke-virtual {p2}, Le/k/a/c/l;->L()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 25
    :cond_7
    new-instance p0, Lorg/apache/avro/AvroTypeException;

    const-string p1, "Non-string default value for string: "

    invoke-static {p1, p2}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :pswitch_8
    invoke-virtual {p2}, Le/k/a/c/l;->I()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 27
    invoke-virtual {p2}, Le/k/a/c/l;->L()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 28
    array-length v0, p2

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 29
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result p1

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    .line 30
    :cond_8
    invoke-virtual {p0, p2}, Lorg/apache/avro/io/Encoder;->writeFixed([B)V

    goto/16 :goto_3

    .line 31
    :cond_9
    new-instance p0, Lorg/apache/avro/AvroTypeException;

    const-string p1, "Non-string default value for fixed: "

    invoke-static {p1, p2}, Le/d/c/a/a;->v2(Ljava/lang/String;Le/k/a/c/l;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_9
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 33
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/Schema;

    invoke-static {p0, p1, p2}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->encode(Lorg/apache/avro/io/Encoder;Lorg/apache/avro/Schema;Le/k/a/c/l;)V

    goto/16 :goto_3

    .line 34
    :pswitch_a
    invoke-virtual {p0}, Lorg/apache/avro/io/Encoder;->writeMapStart()V

    .line 35
    invoke-virtual {p2}, Le/k/a/c/l;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 36
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getValueType()Lorg/apache/avro/Schema;

    move-result-object p1

    .line 37
    invoke-virtual {p2}, Le/k/a/c/l;->t()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 38
    invoke-virtual {p0}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 40
    invoke-virtual {p0, v1}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2, v1}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->encode(Lorg/apache/avro/io/Encoder;Lorg/apache/avro/Schema;Le/k/a/c/l;)V

    goto :goto_0

    .line 42
    :cond_a
    invoke-virtual {p0}, Lorg/apache/avro/io/Encoder;->writeMapEnd()V

    goto :goto_3

    .line 43
    :pswitch_b
    invoke-virtual {p0}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 44
    invoke-virtual {p2}, Le/k/a/c/l;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 45
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object p1

    .line 46
    invoke-virtual {p2}, Le/k/a/c/l;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/k/a/c/l;

    .line 47
    invoke-virtual {p0}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 48
    invoke-static {p0, p1, v0}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->encode(Lorg/apache/avro/io/Encoder;Lorg/apache/avro/Schema;Le/k/a/c/l;)V

    goto :goto_1

    .line 49
    :cond_b
    invoke-virtual {p0}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    goto :goto_3

    .line 50
    :pswitch_c
    invoke-virtual {p2}, Le/k/a/c/l;->L()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/avro/Schema;->getEnumOrdinal(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/avro/io/Encoder;->writeEnum(I)V

    goto :goto_3

    .line 51
    :pswitch_d
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/Schema$Field;

    .line 52
    invoke-virtual {v0}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {p2, v1}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v2

    if-nez v2, :cond_c

    .line 54
    invoke-static {v0}, Lorg/apache/avro/util/internal/Accessor;->defaultValue(Lorg/apache/avro/Schema$Field;)Le/k/a/c/l;

    move-result-object v2

    :cond_c
    if-eqz v2, :cond_d

    .line 55
    invoke-virtual {v0}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->encode(Lorg/apache/avro/io/Encoder;Lorg/apache/avro/Schema;Le/k/a/c/l;)V

    goto :goto_2

    .line 56
    :cond_d
    new-instance p0, Lorg/apache/avro/AvroTypeException;

    const-string p1, "No default value for: "

    invoke-static {p1, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private generate(Lorg/apache/avro/Resolver$Action;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Resolver$Action;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/apache/avro/io/parsing/Symbol;",
            ">;)",
            "Lorg/apache/avro/io/parsing/Symbol;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lorg/apache/avro/Resolver$DoNothing;

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lorg/apache/avro/Resolver$Action;->writer:Lorg/apache/avro/Schema;

    invoke-direct {p0, p1, p2}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->simpleGen(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    instance-of v0, p1, Lorg/apache/avro/Resolver$ErrorAction;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/avro/io/parsing/Symbol;->error(Ljava/lang/String;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    instance-of v0, p1, Lorg/apache/avro/Resolver$Skip;

    if-eqz v0, :cond_2

    .line 8
    iget-object p1, p1, Lorg/apache/avro/Resolver$Action;->writer:Lorg/apache/avro/Schema;

    invoke-direct {p0, p1, p2}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->simpleGen(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/avro/io/parsing/Symbol;->skipAction(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol$SkipAction;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    instance-of v0, p1, Lorg/apache/avro/Resolver$Promote;

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p1, Lorg/apache/avro/Resolver$Action;->writer:Lorg/apache/avro/Schema;

    invoke-direct {p0, v0, p2}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->simpleGen(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    iget-object p1, p1, Lorg/apache/avro/Resolver$Action;->reader:Lorg/apache/avro/Schema;

    invoke-direct {p0, p1, p2}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->simpleGen(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/avro/io/parsing/Symbol;->resolve(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    .line 11
    :cond_3
    instance-of v0, p1, Lorg/apache/avro/Resolver$ReaderUnion;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 12
    check-cast p1, Lorg/apache/avro/Resolver$ReaderUnion;

    .line 13
    iget-object v0, p1, Lorg/apache/avro/Resolver$ReaderUnion;->actualAction:Lorg/apache/avro/Resolver$Action;

    invoke-direct {p0, v0, p2}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lorg/apache/avro/Resolver$Action;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p2

    new-array v0, v1, [Lorg/apache/avro/io/parsing/Symbol;

    .line 14
    iget p1, p1, Lorg/apache/avro/Resolver$ReaderUnion;->firstMatch:I

    invoke-static {p1, p2}, Lorg/apache/avro/io/parsing/Symbol;->unionAdjustAction(ILorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;

    move-result-object p1

    aput-object p1, v0, v2

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->UNION:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, v0, v3

    invoke-static {v0}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    .line 15
    :cond_4
    iget-object v0, p1, Lorg/apache/avro/Resolver$Action;->writer:Lorg/apache/avro/Schema;

    invoke-virtual {v0}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    sget-object v4, Lorg/apache/avro/Schema$Type;->ARRAY:Lorg/apache/avro/Schema$Type;

    if-ne v0, v4, :cond_5

    .line 16
    check-cast p1, Lorg/apache/avro/Resolver$Container;

    iget-object p1, p1, Lorg/apache/avro/Resolver$Container;->elementAction:Lorg/apache/avro/Resolver$Action;

    invoke-direct {p0, p1, p2}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lorg/apache/avro/Resolver$Action;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    new-array p2, v1, [Lorg/apache/avro/io/parsing/Symbol;

    .line 17
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_END:Lorg/apache/avro/io/parsing/Symbol;

    new-array v1, v3, [Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/apache/avro/io/parsing/Symbol;->repeat(Lorg/apache/avro/io/parsing/Symbol;[Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    aput-object p1, p2, v2

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_START:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, p2, v3

    invoke-static {p2}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    .line 18
    :cond_5
    iget-object v0, p1, Lorg/apache/avro/Resolver$Action;->writer:Lorg/apache/avro/Schema;

    invoke-virtual {v0}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    sget-object v4, Lorg/apache/avro/Schema$Type;->MAP:Lorg/apache/avro/Schema$Type;

    if-ne v0, v4, :cond_6

    .line 19
    check-cast p1, Lorg/apache/avro/Resolver$Container;

    iget-object p1, p1, Lorg/apache/avro/Resolver$Container;->elementAction:Lorg/apache/avro/Resolver$Action;

    invoke-direct {p0, p1, p2}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lorg/apache/avro/Resolver$Action;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    new-array p2, v1, [Lorg/apache/avro/io/parsing/Symbol;

    .line 20
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->MAP_END:Lorg/apache/avro/io/parsing/Symbol;

    new-array v1, v1, [Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, v1, v2

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->STRING:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lorg/apache/avro/io/parsing/Symbol;->repeat(Lorg/apache/avro/io/parsing/Symbol;[Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    aput-object p1, p2, v2

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->MAP_START:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, p2, v3

    invoke-static {p2}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    .line 21
    :cond_6
    iget-object v0, p1, Lorg/apache/avro/Resolver$Action;->writer:Lorg/apache/avro/Schema;

    invoke-virtual {v0}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    sget-object v4, Lorg/apache/avro/Schema$Type;->UNION:Lorg/apache/avro/Schema$Type;

    if-ne v0, v4, :cond_9

    .line 22
    move-object v0, p1

    check-cast v0, Lorg/apache/avro/Resolver$WriterUnion;

    iget-boolean v4, v0, Lorg/apache/avro/Resolver$WriterUnion;->unionEquiv:Z

    if-eqz v4, :cond_7

    .line 23
    iget-object p1, p1, Lorg/apache/avro/Resolver$Action;->reader:Lorg/apache/avro/Schema;

    invoke-direct {p0, p1, p2}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->simpleGen(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    .line 24
    :cond_7
    iget-object v0, v0, Lorg/apache/avro/Resolver$WriterUnion;->actions:[Lorg/apache/avro/Resolver$Action;

    .line 25
    array-length v4, v0

    new-array v4, v4, [Lorg/apache/avro/io/parsing/Symbol;

    .line 26
    array-length v5, v0

    new-array v5, v5, [Ljava/lang/String;

    .line 27
    array-length v6, v0

    move v7, v2

    move v8, v7

    :goto_0
    if-ge v7, v6, :cond_8

    aget-object v9, v0, v7

    .line 28
    invoke-direct {p0, v9, p2}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lorg/apache/avro/Resolver$Action;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v9

    aput-object v9, v4, v8

    .line 29
    iget-object v9, p1, Lorg/apache/avro/Resolver$Action;->writer:Lorg/apache/avro/Schema;

    invoke-virtual {v9}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/avro/Schema;

    invoke-virtual {v9}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    add-int/2addr v8, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_8
    new-array p1, v1, [Lorg/apache/avro/io/parsing/Symbol;

    .line 30
    invoke-static {v4, v5}, Lorg/apache/avro/io/parsing/Symbol;->alt([Lorg/apache/avro/io/parsing/Symbol;[Ljava/lang/String;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p2

    aput-object p2, p1, v2

    sget-object p2, Lorg/apache/avro/io/parsing/Symbol;->WRITER_UNION_ACTION:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p2, p1, v3

    invoke-static {p1}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    .line 31
    :cond_9
    instance-of v0, p1, Lorg/apache/avro/Resolver$EnumAdjust;

    if-eqz v0, :cond_c

    .line 32
    check-cast p1, Lorg/apache/avro/Resolver$EnumAdjust;

    .line 33
    iget-object p2, p1, Lorg/apache/avro/Resolver$EnumAdjust;->adjustments:[I

    array-length p2, p2

    new-array v0, p2, [Ljava/lang/Object;

    move v4, v2

    :goto_1
    if-ge v4, p2, :cond_b

    .line 34
    iget-object v5, p1, Lorg/apache/avro/Resolver$EnumAdjust;->adjustments:[I

    aget v6, v5, v4

    if-ltz v6, :cond_a

    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    :cond_a
    const-string v5, "No match for "

    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lorg/apache/avro/Resolver$Action;->writer:Lorg/apache/avro/Schema;

    .line 35
    invoke-virtual {v6}, Lorg/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    aput-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_b
    new-array p2, v1, [Lorg/apache/avro/io/parsing/Symbol;

    .line 36
    iget-object p1, p1, Lorg/apache/avro/Resolver$Action;->reader:Lorg/apache/avro/Schema;

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1, v0}, Lorg/apache/avro/io/parsing/Symbol;->enumAdjustAction(I[Ljava/lang/Object;)Lorg/apache/avro/io/parsing/Symbol$EnumAdjustAction;

    move-result-object p1

    aput-object p1, p2, v2

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->ENUM:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, p2, v3

    invoke-static {p2}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    .line 37
    :cond_c
    instance-of v0, p1, Lorg/apache/avro/Resolver$RecordAdjust;

    if-eqz v0, :cond_10

    .line 38
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol;

    if-nez v0, :cond_f

    .line 39
    move-object v0, p1

    check-cast v0, Lorg/apache/avro/Resolver$RecordAdjust;

    .line 40
    iget-object v1, v0, Lorg/apache/avro/Resolver$RecordAdjust;->readerOrder:[Lorg/apache/avro/Schema$Field;

    array-length v1, v1

    iget v4, v0, Lorg/apache/avro/Resolver$RecordAdjust;->firstDefault:I

    sub-int/2addr v1, v4

    .line 41
    iget-object v4, v0, Lorg/apache/avro/Resolver$RecordAdjust;->fieldActions:[Lorg/apache/avro/Resolver$Action;

    array-length v4, v4

    add-int/2addr v4, v3

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v4

    .line 42
    new-array v3, v1, [Lorg/apache/avro/io/parsing/Symbol;

    .line 43
    invoke-static {v3}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v4

    .line 44
    invoke-interface {p2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    .line 45
    iget-object p1, v0, Lorg/apache/avro/Resolver$RecordAdjust;->readerOrder:[Lorg/apache/avro/Schema$Field;

    invoke-static {p1}, Lorg/apache/avro/io/parsing/Symbol;->fieldOrderAction([Lorg/apache/avro/Schema$Field;)Lorg/apache/avro/io/parsing/Symbol$FieldOrderAction;

    move-result-object p1

    aput-object p1, v3, v1

    .line 46
    iget-object p1, v0, Lorg/apache/avro/Resolver$RecordAdjust;->fieldActions:[Lorg/apache/avro/Resolver$Action;

    .line 47
    array-length v5, p1

    :goto_3
    if-ge v2, v5, :cond_d

    aget-object v6, p1, v2

    add-int/lit8 v1, v1, -0x1

    .line 48
    :try_start_0
    invoke-direct {p0, v6, p2}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lorg/apache/avro/Resolver$Action;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    aput-object v6, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catchall_0
    move-exception p1

    throw p1

    .line 49
    :cond_d
    iget p1, v0, Lorg/apache/avro/Resolver$RecordAdjust;->firstDefault:I

    :goto_4
    iget-object v2, v0, Lorg/apache/avro/Resolver$RecordAdjust;->readerOrder:[Lorg/apache/avro/Schema$Field;

    array-length v5, v2

    if-ge p1, v5, :cond_e

    .line 50
    aget-object v2, v2, p1

    .line 51
    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v5

    invoke-static {v2}, Lorg/apache/avro/util/internal/Accessor;->defaultValue(Lorg/apache/avro/Schema$Field;)Le/k/a/c/l;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->getBinary(Lorg/apache/avro/Schema;Le/k/a/c/l;)[B

    move-result-object v5

    add-int/lit8 v1, v1, -0x1

    .line 52
    invoke-static {v5}, Lorg/apache/avro/io/parsing/Symbol;->defaultStartAction([B)Lorg/apache/avro/io/parsing/Symbol$DefaultStartAction;

    move-result-object v5

    aput-object v5, v3, v1

    add-int/lit8 v1, v1, -0x1

    .line 53
    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->simpleGen(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, -0x1

    .line 54
    sget-object v2, Lorg/apache/avro/io/parsing/Symbol;->DEFAULT_END_ACTION:Lorg/apache/avro/io/parsing/Symbol;

    aput-object v2, v3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_e
    move-object v0, v4

    :cond_f
    return-object v0

    .line 55
    :cond_10
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized Resolver.Action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static getBinary(Lorg/apache/avro/Schema;Le/k/a/c/l;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    sget-object v1, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->factory:Lorg/apache/avro/io/EncoderFactory;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/apache/avro/io/EncoderFactory;->binaryEncoder(Ljava/io/OutputStream;Lorg/apache/avro/io/BinaryEncoder;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object v1

    .line 3
    invoke-static {v1, p0, p1}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->encode(Lorg/apache/avro/io/Encoder;Lorg/apache/avro/Schema;Le/k/a/c/l;)V

    .line 4
    invoke-interface {v1}, Ljava/io/Flushable;->flush()V

    .line 5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private simpleGen(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/apache/avro/io/parsing/Symbol;",
            ">;)",
            "Lorg/apache/avro/io/parsing/Symbol;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected schema: "

    invoke-static {v0, p1}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3
    :pswitch_0
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->NULL:Lorg/apache/avro/io/parsing/Symbol;

    return-object p1

    .line 4
    :pswitch_1
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->BOOLEAN:Lorg/apache/avro/io/parsing/Symbol;

    return-object p1

    .line 5
    :pswitch_2
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->DOUBLE:Lorg/apache/avro/io/parsing/Symbol;

    return-object p1

    .line 6
    :pswitch_3
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->FLOAT:Lorg/apache/avro/io/parsing/Symbol;

    return-object p1

    .line 7
    :pswitch_4
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->LONG:Lorg/apache/avro/io/parsing/Symbol;

    return-object p1

    .line 8
    :pswitch_5
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->INT:Lorg/apache/avro/io/parsing/Symbol;

    return-object p1

    .line 9
    :pswitch_6
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->BYTES:Lorg/apache/avro/io/parsing/Symbol;

    return-object p1

    .line 10
    :pswitch_7
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->STRING:Lorg/apache/avro/io/parsing/Symbol;

    return-object p1

    :pswitch_8
    new-array p2, v1, [Lorg/apache/avro/io/parsing/Symbol;

    .line 11
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result p1

    invoke-static {p1}, Lorg/apache/avro/io/parsing/Symbol;->intCheckAction(I)Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;

    move-result-object p1

    aput-object p1, p2, v3

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->FIXED:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, p2, v2

    invoke-static {p2}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_9
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/avro/io/parsing/Symbol;

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v5, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/avro/Schema;

    .line 16
    invoke-direct {p0, v6, p2}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->simpleGen(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v7

    aput-object v7, v4, v5

    add-int/lit8 v7, v5, 0x1

    .line 17
    invoke-virtual {v6}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    move v5, v7

    goto :goto_0

    :cond_0
    new-array p1, v1, [Lorg/apache/avro/io/parsing/Symbol;

    .line 18
    invoke-static {v4, v0}, Lorg/apache/avro/io/parsing/Symbol;->alt([Lorg/apache/avro/io/parsing/Symbol;[Ljava/lang/String;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p2

    aput-object p2, p1, v3

    sget-object p2, Lorg/apache/avro/io/parsing/Symbol;->UNION:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p2, p1, v2

    invoke-static {p1}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    :pswitch_a
    new-array v0, v1, [Lorg/apache/avro/io/parsing/Symbol;

    .line 19
    sget-object v4, Lorg/apache/avro/io/parsing/Symbol;->MAP_END:Lorg/apache/avro/io/parsing/Symbol;

    new-array v1, v1, [Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getValueType()Lorg/apache/avro/Schema;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->simpleGen(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    aput-object p1, v1, v3

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->STRING:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, v1, v2

    invoke-static {v4, v1}, Lorg/apache/avro/io/parsing/Symbol;->repeat(Lorg/apache/avro/io/parsing/Symbol;[Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    aput-object p1, v0, v3

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->MAP_START:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, v0, v2

    invoke-static {v0}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    :pswitch_b
    new-array v0, v1, [Lorg/apache/avro/io/parsing/Symbol;

    .line 20
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_END:Lorg/apache/avro/io/parsing/Symbol;

    new-array v4, v2, [Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->simpleGen(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v1, v4}, Lorg/apache/avro/io/parsing/Symbol;->repeat(Lorg/apache/avro/io/parsing/Symbol;[Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    aput-object p1, v0, v3

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_START:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, v0, v2

    invoke-static {v0}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    :pswitch_c
    new-array p2, v1, [Lorg/apache/avro/io/parsing/Symbol;

    .line 21
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/avro/io/parsing/Symbol;->enumAdjustAction(I[Ljava/lang/Object;)Lorg/apache/avro/io/parsing/Symbol$EnumAdjustAction;

    move-result-object p1

    aput-object p1, p2, v3

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->ENUM:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, p2, v2

    invoke-static {p2}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_d
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol;

    if-nez v0, :cond_2

    .line 23
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    new-array v1, v0, [Lorg/apache/avro/io/parsing/Symbol;

    .line 24
    invoke-static {v1}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v2

    .line 25
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    .line 26
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v4

    new-array v3, v3, [Lorg/apache/avro/Schema$Field;

    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/avro/Schema$Field;

    invoke-static {v3}, Lorg/apache/avro/io/parsing/Symbol;->fieldOrderAction([Lorg/apache/avro/Schema$Field;)Lorg/apache/avro/io/parsing/Symbol$FieldOrderAction;

    move-result-object v3

    aput-object v3, v1, v0

    .line 27
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/avro/Schema$Field;

    add-int/lit8 v0, v0, -0x1

    .line 28
    invoke-virtual {v3}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->simpleGen(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v3

    aput-object v3, v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :cond_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final generate(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lorg/apache/avro/Resolver;->resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/Resolver$Action;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lorg/apache/avro/Resolver$Action;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p2}, Lorg/apache/avro/io/parsing/Symbol;->root([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1
.end method
