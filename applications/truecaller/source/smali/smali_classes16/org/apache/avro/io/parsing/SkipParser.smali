.class public Lorg/apache/avro/io/parsing/SkipParser;
.super Lorg/apache/avro/io/parsing/Parser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/io/parsing/SkipParser$SkipHandler;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private final skipHandler:Lorg/apache/avro/io/parsing/SkipParser$SkipHandler;


# direct methods
.method public constructor <init>(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Parser$ActionHandler;Lorg/apache/avro/io/parsing/SkipParser$SkipHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/avro/io/parsing/Parser;-><init>(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Parser$ActionHandler;)V

    .line 2
    iput-object p3, p0, Lorg/apache/avro/io/parsing/SkipParser;->skipHandler:Lorg/apache/avro/io/parsing/SkipParser$SkipHandler;

    return-void
.end method


# virtual methods
.method public final skipRepeater()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    .line 2
    iget-object v1, p0, Lorg/apache/avro/io/parsing/Parser;->stack:[Lorg/apache/avro/io/parsing/Symbol;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    aget-object v1, v1, v2

    .line 3
    invoke-virtual {p0, v1}, Lorg/apache/avro/io/parsing/Parser;->pushProduction(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 4
    invoke-virtual {p0, v0}, Lorg/apache/avro/io/parsing/SkipParser;->skipTo(I)V

    return-void
.end method

.method public final skipSymbol(Lorg/apache/avro/io/parsing/Symbol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/avro/io/parsing/Parser;->pushSymbol(Lorg/apache/avro/io/parsing/Symbol;)V

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/avro/io/parsing/SkipParser;->skipTo(I)V

    return-void
.end method

.method public final skipTo(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget v0, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    if-ge p1, v0, :cond_3

    .line 2
    iget-object v1, p0, Lorg/apache/avro/io/parsing/Parser;->stack:[Lorg/apache/avro/io/parsing/Symbol;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    .line 3
    iget-object v2, v1, Lorg/apache/avro/io/parsing/Symbol;->kind:Lorg/apache/avro/io/parsing/Symbol$Kind;

    sget-object v3, Lorg/apache/avro/io/parsing/Symbol$Kind;->TERMINAL:Lorg/apache/avro/io/parsing/Symbol$Kind;

    if-eq v2, v3, :cond_2

    .line 4
    sget-object v3, Lorg/apache/avro/io/parsing/Symbol$Kind;->IMPLICIT_ACTION:Lorg/apache/avro/io/parsing/Symbol$Kind;

    if-eq v2, v3, :cond_1

    sget-object v3, Lorg/apache/avro/io/parsing/Symbol$Kind;->EXPLICIT_ACTION:Lorg/apache/avro/io/parsing/Symbol$Kind;

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 5
    iput v0, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    .line 6
    invoke-virtual {p0, v1}, Lorg/apache/avro/io/parsing/Parser;->pushProduction(Lorg/apache/avro/io/parsing/Symbol;)V

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/avro/io/parsing/SkipParser;->skipHandler:Lorg/apache/avro/io/parsing/SkipParser$SkipHandler;

    invoke-interface {v0}, Lorg/apache/avro/io/parsing/SkipParser$SkipHandler;->skipAction()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lorg/apache/avro/io/parsing/SkipParser;->skipHandler:Lorg/apache/avro/io/parsing/SkipParser$SkipHandler;

    invoke-interface {v0}, Lorg/apache/avro/io/parsing/SkipParser$SkipHandler;->skipTopSymbol()V

    goto :goto_0

    :cond_3
    return-void
.end method
