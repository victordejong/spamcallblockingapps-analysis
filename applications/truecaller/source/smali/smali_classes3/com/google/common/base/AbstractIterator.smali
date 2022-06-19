.class public abstract Lcom/google/common/base/AbstractIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/AbstractIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public state:Lcom/google/common/base/AbstractIterator$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->NOT_READY:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    sget-object v1, Lcom/google/common/base/AbstractIterator$State;->FAILED:Lcom/google/common/base/AbstractIterator$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ln3/g0/y;->checkState2(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_a

    .line 3
    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->DONE:Lcom/google/common/base/AbstractIterator$State;

    iput-object v1, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    .line 4
    move-object v1, p0

    check-cast v1, Lcom/google/common/base/Splitter$SplittingIterator;

    .line 5
    iget v4, v1, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 6
    :cond_1
    :goto_1
    iget v5, v1, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_9

    .line 7
    move-object v7, v1

    check-cast v7, Lcom/google/common/base/Splitter$1$1;

    .line 8
    iget-object v8, v7, Lcom/google/common/base/Splitter$1$1;->this$0:Lcom/google/common/base/Splitter$1;

    iget-object v8, v8, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Lcom/google/common/base/CharMatcher;

    iget-object v7, v7, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-virtual {v8, v7, v5}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 9
    iget-object v5, v1, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 10
    iput v6, v1, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v5, 0x1

    .line 11
    iput v7, v1, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 12
    :goto_2
    iget v7, v1, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    if-ne v7, v4, :cond_3

    add-int/lit8 v7, v7, 0x1

    .line 13
    iput v7, v1, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 14
    iget-object v5, v1, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v7, v5, :cond_1

    .line 15
    iput v6, v1, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_1

    :cond_3
    :goto_3
    if-ge v4, v5, :cond_4

    .line 16
    iget-object v7, v1, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v8, v1, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v8, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-le v5, v4, :cond_5

    .line 17
    iget-object v7, v1, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v8, v1, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v9, v5, -0x1

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v7

    if-eqz v7, :cond_5

    move v5, v9

    goto :goto_4

    .line 18
    :cond_5
    iget-boolean v7, v1, Lcom/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    if-eqz v7, :cond_6

    if-ne v4, v5, :cond_6

    .line 19
    iget v4, v1, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_1

    .line 20
    :cond_6
    iget v7, v1, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    if-ne v7, v3, :cond_7

    .line 21
    iget-object v5, v1, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 22
    iput v6, v1, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    :goto_5
    if-le v5, v4, :cond_8

    .line 23
    iget-object v6, v1, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v7, v1, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v6

    if-eqz v6, :cond_8

    move v5, v8

    goto :goto_5

    :cond_7
    sub-int/2addr v7, v3

    .line 24
    iput v7, v1, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    .line 25
    :cond_8
    iget-object v1, v1, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v1, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 26
    :cond_9
    iput-object v0, v1, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    const/4 v1, 0x0

    .line 27
    :goto_6
    iput-object v1, p0, Lcom/google/common/base/AbstractIterator;->next:Ljava/lang/Object;

    .line 28
    iget-object v1, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    if-eq v1, v0, :cond_a

    .line 29
    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->READY:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    move v2, v3

    :cond_a
    return v2

    :cond_b
    return v3
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/base/AbstractIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->NOT_READY:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    .line 3
    iget-object v0, p0, Lcom/google/common/base/AbstractIterator;->next:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/google/common/base/AbstractIterator;->next:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
