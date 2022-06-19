.class public Lorg/apache/avro/io/ValidatingDecoder;
.super Lorg/apache/avro/io/ParsingDecoder;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/io/parsing/Parser$ActionHandler;


# instance fields
.field public in:Lorg/apache/avro/io/Decoder;


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lorg/apache/avro/io/ValidatingDecoder;->getSymbol(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/avro/io/ValidatingDecoder;-><init>(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/Decoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/Decoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/io/ParsingDecoder;-><init>(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 2
    invoke-virtual {p0, p2}, Lorg/apache/avro/io/ValidatingDecoder;->configure(Lorg/apache/avro/io/Decoder;)Lorg/apache/avro/io/ValidatingDecoder;

    return-void
.end method

.method private checkFixed(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->FIXED:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->popSymbol()Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;

    .line 3
    iget v1, v0, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    if-ne p1, v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v1, Lorg/apache/avro/AvroTypeException;

    const-string v2, "Incorrect length for fixed binary: expected "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " but received "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getSymbol(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 1

    const-string v0, "Schema cannot be null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator;

    invoke-direct {v0}, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public arrayNext()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->processTrailingImplicitActions()V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->arrayNext()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 3
    iget-object v2, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v3, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_END:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v2, v3}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    :cond_0
    return-wide v0
.end method

.method public configure(Lorg/apache/avro/io/Decoder;)Lorg/apache/avro/io/ValidatingDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->reset()V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    return-object p0
.end method

.method public doAction(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public mapNext()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->processTrailingImplicitActions()V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->mapNext()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 3
    iget-object v2, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v3, Lorg/apache/avro/io/parsing/Symbol;->MAP_END:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v2, v3}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    :cond_0
    return-wide v0
.end method

.method public readArrayStart()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_START:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->readArrayStart()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 3
    iget-object v2, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v3, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_END:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v2, v3}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    :cond_0
    return-wide v0
.end method

.method public readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->BOOLEAN:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->readBoolean()Z

    move-result v0

    return v0
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

    .line 2
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

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .locals 4
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

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;

    .line 3
    iget-object v1, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v1}, Lorg/apache/avro/io/Decoder;->readEnum()I

    move-result v1

    if-ltz v1, :cond_0

    .line 4
    iget v2, v0, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    if-ge v1, v2, :cond_0

    return v1

    .line 5
    :cond_0
    new-instance v2, Lorg/apache/avro/AvroTypeException;

    const-string v3, "Enumeration out of range: max is "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " but received "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readFixed([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lorg/apache/avro/io/ValidatingDecoder;->checkFixed(I)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/avro/io/Decoder;->readFixed([BII)V

    return-void
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

    .line 2
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

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$Alternative;

    .line 3
    iget-object v1, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v1}, Lorg/apache/avro/io/Decoder;->readIndex()I

    move-result v1

    .line 4
    iget-object v2, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Alternative;->getSymbol(I)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/avro/io/parsing/Parser;->pushSymbol(Lorg/apache/avro/io/parsing/Symbol;)V

    return v1
.end method

.method public readInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->INT:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->readInt()I

    move-result v0

    return v0
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

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMapStart()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->MAP_START:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->readMapStart()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 3
    iget-object v2, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v3, Lorg/apache/avro/io/parsing/Symbol;->MAP_END:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v2, v3}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    :cond_0
    return-wide v0
.end method

.method public readNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->NULL:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->readNull()V

    return-void
.end method

.method public readString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->STRING:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 4
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

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0, p1}, Lorg/apache/avro/io/Decoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object p1

    return-object p1
.end method

.method public skipArray()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_START:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->skipArray()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    :goto_0
    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/SkipParser;->skipRepeater()V

    move-wide v0, v4

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_END:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    return-wide v2
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

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->skipBytes()V

    return-void
.end method

.method public skipFixed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->FIXED:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->popSymbol()Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;

    .line 5
    iget-object v1, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    iget v0, v0, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    invoke-virtual {v1, v0}, Lorg/apache/avro/io/Decoder;->skipFixed(I)V

    return-void
.end method

.method public skipFixed(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/io/ValidatingDecoder;->checkFixed(I)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0, p1}, Lorg/apache/avro/io/Decoder;->skipFixed(I)V

    return-void
.end method

.method public skipMap()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->MAP_START:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->skipMap()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    :goto_0
    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/SkipParser;->skipRepeater()V

    move-wide v0, v4

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->MAP_END:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    return-wide v2
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

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingDecoder;->in:Lorg/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Decoder;->skipString()V

    return-void
.end method
