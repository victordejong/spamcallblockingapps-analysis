.class public final Ls1/a/a/a/v0/j/y/g;
.super Ls1/a/a/a/v0/j/y/j;
.source "SourceFile"


# instance fields
.field public final b:Ls1/a/a/a/v0/j/y/i;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/j/y/i;)V
    .locals 1

    const-string v0, "workerScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/j/y/j;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/j/y/g;->b:Ls1/a/a/a/v0/j/y/i;

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
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/g;->b:Ls1/a/a/a/v0/j/y/i;

    invoke-interface {v0}, Ls1/a/a/a/v0/j/y/i;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
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
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/g;->b:Ls1/a/a/a/v0/j/y/i;

    invoke-interface {v0}, Ls1/a/a/a/v0/j/y/i;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
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
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/g;->b:Ls1/a/a/a/v0/j/y/i;

    invoke-interface {v0}, Ls1/a/a/a/v0/j/y/i;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/g;->b:Ls1/a/a/a/v0/j/y/i;

    invoke-interface {v0, p1, p2}, Ls1/a/a/a/v0/j/y/k;->f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 2
    instance-of v0, p1, Ls1/a/a/a/v0/b/e;

    if-nez v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Ls1/a/a/a/v0/b/e;

    if-eqz v0, :cond_1

    move-object p2, v0

    goto :goto_1

    :cond_1
    instance-of v0, p1, Ls1/a/a/a/v0/b/v0;

    if-nez v0, :cond_2

    move-object p1, p2

    :cond_2
    check-cast p1, Ls1/a/a/a/v0/b/v0;

    move-object p2, p1

    :cond_3
    :goto_1
    return-object p2
.end method

.method public g(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Collection;
    .locals 2

    const-string v0, "kindFilter"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Ls1/a/a/a/v0/j/y/d;->u:Ls1/a/a/a/v0/j/y/d$a;

    .line 3
    sget v0, Ls1/a/a/a/v0/j/y/d;->k:I

    .line 4
    iget v1, p1, Ls1/a/a/a/v0/j/y/d;->a:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ls1/a/a/a/v0/j/y/d;

    iget-object p1, p1, Ls1/a/a/a/v0/j/y/d;->b:Ljava/util/List;

    invoke-direct {v1, v0, p1}, Ls1/a/a/a/v0/j/y/d;-><init>(ILjava/util/List;)V

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 6
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/g;->b:Ls1/a/a/a/v0/j/y/i;

    invoke-interface {v0, p1, p2}, Ls1/a/a/a/v0/j/y/k;->g(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Collection;

    move-result-object p1

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ls1/a/a/a/v0/b/i;

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_2
    sget-object p2, Ls1/u/s;->a:Ls1/u/s;

    :cond_3
    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Classes from "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/j/y/g;->b:Ls1/a/a/a/v0/j/y/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
