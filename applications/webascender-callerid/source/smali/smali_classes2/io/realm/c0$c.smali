.class Lio/realm/c0$c;
.super Lio/realm/c0$b;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/c0<",
        "TE;>.b;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic j:Lio/realm/c0;


# direct methods
.method constructor <init>(Lio/realm/c0;I)V
    .locals 3

    .line 1
    iput-object p1, p0, Lio/realm/c0$c;->j:Lio/realm/c0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/realm/c0$b;-><init>(Lio/realm/c0;Lio/realm/c0$a;)V

    if-ltz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/realm/c0;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 3
    iput p2, p0, Lio/realm/c0$b;->f:I

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting location must be a valid index: [0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/realm/c0;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]. Index was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/c0$c;->j:Lio/realm/c0;

    iget-object v0, v0, Lio/realm/c0;->i:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    invoke-virtual {p0}, Lio/realm/c0$b;->a()V

    .line 3
    :try_start_0
    iget v0, p0, Lio/realm/c0$b;->f:I

    .line 4
    iget-object v1, p0, Lio/realm/c0$c;->j:Lio/realm/c0;

    invoke-virtual {v1, v0, p1}, Lio/realm/c0;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lio/realm/c0$b;->g:I

    add-int/lit8 v0, v0, 0x1

    .line 6
    iput v0, p0, Lio/realm/c0$b;->f:I

    .line 7
    iget-object p1, p0, Lio/realm/c0$c;->j:Lio/realm/c0;

    invoke-static {p1}, Lio/realm/c0;->j(Lio/realm/c0;)I

    move-result p1

    iput p1, p0, Lio/realm/c0$b;->h:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 8
    :catch_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public hasPrevious()Z
    .locals 1

    .line 1
    iget v0, p0, Lio/realm/c0$b;->f:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lio/realm/c0$b;->f:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/c0$b;->a()V

    .line 2
    iget v0, p0, Lio/realm/c0$b;->f:I

    add-int/lit8 v0, v0, -0x1

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/realm/c0$c;->j:Lio/realm/c0;

    invoke-virtual {v1, v0}, Lio/realm/c0;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 4
    iput v0, p0, Lio/realm/c0$b;->f:I

    iput v0, p0, Lio/realm/c0$b;->g:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 5
    :catch_0
    invoke-virtual {p0}, Lio/realm/c0$b;->a()V

    .line 6
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot access index less than zero. This was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Remember to check hasPrevious() before using previous()."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public previousIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lio/realm/c0$b;->f:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/c0$c;->j:Lio/realm/c0;

    iget-object v0, v0, Lio/realm/c0;->i:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget v0, p0, Lio/realm/c0$b;->g:I

    if-ltz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/realm/c0$b;->a()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lio/realm/c0$c;->j:Lio/realm/c0;

    iget v1, p0, Lio/realm/c0$b;->g:I

    invoke-virtual {v0, v1, p1}, Lio/realm/c0;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lio/realm/c0$c;->j:Lio/realm/c0;

    invoke-static {p1}, Lio/realm/c0;->i(Lio/realm/c0;)I

    move-result p1

    iput p1, p0, Lio/realm/c0$b;->h:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 6
    :catch_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
