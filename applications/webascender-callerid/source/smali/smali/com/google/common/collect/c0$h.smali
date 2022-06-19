.class Lcom/google/common/collect/c0$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final f:Ljava/lang/Object;

.field g:I

.field h:Lcom/google/common/collect/c0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c0$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field i:Lcom/google/common/collect/c0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c0$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field j:Lcom/google/common/collect/c0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c0$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic k:Lcom/google/common/collect/c0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/c0$h;->k:Lcom/google/common/collect/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/common/collect/c0$h;->f:Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/c0;->p(Lcom/google/common/collect/c0;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/c0$e;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/google/common/collect/c0$e;->a:Lcom/google/common/collect/c0$f;

    :goto_0
    iput-object p1, p0, Lcom/google/common/collect/c0$h;->h:Lcom/google/common/collect/c0$f;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/c0;Ljava/lang/Object;I)V
    .locals 3

    .line 5
    iput-object p1, p0, Lcom/google/common/collect/c0$h;->k:Lcom/google/common/collect/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Lcom/google/common/collect/c0;->p(Lcom/google/common/collect/c0;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/c0$e;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 7
    :cond_0
    iget v0, p1, Lcom/google/common/collect/c0$e;->c:I

    .line 8
    :goto_0
    invoke-static {p3, v0}, Lcom/google/common/base/m;->r(II)I

    .line 9
    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-lt p3, v1, :cond_2

    if-nez p1, :cond_1

    move-object p1, v2

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p1, Lcom/google/common/collect/c0$e;->b:Lcom/google/common/collect/c0$f;

    :goto_1
    iput-object p1, p0, Lcom/google/common/collect/c0$h;->j:Lcom/google/common/collect/c0$f;

    .line 11
    iput v0, p0, Lcom/google/common/collect/c0$h;->g:I

    :goto_2
    add-int/lit8 p1, p3, 0x1

    if-ge p3, v0, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/google/common/collect/c0$h;->previous()Ljava/lang/Object;

    move p3, p1

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    move-object p1, v2

    goto :goto_3

    .line 13
    :cond_3
    iget-object p1, p1, Lcom/google/common/collect/c0$e;->a:Lcom/google/common/collect/c0$f;

    :goto_3
    iput-object p1, p0, Lcom/google/common/collect/c0$h;->h:Lcom/google/common/collect/c0$f;

    :goto_4
    add-int/lit8 p1, p3, -0x1

    if-lez p3, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/google/common/collect/c0$h;->next()Ljava/lang/Object;

    move p3, p1

    goto :goto_4

    .line 15
    :cond_4
    iput-object p2, p0, Lcom/google/common/collect/c0$h;->f:Ljava/lang/Object;

    .line 16
    iput-object v2, p0, Lcom/google/common/collect/c0$h;->i:Lcom/google/common/collect/c0$f;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c0$h;->k:Lcom/google/common/collect/c0;

    iget-object v1, p0, Lcom/google/common/collect/c0$h;->f:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/c0$h;->h:Lcom/google/common/collect/c0$f;

    invoke-static {v0, v1, p1, v2}, Lcom/google/common/collect/c0;->q(Lcom/google/common/collect/c0;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/c0$f;)Lcom/google/common/collect/c0$f;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/c0$h;->j:Lcom/google/common/collect/c0$f;

    .line 2
    iget p1, p0, Lcom/google/common/collect/c0$h;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/c0$h;->g:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/c0$h;->i:Lcom/google/common/collect/c0$f;

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c0$h;->h:Lcom/google/common/collect/c0$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c0$h;->j:Lcom/google/common/collect/c0$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c0$h;->h:Lcom/google/common/collect/c0$f;

    invoke-static {v0}, Lcom/google/common/collect/c0;->m(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/c0$h;->h:Lcom/google/common/collect/c0$f;

    iput-object v0, p0, Lcom/google/common/collect/c0$h;->i:Lcom/google/common/collect/c0$f;

    iput-object v0, p0, Lcom/google/common/collect/c0$h;->j:Lcom/google/common/collect/c0$f;

    .line 3
    iget-object v1, v0, Lcom/google/common/collect/c0$f;->j:Lcom/google/common/collect/c0$f;

    iput-object v1, p0, Lcom/google/common/collect/c0$h;->h:Lcom/google/common/collect/c0$f;

    .line 4
    iget v1, p0, Lcom/google/common/collect/c0$h;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/c0$h;->g:I

    .line 5
    iget-object v0, v0, Lcom/google/common/collect/c0$f;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/c0$h;->g:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c0$h;->j:Lcom/google/common/collect/c0$f;

    invoke-static {v0}, Lcom/google/common/collect/c0;->m(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/c0$h;->j:Lcom/google/common/collect/c0$f;

    iput-object v0, p0, Lcom/google/common/collect/c0$h;->i:Lcom/google/common/collect/c0$f;

    iput-object v0, p0, Lcom/google/common/collect/c0$h;->h:Lcom/google/common/collect/c0$f;

    .line 3
    iget-object v1, v0, Lcom/google/common/collect/c0$f;->k:Lcom/google/common/collect/c0$f;

    iput-object v1, p0, Lcom/google/common/collect/c0$h;->j:Lcom/google/common/collect/c0$f;

    .line 4
    iget v1, p0, Lcom/google/common/collect/c0$h;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/c0$h;->g:I

    .line 5
    iget-object v0, v0, Lcom/google/common/collect/c0$f;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/c0$h;->g:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c0$h;->i:Lcom/google/common/collect/c0$f;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/j;->c(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/c0$h;->i:Lcom/google/common/collect/c0$f;

    iget-object v2, p0, Lcom/google/common/collect/c0$h;->h:Lcom/google/common/collect/c0$f;

    if-eq v0, v2, :cond_1

    .line 3
    iget-object v2, v0, Lcom/google/common/collect/c0$f;->k:Lcom/google/common/collect/c0$f;

    iput-object v2, p0, Lcom/google/common/collect/c0$h;->j:Lcom/google/common/collect/c0$f;

    .line 4
    iget v2, p0, Lcom/google/common/collect/c0$h;->g:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/common/collect/c0$h;->g:I

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/google/common/collect/c0$f;->j:Lcom/google/common/collect/c0$f;

    iput-object v1, p0, Lcom/google/common/collect/c0$h;->h:Lcom/google/common/collect/c0$f;

    .line 6
    :goto_1
    iget-object v1, p0, Lcom/google/common/collect/c0$h;->k:Lcom/google/common/collect/c0;

    invoke-static {v1, v0}, Lcom/google/common/collect/c0;->n(Lcom/google/common/collect/c0;Lcom/google/common/collect/c0$f;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/common/collect/c0$h;->i:Lcom/google/common/collect/c0$f;

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c0$h;->i:Lcom/google/common/collect/c0$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->u(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/c0$h;->i:Lcom/google/common/collect/c0$f;

    iput-object p1, v0, Lcom/google/common/collect/c0$f;->g:Ljava/lang/Object;

    return-void
.end method
