.class public final Ls1/a/a/a/v0/d/a/d0/n/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/j/y/i;


# static fields
.field public static final synthetic f:[Ls1/a/l;


# instance fields
.field public final b:Ls1/a/a/a/v0/d/a/d0/n/j;

.field public final c:Ls1/a/a/a/v0/l/i;

.field public final d:Ls1/a/a/a/v0/d/a/d0/h;

.field public final e:Ls1/a/a/a/v0/d/a/d0/n/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    new-instance v1, Ls1/z/c/w;

    const-class v2, Ls1/a/a/a/v0/d/a/d0/n/c;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const-string v3, "kotlinScopes"

    const-string v4, "getKotlinScopes()[Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v1, v2, v3, v4}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Ls1/a/a/a/v0/d/a/d0/n/c;->f:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/t;Ls1/a/a/a/v0/d/a/d0/n/i;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jPackage"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageFragment"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/c;->d:Ls1/a/a/a/v0/d/a/d0/h;

    iput-object p3, p0, Ls1/a/a/a/v0/d/a/d0/n/c;->e:Ls1/a/a/a/v0/d/a/d0/n/i;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/j;

    invoke-direct {v0, p1, p2, p3}, Ls1/a/a/a/v0/d/a/d0/n/j;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/t;Ls1/a/a/a/v0/d/a/d0/n/i;)V

    iput-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/c;->b:Ls1/a/a/a/v0/d/a/d0/n/j;

    .line 3
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 5
    new-instance p2, Ls1/a/a/a/v0/d/a/d0/n/c$a;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/d/a/d0/n/c$a;-><init>(Ls1/a/a/a/v0/d/a/d0/n/c;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/c;->c:Ls1/a/a/a/v0/l/i;

    return-void
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
    invoke-virtual {p0}, Ls1/a/a/a/v0/d/a/d0/n/c;->h()[Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

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

    .line 5
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/c;->b:Ls1/a/a/a/v0/d/a/d0/n/j;

    invoke-virtual {v0}, Ls1/a/a/a/v0/d/a/d0/n/k;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/d/a/d0/n/c;->i(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/c;->b:Ls1/a/a/a/v0/d/a/d0/n/j;

    invoke-virtual {p0}, Ls1/a/a/a/v0/d/a/d0/n/c;->h()[Ls1/a/a/a/v0/j/y/i;

    move-result-object v1

    invoke-interface {v0, p1, p2}, Ls1/a/a/a/v0/j/y/i;->b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object v0

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 4
    invoke-interface {v4, p1, p2}, Ls1/a/a/a/v0/j/y/i;->b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v0, v4}, Ls1/a/a/a/v0/f/d;->j0(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    sget-object v0, Ls1/u/u;->a:Ls1/u/u;

    :goto_1
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/d/a/d0/n/c;->i(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/c;->b:Ls1/a/a/a/v0/d/a/d0/n/j;

    invoke-virtual {p0}, Ls1/a/a/a/v0/d/a/d0/n/c;->h()[Ls1/a/a/a/v0/j/y/i;

    move-result-object v1

    invoke-interface {v0, p1, p2}, Ls1/a/a/a/v0/j/y/i;->c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object v0

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 4
    invoke-interface {v4, p1, p2}, Ls1/a/a/a/v0/j/y/i;->c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v0, v4}, Ls1/a/a/a/v0/f/d;->j0(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    sget-object v0, Ls1/u/u;->a:Ls1/u/u;

    :goto_1
    return-object v0
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
    invoke-virtual {p0}, Ls1/a/a/a/v0/d/a/d0/n/c;->h()[Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

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

    .line 5
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/c;->b:Ls1/a/a/a/v0/d/a/d0/n/j;

    invoke-virtual {v0}, Ls1/a/a/a/v0/d/a/d0/n/k;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public e()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/d/a/d0/n/c;->h()[Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    invoke-static {v0}, Le/q/f/a/d/a;->o([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->Q0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/c;->b:Ls1/a/a/a/v0/d/a/d0/n/j;

    invoke-virtual {v1}, Ls1/a/a/a/v0/d/a/d0/n/k;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;
    .locals 6

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "location"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/d/a/d0/n/c;->i(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)V

    .line 2
    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/n/c;->b:Ls1/a/a/a/v0/d/a/d0/n/j;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {v2, p1, v0}, Ls1/a/a/a/v0/d/a/d0/n/j;->u(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/d/a/f0/g;)Ls1/a/a/a/v0/b/e;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Ls1/a/a/a/v0/d/a/d0/n/c;->h()[Ls1/a/a/a/v0/j/y/i;

    move-result-object v1

    .line 6
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 7
    invoke-interface {v4, p1, p2}, Ls1/a/a/a/v0/j/y/k;->f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 8
    instance-of v5, v4, Ls1/a/a/a/v0/b/i;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ls1/a/a/a/v0/b/i;

    invoke-interface {v5}, Ls1/a/a/a/v0/b/x;->x0()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v0, :cond_2

    move-object v0, v4

    goto :goto_1

    :cond_1
    move-object v0, v4

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
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
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/c;->b:Ls1/a/a/a/v0/d/a/d0/n/j;

    invoke-virtual {p0}, Ls1/a/a/a/v0/d/a/d0/n/c;->h()[Ls1/a/a/a/v0/j/y/i;

    move-result-object v1

    invoke-interface {v0, p1, p2}, Ls1/a/a/a/v0/j/y/k;->g(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Collection;

    move-result-object v0

    .line 2
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 3
    invoke-interface {v4, p1, p2}, Ls1/a/a/a/v0/j/y/k;->g(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v0, v4}, Ls1/a/a/a/v0/f/d;->j0(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    sget-object v0, Ls1/u/u;->a:Ls1/u/u;

    :goto_1
    return-object v0
.end method

.method public final h()[Ls1/a/a/a/v0/j/y/i;
    .locals 3

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/c;->c:Ls1/a/a/a/v0/l/i;

    sget-object v1, Ls1/a/a/a/v0/d/a/d0/n/c;->f:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/a/a/v0/j/y/i;

    return-object v0
.end method

.method public i(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/c;->d:Ls1/a/a/a/v0/d/a/d0/h;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->n:Ls1/a/a/a/v0/c/a/c;

    .line 4
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/c;->e:Ls1/a/a/a/v0/d/a/d0/n/i;

    invoke-static {v0, p2, v1, p1}, Le/q/f/a/d/a;->w2(Ls1/a/a/a/v0/c/a/c;Ls1/a/a/a/v0/c/a/b;Ls1/a/a/a/v0/b/c0;Ls1/a/a/a/v0/f/e;)V

    return-void
.end method
