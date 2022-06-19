.class public abstract Lorg/apache/avro/io/ParsingDecoder;
.super Lorg/apache/avro/io/Decoder;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/io/parsing/Parser$ActionHandler;
.implements Lorg/apache/avro/io/parsing/SkipParser$SkipHandler;


# instance fields
.field public final parser:Lorg/apache/avro/io/parsing/SkipParser;


# direct methods
.method public constructor <init>(Lorg/apache/avro/io/parsing/Symbol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/io/Decoder;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/avro/io/parsing/SkipParser;

    invoke-direct {v0, p1, p0, p0}, Lorg/apache/avro/io/parsing/SkipParser;-><init>(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Parser$ActionHandler;Lorg/apache/avro/io/parsing/SkipParser$SkipHandler;)V

    iput-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    return-void
.end method


# virtual methods
.method public skipAction()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->popSymbol()Lorg/apache/avro/io/parsing/Symbol;

    return-void
.end method

.method public abstract skipFixed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public skipTopSymbol()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->topSymbol()Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    .line 2
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->NULL:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->readNull()V

    goto/16 :goto_0

    .line 4
    :cond_0
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->BOOLEAN:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->readBoolean()Z

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->INT:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->readInt()I

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->LONG:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_3

    .line 9
    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->readLong()J

    goto :goto_0

    .line 10
    :cond_3
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->FLOAT:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_4

    .line 11
    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->readFloat()F

    goto :goto_0

    .line 12
    :cond_4
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->DOUBLE:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_5

    .line 13
    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->readDouble()D

    goto :goto_0

    .line 14
    :cond_5
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->STRING:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_6

    .line 15
    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->skipString()V

    goto :goto_0

    .line 16
    :cond_6
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->BYTES:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_7

    .line 17
    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->skipBytes()V

    goto :goto_0

    .line 18
    :cond_7
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->ENUM:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_8

    .line 19
    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->readEnum()I

    goto :goto_0

    .line 20
    :cond_8
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->FIXED:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_9

    .line 21
    invoke-virtual {p0}, Lorg/apache/avro/io/ParsingDecoder;->skipFixed()V

    goto :goto_0

    .line 22
    :cond_9
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->UNION:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_a

    .line 23
    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->readIndex()I

    goto :goto_0

    .line 24
    :cond_a
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_START:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_b

    .line 25
    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->skipArray()J

    goto :goto_0

    .line 26
    :cond_b
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->MAP_START:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_c

    .line 27
    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->skipMap()J

    :cond_c
    :goto_0
    return-void
.end method
