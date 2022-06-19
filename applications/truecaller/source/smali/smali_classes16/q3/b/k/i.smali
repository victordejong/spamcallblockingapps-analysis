.class public final Lq3/b/k/i;
.super Lq3/b/k/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/b/k/i<",
        "TK;TV;",
        "Ljava/util/Map<",
        "TK;+TV;>;",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lq3/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/b/b<",
            "TKey;>;"
        }
    .end annotation
.end field

.field public final b:Lq3/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/b/b<",
            "TValue;>;"
        }
    .end annotation
.end field

.field public final c:Lq3/b/i/d;


# direct methods
.method public constructor <init>(Lq3/b/b;Lq3/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/b/b<",
            "TK;>;",
            "Lq3/b/b<",
            "TV;>;)V"
        }
    .end annotation

    const-string v0, "kSerializer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vSerializer"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lq3/b/k/a;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Lq3/b/k/i;->a:Lq3/b/b;

    iput-object p2, p0, Lq3/b/k/i;->b:Lq3/b/b;

    .line 2
    new-instance v0, Lq3/b/k/h;

    invoke-interface {p1}, Lq3/b/b;->a()Lq3/b/i/d;

    move-result-object p1

    invoke-interface {p2}, Lq3/b/b;->a()Lq3/b/i/d;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lq3/b/k/h;-><init>(Lq3/b/i/d;Lq3/b/i/d;)V

    iput-object v0, p0, Lq3/b/k/i;->c:Lq3/b/i/d;

    return-void
.end method


# virtual methods
.method public a()Lq3/b/i/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/k/i;->c:Lq3/b/i/d;

    return-object v0
.end method

.method public b(Lq3/b/j/e;Ljava/lang/Object;)V
    .locals 6

    const-string v0, "encoder"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    check-cast p2, Ljava/util/Map;

    const-string v0, "$this$collectionSize"

    .line 3
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    .line 5
    iget-object v1, p0, Lq3/b/k/i;->c:Lq3/b/i/d;

    .line 6
    invoke-interface {p1, v1, v0}, Lq3/b/j/e;->m(Lq3/b/i/d;I)Lq3/b/j/c;

    move-result-object p1

    const-string v0, "$this$collectionIterator"

    .line 7
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 10
    iget-object v3, p0, Lq3/b/k/i;->c:Lq3/b/i/d;

    add-int/lit8 v4, v0, 0x1

    .line 11
    iget-object v5, p0, Lq3/b/k/i;->a:Lq3/b/b;

    invoke-interface {p1, v3, v0, v5, v2}, Lq3/b/j/c;->q(Lq3/b/i/d;ILq3/b/g;Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lq3/b/k/i;->c:Lq3/b/i/d;

    add-int/lit8 v2, v4, 0x1

    .line 13
    iget-object v3, p0, Lq3/b/k/i;->b:Lq3/b/b;

    invoke-interface {p1, v0, v4, v3, v1}, Lq3/b/j/c;->q(Lq3/b/i/d;ILq3/b/g;Ljava/lang/Object;)V

    move v0, v2

    goto :goto_0

    .line 14
    :cond_0
    iget-object p2, p0, Lq3/b/k/i;->c:Lq3/b/i/d;

    .line 15
    invoke-interface {p1, p2}, Lq3/b/j/c;->b(Lq3/b/i/d;)V

    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public g(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Ljava/util/LinkedHashMap;

    const-string v0, "$this$builderSize"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/LinkedHashMap;

    const-string p2, "$this$checkCapacity"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public i(Lq3/b/j/b;Ljava/lang/Object;II)V
    .locals 4

    .line 1
    check-cast p2, Ljava/util/Map;

    const-string v0, "decoder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    const/4 v1, 0x2

    mul-int/2addr p4, v1

    .line 3
    invoke-static {v0, p4}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object p4

    invoke-static {p4, v1}, Ls1/d0/j;->i(Ls1/d0/g;I)Ls1/d0/g;

    move-result-object p4

    .line 4
    iget v1, p4, Ls1/d0/g;->a:I

    .line 5
    iget v2, p4, Ls1/d0/g;->b:I

    .line 6
    iget p4, p4, Ls1/d0/g;->c:I

    if-ltz p4, :cond_1

    if-gt v1, v2, :cond_2

    goto :goto_1

    :cond_1
    if-lt v1, v2, :cond_2

    :goto_1
    add-int v3, p3, v1

    .line 7
    invoke-virtual {p0, p1, v3, p2, v0}, Lq3/b/k/i;->l(Lq3/b/j/b;ILjava/util/Map;Z)V

    if-eq v1, v2, :cond_2

    add-int/2addr v1, p4

    goto :goto_1

    :cond_2
    return-void

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Size must be known in advance when using READ_ALL"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic j(Lq3/b/j/b;ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3, p4}, Lq3/b/k/i;->l(Lq3/b/j/b;ILjava/util/Map;Z)V

    return-void
.end method

.method public k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/LinkedHashMap;

    const-string v0, "$this$toResult"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final l(Lq3/b/j/b;ILjava/util/Map;Z)V
    .locals 8

    const-string v0, "decoder"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Lq3/b/k/i;->c:Lq3/b/i/d;

    .line 3
    iget-object v4, p0, Lq3/b/k/i;->a:Lq3/b/b;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p1

    move v3, p2

    invoke-static/range {v1 .. v7}, Ls1/a/a/a/v0/f/d;->C0(Lq3/b/j/b;Lq3/b/i/d;ILq3/b/a;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p4, :cond_2

    .line 4
    iget-object p4, p0, Lq3/b/k/i;->c:Lq3/b/i/d;

    .line 5
    invoke-interface {p1, p4}, Lq3/b/j/b;->q(Lq3/b/i/d;)I

    move-result p4

    add-int/lit8 v2, p2, 0x1

    if-ne p4, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "Value must follow key in a map, index for key: "

    const-string p3, ", returned index for value: "

    .line 6
    invoke-static {p1, p2, p3, p4}, Le/d/c/a/a;->m2(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    add-int/lit8 p4, p2, 0x1

    :goto_1
    move v3, p4

    .line 7
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lq3/b/k/i;->b:Lq3/b/b;

    invoke-interface {p2}, Lq3/b/b;->a()Lq3/b/i/d;

    move-result-object p2

    invoke-interface {p2}, Lq3/b/i/d;->getKind()Lq3/b/i/h;

    move-result-object p2

    instance-of p2, p2, Lq3/b/i/c;

    if-nez p2, :cond_3

    .line 8
    iget-object p2, p0, Lq3/b/k/i;->c:Lq3/b/i/d;

    .line 9
    iget-object p4, p0, Lq3/b/k/i;->b:Lq3/b/b;

    invoke-static {p3, v0}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, p2, v3, p4, v1}, Lq3/b/j/b;->l(Lq3/b/i/d;ILq3/b/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 10
    :cond_3
    iget-object v2, p0, Lq3/b/k/i;->c:Lq3/b/i/d;

    .line 11
    iget-object v4, p0, Lq3/b/k/i;->b:Lq3/b/b;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Ls1/a/a/a/v0/f/d;->C0(Lq3/b/j/b;Lq3/b/i/d;ILq3/b/a;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    :goto_2
    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
