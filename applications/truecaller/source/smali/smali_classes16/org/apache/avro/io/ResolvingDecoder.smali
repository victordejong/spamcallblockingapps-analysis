.class public Lorg/apache/avro/io/ResolvingDecoder;
.super Lorg/apache/avro/io/ValidatingDecoder;
.source "SourceFile"


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private backup:Lorg/apache/avro/io/Decoder;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lorg/apache/avro/io/Decoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, p1, p2}, Lorg/apache/avro/io/ValidatingDecoder;-><init>(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/Decoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lorg/apache/avro/io/ResolvingDecoder;->resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/apache/avro/io/ResolvingDecoder;-><init>(Ljava/lang/Object;Lorg/apache/avro/io/Decoder;)V

    return-void
.end method

.method public static resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Writer schema cannot be null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Reader schema cannot be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;

    invoke-direct {v0}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public doAction(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lorg/apache/avro/io/parsing/Symbol$FieldOrderAction;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->FIELD_ACTION:Lorg/apache/avro/io/parsing/Symbol;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    return-object p2

    .line 3
    :cond_1
    instance-of v0, p2, Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;

    if-eqz v0, :cond_3

    .line 4
    check-cast p2, Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;

    .line 5
    iget-object v0, p2, Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;->reader:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, p1, :cond_2

    .line 6
    iget-object p1, p2, Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;->writer:Lorg/apache/avro/io/parsing/Symbol;

    return-object p1

    .line 7
    :cond_2
    new-instance v0, Lorg/apache/avro/AvroTypeException;

    const-string v1, "Found "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p2, p2, Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;->reader:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " while looking for "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_3
    instance-of p1, p2, Lorg/apache/avro/io/parsing/Symbol$SkipAction;

    if-eqz p1, :cond_4

    .line 9
    check-cast p2, Lorg/apache/avro/io/parsing/Symbol$SkipAction;

    iget-object p1, p2, Lorg/apache/avro/io/parsing/Symbol$SkipAction;->symToSkip:Lorg/apache/avro/io/parsing/Symbol;

    .line 10
    iget-object p2, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {p2, p1}, Lorg/apache/avro/io/parsing/SkipParser;->skipSymbol(Lorg/apache/avro/io/parsing/Symbol;)V

    goto :goto_1

    .line 11
    :cond_4
    instance-of p1, p2, Lorg/apache/avro/io/parsing/Symbol$WriterUnionAction;

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {p1}, Lorg/apache/avro/io/parsing/Parser;->popSymbol()Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/io/parsing/Symbol$Alternative;

    .line 13
    iget-object p2, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->readIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/parsing/Symbol$Alternative;->getSymbol(I)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/avro/io/parsing/Parser;->pushSymbol(Lorg/apache/avro/io/parsing/Symbol;)V

    goto :goto_1

    .line 14
    :cond_5
    instance-of p1, p2, Lorg/apache/avro/io/parsing/Symbol$ErrorAction;

    if-nez p1, :cond_8

    .line 15
    instance-of p1, p2, Lorg/apache/avro/io/parsing/Symbol$DefaultStartAction;

    if-eqz p1, :cond_6

    .line 16
    check-cast p2, Lorg/apache/avro/io/parsing/Symbol$DefaultStartAction;

    .line 17
    iget-object p1, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    iput-object p1, p0, Lorg/apache/avro/io/ResolvingDecoder;->backup:Lorg/apache/avro/io/Decoder;

    .line 18
    invoke-static {}, Lorg/apache/avro/io/DecoderFactory;->get()Lorg/apache/avro/io/DecoderFactory;

    move-result-object p1

    iget-object p2, p2, Lorg/apache/avro/io/parsing/Symbol$DefaultStartAction;->contents:[B

    invoke-virtual {p1, p2, v1}, Lorg/apache/avro/io/DecoderFactory;->binaryDecoder([BLorg/apache/avro/io/BinaryDecoder;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    goto :goto_1

    .line 19
    :cond_6
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->DEFAULT_END_ACTION:Lorg/apache/avro/io/parsing/Symbol;

    if-ne p2, p1, :cond_7

    .line 20
    iget-object p1, p0, Lorg/apache/avro/io/ResolvingDecoder;->backup:Lorg/apache/avro/io/Decoder;

    iput-object p1, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    :goto_1
    return-object v1

    .line 21
    :cond_7
    new-instance p1, Lorg/apache/avro/AvroTypeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_8
    new-instance p1, Lorg/apache/avro/AvroTypeException;

    check-cast p2, Lorg/apache/avro/io/parsing/Symbol$ErrorAction;

    iget-object p2, p2, Lorg/apache/avro/io/parsing/Symbol$ErrorAction;->msg:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final drain()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->processImplicitActions()V

    return-void
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->BYTES:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    .line 2
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->STRING:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p1, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Decoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lorg/apache/avro/util/Utf8;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/apache/avro/util/Utf8;->getByteLength()I

    move-result p1

    invoke-static {v0, v1, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0, p1}, Lorg/apache/avro/io/Decoder;->readBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->DOUBLE:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    .line 2
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->INT:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->readInt()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 4
    :cond_0
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->LONG:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->readLong()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 6
    :cond_1
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->FLOAT:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->readFloat()F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 8
    :cond_2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->ENUM:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->popSymbol()Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$EnumAdjustAction;

    .line 3
    iget-object v1, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v1}, Lorg/apache/avro/io/Decoder;->readEnum()I

    move-result v1

    .line 4
    iget-boolean v2, v0, Lorg/apache/avro/io/parsing/Symbol$EnumAdjustAction;->noAdjustments:Z

    if-eqz v2, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object v0, v0, Lorg/apache/avro/io/parsing/Symbol$EnumAdjustAction;->adjustments:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 6
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 8
    :cond_1
    new-instance v1, Lorg/apache/avro/AvroTypeException;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readFieldOrder()[Lorg/apache/avro/Schema$Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->FIELD_ACTION:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$FieldOrderAction;

    iget-object v0, v0, Lorg/apache/avro/io/parsing/Symbol$FieldOrderAction;->fields:[Lorg/apache/avro/Schema$Field;

    return-object v0
.end method

.method public final readFieldOrderIfDiff()[Lorg/apache/avro/Schema$Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->FIELD_ACTION:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$FieldOrderAction;

    .line 2
    iget-boolean v1, v0, Lorg/apache/avro/io/parsing/Symbol$FieldOrderAction;->noReorder:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/apache/avro/io/parsing/Symbol$FieldOrderAction;->fields:[Lorg/apache/avro/Schema$Field;

    :goto_0
    return-object v0
.end method

.method public readFloat()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->FLOAT:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    .line 2
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->INT:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->readInt()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 4
    :cond_0
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->LONG:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->readLong()J

    move-result-wide v0

    long-to-float v0, v0

    return v0

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->readFloat()F

    move-result v0

    return v0
.end method

.method public readIndex()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->UNION:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->popSymbol()Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;

    iget v1, v0, Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;->rindex:I

    .line 5
    iget-object v0, v0, Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;->symToParse:Lorg/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v1}, Lorg/apache/avro/io/Decoder;->readIndex()I

    move-result v1

    .line 7
    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$Alternative;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Alternative;->getSymbol(I)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    .line 8
    :goto_0
    iget-object v2, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v2, v0}, Lorg/apache/avro/io/parsing/Parser;->pushSymbol(Lorg/apache/avro/io/parsing/Symbol;)V

    return v1
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->LONG:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    .line 2
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->INT:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->readInt()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 4
    :cond_0
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->DOUBLE:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->readDouble()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->STRING:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    .line 6
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->BYTES:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_0

    .line 7
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/avro/io/Decoder;->readBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->STRING:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    .line 2
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->BYTES:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_0

    .line 3
    new-instance p1, Lorg/apache/avro/util/Utf8;

    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/Decoder;->readBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/avro/util/Utf8;-><init>([B)V

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0, p1}, Lorg/apache/avro/io/Decoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object p1

    return-object p1
.end method

.method public skipAction()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->popSymbol()Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;

    iget-object v0, v0, Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;->writer:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v1, v0}, Lorg/apache/avro/io/parsing/Parser;->pushSymbol(Lorg/apache/avro/io/parsing/Symbol;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Lorg/apache/avro/io/parsing/Symbol$SkipAction;

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$SkipAction;

    iget-object v0, v0, Lorg/apache/avro/io/parsing/Symbol$SkipAction;->symToSkip:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v1, v0}, Lorg/apache/avro/io/parsing/Parser;->pushSymbol(Lorg/apache/avro/io/parsing/Symbol;)V

    goto :goto_0

    .line 6
    :cond_1
    instance-of v1, v0, Lorg/apache/avro/io/parsing/Symbol$WriterUnionAction;

    if-eqz v1, :cond_2

    .line 7
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->popSymbol()Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$Alternative;

    .line 8
    iget-object v1, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    iget-object v2, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v2}, Lorg/apache/avro/io/Decoder;->readIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/avro/io/parsing/Symbol$Alternative;->getSymbol(I)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/avro/io/parsing/Parser;->pushSymbol(Lorg/apache/avro/io/parsing/Symbol;)V

    goto :goto_0

    .line 9
    :cond_2
    instance-of v1, v0, Lorg/apache/avro/io/parsing/Symbol$ErrorAction;

    if-nez v1, :cond_5

    .line 10
    instance-of v1, v0, Lorg/apache/avro/io/parsing/Symbol$DefaultStartAction;

    if-eqz v1, :cond_3

    .line 11
    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$DefaultStartAction;

    .line 12
    iget-object v1, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    iput-object v1, p0, Lorg/apache/avro/io/ResolvingDecoder;->backup:Lorg/apache/avro/io/Decoder;

    .line 13
    invoke-static {}, Lorg/apache/avro/io/DecoderFactory;->get()Lorg/apache/avro/io/DecoderFactory;

    move-result-object v1

    iget-object v0, v0, Lorg/apache/avro/io/parsing/Symbol$DefaultStartAction;->contents:[B

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/apache/avro/io/DecoderFactory;->binaryDecoder([BLorg/apache/avro/io/BinaryDecoder;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    goto :goto_0

    .line 14
    :cond_3
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->DEFAULT_END_ACTION:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_4

    .line 15
    iget-object v0, p0, Lorg/apache/avro/io/ResolvingDecoder;->backup:Lorg/apache/avro/io/Decoder;

    iput-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    :cond_4
    :goto_0
    return-void

    .line 16
    :cond_5
    new-instance v1, Lorg/apache/avro/AvroTypeException;

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$ErrorAction;

    iget-object v0, v0, Lorg/apache/avro/io/parsing/Symbol$ErrorAction;->msg:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public skipBytes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->BYTES:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    .line 2
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->STRING:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->skipString()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->skipBytes()V

    :goto_0
    return-void
.end method

.method public skipString()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->STRING:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    .line 2
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->BYTES:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->skipBytes()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->skipString()V

    :goto_0
    return-void
.end method
