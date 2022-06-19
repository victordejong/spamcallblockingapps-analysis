.class abstract Lcom/google/common/collect/e0$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "h"
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
.field f:I

.field g:I

.field h:Lcom/google/common/collect/e0$n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e0$n<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field i:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field j:Lcom/google/common/collect/e0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field k:Lcom/google/common/collect/e0$d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e0<",
            "TK;TV;TE;TS;>.d0;"
        }
    .end annotation
.end field

.field l:Lcom/google/common/collect/e0$d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e0<",
            "TK;TV;TE;TS;>.d0;"
        }
    .end annotation
.end field

.field final synthetic m:Lcom/google/common/collect/e0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/e0$h;->m:Lcom/google/common/collect/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/collect/e0;->h:[Lcom/google/common/collect/e0$n;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/e0$h;->f:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/google/common/collect/e0$h;->g:I

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/e0$h;->a()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/common/collect/e0$h;->k:Lcom/google/common/collect/e0$d0;

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/e0$h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/e0$h;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget v0, p0, Lcom/google/common/collect/e0$h;->f:I

    if-ltz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/google/common/collect/e0$h;->m:Lcom/google/common/collect/e0;

    iget-object v1, v1, Lcom/google/common/collect/e0;->h:[Lcom/google/common/collect/e0$n;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/collect/e0$h;->f:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/google/common/collect/e0$h;->h:Lcom/google/common/collect/e0$n;

    .line 6
    iget v0, v0, Lcom/google/common/collect/e0$n;->g:I

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/common/collect/e0$h;->h:Lcom/google/common/collect/e0$n;

    iget-object v0, v0, Lcom/google/common/collect/e0$n;->j:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/e0$h;->i:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/e0$h;->g:I

    .line 9
    invoke-virtual {p0}, Lcom/google/common/collect/e0$h;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    return-void
.end method

.method b(Lcom/google/common/collect/e0$i;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/collect/e0$i;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/e0$h;->m:Lcom/google/common/collect/e0;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/e0;->e(Lcom/google/common/collect/e0$i;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v1, Lcom/google/common/collect/e0$d0;

    iget-object v2, p0, Lcom/google/common/collect/e0$h;->m:Lcom/google/common/collect/e0;

    invoke-direct {v1, v2, v0, p1}, Lcom/google/common/collect/e0$d0;-><init>(Lcom/google/common/collect/e0;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/collect/e0$h;->k:Lcom/google/common/collect/e0$d0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/e0$h;->h:Lcom/google/common/collect/e0$n;

    invoke-virtual {v0}, Lcom/google/common/collect/e0$n;->r()V

    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/common/collect/e0$h;->h:Lcom/google/common/collect/e0$n;

    invoke-virtual {v0}, Lcom/google/common/collect/e0$n;->r()V

    .line 5
    throw p1
.end method

.method d()Lcom/google/common/collect/e0$d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e0<",
            "TK;TV;TE;TS;>.d0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0$h;->k:Lcom/google/common/collect/e0$d0;

    if-eqz v0, :cond_0

    .line 2
    iput-object v0, p0, Lcom/google/common/collect/e0$h;->l:Lcom/google/common/collect/e0$d0;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/e0$h;->a()V

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/e0$h;->l:Lcom/google/common/collect/e0$d0;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0$h;->j:Lcom/google/common/collect/e0$i;

    if-eqz v0, :cond_1

    .line 2
    :goto_0
    invoke-interface {v0}, Lcom/google/common/collect/e0$i;->a()Lcom/google/common/collect/e0$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/e0$h;->j:Lcom/google/common/collect/e0$i;

    iget-object v0, p0, Lcom/google/common/collect/e0$h;->j:Lcom/google/common/collect/e0$i;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/collect/e0$h;->b(Lcom/google/common/collect/e0$i;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/e0$h;->j:Lcom/google/common/collect/e0$i;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method f()Z
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Lcom/google/common/collect/e0$h;->g:I

    if-ltz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/e0$h;->i:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/collect/e0$h;->g:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/e0$i;

    iput-object v0, p0, Lcom/google/common/collect/e0$h;->j:Lcom/google/common/collect/e0$i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/collect/e0$h;->b(Lcom/google/common/collect/e0$i;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/e0$h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0$h;->k:Lcom/google/common/collect/e0$d0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0$h;->l:Lcom/google/common/collect/e0$d0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/j;->c(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/e0$h;->m:Lcom/google/common/collect/e0;

    iget-object v1, p0, Lcom/google/common/collect/e0$h;->l:Lcom/google/common/collect/e0$d0;

    invoke-virtual {v1}, Lcom/google/common/collect/e0$d0;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/e0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/e0$h;->l:Lcom/google/common/collect/e0$d0;

    return-void
.end method
