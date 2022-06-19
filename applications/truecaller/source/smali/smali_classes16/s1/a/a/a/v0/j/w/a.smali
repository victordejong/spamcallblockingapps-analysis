.class public final Ls1/a/a/a/v0/j/w/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/a/a/a/v0/d/a/d0/g;

.field public final b:Ls1/a/a/a/v0/d/a/b0/g;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/g;Ls1/a/a/a/v0/d/a/b0/g;)V
    .locals 1

    const-string v0, "packageFragmentProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaResolverCache"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/j/w/a;->a:Ls1/a/a/a/v0/d/a/d0/g;

    iput-object p2, p0, Ls1/a/a/a/v0/j/w/a;->b:Ls1/a/a/a/v0/d/a/b0/g;

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/d/a/f0/g;)Ls1/a/a/a/v0/b/e;
    .locals 5

    const-string v0, "javaClass"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/g;->d()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/g;->x()Ls1/a/a/a/v0/d/a/f0/a0;

    move-result-object v3

    sget-object v4, Ls1/a/a/a/v0/d/a/f0/a0;->a:Ls1/a/a/a/v0/d/a/f0/a0;

    if-ne v3, v4, :cond_0

    .line 3
    iget-object p1, p0, Ls1/a/a/a/v0/j/w/a;->b:Ls1/a/a/a/v0/d/a/b0/g;

    check-cast p1, Ls1/a/a/a/v0/d/a/b0/g$a;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    .line 5
    :cond_0
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/g;->h()Ls1/a/a/a/v0/d/a/f0/g;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 6
    invoke-virtual {p0, v3}, Ls1/a/a/a/v0/j/w/a;->a(Ls1/a/a/a/v0/d/a/f0/g;)Ls1/a/a/a/v0/b/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->I()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 7
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/s;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object p1

    sget-object v1, Ls1/a/a/a/v0/c/a/d;->i:Ls1/a/a/a/v0/c/a/d;

    invoke-interface {v0, p1, v1}, Ls1/a/a/a/v0/j/y/k;->f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    instance-of v0, p1, Ls1/a/a/a/v0/b/e;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, p1

    :goto_2
    check-cast v2, Ls1/a/a/a/v0/b/e;

    return-object v2

    :cond_4
    if-nez v1, :cond_5

    return-object v2

    .line 8
    :cond_5
    iget-object v3, p0, Ls1/a/a/a/v0/j/w/a;->a:Ls1/a/a/a/v0/d/a/d0/g;

    invoke-virtual {v1}, Ls1/a/a/a/v0/f/b;->e()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    const-string v4, "fqName.parent()"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "fqName"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3, v1}, Ls1/a/a/a/v0/d/a/d0/g;->c(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/d/a/d0/n/i;

    move-result-object v1

    invoke-static {v1}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 11
    invoke-static {v1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/d/a/d0/n/i;

    if-eqz v1, :cond_6

    const-string v2, "jClass"

    .line 12
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/n/i;->h:Ls1/a/a/a/v0/d/a/d0/n/c;

    .line 14
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/n/c;->b:Ls1/a/a/a/v0/d/a/d0/n/j;

    .line 15
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/s;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Ls1/a/a/a/v0/d/a/d0/n/j;->u(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/d/a/f0/g;)Ls1/a/a/a/v0/b/e;

    move-result-object v2

    :cond_6
    return-object v2
.end method
