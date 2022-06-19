.class public Lorg/apache/avro/io/JsonEncoder;
.super Lorg/apache/avro/io/ParsingEncoder;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/io/parsing/Parser$ActionHandler;


# static fields
.field private static final LINE_SEPARATOR:Ljava/lang/String;


# instance fields
.field private includeNamespace:Z

.field public isEmpty:Ljava/util/BitSet;

.field private out:Le/k/a/b/g;

.field public final parser:Lorg/apache/avro/io/parsing/Parser;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/avro/io/JsonEncoder;->LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;Le/k/a/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/apache/avro/io/ParsingEncoder;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lorg/apache/avro/io/JsonEncoder;->includeNamespace:Z

    .line 5
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->isEmpty:Ljava/util/BitSet;

    .line 6
    invoke-direct {p0, p2}, Lorg/apache/avro/io/JsonEncoder;->configure(Le/k/a/b/g;)Lorg/apache/avro/io/JsonEncoder;

    .line 7
    new-instance p2, Lorg/apache/avro/io/parsing/Parser;

    new-instance v0, Lorg/apache/avro/io/parsing/JsonGrammarGenerator;

    invoke-direct {v0}, Lorg/apache/avro/io/parsing/JsonGrammarGenerator;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/avro/io/parsing/JsonGrammarGenerator;->generate(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lorg/apache/avro/io/parsing/Parser;-><init>(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Parser$ActionHandler;)V

    iput-object p2, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p2, v0}, Lorg/apache/avro/io/JsonEncoder;->getJsonGenerator(Ljava/io/OutputStream;Z)Le/k/a/b/g;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/avro/io/JsonEncoder;-><init>(Lorg/apache/avro/Schema;Le/k/a/b/g;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;Ljava/io/OutputStream;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p2, p3}, Lorg/apache/avro/io/JsonEncoder;->getJsonGenerator(Ljava/io/OutputStream;Z)Le/k/a/b/g;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/avro/io/JsonEncoder;-><init>(Lorg/apache/avro/Schema;Le/k/a/b/g;)V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/io/JsonEncoder;->LINE_SEPARATOR:Ljava/lang/String;

    return-object v0
.end method

.method private configure(Le/k/a/b/g;)Lorg/apache/avro/io/JsonEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "JsonGenerator cannot be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/apache/avro/io/JsonEncoder;->flush()V

    .line 5
    :cond_0
    iput-object p1, p0, Lorg/apache/avro/io/JsonEncoder;->out:Le/k/a/b/g;

    return-object p0
.end method

.method private static getJsonGenerator(Ljava/io/OutputStream;Z)Le/k/a/b/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "OutputStream cannot be null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Le/k/a/b/e;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, v1}, Le/k/a/b/e;-><init>(Le/k/a/b/n;)V

    .line 4
    sget-object v1, Le/k/a/b/d;->d:Le/k/a/b/d;

    invoke-virtual {v0, p0, v1}, Le/k/a/b/e;->d(Ljava/io/OutputStream;Le/k/a/b/d;)Le/k/a/b/g;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Lorg/apache/avro/io/JsonEncoder$1;

    invoke-direct {p1}, Lorg/apache/avro/io/JsonEncoder$1;-><init>()V

    .line 6
    iput-object p1, p0, Le/k/a/b/g;->a:Le/k/a/b/o;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Le/k/a/b/a0/l;

    invoke-direct {p1}, Le/k/a/b/a0/l;-><init>()V

    .line 8
    sget-object v0, Lorg/apache/avro/io/JsonEncoder;->LINE_SEPARATOR:Ljava/lang/String;

    .line 9
    iput-object v0, p1, Le/k/a/b/a0/l;->a:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Le/k/a/b/g;->a:Le/k/a/b/o;

    :goto_0
    return-object p0
.end method

.method private writeByteArray([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->out:Le/k/a/b/g;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configure(Ljava/io/OutputStream;)Lorg/apache/avro/io/JsonEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lorg/apache/avro/io/JsonEncoder;->getJsonGenerator(Ljava/io/OutputStream;Z)Le/k/a/b/g;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/avro/io/JsonEncoder;->configure(Le/k/a/b/g;)Lorg/apache/avro/io/JsonEncoder;

    return-object p0
.end method

.method public doAction(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of p1, p2, Lorg/apache/avro/io/parsing/Symbol$FieldAdjustAction;

    if-eqz p1, :cond_0

    .line 2
    check-cast p2, Lorg/apache/avro/io/parsing/Symbol$FieldAdjustAction;

    .line 3
    iget-object p1, p0, Lorg/apache/avro/io/JsonEncoder;->out:Le/k/a/b/g;

    iget-object p2, p2, Lorg/apache/avro/io/parsing/Symbol$FieldAdjustAction;->fname:Ljava/lang/String;

    invoke-virtual {p1, p2}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_0
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->RECORD_START:Lorg/apache/avro/io/parsing/Symbol;

    if-ne p2, p1, :cond_1

    .line 5
    iget-object p1, p0, Lorg/apache/avro/io/JsonEncoder;->out:Le/k/a/b/g;

    invoke-virtual {p1}, Le/k/a/b/g;->M1()V

    goto :goto_1

    .line 6
    :cond_1
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->RECORD_END:Lorg/apache/avro/io/parsing/Symbol;

    if-eq p2, p1, :cond_4

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->UNION_END:Lorg/apache/avro/io/parsing/Symbol;

    if-ne p2, p1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->FIELD_END:Lorg/apache/avro/io/parsing/Symbol;

    if-ne p2, p1, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    new-instance p1, Lorg/apache/avro/AvroTypeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown action symbol "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/apache/avro/io/JsonEncoder;->out:Le/k/a/b/g;

    invoke-virtual {p1}, Le/k/a/b/g;->t0()V

    :goto_1
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
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->processImplicitActions()V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->out:Le/k/a/b/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Le/k/a/b/g;->flush()V

    :cond_0
    return-void
.end method

.method public isIncludeNamespace()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/avro/io/JsonEncoder;->includeNamespace:Z

    return v0
.end method

.method public setIncludeNamespace(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/avro/io/JsonEncoder;->includeNamespace:Z

    return-void
.end method

.method public startItem()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->isEmpty:Ljava/util/BitSet;

    iget v1, p0, Lorg/apache/avro/io/ParsingEncoder;->pos:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->ITEM_END:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 3
    :cond_0
    invoke-super {p0}, Lorg/apache/avro/io/ParsingEncoder;->startItem()V

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->isEmpty:Ljava/util/BitSet;

    invoke-virtual {p0}, Lorg/apache/avro/io/ParsingEncoder;->depth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

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
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->isEmpty:Ljava/util/BitSet;

    iget v1, p0, Lorg/apache/avro/io/ParsingEncoder;->pos:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->ITEM_END:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/apache/avro/io/ParsingEncoder;->pop()V

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_END:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 5
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->out:Le/k/a/b/g;

    invoke-virtual {v0}, Le/k/a/b/g;->p0()V

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
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_START:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->out:Le/k/a/b/g;

    invoke-virtual {v0}, Le/k/a/b/g;->F1()V

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/io/ParsingEncoder;->push()V

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->isEmpty:Ljava/util/BitSet;

    invoke-virtual {p0}, Lorg/apache/avro/io/ParsingEncoder;->depth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

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
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->BOOLEAN:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->out:Le/k/a/b/g;

    invoke-virtual {v0, p1}, Le/k/a/b/g;->k0(Z)V

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
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/avro/io/JsonEncoder;->writeBytes([BII)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/avro/io/Encoder;->writeBytes([B)V

    :goto_0
    return-void
.end method

.method public writeBytes([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->BYTES:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/io/JsonEncoder;->writeByteArray([BII)V

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
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->DOUBLE:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->out:Le/k/a/b/g;

    invoke-virtual {v0, p1, p2}, Le/k/a/b/g;->F0(D)V

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
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->ENUM:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->popSymbol()Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$EnumLabelsAction;

    if-ltz p1, :cond_0

    .line 3
    iget v1, v0, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    if-ge p1, v1, :cond_0

    .line 4
    iget-object v1, p0, Lorg/apache/avro/io/JsonEncoder;->out:Le/k/a/b/g;

    invoke-virtual {v0, p1}, Lorg/apache/avro/io/parsing/Symbol$EnumLabelsAction;->getLabel(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

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
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->FIXED:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->popSymbol()Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;

    .line 3
    iget v1, v0, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    if-ne p3, v1, :cond_0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/io/JsonEncoder;->writeByteArray([BII)V

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
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->FLOAT:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->out:Le/k/a/b/g;

    invoke-virtual {v0, p1}, Le/k/a/b/g;->G0(F)V

    return-void
.end method

.method public writeIndex(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->UNION:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->popSymbol()Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$Alternative;

    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/avro/io/parsing/Symbol$Alternative;->getSymbol(I)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v1

    .line 4
    sget-object v2, Lorg/apache/avro/io/parsing/Symbol;->NULL:Lorg/apache/avro/io/parsing/Symbol;

    if-eq v1, v2, :cond_0

    iget-boolean v2, p0, Lorg/apache/avro/io/JsonEncoder;->includeNamespace:Z

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lorg/apache/avro/io/JsonEncoder;->out:Le/k/a/b/g;

    invoke-virtual {v2}, Le/k/a/b/g;->M1()V

    .line 6
    iget-object v2, p0, Lorg/apache/avro/io/JsonEncoder;->out:Le/k/a/b/g;

    invoke-virtual {v0, p1}, Lorg/apache/avro/io/parsing/Symbol$Alternative;->getLabel(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->UNION_END:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/parsing/Parser;->pushSymbol(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    invoke-virtual {p1, v1}, Lorg/apache/avro/io/parsing/Parser;->pushSymbol(Lorg/apache/avro/io/parsing/Symbol;)V

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
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->INT:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->out:Le/k/a/b/g;

    invoke-virtual {v0, p1}, Le/k/a/b/g;->J0(I)V

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
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->LONG:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->out:Le/k/a/b/g;

    invoke-virtual {v0, p1, p2}, Le/k/a/b/g;->K0(J)V

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
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->isEmpty:Ljava/util/BitSet;

    iget v1, p0, Lorg/apache/avro/io/ParsingEncoder;->pos:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->ITEM_END:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/apache/avro/io/ParsingEncoder;->pop()V

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->MAP_END:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 5
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->out:Le/k/a/b/g;

    invoke-virtual {v0}, Le/k/a/b/g;->t0()V

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
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->isEmpty:Ljava/util/BitSet;

    invoke-virtual {p0}, Lorg/apache/avro/io/ParsingEncoder;->depth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->MAP_START:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->out:Le/k/a/b/g;

    invoke-virtual {v0}, Le/k/a/b/g;->M1()V

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
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->NULL:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->out:Le/k/a/b/g;

    invoke-virtual {v0}, Le/k/a/b/g;->D0()V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->STRING:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->topSymbol()Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->MAP_KEY_MARKER:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->parser:Lorg/apache/avro/io/parsing/Parser;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 5
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->out:Le/k/a/b/g;

    invoke-virtual {v0, p1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/JsonEncoder;->out:Le/k/a/b/g;

    invoke-virtual {v0, p1}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeString(Lorg/apache/avro/util/Utf8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/util/Utf8;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/avro/io/JsonEncoder;->writeString(Ljava/lang/String;)V

    return-void
.end method
