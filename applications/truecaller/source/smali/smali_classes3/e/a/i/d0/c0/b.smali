.class public final Le/a/i/d0/c0/b;
.super Le/a/i/d0/c0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/i/d0/c0/a<",
        "TKey;TValue;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/d0/c0/d;

.field public final synthetic b:Le/a/i/d0/c0/d;


# direct methods
.method public constructor <init>(Le/a/i/d0/c0/d;Le/a/i/d0/c0/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/d0/c0/d;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/i/d0/c0/b;->a:Le/a/i/d0/c0/d;

    iput-object p2, p0, Le/a/i/d0/c0/b;->b:Le/a/i/d0/c0/d;

    invoke-direct {p0}, Le/a/i/d0/c0/a;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Le/a/i/d0/c0/b;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/d0/c0/d;

    .line 7
    instance-of v1, v0, Le/a/i/d0/c0/a;

    if-eqz v1, :cond_0

    check-cast v0, Le/a/i/d0/c0/a;

    invoke-virtual {v0}, Le/a/i/d0/c0/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p1}, Ls1/u/i;->r(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p2, p1, :cond_2

    move v2, v1

    :cond_2
    xor-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_3

    return-void

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DataSource creates a circular reference"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;",
            "Ls1/w/d<",
            "-TValue;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/d0/c0/b$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/d0/c0/b$a;

    iget v1, v0, Le/a/i/d0/c0/b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/d0/c0/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/d0/c0/b$a;

    invoke-direct {v0, p0, p2}, Le/a/i/d0/c0/b$a;-><init>(Le/a/i/d0/c0/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/d0/c0/b$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/d0/c0/b$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/i/d0/c0/b$a;->g:Ljava/lang/Object;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v3, p1

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/i/d0/c0/b$a;->h:Ljava/lang/Object;

    iget-object v2, v0, Le/a/i/d0/c0/b$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/i/d0/c0/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p1, v0, Le/a/i/d0/c0/b$a;->h:Ljava/lang/Object;

    iget-object v2, v0, Le/a/i/d0/c0/b$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/i/d0/c0/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/i/d0/c0/b;->a:Le/a/i/d0/c0/d;

    iput-object p0, v0, Le/a/i/d0/c0/b$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/i/d0/c0/b$a;->h:Ljava/lang/Object;

    iput v6, v0, Le/a/i/d0/c0/b$a;->e:I

    invoke-interface {p2, p1, v0}, Le/a/i/d0/c0/d;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    :goto_1
    if-eqz p2, :cond_7

    :cond_6
    move-object v3, p2

    goto :goto_3

    .line 5
    :cond_7
    iget-object p2, v2, Le/a/i/d0/c0/b;->b:Le/a/i/d0/c0/d;

    iput-object v2, v0, Le/a/i/d0/c0/b$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/i/d0/c0/b$a;->h:Ljava/lang/Object;

    iput v5, v0, Le/a/i/d0/c0/b$a;->e:I

    invoke-interface {p2, p1, v0}, Le/a/i/d0/c0/d;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    :goto_2
    if-eqz p2, :cond_9

    .line 6
    iget-object v2, v2, Le/a/i/d0/c0/b;->a:Le/a/i/d0/c0/d;

    iput-object p2, v0, Le/a/i/d0/c0/b$a;->g:Ljava/lang/Object;

    iput-object v3, v0, Le/a/i/d0/c0/b$a;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/i/d0/c0/b$a;->e:I

    invoke-interface {v2, p1, p2, v0}, Le/a/i/d0/c0/d;->c(Ljava/lang/Object;Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_9
    :goto_3
    return-object v3
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;TValue;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/d0/c0/b;->a:Le/a/i/d0/c0/d;

    const/4 v1, 0x2

    new-array v1, v1, [Le/a/i/d0/c0/d;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v0, p0, Le/a/i/d0/c0/b;->b:Le/a/i/d0/c0/d;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Le/a/i/d0/c0/b$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Le/a/i/d0/c0/b$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ls1/w/d;)V

    .line 2
    new-instance p1, Le/a/i/d0/c0/c;

    invoke-direct {p1, v0, v1, v2}, Le/a/i/d0/c0/c;-><init>(Ljava/util/List;Ls1/z/b/p;Ls1/w/d;)V

    invoke-static {p1, p3}, Ls1/a/a/a/v0/f/d;->o0(Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/i/d0/c0/d<",
            "**>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Le/a/i/d0/c0/d;

    .line 1
    iget-object v1, p0, Le/a/i/d0/c0/b;->a:Le/a/i/d0/c0/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Le/a/i/d0/c0/b;->b:Le/a/i/d0/c0/d;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
