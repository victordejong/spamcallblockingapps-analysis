.class public Lcom/google/common/collect/z$a;
.super Lcom/google/common/collect/v$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/v$a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field d:[Ljava/lang/Object;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/v$a;-><init>(I)V

    return-void
.end method

.method private h(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z$a;->d:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 3
    invoke-static {v1}, Lcom/google/common/collect/u;->b(I)I

    move-result v2

    :goto_0
    and-int/2addr v2, v0

    .line 4
    iget-object v3, p0, Lcom/google/common/collect/z$a;->d:[Ljava/lang/Object;

    aget-object v4, v3, v2

    if-nez v4, :cond_0

    .line 5
    aput-object p1, v3, v2

    .line 6
    iget v0, p0, Lcom/google/common/collect/z$a;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/z$a;->e:I

    .line 7
    invoke-super {p0, p1}, Lcom/google/common/collect/v$a;->d(Ljava/lang/Object;)Lcom/google/common/collect/v$a;

    return-void

    .line 8
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/v$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/z$a;->f(Ljava/lang/Object;)Lcom/google/common/collect/z$a;

    return-object p0
.end method

.method public f(Ljava/lang/Object;)Lcom/google/common/collect/z$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/z$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/z$a;->d:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/collect/v$a;->b:I

    invoke-static {v0}, Lcom/google/common/collect/z;->p(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/z$a;->d:[Ljava/lang/Object;

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/collect/z$a;->h(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/collect/z$a;->d:[Ljava/lang/Object;

    .line 5
    invoke-super {p0, p1}, Lcom/google/common/collect/v$a;->d(Ljava/lang/Object;)Lcom/google/common/collect/v$a;

    return-object p0
.end method

.method public g(Ljava/util/Iterator;)Lcom/google/common/collect/z$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/z$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/z$a;->f(Ljava/lang/Object;)Lcom/google/common/collect/z$a;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public i()Lcom/google/common/collect/z;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/z<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/v$a;->b:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 2
    iget-object v2, p0, Lcom/google/common/collect/z$a;->d:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/google/common/collect/z;->p(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/z$a;->d:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 3
    iget v0, p0, Lcom/google/common/collect/v$a;->b:I

    iget-object v2, p0, Lcom/google/common/collect/v$a;->a:[Ljava/lang/Object;

    array-length v2, v2

    .line 4
    invoke-static {v0, v2}, Lcom/google/common/collect/z;->m(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/v$a;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/v$a;->b:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/v$a;->a:[Ljava/lang/Object;

    :goto_0
    move-object v3, v0

    .line 5
    new-instance v0, Lcom/google/common/collect/r0;

    iget v4, p0, Lcom/google/common/collect/z$a;->e:I

    iget-object v5, p0, Lcom/google/common/collect/z$a;->d:[Ljava/lang/Object;

    array-length v2, v5

    add-int/lit8 v6, v2, -0x1

    iget v7, p0, Lcom/google/common/collect/v$a;->b:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/common/collect/r0;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_1

    .line 6
    :cond_1
    iget v0, p0, Lcom/google/common/collect/v$a;->b:I

    iget-object v2, p0, Lcom/google/common/collect/v$a;->a:[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/z;->n(I[Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    iput v2, p0, Lcom/google/common/collect/v$a;->b:I

    .line 8
    :goto_1
    iput-boolean v1, p0, Lcom/google/common/collect/v$a;->c:Z

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/google/common/collect/z$a;->d:[Ljava/lang/Object;

    return-object v0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/v$a;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/z;->B(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    return-object v0

    .line 11
    :cond_3
    invoke-static {}, Lcom/google/common/collect/z;->y()Lcom/google/common/collect/z;

    move-result-object v0

    return-object v0
.end method
