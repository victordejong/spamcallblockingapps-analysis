.class public final Ls1/a/a/a/v0/k/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/k/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/a/a/a/v0/k/b/c<",
        "Ls1/a/a/a/v0/b/f1/c;",
        "Ls1/a/a/a/v0/j/t/g<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/k/b/e;

.field public final b:Ls1/a/a/a/v0/k/a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/b/b0;Ls1/a/a/a/v0/k/a;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Ls1/a/a/a/v0/k/b/d;->b:Ls1/a/a/a/v0/k/a;

    .line 2
    new-instance p3, Ls1/a/a/a/v0/k/b/e;

    invoke-direct {p3, p1, p2}, Ls1/a/a/a/v0/k/b/e;-><init>(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/b/b0;)V

    iput-object p3, p0, Ls1/a/a/a/v0/k/b/d;->a:Ls1/a/a/a/v0/k/b/e;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/k/b/b;ILs1/a/a/a/v0/e/u;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/k/b/y;",
            "Ls1/a/a/a/v0/h/p;",
            "Ls1/a/a/a/v0/k/b/b;",
            "I",
            "Ls1/a/a/a/v0/e/u;",
            ")",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/f1/c;",
            ">;"
        }
    .end annotation

    const-string p4, "container"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "callableProto"

    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "kind"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "proto"

    invoke-static {p5, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Ls1/a/a/a/v0/k/b/d;->b:Ls1/a/a/a/v0/k/a;

    .line 2
    iget-object p2, p2, Ls1/a/a/a/v0/k/a;->j:Ls1/a/a/a/v0/h/h$f;

    .line 3
    invoke-virtual {p5, p2}, Ls1/a/a/a/v0/h/h$d;->f(Ls1/a/a/a/v0/h/h$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Ls1/u/s;->a:Ls1/u/s;

    .line 4
    :goto_0
    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p2, p4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 6
    check-cast p4, Ls1/a/a/a/v0/e/b;

    .line 7
    iget-object p5, p0, Ls1/a/a/a/v0/k/b/d;->a:Ls1/a/a/a/v0/k/b/e;

    .line 8
    iget-object v0, p1, Ls1/a/a/a/v0/k/b/y;->a:Ls1/a/a/a/v0/e/z/c;

    .line 9
    invoke-virtual {p5, p4, v0}, Ls1/a/a/a/v0/k/b/e;->a(Ls1/a/a/a/v0/e/b;Ls1/a/a/a/v0/e/z/c;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p3
.end method

.method public b(Ls1/a/a/a/v0/k/b/y$a;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/k/b/y$a;",
            ")",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/f1/c;",
            ">;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Ls1/a/a/a/v0/k/b/y$a;->g:Ls1/a/a/a/v0/e/c;

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/d;->b:Ls1/a/a/a/v0/k/a;

    .line 3
    iget-object v1, v1, Ls1/a/a/a/v0/k/a;->c:Ls1/a/a/a/v0/h/h$f;

    .line 4
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/h/h$d;->f(Ls1/a/a/a/v0/h/h$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    .line 5
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Ls1/a/a/a/v0/e/b;

    .line 8
    iget-object v3, p0, Ls1/a/a/a/v0/k/b/d;->a:Ls1/a/a/a/v0/k/b/e;

    .line 9
    iget-object v4, p1, Ls1/a/a/a/v0/k/b/y;->a:Ls1/a/a/a/v0/e/z/c;

    .line 10
    invoke-virtual {v3, v2, v4}, Ls1/a/a/a/v0/k/b/e;->a(Ls1/a/a/a/v0/e/b;Ls1/a/a/a/v0/e/z/c;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public c(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/e/g;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/k/b/y;",
            "Ls1/a/a/a/v0/e/g;",
            ")",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/f1/c;",
            ">;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/d;->b:Ls1/a/a/a/v0/k/a;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/a;->h:Ls1/a/a/a/v0/h/h$f;

    .line 3
    invoke-virtual {p2, v0}, Ls1/a/a/a/v0/h/h$d;->f(Ls1/a/a/a/v0/h/h$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Ls1/u/s;->a:Ls1/u/s;

    .line 4
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ls1/a/a/a/v0/e/b;

    .line 7
    iget-object v2, p0, Ls1/a/a/a/v0/k/b/d;->a:Ls1/a/a/a/v0/k/b/e;

    .line 8
    iget-object v3, p1, Ls1/a/a/a/v0/k/b/y;->a:Ls1/a/a/a/v0/e/z/c;

    .line 9
    invoke-virtual {v2, v1, v3}, Ls1/a/a/a/v0/k/b/e;->a(Ls1/a/a/a/v0/e/b;Ls1/a/a/a/v0/e/z/c;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public d(Ls1/a/a/a/v0/e/s;Ls1/a/a/a/v0/e/z/c;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/e/s;",
            "Ls1/a/a/a/v0/e/z/c;",
            ")",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/f1/c;",
            ">;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/d;->b:Ls1/a/a/a/v0/k/a;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/a;->l:Ls1/a/a/a/v0/h/h$f;

    .line 3
    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/h/h$d;->f(Ls1/a/a/a/v0/h/h$f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    .line 4
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ls1/a/a/a/v0/e/b;

    .line 7
    iget-object v2, p0, Ls1/a/a/a/v0/k/b/d;->a:Ls1/a/a/a/v0/k/b/e;

    invoke-virtual {v2, v1, p2}, Ls1/a/a/a/v0/k/b/e;->a(Ls1/a/a/a/v0/e/b;Ls1/a/a/a/v0/e/z/c;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public e(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/e/n;Ls1/a/a/a/v0/m/e0;)Ljava/lang/Object;
    .locals 1

    const-string v0, "container"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expectedType"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/d;->b:Ls1/a/a/a/v0/k/a;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/k/a;->i:Ls1/a/a/a/v0/h/h$f;

    .line 4
    invoke-static {p2, v0}, Le/q/f/a/d/a;->K0(Ls1/a/a/a/v0/h/h$d;Ls1/a/a/a/v0/h/h$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls1/a/a/a/v0/e/b$b$c;

    if-eqz p2, :cond_0

    .line 5
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/d;->a:Ls1/a/a/a/v0/k/b/e;

    .line 6
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/y;->a:Ls1/a/a/a/v0/e/z/c;

    .line 7
    invoke-virtual {v0, p3, p2, p1}, Ls1/a/a/a/v0/k/b/e;->c(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/e/b$b$c;Ls1/a/a/a/v0/e/z/c;)Ls1/a/a/a/v0/j/t/g;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public f(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/e/n;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/k/b/y;",
            "Ls1/a/a/a/v0/e/n;",
            ")",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/f1/c;",
            ">;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "proto"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    return-object p1
.end method

.method public g(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/k/b/b;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/k/b/y;",
            "Ls1/a/a/a/v0/h/p;",
            "Ls1/a/a/a/v0/k/b/b;",
            ")",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/f1/c;",
            ">;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "proto"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "kind"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    return-object p1
.end method

.method public h(Ls1/a/a/a/v0/e/q;Ls1/a/a/a/v0/e/z/c;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/e/q;",
            "Ls1/a/a/a/v0/e/z/c;",
            ")",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/f1/c;",
            ">;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/d;->b:Ls1/a/a/a/v0/k/a;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/a;->k:Ls1/a/a/a/v0/h/h$f;

    .line 3
    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/h/h$d;->f(Ls1/a/a/a/v0/h/h$f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    .line 4
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ls1/a/a/a/v0/e/b;

    .line 7
    iget-object v2, p0, Ls1/a/a/a/v0/k/b/d;->a:Ls1/a/a/a/v0/k/b/e;

    invoke-virtual {v2, v1, p2}, Ls1/a/a/a/v0/k/b/e;->a(Ls1/a/a/a/v0/e/b;Ls1/a/a/a/v0/e/z/c;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public i(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/k/b/b;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/k/b/y;",
            "Ls1/a/a/a/v0/h/p;",
            "Ls1/a/a/a/v0/k/b/b;",
            ")",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/f1/c;",
            ">;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p2, Ls1/a/a/a/v0/e/d;

    if-eqz v0, :cond_0

    check-cast p2, Ls1/a/a/a/v0/e/d;

    iget-object p3, p0, Ls1/a/a/a/v0/k/b/d;->b:Ls1/a/a/a/v0/k/a;

    .line 2
    iget-object p3, p3, Ls1/a/a/a/v0/k/a;->b:Ls1/a/a/a/v0/h/h$f;

    .line 3
    invoke-virtual {p2, p3}, Ls1/a/a/a/v0/h/h$d;->f(Ls1/a/a/a/v0/h/h$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p2, Ls1/a/a/a/v0/e/i;

    if-eqz v0, :cond_1

    check-cast p2, Ls1/a/a/a/v0/e/i;

    iget-object p3, p0, Ls1/a/a/a/v0/k/b/d;->b:Ls1/a/a/a/v0/k/a;

    .line 5
    iget-object p3, p3, Ls1/a/a/a/v0/k/a;->d:Ls1/a/a/a/v0/h/h$f;

    .line 6
    invoke-virtual {p2, p3}, Ls1/a/a/a/v0/h/h$d;->f(Ls1/a/a/a/v0/h/h$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    .line 7
    :cond_1
    instance-of v0, p2, Ls1/a/a/a/v0/e/n;

    if-eqz v0, :cond_7

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    .line 8
    check-cast p2, Ls1/a/a/a/v0/e/n;

    iget-object p3, p0, Ls1/a/a/a/v0/k/b/d;->b:Ls1/a/a/a/v0/k/a;

    .line 9
    iget-object p3, p3, Ls1/a/a/a/v0/k/a;->g:Ls1/a/a/a/v0/h/h$f;

    .line 10
    invoke-virtual {p2, p3}, Ls1/a/a/a/v0/h/h$d;->f(Ls1/a/a/a/v0/h/h$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unsupported callable kind with property proto"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    check-cast p2, Ls1/a/a/a/v0/e/n;

    iget-object p3, p0, Ls1/a/a/a/v0/k/b/d;->b:Ls1/a/a/a/v0/k/a;

    .line 13
    iget-object p3, p3, Ls1/a/a/a/v0/k/a;->f:Ls1/a/a/a/v0/h/h$f;

    .line 14
    invoke-virtual {p2, p3}, Ls1/a/a/a/v0/h/h$d;->f(Ls1/a/a/a/v0/h/h$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    .line 15
    :cond_4
    check-cast p2, Ls1/a/a/a/v0/e/n;

    iget-object p3, p0, Ls1/a/a/a/v0/k/b/d;->b:Ls1/a/a/a/v0/k/a;

    .line 16
    iget-object p3, p3, Ls1/a/a/a/v0/k/a;->e:Ls1/a/a/a/v0/h/h$f;

    .line 17
    invoke-virtual {p2, p3}, Ls1/a/a/a/v0/h/h$d;->f(Ls1/a/a/a/v0/h/h$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    :goto_0
    if-eqz p2, :cond_5

    goto :goto_1

    .line 18
    :cond_5
    sget-object p2, Ls1/u/s;->a:Ls1/u/s;

    .line 19
    :goto_1
    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Ls1/a/a/a/v0/e/b;

    .line 22
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/d;->a:Ls1/a/a/a/v0/k/b/e;

    .line 23
    iget-object v2, p1, Ls1/a/a/a/v0/k/b/y;->a:Ls1/a/a/a/v0/e/z/c;

    .line 24
    invoke-virtual {v1, v0, v2}, Ls1/a/a/a/v0/k/b/e;->a(Ls1/a/a/a/v0/e/b;Ls1/a/a/a/v0/e/z/c;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object p3

    .line 25
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown message: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public j(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/e/n;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/k/b/y;",
            "Ls1/a/a/a/v0/e/n;",
            ")",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/f1/c;",
            ">;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "proto"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    return-object p1
.end method
