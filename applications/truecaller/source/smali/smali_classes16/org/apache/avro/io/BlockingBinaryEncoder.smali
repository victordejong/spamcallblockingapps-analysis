.class public Lorg/apache/avro/io/BlockingBinaryEncoder;
.super Lorg/apache/avro/io/BufferedBinaryEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final STACK_STEP:I = 0xa


# instance fields
.field private blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

.field private buf:[B

.field private headerBuffer:[B

.field private pos:I

.field private stackTop:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/apache/avro/io/BlockingBinaryEncoder;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p3}, Lorg/apache/avro/io/BufferedBinaryEncoder;-><init>(Ljava/io/OutputStream;I)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    const/16 p1, 0xc

    new-array p1, p1, [B

    .line 3
    iput-object p1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->headerBuffer:[B

    .line 4
    new-array p1, p2, [B

    iput-object p1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    new-array p2, p1, [Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    .line 6
    iput-object p2, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    .line 7
    invoke-direct {p0}, Lorg/apache/avro/io/BlockingBinaryEncoder;->expandStack()V

    .line 8
    iget-object p2, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget p3, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    const/4 v0, 0x1

    add-int/2addr p3, v0

    iput p3, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object p2, p2, p3

    const/4 p3, 0x0

    .line 9
    iput-object p3, p2, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->type:Lorg/apache/avro/Schema$Type;

    .line 10
    sget-object p3, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->ROOT:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    iput-object p3, p2, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    .line 11
    iput p1, p2, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    iput p1, p2, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    .line 12
    iput v0, p2, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    return-void
.end method

.method private check()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    if-gt v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    aget-object v2, v2, v1

    .line 3
    iget v3, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    invoke-virtual {v2, v0, v3}, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->check(Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;I)Z

    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private compact()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object v3, v0

    move v2, v1

    .line 1
    :goto_0
    iget v4, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    if-gt v2, v4, :cond_1

    .line 2
    iget-object v3, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    aget-object v3, v3, v2

    .line 3
    iget-object v4, v3, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v5, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->REGULAR:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    iget-object v4, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v5, v3, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    const/4 v6, 0x0

    invoke-super {p0, v4, v6, v5}, Lorg/apache/avro/io/BufferedBinaryEncoder;->writeFixed([BII)V

    .line 5
    iget v4, v3, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    if-ge v1, v4, :cond_2

    sub-int/2addr v4, v1

    neg-int v4, v4

    .line 6
    invoke-super {p0, v4}, Lorg/apache/avro/io/BufferedBinaryEncoder;->writeInt(I)V

    .line 7
    iget v4, v3, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    iget v5, v3, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    sub-int/2addr v4, v5

    invoke-super {p0, v4}, Lorg/apache/avro/io/BufferedBinaryEncoder;->writeInt(I)V

    .line 8
    iget-object v4, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v5, v3, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    iget v7, v3, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    sub-int/2addr v7, v5

    invoke-super {p0, v4, v5, v7}, Lorg/apache/avro/io/BufferedBinaryEncoder;->writeFixed([BII)V

    .line 9
    iget v4, v3, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    iput v4, v3, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    .line 10
    iput v1, v3, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    .line 11
    :cond_2
    invoke-super {p0, v1}, Lorg/apache/avro/io/BufferedBinaryEncoder;->writeInt(I)V

    add-int/2addr v2, v1

    .line 12
    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    if-gt v2, v1, :cond_3

    iget-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    aget-object v0, v0, v2

    :cond_3
    if-nez v0, :cond_4

    .line 13
    iget v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    goto :goto_2

    :cond_4
    iget v0, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    .line 14
    :goto_2
    iget-object v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v4, v3, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    sub-int v5, v0, v4

    invoke-super {p0, v1, v4, v5}, Lorg/apache/avro/io/BufferedBinaryEncoder;->writeFixed([BII)V

    .line 15
    iget-object v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v4, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    :goto_3
    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    if-gt v2, v1, :cond_5

    .line 17
    iget-object v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    aget-object v1, v1, v2

    .line 18
    iget v4, v1, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    sub-int/2addr v4, v0

    iput v4, v1, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    .line 19
    iget v4, v1, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    sub-int/2addr v4, v0

    iput v4, v1, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 20
    :cond_5
    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    .line 21
    iput v6, v3, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    iput v6, v3, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    .line 22
    sget-object v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->OVERFLOW:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    iput-object v0, v3, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    return-void
.end method

.method private doWriteBytes([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    array-length v1, v0

    if-ge p3, v1, :cond_0

    .line 2
    invoke-direct {p0, p3}, Lorg/apache/avro/io/BlockingBinaryEncoder;->ensureBounds(I)V

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget p1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    goto :goto_0

    .line 5
    :cond_0
    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/apache/avro/io/BlockingBinaryEncoder;->ensureBounds(I)V

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/io/BlockingBinaryEncoder;->write([BII)V

    :goto_0
    return-void
.end method

.method private endBlockedValue()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v0, v1

    .line 2
    iget-object v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v2, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->OVERFLOW:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-ne v1, v2, :cond_0

    .line 3
    invoke-direct {p0}, Lorg/apache/avro/io/BlockingBinaryEncoder;->finishOverflow()V

    .line 4
    :cond_0
    iget v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_3

    .line 5
    iget v4, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    iget v5, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    sub-int/2addr v4, v5

    if-nez v5, :cond_1

    .line 6
    iget-object v5, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v6, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    sub-int/2addr v6, v3

    aget-object v5, v5, v6

    iget-object v5, v5, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v6, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->REGULAR:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-eq v5, v6, :cond_1

    neg-int v0, v1

    .line 7
    invoke-super {p0, v0}, Lorg/apache/avro/io/BufferedBinaryEncoder;->writeInt(I)V

    .line 8
    invoke-super {p0, v4}, Lorg/apache/avro/io/BufferedBinaryEncoder;->writeInt(I)V

    goto :goto_1

    :cond_1
    neg-int v1, v1

    .line 9
    iget-object v5, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->headerBuffer:[B

    invoke-static {v1, v5, v2}, Lorg/apache/avro/io/BinaryData;->encodeInt(I[BI)I

    move-result v1

    add-int/2addr v1, v2

    .line 10
    iget-object v5, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->headerBuffer:[B

    invoke-static {v4, v5, v1}, Lorg/apache/avro/io/BinaryData;->encodeInt(I[BI)I

    move-result v5

    add-int/2addr v5, v1

    .line 11
    iget-object v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    array-length v6, v1

    iget v7, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    add-int v8, v7, v5

    if-lt v6, v8, :cond_2

    add-int/2addr v7, v5

    .line 12
    iput v7, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    .line 13
    iget v0, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    add-int v6, v0, v5

    .line 14
    invoke-static {v1, v0, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iget-object v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->headerBuffer:[B

    iget-object v4, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    invoke-static {v1, v2, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-direct {p0}, Lorg/apache/avro/io/BlockingBinaryEncoder;->compact()V

    goto :goto_0

    .line 17
    :cond_3
    :goto_1
    iget v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    .line 18
    invoke-direct {p0, v3}, Lorg/apache/avro/io/BlockingBinaryEncoder;->ensureBounds(I)V

    .line 19
    iget-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    aput-byte v2, v0, v1

    .line 20
    iget-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v1, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->ROOT:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-ne v0, v1, :cond_4

    .line 21
    invoke-virtual {p0}, Lorg/apache/avro/io/BlockingBinaryEncoder;->flush()V

    :cond_4
    return-void
.end method

.method private ensureBounds(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    array-length v1, v0

    iget v2, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    add-int v3, v2, p1

    if-ge v1, v3, :cond_1

    .line 2
    iget-object v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v3, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v3, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->REGULAR:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-ne v1, v3, :cond_0

    .line 3
    invoke-direct {p0}, Lorg/apache/avro/io/BlockingBinaryEncoder;->compact()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-super {p0, v0, v1, v2}, Lorg/apache/avro/io/BufferedBinaryEncoder;->writeFixed([BII)V

    .line 5
    iput v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private expandStack()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    array-length v1, v0

    .line 2
    array-length v2, v0

    add-int/lit8 v2, v2, 0xa

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iput-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    .line 3
    :goto_0
    iget-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 4
    new-instance v2, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    invoke-direct {v2}, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;-><init>()V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private finishOverflow()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v0, v1

    .line 2
    iget-object v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v2, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->OVERFLOW:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v2, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    const/4 v3, 0x0

    invoke-super {p0, v1, v3, v2}, Lorg/apache/avro/io/BufferedBinaryEncoder;->writeFixed([BII)V

    .line 4
    iput v3, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    .line 5
    sget-object v1, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->REGULAR:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    iput-object v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    .line 6
    iput v3, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    iput v3, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    .line 7
    iput v3, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an overflow block"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private write([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v1, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->ROOT:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lorg/apache/avro/io/BufferedBinaryEncoder;->writeFixed([BII)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    array-length v2, v1

    iget v3, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    add-int v4, v3, p3

    if-ge v2, v4, :cond_3

    .line 4
    iget-object v2, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v4, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v2, v2, v4

    iget-object v2, v2, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v4, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->REGULAR:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-ne v2, v4, :cond_2

    .line 5
    invoke-direct {p0}, Lorg/apache/avro/io/BlockingBinaryEncoder;->compact()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-super {p0, v1, v0, v3}, Lorg/apache/avro/io/BufferedBinaryEncoder;->writeFixed([BII)V

    .line 7
    iput v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    .line 8
    iget-object v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    array-length v1, v1

    if-gt v1, p3, :cond_1

    .line 9
    invoke-super {p0, p1, p2, p3}, Lorg/apache/avro/io/BufferedBinaryEncoder;->writeFixed([BII)V

    move p3, v0

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {p1, p2, v1, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget p1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    :goto_1
    return-void
.end method


# virtual methods
.method public bytesBuffered()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    invoke-super {p0}, Lorg/apache/avro/io/BufferedBinaryEncoder;->bytesBuffered()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public configure(Ljava/io/OutputStream;II)Lorg/apache/avro/io/BlockingBinaryEncoder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p3}, Lorg/apache/avro/io/BufferedBinaryEncoder;->configure(Ljava/io/OutputStream;I)Lorg/apache/avro/io/BufferedBinaryEncoder;

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    .line 3
    iput p1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    .line 4
    iget-object p1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    if-eqz p1, :cond_0

    array-length p1, p1

    if-eq p1, p2, :cond_1

    .line 5
    :cond_0
    new-array p1, p2, [B

    iput-object p1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    :cond_1
    return-object p0
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v0, v1

    .line 2
    iget-object v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v2, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->ROOT:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    const/4 v2, 0x0

    invoke-super {p0, v0, v2, v1}, Lorg/apache/avro/io/BufferedBinaryEncoder;->writeFixed([BII)V

    .line 4
    iput v2, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    iget-object v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v2, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->OVERFLOW:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-eq v1, v2, :cond_1

    .line 6
    invoke-direct {p0}, Lorg/apache/avro/io/BlockingBinaryEncoder;->compact()V

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    invoke-super {p0}, Lorg/apache/avro/io/BufferedBinaryEncoder;->flush()V

    return-void
.end method

.method public setItemCount(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v0, v1

    .line 2
    iput-wide p1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->itemsLeftToWrite:J

    return-void
.end method

.method public startItem()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v1, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->OVERFLOW:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/io/BlockingBinaryEncoder;->finishOverflow()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v0, v1

    .line 4
    iget v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    .line 5
    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    iput v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    .line 6
    iget-wide v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->itemsLeftToWrite:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->itemsLeftToWrite:J

    return-void
.end method

.method public writeArrayEnd()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v0, v1

    .line 2
    iget-object v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->type:Lorg/apache/avro/Schema$Type;

    sget-object v2, Lorg/apache/avro/Schema$Type;->ARRAY:Lorg/apache/avro/Schema$Type;

    if-ne v1, v2, :cond_1

    .line 3
    iget-wide v0, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->itemsLeftToWrite:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lorg/apache/avro/io/BlockingBinaryEncoder;->endBlockedValue()V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lorg/apache/avro/AvroTypeException;

    const-string v1, "Failed to write expected number of array elements."

    invoke-direct {v0, v1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Lorg/apache/avro/AvroTypeException;

    const-string v1, "Called writeArrayEnd outside of an array."

    invoke-direct {v0, v1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeArrayStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/io/BlockingBinaryEncoder;->expandStack()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v0, v1

    .line 4
    sget-object v1, Lorg/apache/avro/Schema$Type;->ARRAY:Lorg/apache/avro/Schema$Type;

    iput-object v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->type:Lorg/apache/avro/Schema$Type;

    .line 5
    sget-object v1, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->REGULAR:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    iput-object v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    .line 6
    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    iput v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    iput v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/io/BlockingBinaryEncoder;->ensureBounds(I)V

    .line 2
    iget v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    iget-object v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    invoke-static {p1, v1, v0}, Lorg/apache/avro/io/BinaryData;->encodeBoolean(Z[BI)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    return-void
.end method

.method public writeDouble(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/io/BlockingBinaryEncoder;->ensureBounds(I)V

    .line 2
    iget v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    iget-object v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    invoke-static {p1, p2, v1, v0}, Lorg/apache/avro/io/BinaryData;->encodeDouble(D[BI)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    return-void
.end method

.method public writeFixed(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/2addr p1, v0

    invoke-direct {p0, v2, p1, v1}, Lorg/apache/avro/io/BlockingBinaryEncoder;->doWriteBytes([BII)V

    goto :goto_0

    .line 6
    :cond_0
    new-array v0, v1, [B

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 8
    invoke-direct {p0, v0, v2, v1}, Lorg/apache/avro/io/BlockingBinaryEncoder;->doWriteBytes([BII)V

    :goto_0
    return-void
.end method

.method public writeFixed([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/io/BlockingBinaryEncoder;->doWriteBytes([BII)V

    return-void
.end method

.method public writeFloat(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/io/BlockingBinaryEncoder;->ensureBounds(I)V

    .line 2
    iget v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    iget-object v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    invoke-static {p1, v1, v0}, Lorg/apache/avro/io/BinaryData;->encodeFloat(F[BI)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    return-void
.end method

.method public writeIndex(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/io/BlockingBinaryEncoder;->ensureBounds(I)V

    .line 2
    iget v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    iget-object v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    invoke-static {p1, v1, v0}, Lorg/apache/avro/io/BinaryData;->encodeInt(I[BI)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/io/BlockingBinaryEncoder;->ensureBounds(I)V

    .line 2
    iget v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    iget-object v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    invoke-static {p1, v1, v0}, Lorg/apache/avro/io/BinaryData;->encodeInt(I[BI)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    return-void
.end method

.method public writeLong(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/io/BlockingBinaryEncoder;->ensureBounds(I)V

    .line 2
    iget v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    iget-object v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    invoke-static {p1, p2, v1, v0}, Lorg/apache/avro/io/BinaryData;->encodeLong(J[BI)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    return-void
.end method

.method public writeMapEnd()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v0, v1

    .line 2
    iget-object v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->type:Lorg/apache/avro/Schema$Type;

    sget-object v2, Lorg/apache/avro/Schema$Type;->MAP:Lorg/apache/avro/Schema$Type;

    if-ne v1, v2, :cond_1

    .line 3
    iget-wide v0, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->itemsLeftToWrite:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lorg/apache/avro/io/BlockingBinaryEncoder;->endBlockedValue()V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lorg/apache/avro/AvroTypeException;

    const-string v1, "Failed to read write expected number of array elements."

    invoke-direct {v0, v1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Lorg/apache/avro/AvroTypeException;

    const-string v1, "Called writeMapEnd outside of a map."

    invoke-direct {v0, v1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeMapStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/io/BlockingBinaryEncoder;->expandStack()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v0, v1

    .line 4
    sget-object v1, Lorg/apache/avro/Schema$Type;->MAP:Lorg/apache/avro/Schema$Type;

    iput-object v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->type:Lorg/apache/avro/Schema$Type;

    .line 5
    sget-object v1, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->REGULAR:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    iput-object v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    .line 6
    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    iput v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    iput v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    return-void
.end method

.method public writeZero()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/io/BlockingBinaryEncoder;->ensureBounds(I)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/avro/io/BlockingBinaryEncoder;->pos:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    return-void
.end method
