.class public Lorg/apache/avro/io/JsonDecoder;
.super Lorg/apache/avro/io/ParsingDecoder;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/io/parsing/Parser$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;
    }
.end annotation


# static fields
.field private static jsonFactory:Le/k/a/b/e;


# instance fields
.field public currentReorderBuffer:Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;

.field private in:Le/k/a/b/j;

.field public reorderBuffers:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/k/a/b/e;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Le/k/a/b/e;-><init>(Le/k/a/b/n;)V

    .line 3
    sput-object v0, Lorg/apache/avro/io/JsonDecoder;->jsonFactory:Le/k/a/b/e;

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-static {p1}, Lorg/apache/avro/io/JsonDecoder;->getSymbol(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/avro/io/JsonDecoder;-><init>(Lorg/apache/avro/io/parsing/Symbol;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-static {p1}, Lorg/apache/avro/io/JsonDecoder;->getSymbol(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/avro/io/JsonDecoder;-><init>(Lorg/apache/avro/io/parsing/Symbol;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/avro/io/parsing/Symbol;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/io/ParsingDecoder;-><init>(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 2
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/apache/avro/io/JsonDecoder;->reorderBuffers:Ljava/util/Stack;

    .line 3
    invoke-virtual {p0, p2}, Lorg/apache/avro/io/JsonDecoder;->configure(Ljava/io/InputStream;)Lorg/apache/avro/io/JsonDecoder;

    return-void
.end method

.method private constructor <init>(Lorg/apache/avro/io/parsing/Symbol;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/avro/io/ParsingDecoder;-><init>(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 5
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/apache/avro/io/JsonDecoder;->reorderBuffers:Ljava/util/Stack;

    .line 6
    invoke-virtual {p0, p2}, Lorg/apache/avro/io/JsonDecoder;->configure(Ljava/lang/String;)Lorg/apache/avro/io/JsonDecoder;

    return-void
.end method

.method private advance(Lorg/apache/avro/io/parsing/Symbol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->processTrailingImplicitActions()V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->depth()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0, p1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

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
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->FIXED:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

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

.method private doArrayNext()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_END:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method private doMapNext()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->k:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 3
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->MAP_END:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method private doSkipFixed(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-ne v0, v1, :cond_1

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/io/JsonDecoder;->readByteArray()[B

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 4
    array-length v1, v0

    if-ne v1, p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v1, Lorg/apache/avro/AvroTypeException;

    const-string v2, "Expected fixed length "

    const-string v3, ", but got"

    invoke-static {v2, p1, v3}, Le/d/c/a/a;->E(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "fixed"

    .line 6
    invoke-direct {p0, p1}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object p1

    throw p1
.end method

.method private error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/avro/AvroTypeException;

    const-string v1, "Expected "

    const-string v2, ". Got "

    invoke-static {v1, p1, v2}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v1}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getSymbol(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 1

    const-string v0, "Schema cannot be null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lorg/apache/avro/io/parsing/JsonGrammarGenerator;

    invoke-direct {v0}, Lorg/apache/avro/io/parsing/JsonGrammarGenerator;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/avro/io/parsing/JsonGrammarGenerator;->generate(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p0

    return-object p0
.end method

.method private readByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public arrayNext()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->ITEM_END:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/io/JsonDecoder;->doArrayNext()J

    move-result-wide v0

    return-wide v0
.end method

.method public configure(Ljava/io/InputStream;)Lorg/apache/avro/io/JsonDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "InputStream cannot be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->reset()V

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->reorderBuffers:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;

    .line 5
    sget-object v0, Lorg/apache/avro/io/JsonDecoder;->jsonFactory:Le/k/a/b/e;

    invoke-virtual {v0, p1}, Le/k/a/b/e;->f(Ljava/io/InputStream;)Le/k/a/b/j;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    .line 6
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    return-object p0
.end method

.method public configure(Ljava/lang/String;)Lorg/apache/avro/io/JsonDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "String to read from cannot be null"

    .line 7
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->reset()V

    .line 9
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->reorderBuffers:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;

    .line 11
    new-instance v1, Le/k/a/b/e;

    .line 12
    invoke-direct {v1, v0}, Le/k/a/b/e;-><init>(Le/k/a/b/n;)V

    .line 13
    invoke-virtual {v1, p1}, Le/k/a/b/e;->g(Ljava/lang/String;)Le/k/a/b/j;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    .line 14
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    return-object p0
.end method

.method public doAction(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of p1, p2, Lorg/apache/avro/io/parsing/Symbol$FieldAdjustAction;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 2
    check-cast p2, Lorg/apache/avro/io/parsing/Symbol$FieldAdjustAction;

    .line 3
    iget-object p1, p2, Lorg/apache/avro/io/parsing/Symbol$FieldAdjustAction;->fname:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lorg/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v1, Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;->savedFields:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/k/a/c/n0/a0;

    if-eqz v1, :cond_0

    .line 6
    :try_start_0
    iget-object p2, p0, Lorg/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;

    iget-object p2, p2, Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;->savedFields:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lorg/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;

    iget-object p2, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    iput-object p2, p1, Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;->origParser:Le/k/a/b/j;

    .line 8
    invoke-virtual {v1}, Le/k/a/c/n0/a0;->x2()Le/k/a/b/j;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    .line 9
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 11
    throw p1

    .line 12
    :cond_0
    iget-object v1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v1}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v1

    sget-object v2, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v1, v2, :cond_f

    .line 13
    :goto_0
    iget-object v1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v2}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p2, Lorg/apache/avro/io/parsing/Symbol$FieldAdjustAction;->aliases:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    iget-object v2, p0, Lorg/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;

    if-nez v2, :cond_2

    .line 17
    new-instance v2, Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;

    invoke-direct {v2, v0}, Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;-><init>(Lorg/apache/avro/io/JsonDecoder$1;)V

    iput-object v2, p0, Lorg/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;

    .line 18
    :cond_2
    new-instance v2, Le/k/a/c/n0/a0;

    iget-object v3, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    .line 19
    invoke-direct {v2, v3, v0}, Le/k/a/c/n0/a0;-><init>(Le/k/a/b/j;Le/k/a/c/g;)V

    .line 20
    :try_start_2
    iget-object v3, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v2, v3}, Le/k/a/c/n0/a0;->A2(Le/k/a/b/j;)V

    .line 21
    iget-object v3, p0, Lorg/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;

    iget-object v3, v3, Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;->savedFields:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 22
    iget-object v1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 23
    iget-object v1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v1}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v1

    sget-object v2, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 24
    :cond_3
    new-instance p1, Lorg/apache/avro/AvroTypeException;

    const-string v0, "Expected field name not found: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p2, p2, Lorg/apache/avro/io/parsing/Symbol$FieldAdjustAction;->fname:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2
    move-exception p1

    .line 25
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    .line 26
    throw p1

    :cond_4
    :goto_1
    return-object v0

    .line 27
    :cond_5
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->FIELD_END:Lorg/apache/avro/io/parsing/Symbol;

    if-ne p2, p1, :cond_6

    .line 28
    iget-object p1, p0, Lorg/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;

    if-eqz p1, :cond_f

    iget-object p2, p1, Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;->origParser:Le/k/a/b/j;

    if-eqz p2, :cond_f

    .line 29
    iput-object p2, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    .line 30
    iput-object v0, p1, Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;->origParser:Le/k/a/b/j;

    goto/16 :goto_4

    .line 31
    :cond_6
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->RECORD_START:Lorg/apache/avro/io/parsing/Symbol;

    if-ne p2, p1, :cond_8

    .line 32
    iget-object p1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {p1}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object p1

    sget-object p2, Le/k/a/b/m;->j:Le/k/a/b/m;

    if-ne p1, p2, :cond_7

    .line 33
    iget-object p1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 34
    iget-object p1, p0, Lorg/apache/avro/io/JsonDecoder;->reorderBuffers:Ljava/util/Stack;

    iget-object p2, p0, Lorg/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iput-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;

    goto/16 :goto_4

    :cond_7
    const-string p1, "record-start"

    .line 36
    invoke-direct {p0, p1}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object p1

    throw p1

    .line 37
    :cond_8
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->RECORD_END:Lorg/apache/avro/io/parsing/Symbol;

    if-eq p2, p1, :cond_a

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->UNION_END:Lorg/apache/avro/io/parsing/Symbol;

    if-ne p2, p1, :cond_9

    goto :goto_2

    .line 38
    :cond_9
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

    .line 39
    :cond_a
    :goto_2
    iget-object p1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {p1}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object p1

    sget-object v1, Le/k/a/b/m;->k:Le/k/a/b/m;

    if-eq p1, v1, :cond_b

    .line 40
    iget-object p1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    goto :goto_2

    .line 41
    :cond_b
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->RECORD_END:Lorg/apache/avro/io/parsing/Symbol;

    if-ne p2, p1, :cond_e

    .line 42
    iget-object p1, p0, Lorg/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;->savedFields:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_3

    :cond_c
    const-string p1, "Unknown fields: "

    .line 43
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;

    iget-object p2, p2, Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;->savedFields:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object p1

    throw p1

    .line 44
    :cond_d
    :goto_3
    iget-object p1, p0, Lorg/apache/avro/io/JsonDecoder;->reorderBuffers:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;

    iput-object p1, p0, Lorg/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;

    .line 45
    :cond_e
    iget-object p1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    :cond_f
    :goto_4
    return-object v0
.end method

.method public mapNext()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->ITEM_END:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/io/JsonDecoder;->doMapNext()J

    move-result-wide v0

    return-wide v0
.end method

.method public readArrayStart()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_START:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->l:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 4
    invoke-direct {p0}, Lorg/apache/avro/io/JsonDecoder;->doArrayNext()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string v0, "array-start"

    .line 5
    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0
.end method

.method public readBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->BOOLEAN:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v0

    .line 3
    sget-object v1, Le/k/a/b/m;->s:Le/k/a/b/m;

    if-eq v0, v1, :cond_1

    sget-object v2, Le/k/a/b/m;->t:Le/k/a/b/m;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "boolean"

    .line 4
    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0

    .line 5
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v2}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->BYTES:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, p1}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 2
    iget-object p1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {p1}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object p1

    sget-object v0, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-direct {p0}, Lorg/apache/avro/io/JsonDecoder;->readByteArray()[B

    move-result-object p1

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 5
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "bytes"

    .line 6
    invoke-direct {p0, p1}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object p1

    throw p1
.end method

.method public readDouble()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->DOUBLE:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v0

    .line 3
    iget-boolean v0, v0, Le/k/a/b/m;->g:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->n0()D

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v2}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    return-wide v0

    :cond_0
    const-string v0, "double"

    .line 6
    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0
.end method

.method public readEnum()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->ENUM:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->popSymbol()Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$EnumLabelsAction;

    .line 3
    iget-object v1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v1}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v1

    sget-object v2, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$EnumLabelsAction;->findLabel(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 6
    iget-object v1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    return v0

    .line 7
    :cond_0
    new-instance v0, Lorg/apache/avro/AvroTypeException;

    const-string v1, "Unknown symbol in enum "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v2}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "fixed"

    .line 8
    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0
.end method

.method public readFixed([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lorg/apache/avro/io/JsonDecoder;->checkFixed(I)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0}, Lorg/apache/avro/io/JsonDecoder;->readByteArray()[B

    move-result-object v0

    .line 4
    iget-object v1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 5
    array-length v1, v0

    if-ne v1, p3, :cond_0

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Lorg/apache/avro/AvroTypeException;

    const-string p2, "Expected fixed length "

    const-string v1, ", but got"

    invoke-static {p2, p3, v1}, Le/d/c/a/a;->E(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "fixed"

    .line 8
    invoke-direct {p0, p1}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object p1

    throw p1
.end method

.method public readFloat()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->FLOAT:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v0

    .line 3
    iget-boolean v0, v0, Le/k/a/b/m;->g:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->t0()F

    move-result v0

    .line 5
    iget-object v1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    return v0

    :cond_0
    const-string v0, "float"

    .line 6
    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0
.end method

.method public readIndex()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->UNION:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->popSymbol()Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$Alternative;

    .line 3
    iget-object v1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v1}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v1

    sget-object v2, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v1, v2, :cond_0

    const-string v1, "null"

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v1}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v1

    sget-object v2, Le/k/a/b/m;->j:Le/k/a/b/m;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v1

    sget-object v2, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v2}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 7
    iget-object v2, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    sget-object v3, Lorg/apache/avro/io/parsing/Symbol;->UNION_END:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v2, v3}, Lorg/apache/avro/io/parsing/Parser;->pushSymbol(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Alternative;->findLabel(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 9
    iget-object v1, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0, v2}, Lorg/apache/avro/io/parsing/Symbol$Alternative;->getSymbol(I)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/avro/io/parsing/Parser;->pushSymbol(Lorg/apache/avro/io/parsing/Symbol;)V

    return v2

    .line 10
    :cond_1
    new-instance v0, Lorg/apache/avro/AvroTypeException;

    const-string v2, "Unknown union branch "

    invoke-static {v2, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "start-union"

    .line 11
    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0
.end method

.method public readInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->INT:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v0

    .line 3
    iget-boolean v0, v0, Le/k/a/b/m;->g:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->z0()I

    move-result v0

    .line 5
    iget-object v1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    return v0

    :cond_0
    const-string v0, "int"

    .line 6
    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0
.end method

.method public readLong()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->LONG:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v0

    .line 3
    iget-boolean v0, v0, Le/k/a/b/m;->g:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->B0()J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v2}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    return-wide v0

    :cond_0
    const-string v0, "long"

    .line 6
    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0
.end method

.method public readMapStart()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->MAP_START:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->j:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 4
    invoke-direct {p0}, Lorg/apache/avro/io/JsonDecoder;->doMapNext()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string v0, "map-start"

    .line 5
    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0
.end method

.method public readNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->NULL:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    return-void

    :cond_0
    const-string v0, "null"

    .line 4
    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0
.end method

.method public readString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->STRING:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->topSymbol()Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->MAP_KEY_MARKER:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 5
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "map-key"

    .line 6
    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0

    .line 7
    :cond_1
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-ne v0, v1, :cond_2

    .line 8
    :goto_0
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    return-object v0

    :cond_2
    const-string v0, "string"

    .line 10
    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0
.end method

.method public readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Lorg/apache/avro/util/Utf8;

    invoke-virtual {p0}, Lorg/apache/avro/io/JsonDecoder;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/avro/util/Utf8;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public skipArray()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_START:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->l:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->w2()Le/k/a/b/j;

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 5
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_END:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-string v0, "array-start"

    .line 6
    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0
.end method

.method public skipBytes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->BYTES:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    return-void

    :cond_0
    const-string v0, "bytes"

    .line 4
    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0
.end method

.method public skipFixed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->FIXED:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->popSymbol()Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;

    .line 5
    iget v0, v0, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->doSkipFixed(I)V

    return-void
.end method

.method public skipFixed(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/io/JsonDecoder;->checkFixed(I)V

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/avro/io/JsonDecoder;->doSkipFixed(I)V

    return-void
.end method

.method public skipMap()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->MAP_START:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->j:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->w2()Le/k/a/b/j;

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 5
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->MAP_END:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-string v0, "map-start"

    .line 6
    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0
.end method

.method public skipString()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->STRING:Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->advance(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lorg/apache/avro/io/parsing/Parser;->topSymbol()Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->MAP_KEY_MARKER:Lorg/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/ParsingDecoder;->parser:Lorg/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/parsing/Parser;->advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "map-key"

    .line 5
    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-ne v0, v1, :cond_2

    .line 7
    :goto_0
    iget-object v0, p0, Lorg/apache/avro/io/JsonDecoder;->in:Le/k/a/b/j;

    invoke-virtual {v0}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    return-void

    :cond_2
    const-string v0, "string"

    .line 8
    invoke-direct {p0, v0}, Lorg/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lorg/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0
.end method
