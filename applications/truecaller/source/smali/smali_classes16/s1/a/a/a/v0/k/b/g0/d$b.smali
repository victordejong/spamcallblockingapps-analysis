.class public final Ls1/a/a/a/v0/k/b/g0/d$b;
.super Ls1/a/a/a/v0/m/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/k/b/g0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final c:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Ls1/a/a/a/v0/k/b/g0/d;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/d$b;->d:Ls1/a/a/a/v0/k/b/g0/d;

    .line 2
    iget-object v0, p1, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 4
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 5
    invoke-direct {p0, v0}, Ls1/a/a/a/v0/m/b;-><init>(Ls1/a/a/a/v0/l/m;)V

    .line 6
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 7
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 8
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 9
    new-instance v0, Ls1/a/a/a/v0/k/b/g0/d$b$a;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/k/b/g0/d$b$a;-><init>(Ls1/a/a/a/v0/k/b/g0/d$b;)V

    invoke-interface {p1, v0}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/d$b;->c:Ls1/a/a/a/v0/l/i;

    return-void
.end method


# virtual methods
.method public d()Ls1/a/a/a/v0/b/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d$b;->d:Ls1/a/a/a/v0/k/b/g0/d;

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d$b;->d:Ls1/a/a/a/v0/k/b/g0/d;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 4
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    const-string v2, "$this$supertypes"

    .line 5
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "typeTable"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v2, v1, Ls1/a/a/a/v0/e/c;->h:Ljava/util/List;

    .line 7
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const/16 v3, 0xa

    if-eqz v2, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    iget-object v1, v1, Ls1/a/a/a/v0/e/c;->i:Ljava/util/List;

    const-string v2, "supertypeIdList"

    .line 9
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 12
    check-cast v5, Ljava/lang/Integer;

    const-string v6, "it"

    .line 13
    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Ls1/a/a/a/v0/e/z/e;->a(I)Ls1/a/a/a/v0/e/q;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_2
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 16
    check-cast v2, Ls1/a/a/a/v0/e/q;

    .line 17
    iget-object v5, p0, Ls1/a/a/a/v0/k/b/g0/d$b;->d:Ls1/a/a/a/v0/k/b/g0/d;

    .line 18
    iget-object v5, v5, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 19
    iget-object v5, v5, Ls1/a/a/a/v0/k/b/l;->a:Ls1/a/a/a/v0/k/b/c0;

    .line 20
    invoke-virtual {v5, v2}, Ls1/a/a/a/v0/k/b/c0;->e(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/m/e0;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 21
    :cond_3
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/d$b;->d:Ls1/a/a/a/v0/k/b/g0/d;

    .line 22
    iget-object v2, v1, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 23
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 24
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/j;->o:Ls1/a/a/a/v0/b/g1/a;

    .line 25
    invoke-interface {v2, v1}, Ls1/a/a/a/v0/b/g1/a;->c(Ls1/a/a/a/v0/b/e;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 28
    check-cast v5, Ls1/a/a/a/v0/m/e0;

    .line 29
    invoke-virtual {v5}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v5

    invoke-interface {v5}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v5

    instance-of v6, v5, Ls1/a/a/a/v0/b/b0$b;

    if-nez v6, :cond_5

    move-object v5, v4

    :cond_5
    check-cast v5, Ls1/a/a/a/v0/b/b0$b;

    if-eqz v5, :cond_4

    .line 30
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 31
    :cond_6
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_9

    .line 32
    iget-object v2, p0, Ls1/a/a/a/v0/k/b/g0/d$b;->d:Ls1/a/a/a/v0/k/b/g0/d;

    .line 33
    iget-object v4, v2, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 34
    iget-object v4, v4, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 35
    iget-object v4, v4, Ls1/a/a/a/v0/k/b/j;->i:Ls1/a/a/a/v0/k/b/p;

    .line 36
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 38
    check-cast v3, Ls1/a/a/a/v0/b/b0$b;

    .line 39
    invoke-static {v3}, Ls1/a/a/a/v0/j/v/b;->g(Ls1/a/a/a/v0/b/h;)Ls1/a/a/a/v0/f/a;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ls1/a/a/a/v0/f/b;->b()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v3}, Ls1/a/a/a/v0/b/h1/b;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v3

    invoke-virtual {v3}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 40
    :cond_8
    invoke-interface {v4, v2, v5}, Ls1/a/a/a/v0/k/b/p;->b(Ls1/a/a/a/v0/b/e;Ljava/util/List;)V

    .line 41
    :cond_9
    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d$b;->c:Ls1/a/a/a/v0/l/i;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public j()Ls1/a/a/a/v0/b/u0;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/u0$a;->a:Ls1/a/a/a/v0/b/u0$a;

    return-object v0
.end method

.method public n()Ls1/a/a/a/v0/b/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d$b;->d:Ls1/a/a/a/v0/k/b/g0/d;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d$b;->d:Ls1/a/a/a/v0/k/b/g0/d;

    invoke-virtual {v0}, Ls1/a/a/a/v0/b/h1/b;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/f/e;->a:Ljava/lang/String;

    const-string v1, "name.toString()"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
