.class public final Ls1/a/a/a/v0/b/h1/a0;
.super Ls1/a/a/a/v0/b/h1/m;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/a0;


# instance fields
.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/b/z<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ls1/a/a/a/v0/b/h1/w;

.field public e:Ls1/a/a/a/v0/b/d0;

.field public f:Z

.field public final g:Ls1/a/a/a/v0/l/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/g<",
            "Ls1/a/a/a/v0/f/b;",
            "Ls1/a/a/a/v0/b/g0;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ls1/g;

.field public final i:Ls1/a/a/a/v0/l/m;

.field public final j:Ls1/a/a/a/v0/a/g;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/a/g;Ls1/a/a/a/v0/g/a;Ljava/util/Map;Ls1/a/a/a/v0/f/e;I)V
    .locals 0

    and-int/lit8 p4, p7, 0x10

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    .line 1
    sget-object p4, Ls1/u/t;->a:Ls1/u/t;

    goto :goto_0

    :cond_0
    move-object p4, p5

    :goto_0
    const-string p6, "moduleName"

    .line 2
    invoke-static {p1, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "storageManager"

    invoke-static {p2, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "builtIns"

    invoke-static {p3, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "capabilities"

    invoke-static {p4, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p6, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 4
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p6, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 6
    invoke-direct {p0, p6, p1}, Ls1/a/a/a/v0/b/h1/m;-><init>(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;)V

    iput-object p2, p0, Ls1/a/a/a/v0/b/h1/a0;->i:Ls1/a/a/a/v0/l/m;

    iput-object p3, p0, Ls1/a/a/a/v0/b/h1/a0;->j:Ls1/a/a/a/v0/a/g;

    .line 7
    iget-boolean p3, p1, Ls1/a/a/a/v0/f/e;->b:Z

    if-eqz p3, :cond_1

    .line 8
    invoke-static {p4}, Ls1/u/i;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/a0;->c:Ljava/util/Map;

    .line 9
    sget-object p3, Ls1/a/a/a/v0/m/l1/f;->a:Ls1/a/a/a/v0/b/z;

    .line 10
    new-instance p4, Ls1/a/a/a/v0/m/l1/m;

    invoke-direct {p4, p5}, Ls1/a/a/a/v0/m/l1/m;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Ls1/a/a/a/v0/b/h1/a0;->f:Z

    .line 12
    new-instance p1, Ls1/a/a/a/v0/b/h1/z;

    invoke-direct {p1, p0}, Ls1/a/a/a/v0/b/h1/z;-><init>(Ls1/a/a/a/v0/b/h1/a0;)V

    invoke-interface {p2, p1}, Ls1/a/a/a/v0/l/m;->i(Ls1/z/b/l;)Ls1/a/a/a/v0/l/g;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/a0;->g:Ls1/a/a/a/v0/l/g;

    .line 13
    new-instance p1, Ls1/a/a/a/v0/b/h1/y;

    invoke-direct {p1, p0}, Ls1/a/a/a/v0/b/h1/y;-><init>(Ls1/a/a/a/v0/b/h1/a0;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/a0;->h:Ls1/g;

    return-void

    .line 14
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Module name must be special: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public C(Ls1/a/a/a/v0/b/a0;)Z
    .locals 2

    const-string v0, "targetModule"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/a0;->d:Ls1/a/a/a/v0/b/h1/w;

    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Ls1/a/a/a/v0/b/h1/w;->b()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Ls1/u/i;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/a0;->T()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a0;->T()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final varargs N0([Ls1/a/a/a/v0/b/h1/a0;)V
    .locals 3

    const-string v0, "descriptors"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Ls1/u/u;->a:Ls1/u/u;

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friends"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ls1/a/a/a/v0/b/h1/x;

    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    invoke-direct {v0, p1, v1, v2}, Ls1/a/a/a/v0/b/h1/x;-><init>(Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V

    const-string p1, "dependencies"

    .line 6
    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object v0, p0, Ls1/a/a/a/v0/b/h1/a0;->d:Ls1/a/a/a/v0/b/h1/w;

    return-void
.end method

.method public Q(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/g0;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/a0;->v0()V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/a0;->g:Ls1/a/a/a/v0/l/g;

    check-cast v0, Ls1/a/a/a/v0/l/e$m;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/l/e$m;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/b/g0;

    return-object p1
.end method

.method public T()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/a0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/a0;->d:Ls1/a/a/a/v0/b/h1/w;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ls1/a/a/a/v0/b/h1/w;->a()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Dependencies of module "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/a0;->w0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " were not set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public Z(Ls1/a/a/a/v0/b/z;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/a/a/a/v0/b/z<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "capability"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/a0;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public b()Ls1/a/a/a/v0/b/k;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d0(Ls1/a/a/a/v0/b/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/a/a/a/v0/b/m<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    const-string v0, "visitor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1, p0, p2}, Ls1/a/a/a/v0/b/m;->m(Ls1/a/a/a/v0/b/a0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public q()Ls1/a/a/a/v0/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/a0;->j:Ls1/a/a/a/v0/a/g;

    return-object v0
.end method

.method public r(Ls1/a/a/a/v0/f/b;Ls1/z/b/l;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/b;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/f/b;",
            ">;"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/a0;->v0()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/a0;->v0()V

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/a0;->h:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/h1/l;

    .line 4
    invoke-virtual {v0, p1, p2}, Ls1/a/a/a/v0/b/h1/l;->r(Ls1/a/a/a/v0/f/b;Ls1/z/b/l;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public v0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/b/h1/a0;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ls1/a/a/a/v0/b/w;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessing invalid module descriptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/b/w;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final w0()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/m;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/f/e;->a:Ljava/lang/String;

    const-string v1, "name.toString()"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
