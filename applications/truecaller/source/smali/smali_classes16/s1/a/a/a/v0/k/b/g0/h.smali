.class public abstract Ls1/a/a/a/v0/k/b/g0/h;
.super Ls1/a/a/a/v0/j/y/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/k/b/g0/h$a;,
        Ls1/a/a/a/v0/k/b/g0/h$c;,
        Ls1/a/a/a/v0/k/b/g0/h$b;
    }
.end annotation


# static fields
.field public static final synthetic f:[Ls1/a/l;


# instance fields
.field public final b:Ls1/a/a/a/v0/k/b/g0/h$a;

.field public final c:Ls1/a/a/a/v0/l/i;

.field public final d:Ls1/a/a/a/v0/l/j;

.field public final e:Ls1/a/a/a/v0/k/b/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Ls1/a/a/a/v0/k/b/g0/h;

    const/4 v1, 0x2

    new-array v1, v1, [Ls1/a/l;

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    const-string v4, "classNames"

    const-string v5, "getClassNames$deserialization()Ljava/util/Set;"

    invoke-direct {v2, v3, v4, v5}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    const-string v3, "classifierNamesLazy"

    const-string v4, "getClassifierNamesLazy()Ljava/util/Set;"

    invoke-direct {v2, v0, v3, v4}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Ls1/a/a/a/v0/k/b/g0/h;->f:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/k/b/l;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ls1/z/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/k/b/l;",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/i;",
            ">;",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/n;",
            ">;",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/r;",
            ">;",
            "Ls1/z/b/a<",
            "+",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/f/e;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "c"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionList"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propertyList"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeAliasList"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classNames"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/j/y/j;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 2
    iget-object v0, p1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->d:Ls1/a/a/a/v0/k/b/k;

    .line 4
    invoke-interface {v0}, Ls1/a/a/a/v0/k/b/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ls1/a/a/a/v0/k/b/g0/h$b;

    invoke-direct {v0, p0, p2, p3, p4}, Ls1/a/a/a/v0/k/b/g0/h$b;-><init>(Ls1/a/a/a/v0/k/b/g0/h;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ls1/a/a/a/v0/k/b/g0/h$c;

    invoke-direct {v0, p0, p2, p3, p4}, Ls1/a/a/a/v0/k/b/g0/h$c;-><init>(Ls1/a/a/a/v0/k/b/g0/h;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 7
    :goto_0
    iput-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h;->b:Ls1/a/a/a/v0/k/b/g0/h$a;

    .line 8
    iget-object p2, p1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 9
    iget-object p2, p2, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 10
    new-instance p3, Ls1/a/a/a/v0/k/b/g0/h$d;

    invoke-direct {p3, p5}, Ls1/a/a/a/v0/k/b/g0/h$d;-><init>(Ls1/z/b/a;)V

    invoke-interface {p2, p3}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/g0/h;->c:Ls1/a/a/a/v0/l/i;

    .line 11
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 12
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 13
    new-instance p2, Ls1/a/a/a/v0/k/b/g0/h$e;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/k/b/g0/h$e;-><init>(Ls1/a/a/a/v0/k/b/g0/h;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->g(Ls1/z/b/a;)Ls1/a/a/a/v0/l/j;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/h;->d:Ls1/a/a/a/v0/l/j;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
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
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h;->b:Ls1/a/a/a/v0/k/b/g0/h$a;

    invoke-interface {v0}, Ls1/a/a/a/v0/k/b/g0/h$a;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;
    .locals 1
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
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h;->b:Ls1/a/a/a/v0/k/b/g0/h$a;

    invoke-interface {v0, p1, p2}, Ls1/a/a/a/v0/k/b/g0/h$a;->b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;
    .locals 1
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
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h;->b:Ls1/a/a/a/v0/k/b/g0/h$a;

    invoke-interface {v0, p1, p2}, Ls1/a/a/a/v0/k/b/g0/h$a;->c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/util/Set;
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
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h;->b:Ls1/a/a/a/v0/k/b/g0/h$a;

    invoke-interface {v0}, Ls1/a/a/a/v0/k/b/g0/h$a;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h;->d:Ls1/a/a/a/v0/l/j;

    sget-object v1, Ls1/a/a/a/v0/k/b/g0/h;->f:[Ls1/a/l;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "$this$getValue"

    .line 2
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "p"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/k/b/g0/h;->q(Ls1/a/a/a/v0/f/e;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 3
    iget-object p2, p2, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 4
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/k/b/g0/h;->l(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/a;

    move-result-object p1

    invoke-virtual {p2, p1}, Ls1/a/a/a/v0/k/b/j;->b(Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/b/e;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Ls1/a/a/a/v0/k/b/g0/h;->b:Ls1/a/a/a/v0/k/b/g0/h$a;

    invoke-interface {p2}, Ls1/a/a/a/v0/k/b/g0/h$a;->g()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Ls1/a/a/a/v0/k/b/g0/h;->b:Ls1/a/a/a/v0/k/b/g0/h$a;

    invoke-interface {p2, p1}, Ls1/a/a/a/v0/k/b/g0/h$a;->f(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/b/v0;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public abstract h(Ljava/util/Collection;Ls1/z/b/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public final i(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/j/y/d;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ls1/a/a/a/v0/c/a/b;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    sget-object v1, Ls1/a/a/a/v0/j/y/d;->u:Ls1/a/a/a/v0/j/y/d$a;

    .line 3
    sget v1, Ls1/a/a/a/v0/j/y/d;->e:I

    .line 4
    invoke-virtual {p1, v1}, Ls1/a/a/a/v0/j/y/d;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v0, p2}, Ls1/a/a/a/v0/k/b/g0/h;->h(Ljava/util/Collection;Ls1/z/b/l;)V

    .line 6
    :cond_0
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/h;->b:Ls1/a/a/a/v0/k/b/g0/h$a;

    invoke-interface {v1, v0, p1, p2, p3}, Ls1/a/a/a/v0/k/b/g0/h$a;->e(Ljava/util/Collection;Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;Ls1/a/a/a/v0/c/a/b;)V

    .line 7
    sget p3, Ls1/a/a/a/v0/j/y/d;->f:I

    .line 8
    invoke-virtual {p1, p3}, Ls1/a/a/a/v0/j/y/d;->a(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 9
    iget-object p3, p0, Ls1/a/a/a/v0/k/b/g0/h;->b:Ls1/a/a/a/v0/k/b/g0/h$a;

    invoke-interface {p3}, Ls1/a/a/a/v0/k/b/g0/h$a;->g()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/f/e;

    .line 10
    invoke-interface {p2, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    iget-object v2, p0, Ls1/a/a/a/v0/k/b/g0/h;->b:Ls1/a/a/a/v0/k/b/g0/h$a;

    invoke-interface {v2, v1}, Ls1/a/a/a/v0/k/b/g0/h$a;->f(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/b/v0;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->r(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_2
    sget-object p3, Ls1/a/a/a/v0/j/y/d;->u:Ls1/a/a/a/v0/j/y/d$a;

    .line 13
    sget p3, Ls1/a/a/a/v0/j/y/d;->k:I

    .line 14
    invoke-virtual {p1, p3}, Ls1/a/a/a/v0/j/y/d;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p0}, Ls1/a/a/a/v0/k/b/g0/h;->m()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ls1/a/a/a/v0/f/e;

    .line 16
    invoke-interface {p2, p3}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 18
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 19
    invoke-virtual {p0, p3}, Ls1/a/a/a/v0/k/b/g0/h;->l(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/a;

    move-result-object p3

    invoke-virtual {v1, p3}, Ls1/a/a/a/v0/k/b/j;->b(Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/b/e;

    move-result-object p3

    .line 20
    invoke-static {v0, p3}, Ls1/a/a/a/v0/f/d;->r(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_1

    .line 21
    :cond_4
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->i0(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public j(Ls1/a/a/a/v0/f/e;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/q0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "functions"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public k(Ls1/a/a/a/v0/f/e;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/k0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "descriptors"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract l(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/a;
.end method

.method public final m()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h;->c:Ls1/a/a/a/v0/l/i;

    sget-object v1, Ls1/a/a/a/v0/k/b/g0/h;->f:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public abstract n()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation
.end method

.method public abstract o()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation
.end method

.method public abstract p()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation
.end method

.method public q(Ls1/a/a/a/v0/f/e;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/k/b/g0/h;->m()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public r(Ls1/a/a/a/v0/b/q0;)Z
    .locals 1

    const-string v0, "function"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
