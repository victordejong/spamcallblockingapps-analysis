.class Lcom/google/common/collect/x$e;
.super Lcom/google/common/collect/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/x<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final transient h:I

.field final transient i:I

.field final synthetic j:Lcom/google/common/collect/x;


# direct methods
.method constructor <init>(Lcom/google/common/collect/x;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/x$e;->j:Lcom/google/common/collect/x;

    invoke-direct {p0}, Lcom/google/common/collect/x;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/common/collect/x$e;->h:I

    .line 3
    iput p3, p0, Lcom/google/common/collect/x$e;->i:I

    return-void
.end method


# virtual methods
.method public E(II)Lcom/google/common/collect/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/x<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/x$e;->i:I

    invoke-static {p1, p2, v0}, Lcom/google/common/base/m;->t(III)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/x$e;->j:Lcom/google/common/collect/x;

    iget v1, p0, Lcom/google/common/collect/x$e;->h:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/x;->E(II)Lcom/google/common/collect/x;

    move-result-object p1

    return-object p1
.end method

.method g()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x$e;->j:Lcom/google/common/collect/x;

    invoke-virtual {v0}, Lcom/google/common/collect/v;->g()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/x$e;->i:I

    invoke-static {p1, v0}, Lcom/google/common/base/m;->m(II)I

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/x$e;->j:Lcom/google/common/collect/x;

    iget v1, p0, Lcom/google/common/collect/x$e;->h:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x$e;->j:Lcom/google/common/collect/x;

    invoke-virtual {v0}, Lcom/google/common/collect/v;->i()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/x$e;->h:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/common/collect/x$e;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method i()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x$e;->j:Lcom/google/common/collect/x;

    invoke-virtual {v0}, Lcom/google/common/collect/v;->i()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/x$e;->h:I

    add-int/2addr v0, v1

    return v0
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

    const/4 v0, 0x1

    return v0
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
    iget v0, p0, Lcom/google/common/collect/x$e;->i:I

    return v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/x$e;->E(II)Lcom/google/common/collect/x;

    move-result-object p1

    return-object p1
.end method
