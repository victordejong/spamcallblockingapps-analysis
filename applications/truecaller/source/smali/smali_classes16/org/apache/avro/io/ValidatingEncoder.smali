.class public Lorg/apache/avro/io/ValidatingEncoder;
.super Lorg/apache/avro/io/ParsingEncoder;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/io/parsing/Parser$ActionHandler;


# instance fields
.field public out:Lorg/apache/avro/io/Encoder;

.field public final parser:Lorg/apache/avro/io/parsing/Parser;


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/io/Encoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator;

    invoke-direct {v0}, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/avro/io/ValidatingEncoder;-><init>(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/Encoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/io/ParsingEncoder;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    .line 3
    new-instance p2, Lorg/apache/avro/io/parsing/Parser;

    invoke-direct {p2, p1, p0}, Lorg/apache/avro/io/parsing/Parser;-><init>(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Parser$ActionHandler;)V

    iput-object p2, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    return-void
.end method


# virtual methods
.method public configure(Lorg/apache/avro/io/Encoder;)Lorg/apache/avro/io/ValidatingEncoder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->reset()V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

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

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    return-void
.end method

.method public setItemCount(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lorg/apache/avro/io/ParsingEncoder;->setItemCount(J)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    invoke-virtual {v0, p1, p2}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    return-void
.end method

.method public startItem()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lorg/apache/avro/io/ParsingEncoder;->startItem()V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Encoder;->startItem()V

    return-void
.end method

.method public writeArrayEnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_END:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/io/ParsingEncoder;->pop()V

    return-void
.end method

.method public writeArrayStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/io/ParsingEncoder;->push()V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_START:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->BOOLEAN:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    invoke-virtual {v0, p1}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    return-void
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->BYTES:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    invoke-virtual {v0, p1}, Lorg/apache/avro/io/Encoder;->writeBytes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public writeBytes([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->BYTES:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/avro/io/Encoder;->writeBytes([BII)V

    return-void
.end method

.method public writeDouble(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->DOUBLE:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    invoke-virtual {v0, p1, p2}, Lorg/apache/avro/io/Encoder;->writeDouble(D)V

    return-void
.end method

.method public writeEnum(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->ENUM:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->popSymbol()Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;

    if-ltz p1, :cond_0

    .line 3
    iget v1, v0, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    if-ge p1, v1, :cond_0

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    invoke-virtual {v0, p1}, Lorg/apache/avro/io/Encoder;->writeEnum(I)V

    return-void

    .line 5
    :cond_0
    new-instance v1, Lorg/apache/avro/AvroTypeException;

    const-string v2, "Enumeration out of range: max is "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " but received "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeFixed([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->FIXED:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->popSymbol()Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;

    .line 3
    iget v1, v0, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    if-ne p3, v1, :cond_0

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/avro/io/Encoder;->writeFixed([BII)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Lorg/apache/avro/AvroTypeException;

    const-string p2, "Incorrect length for fixed binary: expected "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, v0, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " but received "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeFloat(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->FLOAT:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    invoke-virtual {v0, p1}, Lorg/apache/avro/io/Encoder;->writeFloat(F)V

    return-void
.end method

.method public writeIndex(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->UNION:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->popSymbol()Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$Alternative;

    .line 3
    iget-object v1, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    invoke-virtual {v0, p1}, Lorg/apache/avro/io/parsing/Symbol$Alternative;->getSymbol(I)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/avro/io/parsing/Parser;->pushSymbol(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    invoke-virtual {v0, p1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->INT:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    invoke-virtual {v0, p1}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    return-void
.end method

.method public writeLong(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->LONG:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    invoke-virtual {v0, p1, p2}, Lorg/apache/avro/io/Encoder;->writeLong(J)V

    return-void
.end method

.method public writeMapEnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->MAP_END:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Encoder;->writeMapEnd()V

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/io/ParsingEncoder;->pop()V

    return-void
.end method

.method public writeMapStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/io/ParsingEncoder;->push()V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->MAP_START:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Encoder;->writeMapStart()V

    return-void
.end method

.method public writeNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->NULL:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/Encoder;->writeNull()V

    return-void
.end method

.method public writeString(Ljava/lang/CharSequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->STRING:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 6
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    invoke-virtual {v0, p1}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->STRING:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    invoke-virtual {v0, p1}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeString(Lorg/apache/avro/util/Utf8;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->STRING:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ValidatingEncoder;->out:Lorg/apache/avro/io/Encoder;

    invoke-virtual {v0, p1}, Lorg/apache/avro/io/Encoder;->writeString(Lorg/apache/avro/util/Utf8;)V

    return-void
.end method
