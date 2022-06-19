.class Lcom/google/common/collect/x$c;
.super Lcom/google/common/collect/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/x<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient h:Lcom/google/common/collect/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/x<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/x;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/x$c;->h:Lcom/google/common/collect/x;

    return-void
.end method

.method private G(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/x$c;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method private H(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/x$c;->size()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public D()Lcom/google/common/collect/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x$c;->h:Lcom/google/common/collect/x;

    return-object v0
.end method

.method public E(II)Lcom/google/common/collect/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/x<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/x$c;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/m;->t(III)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/x$c;->h:Lcom/google/common/collect/x;

    invoke-direct {p0, p2}, Lcom/google/common/collect/x$c;->H(I)I

    move-result p2

    invoke-direct {p0, p1}, Lcom/google/common/collect/x$c;->H(I)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcom/google/common/collect/x;->E(II)Lcom/google/common/collect/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/x;->D()Lcom/google/common/collect/x;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x$c;->h:Lcom/google/common/collect/x;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/x;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/x$c;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/m;->m(II)I

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/x$c;->h:Lcom/google/common/collect/x;

    invoke-direct {p0, p1}, Lcom/google/common/collect/x$c;->G(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x$c;->h:Lcom/google/common/collect/x;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/x;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/x$c;->G(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/x;->k()Lcom/google/common/collect/x0;

    move-result-object v0

    return-object v0
.end method

.method j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x$c;->h:Lcom/google/common/collect/x;

    invoke-virtual {v0}, Lcom/google/common/collect/v;->j()Z

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x$c;->h:Lcom/google/common/collect/x;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/x;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/x$c;->G(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/x;->v()Lcom/google/common/collect/y0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/google/common/collect/x;->w(I)Lcom/google/common/collect/y0;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x$c;->h:Lcom/google/common/collect/x;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/x$c;->E(II)Lcom/google/common/collect/x;

    move-result-object p1

    return-object p1
.end method
