.class public Lcom/google/android/gms/common/data/SingleRefDataBufferIterator;
.super Lcom/google/android/gms/common/data/DataBufferIterator;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/data/DataBufferIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 5
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataBufferIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget v0, p0, Lcom/google/android/gms/common/data/DataBufferIterator;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/data/DataBufferIterator;->b:I

    const/4 v1, 0x0

    const-string v2, "null reference"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferIterator;->a:Lcom/google/android/gms/common/data/DataBuffer;

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/common/data/SingleRefDataBufferIterator;->c:Ljava/lang/Object;

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/common/data/DataBufferRef;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2c

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "DataBuffer reference of type "

    const-string v4, " is not movable"

    invoke-static {v3, v2, v0, v4}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/data/SingleRefDataBufferIterator;->c:Ljava/lang/Object;

    .line 8
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    check-cast v0, Lcom/google/android/gms/common/data/DataBufferRef;

    iget v2, p0, Lcom/google/android/gms/common/data/DataBufferIterator;->b:I

    const/4 v3, 0x0

    if-ltz v2, :cond_2

    .line 10
    throw v3

    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V

    iput v2, v0, Lcom/google/android/gms/common/data/DataBufferRef;->a:I

    .line 11
    throw v3

    .line 12
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, Lcom/google/android/gms/common/data/DataBufferIterator;->b:I

    const/16 v2, 0x2e

    const-string v3, "Cannot advance the iterator beyond "

    invoke-static {v2, v3, v1}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
