.class public final Ls1/a/a/a/v0/j/y/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/j/y/i;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:[Ls1/a/a/a/v0/j/y/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ls1/a/a/a/v0/j/y/i;Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/j/y/b;->b:Ljava/lang/String;

    iput-object p2, p0, Ls1/a/a/a/v0/j/y/b;->c:[Ls1/a/a/a/v0/j/y/i;

    return-void
.end method

.method public static final h(Ljava/lang/String;Ljava/lang/Iterable;)Ls1/a/a/a/v0/j/y/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "+",
            "Ls1/a/a/a/v0/j/y/i;",
            ">;)",
            "Ls1/a/a/a/v0/j/y/i;"
        }
    .end annotation

    const-string v0, "debugName"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/o/l;

    invoke-direct {v0}, Ls1/a/a/a/v0/o/l;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/j/y/i;

    .line 3
    sget-object v2, Ls1/a/a/a/v0/j/y/i$b;->b:Ls1/a/a/a/v0/j/y/i$b;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    instance-of v2, v1, Ls1/a/a/a/v0/j/y/b;

    if-eqz v2, :cond_1

    check-cast v1, Ls1/a/a/a/v0/j/y/b;

    .line 5
    iget-object v1, v1, Ls1/a/a/a/v0/j/y/b;->c:[Ls1/a/a/a/v0/j/y/i;

    .line 6
    invoke-static {v0, v1}, Ls1/u/i;->c(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/o/l;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {p0, v0}, Ls1/a/a/a/v0/j/y/b;->i(Ljava/lang/String;Ljava/util/List;)Ls1/a/a/a/v0/j/y/i;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Ljava/lang/String;Ljava/util/List;)Ls1/a/a/a/v0/j/y/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/j/y/i;",
            ">;)",
            "Ls1/a/a/a/v0/j/y/i;"
        }
    .end annotation

    const-string v0, "debugName"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Ls1/a/a/a/v0/o/l;

    .line 2
    iget v0, p1, Ls1/a/a/a/v0/o/l;->a:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 3
    new-instance v0, Ls1/a/a/a/v0/j/y/b;

    new-array v1, v2, [Ls1/a/a/a/v0/j/y/i;

    .line 4
    invoke-virtual {p1, v1}, Ls1/a/a/a/v0/o/l;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Ls1/a/a/a/v0/j/y/i;

    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, p0, p1, v1}, Ls1/a/a/a/v0/j/y/b;-><init>(Ljava/lang/String;[Ls1/a/a/a/v0/j/y/i;Ls1/z/c/f;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v2}, Ls1/a/a/a/v0/o/l;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ls1/a/a/a/v0/j/y/i;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Ls1/a/a/a/v0/j/y/i$b;->b:Ls1/a/a/a/v0/j/y/i$b;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/b;->c:[Ls1/a/a/a/v0/j/y/i;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 3
    invoke-interface {v4}, Ls1/a/a/a/v0/j/y/i;->a()Ljava/util/Set;

    move-result-object v4

    .line 4
    invoke-static {v1, v4}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/c/a/b;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/q0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/b;->c:[Ls1/a/a/a/v0/j/y/i;

    .line 2
    array-length v1, v0

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v1, 0x0

    .line 3
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 4
    invoke-interface {v4, p1, p2}, Ls1/a/a/a/v0/j/y/i;->b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v1, v4}, Ls1/a/a/a/v0/f/d;->j0(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    sget-object v1, Ls1/u/u;->a:Ls1/u/u;

    goto :goto_1

    .line 6
    :cond_2
    aget-object v0, v0, v2

    .line 7
    invoke-interface {v0, p1, p2}, Ls1/a/a/a/v0/j/y/i;->b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_1

    .line 8
    :cond_3
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    :goto_1
    return-object v1
.end method

.method public c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/c/a/b;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/b;->c:[Ls1/a/a/a/v0/j/y/i;

    .line 2
    array-length v1, v0

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v1, 0x0

    .line 3
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 4
    invoke-interface {v4, p1, p2}, Ls1/a/a/a/v0/j/y/i;->c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v1, v4}, Ls1/a/a/a/v0/f/d;->j0(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    sget-object v1, Ls1/u/u;->a:Ls1/u/u;

    goto :goto_1

    .line 6
    :cond_2
    aget-object v0, v0, v2

    .line 7
    invoke-interface {v0, p1, p2}, Ls1/a/a/a/v0/j/y/i;->c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_1

    .line 8
    :cond_3
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    :goto_1
    return-object v1
.end method

.method public d()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/b;->c:[Ls1/a/a/a/v0/j/y/i;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 3
    invoke-interface {v4}, Ls1/a/a/a/v0/j/y/i;->d()Ljava/util/Set;

    move-result-object v4

    .line 4
    invoke-static {v1, v4}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/b;->c:[Ls1/a/a/a/v0/j/y/i;

    invoke-static {v0}, Le/q/f/a/d/a;->o([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->Q0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;
    .locals 6

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/b;->c:[Ls1/a/a/a/v0/j/y/i;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 3
    invoke-interface {v4, p1, p2}, Ls1/a/a/a/v0/j/y/k;->f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4
    instance-of v5, v4, Ls1/a/a/a/v0/b/i;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Ls1/a/a/a/v0/b/i;

    invoke-interface {v5}, Ls1/a/a/a/v0/b/x;->x0()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    move-object v2, v4

    goto :goto_1

    :cond_0
    move-object v2, v4

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v2
.end method

.method public g(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/j/y/d;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/b;->c:[Ls1/a/a/a/v0/j/y/i;

    .line 2
    array-length v1, v0

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v1, 0x0

    .line 3
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 4
    invoke-interface {v4, p1, p2}, Ls1/a/a/a/v0/j/y/k;->g(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v1, v4}, Ls1/a/a/a/v0/f/d;->j0(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    sget-object v1, Ls1/u/u;->a:Ls1/u/u;

    goto :goto_1

    .line 6
    :cond_2
    aget-object v0, v0, v2

    .line 7
    invoke-interface {v0, p1, p2}, Ls1/a/a/a/v0/j/y/k;->g(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_1

    .line 8
    :cond_3
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    :goto_1
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/b;->b:Ljava/lang/String;

    return-object v0
.end method
