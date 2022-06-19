.class public abstract Lio/realm/internal/OsResults$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
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
.field f:Lio/realm/internal/OsResults;

.field protected g:I


# direct methods
.method public constructor <init>(Lio/realm/internal/OsResults;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lio/realm/internal/OsResults$a;->g:I

    .line 3
    invoke-static {p1}, Lio/realm/internal/OsResults;->a(Lio/realm/internal/OsResults;)Lio/realm/internal/OsSharedRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iput-object p1, p0, Lio/realm/internal/OsResults$a;->f:Lio/realm/internal/OsResults;

    .line 5
    invoke-static {p1}, Lio/realm/internal/OsResults;->b(Lio/realm/internal/OsResults;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lio/realm/internal/OsResults;->a(Lio/realm/internal/OsResults;)Lio/realm/internal/OsSharedRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->isInTransaction()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lio/realm/internal/OsResults$a;->d()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lio/realm/internal/OsResults$a;->f:Lio/realm/internal/OsResults;

    invoke-static {p1}, Lio/realm/internal/OsResults;->a(Lio/realm/internal/OsResults;)Lio/realm/internal/OsSharedRealm;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/realm/internal/OsSharedRealm;->addIterator(Lio/realm/internal/OsResults$a;)V

    :goto_0
    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This Realm instance has already been closed, making it unusable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsResults$a;->f:Lio/realm/internal/OsResults;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "No outside changes to a Realm is allowed while iterating a living Realm collection."

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract b(Lio/realm/internal/UncheckedRow;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/UncheckedRow;",
            ")TT;"
        }
    .end annotation
.end method

.method d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsResults$a;->f:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->d()Lio/realm/internal/OsResults;

    move-result-object v0

    iput-object v0, p0, Lio/realm/internal/OsResults$a;->f:Lio/realm/internal/OsResults;

    return-void
.end method

.method e(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsResults$a;->f:Lio/realm/internal/OsResults;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsResults;->h(I)Lio/realm/internal/UncheckedRow;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/realm/internal/OsResults$a;->b(Lio/realm/internal/UncheckedRow;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/realm/internal/OsResults$a;->f:Lio/realm/internal/OsResults;

    return-void
.end method

.method public hasNext()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/OsResults$a;->a()V

    .line 2
    iget v0, p0, Lio/realm/internal/OsResults$a;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    int-to-long v2, v0

    iget-object v0, p0, Lio/realm/internal/OsResults$a;->f:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->n()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/OsResults$a;->a()V

    .line 2
    iget v0, p0, Lio/realm/internal/OsResults$a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/internal/OsResults$a;->g:I

    int-to-long v0, v0

    .line 3
    iget-object v2, p0, Lio/realm/internal/OsResults$a;->f:Lio/realm/internal/OsResults;

    invoke-virtual {v2}, Lio/realm/internal/OsResults;->n()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 4
    iget v0, p0, Lio/realm/internal/OsResults$a;->g:I

    invoke-virtual {p0, v0}, Lio/realm/internal/OsResults$a;->e(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot access index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/realm/internal/OsResults$a;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " when size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/realm/internal/OsResults$a;->f:Lio/realm/internal/OsResults;

    invoke-virtual {v2}, Lio/realm/internal/OsResults;->n()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". Remember to check hasNext() before using next()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported by RealmResults iterators."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
