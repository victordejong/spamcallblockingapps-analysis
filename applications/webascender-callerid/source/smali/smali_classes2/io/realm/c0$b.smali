.class Lio/realm/c0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field f:I

.field g:I

.field h:I

.field final synthetic i:Lio/realm/c0;


# direct methods
.method private constructor <init>(Lio/realm/c0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/realm/c0$b;->i:Lio/realm/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/realm/c0$b;->f:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lio/realm/c0$b;->g:I

    .line 4
    invoke-static {p1}, Lio/realm/c0;->c(Lio/realm/c0;)I

    move-result p1

    iput p1, p0, Lio/realm/c0$b;->h:I

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/c0;Lio/realm/c0$a;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lio/realm/c0$b;-><init>(Lio/realm/c0;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/c0$b;->i:Lio/realm/c0;

    invoke-static {v0}, Lio/realm/c0;->h(Lio/realm/c0;)I

    move-result v0

    iget v1, p0, Lio/realm/c0$b;->h:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/c0$b;->i:Lio/realm/c0;

    invoke-static {v0}, Lio/realm/c0;->d(Lio/realm/c0;)V

    .line 2
    invoke-virtual {p0}, Lio/realm/c0$b;->a()V

    .line 3
    iget v0, p0, Lio/realm/c0$b;->f:I

    iget-object v1, p0, Lio/realm/c0$b;->i:Lio/realm/c0;

    invoke-virtual {v1}, Lio/realm/c0;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/c0$b;->i:Lio/realm/c0;

    invoke-static {v0}, Lio/realm/c0;->d(Lio/realm/c0;)V

    .line 2
    invoke-virtual {p0}, Lio/realm/c0$b;->a()V

    .line 3
    iget v0, p0, Lio/realm/c0$b;->f:I

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/realm/c0$b;->i:Lio/realm/c0;

    invoke-virtual {v1, v0}, Lio/realm/c0;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 5
    iput v0, p0, Lio/realm/c0$b;->g:I

    add-int/lit8 v2, v0, 0x1

    .line 6
    iput v2, p0, Lio/realm/c0$b;->f:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 7
    :catch_0
    invoke-virtual {p0}, Lio/realm/c0$b;->a()V

    .line 8
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot access index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " when size is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/realm/c0$b;->i:Lio/realm/c0;

    invoke-virtual {v0}, Lio/realm/c0;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Remember to check hasNext() before using next()."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/c0$b;->i:Lio/realm/c0;

    invoke-static {v0}, Lio/realm/c0;->d(Lio/realm/c0;)V

    .line 2
    iget v0, p0, Lio/realm/c0$b;->g:I

    if-ltz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lio/realm/c0$b;->a()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lio/realm/c0$b;->i:Lio/realm/c0;

    iget v1, p0, Lio/realm/c0$b;->g:I

    invoke-virtual {v0, v1}, Lio/realm/c0;->remove(I)Ljava/lang/Object;

    .line 5
    iget v0, p0, Lio/realm/c0$b;->g:I

    iget v1, p0, Lio/realm/c0$b;->f:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 6
    iput v1, p0, Lio/realm/c0$b;->f:I

    :cond_0
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lio/realm/c0$b;->g:I

    .line 8
    iget-object v0, p0, Lio/realm/c0$b;->i:Lio/realm/c0;

    invoke-static {v0}, Lio/realm/c0;->g(Lio/realm/c0;)I

    move-result v0

    iput v0, p0, Lio/realm/c0$b;->h:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 9
    :catch_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call remove() twice. Must call next() in between."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
