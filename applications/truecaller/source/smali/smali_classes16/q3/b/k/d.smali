.class public final Lq3/b/k/d;
.super Lq3/b/k/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/b/k/d<",
        "TE;",
        "Ljava/util/List<",
        "+TE;>;",
        "Ljava/util/ArrayList<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lq3/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/b/b<",
            "TElement;>;"
        }
    .end annotation
.end field

.field public final b:Lq3/b/i/d;


# direct methods
.method public constructor <init>(Lq3/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/b/b<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lq3/b/k/a;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Lq3/b/k/d;->a:Lq3/b/b;

    .line 2
    new-instance v0, Lq3/b/k/c;

    invoke-interface {p1}, Lq3/b/b;->a()Lq3/b/i/d;

    move-result-object p1

    invoke-direct {v0, p1}, Lq3/b/k/c;-><init>(Lq3/b/i/d;)V

    iput-object v0, p0, Lq3/b/k/d;->b:Lq3/b/i/d;

    return-void
.end method


# virtual methods
.method public a()Lq3/b/i/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/k/d;->b:Lq3/b/i/d;

    return-object v0
.end method

.method public b(Lq3/b/j/e;Ljava/lang/Object;)V
    .locals 5

    const-string v0, "encoder"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    check-cast p2, Ljava/util/List;

    const-string v0, "$this$collectionSize"

    .line 3
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    iget-object v1, p0, Lq3/b/k/d;->b:Lq3/b/i/d;

    .line 6
    invoke-interface {p1, v1, v0}, Lq3/b/j/e;->m(Lq3/b/i/d;I)Lq3/b/j/c;

    move-result-object p1

    const-string v1, "$this$collectionIterator"

    .line 7
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    iget-object v2, p0, Lq3/b/k/d;->b:Lq3/b/i/d;

    .line 10
    iget-object v3, p0, Lq3/b/k/d;->a:Lq3/b/b;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v2, v1, v3, v4}, Lq3/b/j/c;->q(Lq3/b/i/d;ILq3/b/g;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lq3/b/k/d;->b:Lq3/b/i/d;

    .line 12
    invoke-interface {p1, p2}, Lq3/b/j/c;->b(Lq3/b/i/d;)V

    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public g(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    const-string v0, "$this$builderSize"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    const-string v0, "$this$checkCapacity"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    return-void
.end method

.method public final i(Lq3/b/j/b;Ljava/lang/Object;II)V
    .locals 3

    const-string v0, "decoder"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    move v1, v0

    :goto_1
    if-ge v1, p4, :cond_1

    add-int v2, p3, v1

    .line 2
    invoke-virtual {p0, p1, v2, p2, v0}, Lq3/b/k/d;->j(Lq3/b/j/b;ILjava/lang/Object;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Size must be known in advance when using READ_ALL"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Lq3/b/j/b;ILjava/lang/Object;Z)V
    .locals 7

    const-string p4, "decoder"

    .line 1
    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lq3/b/k/d;->b:Lq3/b/i/d;

    .line 3
    iget-object v3, p0, Lq3/b/k/d;->a:Lq3/b/b;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Ls1/a/a/a/v0/f/d;->C0(Lq3/b/j/b;Lq3/b/i/d;ILq3/b/a;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p3, Ljava/util/ArrayList;

    const-string p4, "$this$insert"

    .line 5
    invoke-static {p3, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p3, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    const-string v0, "$this$toResult"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
