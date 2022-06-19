.class public Lorg/apache/avro/io/parsing/Parser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/io/parsing/Parser$ActionHandler;
    }
.end annotation


# instance fields
.field public pos:I

.field public stack:[Lorg/apache/avro/io/parsing/Symbol;

.field public final symbolHandler:Lorg/apache/avro/io/parsing/Parser$ActionHandler;


# direct methods
.method public constructor <init>(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Parser$ActionHandler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/apache/avro/io/parsing/Parser;->symbolHandler:Lorg/apache/avro/io/parsing/Parser$ActionHandler;

    const/4 p2, 0x5

    new-array p2, p2, [Lorg/apache/avro/io/parsing/Symbol;

    .line 3
    iput-object p2, p0, Lorg/apache/avro/io/parsing/Parser;->stack:[Lorg/apache/avro/io/parsing/Symbol;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    return-void
.end method

.method private expandStack()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/parsing/Parser;->stack:[Lorg/apache/avro/io/parsing/Symbol;

    array-length v1, v0

    array-length v2, v0

    const/16 v3, 0x400

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/avro/io/parsing/Symbol;

    iput-object v0, p0, Lorg/apache/avro/io/parsing/Parser;->stack:[Lorg/apache/avro/io/parsing/Symbol;

    return-void
.end method


# virtual methods
.method public final advance(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/avro/io/parsing/Parser;->stack:[Lorg/apache/avro/io/parsing/Symbol;

    iget v1, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_1

    return-object v0

    .line 2
    :cond_1
    iget-object v1, v0, Lorg/apache/avro/io/parsing/Symbol;->kind:Lorg/apache/avro/io/parsing/Symbol$Kind;

    .line 3
    sget-object v2, Lorg/apache/avro/io/parsing/Symbol$Kind;->IMPLICIT_ACTION:Lorg/apache/avro/io/parsing/Symbol$Kind;

    if-ne v1, v2, :cond_2

    .line 4
    iget-object v1, p0, Lorg/apache/avro/io/parsing/Parser;->symbolHandler:Lorg/apache/avro/io/parsing/Parser$ActionHandler;

    invoke-interface {v1, p1, v0}, Lorg/apache/avro/io/parsing/Parser$ActionHandler;->doAction(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_2
    sget-object v2, Lorg/apache/avro/io/parsing/Symbol$Kind;->TERMINAL:Lorg/apache/avro/io/parsing/Symbol$Kind;

    if-eq v1, v2, :cond_4

    .line 6
    sget-object v2, Lorg/apache/avro/io/parsing/Symbol$Kind;->REPEATER:Lorg/apache/avro/io/parsing/Symbol$Kind;

    if-ne v1, v2, :cond_3

    move-object v1, v0

    check-cast v1, Lorg/apache/avro/io/parsing/Symbol$Repeater;

    iget-object v1, v1, Lorg/apache/avro/io/parsing/Symbol$Repeater;->end:Lorg/apache/avro/io/parsing/Symbol;

    if-ne p1, v1, :cond_3

    return-object p1

    .line 7
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/avro/io/parsing/Parser;->pushProduction(Lorg/apache/avro/io/parsing/Symbol;)V

    goto :goto_0

    .line 8
    :cond_4
    new-instance v1, Lorg/apache/avro/AvroTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to process a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " when a "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was expected."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public depth()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    return v0
.end method

.method public popSymbol()Lorg/apache/avro/io/parsing/Symbol;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/parsing/Parser;->stack:[Lorg/apache/avro/io/parsing/Symbol;

    iget v1, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final processImplicitActions()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget v0, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lorg/apache/avro/io/parsing/Parser;->stack:[Lorg/apache/avro/io/parsing/Symbol;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    .line 3
    iget-object v2, v1, Lorg/apache/avro/io/parsing/Symbol;->kind:Lorg/apache/avro/io/parsing/Symbol$Kind;

    sget-object v3, Lorg/apache/avro/io/parsing/Symbol$Kind;->IMPLICIT_ACTION:Lorg/apache/avro/io/parsing/Symbol$Kind;

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 4
    iput v0, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    .line 5
    iget-object v0, p0, Lorg/apache/avro/io/parsing/Parser;->symbolHandler:Lorg/apache/avro/io/parsing/Parser$ActionHandler;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/apache/avro/io/parsing/Parser$ActionHandler;->doAction(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v3, Lorg/apache/avro/io/parsing/Symbol$Kind;->TERMINAL:Lorg/apache/avro/io/parsing/Symbol$Kind;

    if-eq v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 7
    iput v0, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    .line 8
    invoke-virtual {p0, v1}, Lorg/apache/avro/io/parsing/Parser;->pushProduction(Lorg/apache/avro/io/parsing/Symbol;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final processTrailingImplicitActions()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget v0, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lorg/apache/avro/io/parsing/Parser;->stack:[Lorg/apache/avro/io/parsing/Symbol;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    .line 3
    iget-object v2, v1, Lorg/apache/avro/io/parsing/Symbol;->kind:Lorg/apache/avro/io/parsing/Symbol$Kind;

    sget-object v3, Lorg/apache/avro/io/parsing/Symbol$Kind;->IMPLICIT_ACTION:Lorg/apache/avro/io/parsing/Symbol$Kind;

    if-ne v2, v3, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;

    iget-boolean v2, v2, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;->isTrailing:Z

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 4
    iput v0, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    .line 5
    iget-object v0, p0, Lorg/apache/avro/io/parsing/Parser;->symbolHandler:Lorg/apache/avro/io/parsing/Parser$ActionHandler;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/apache/avro/io/parsing/Parser$ActionHandler;->doAction(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final pushProduction(Lorg/apache/avro/io/parsing/Symbol;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lorg/apache/avro/io/parsing/Symbol;->production:[Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    :goto_0
    iget v0, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    array-length v1, p1

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/apache/avro/io/parsing/Parser;->stack:[Lorg/apache/avro/io/parsing/Symbol;

    array-length v3, v2

    if-le v1, v3, :cond_0

    .line 3
    invoke-direct {p0}, Lorg/apache/avro/io/parsing/Parser;->expandStack()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    array-length v3, p1

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget v0, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    return-void
.end method

.method public pushSymbol(Lorg/apache/avro/io/parsing/Symbol;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    iget-object v1, p0, Lorg/apache/avro/io/parsing/Parser;->stack:[Lorg/apache/avro/io/parsing/Symbol;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/io/parsing/Parser;->expandStack()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/parsing/Parser;->stack:[Lorg/apache/avro/io/parsing/Symbol;

    iget v1, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    aput-object p1, v0, v1

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    return-void
.end method

.method public topSymbol()Lorg/apache/avro/io/parsing/Symbol;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/parsing/Parser;->stack:[Lorg/apache/avro/io/parsing/Symbol;

    iget v1, p0, Lorg/apache/avro/io/parsing/Parser;->pos:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method
