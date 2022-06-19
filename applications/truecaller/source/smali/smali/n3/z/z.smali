.class public final Ln3/z/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ln3/z/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/a0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/z/e3<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c:Lq3/a/b3/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/z/a0;

    invoke-direct {v0}, Ln3/z/a0;-><init>()V

    iput-object v0, p0, Ln3/z/z;->a:Ln3/z/a0;

    .line 3
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    iput-object v0, p0, Ln3/z/z;->b:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object v0

    iput-object v0, p0, Ln3/z/z;->c:Lq3/a/b3/c;

    return-void
.end method


# virtual methods
.method public final a(Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ln3/z/e3<",
            "TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Ln3/z/z$a;

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ln3/z/z$a;

    iget v2, v0, Ln3/z/z$a;->e:I

    and-int v3, v2, v1

    if-eqz v3, :cond_0

    sub-int/2addr v2, v1

    iput v2, v0, Ln3/z/z$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/z/z$a;

    invoke-direct {v0, p0, p1}, Ln3/z/z$a;-><init>(Ln3/z/z;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Ln3/z/z$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v0, Ln3/z/z$a;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    if-ne v3, v4, :cond_1

    iget v3, v0, Ln3/z/z$a;->k:I

    iget-object v6, v0, Ln3/z/z$a;->j:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, v0, Ln3/z/z$a;->i:Ljava/lang/Object;

    check-cast v7, Ln3/z/e3;

    iget-object v8, v0, Ln3/z/z$a;->h:Ljava/lang/Object;

    check-cast v8, Ln3/z/e3;

    iget-object v9, v0, Ln3/z/z$a;->g:Ljava/lang/Object;

    check-cast v9, Lq3/a/b3/c;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v3, v0, Ln3/z/z$a;->h:Ljava/lang/Object;

    check-cast v3, Lq3/a/b3/c;

    iget-object v6, v0, Ln3/z/z$a;->g:Ljava/lang/Object;

    check-cast v6, Ln3/z/z;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v9, v3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Ln3/z/z;->c:Lq3/a/b3/c;

    .line 5
    iput-object p0, v0, Ln3/z/z$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Ln3/z/z$a;->h:Ljava/lang/Object;

    iput v6, v0, Ln3/z/z$a;->e:I

    invoke-interface {p1, v5, v0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_4

    return-object v2

    :cond_4
    move-object v6, p0

    move-object v9, p1

    .line 6
    :goto_1
    :try_start_1
    new-instance v7, Ln3/z/e3;

    invoke-direct {v7}, Ln3/z/e3;-><init>()V

    .line 7
    iget-object p1, v6, Ln3/z/z;->a:Ln3/z/a0;

    invoke-virtual {p1}, Ln3/z/a0;->b()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    .line 8
    check-cast p1, Ljava/util/ArrayList;

    :try_start_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v8, v7

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v10, v3, 0x1

    if-ltz v3, :cond_6

    .line 9
    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 10
    check-cast p1, Ln3/z/c1;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 11
    new-instance v11, Ls1/u/w;

    add-int/2addr v3, v1

    invoke-direct {v11, v3, p1}, Ls1/u/w;-><init>(ILjava/lang/Object;)V

    iput-object v9, v0, Ln3/z/z$a;->g:Ljava/lang/Object;

    iput-object v8, v0, Ln3/z/z$a;->h:Ljava/lang/Object;

    iput-object v7, v0, Ln3/z/z$a;->i:Ljava/lang/Object;

    iput-object v6, v0, Ln3/z/z$a;->j:Ljava/lang/Object;

    iput v10, v0, Ln3/z/z$a;->k:I

    iput v4, v0, Ln3/z/z$a;->e:I

    .line 12
    invoke-virtual {v7, v11, v0}, Ln3/z/e3;->a(Ls1/u/w;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_5

    return-object v2

    :cond_5
    move v3, v10

    goto :goto_2

    .line 13
    :cond_6
    invoke-static {}, Ls1/u/i;->N0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 14
    :cond_7
    invoke-interface {v9, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v8

    :catchall_0
    move-exception p1

    invoke-interface {v9, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method

.method public final b(Ls1/u/w;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/u/w<",
            "+",
            "Ln3/z/c1<",
            "TT;>;>;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ln3/z/z$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ln3/z/z$b;

    iget v1, v0, Ln3/z/z$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/z/z$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/z/z$b;

    invoke-direct {v0, p0, p2}, Ln3/z/z$b;-><init>(Ln3/z/z;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Ln3/z/z$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/z/z$b;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ln3/z/z$b;->l:Ljava/lang/Object;

    iget-object v2, v0, Ln3/z/z$b;->k:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Ln3/z/z$b;->j:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    iget-object v6, v0, Ln3/z/z$b;->i:Ljava/lang/Object;

    check-cast v6, Ln3/z/z;

    iget-object v7, v0, Ln3/z/z$b;->h:Ljava/lang/Object;

    check-cast v7, Lq3/a/b3/c;

    iget-object v8, v0, Ln3/z/z$b;->g:Ljava/lang/Object;

    check-cast v8, Ls1/u/w;

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Ln3/z/z$b;->i:Ljava/lang/Object;

    check-cast p1, Lq3/a/b3/c;

    iget-object v2, v0, Ln3/z/z$b;->h:Ljava/lang/Object;

    check-cast v2, Ls1/u/w;

    iget-object v4, v0, Ln3/z/z$b;->g:Ljava/lang/Object;

    check-cast v4, Ln3/z/z;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v7, p1

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Ln3/z/z;->c:Lq3/a/b3/c;

    .line 5
    iput-object p0, v0, Ln3/z/z$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Ln3/z/z$b;->h:Ljava/lang/Object;

    iput-object p2, v0, Ln3/z/z$b;->i:Ljava/lang/Object;

    iput v4, v0, Ln3/z/z$b;->e:I

    invoke-interface {p2, v5, v0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p0

    move-object v7, p2

    .line 6
    :goto_1
    :try_start_1
    iget-object p2, v4, Ln3/z/z;->a:Ln3/z/a0;

    .line 7
    iget-object v2, p1, Ls1/u/w;->b:Ljava/lang/Object;

    .line 8
    check-cast v2, Ln3/z/c1;

    invoke-virtual {p2, v2}, Ln3/z/a0;->a(Ln3/z/c1;)V

    .line 9
    iget-object p2, v4, Ln3/z/z;->b:Ljava/util/List;

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v8, p1

    move-object v6, v4

    move-object v4, v2

    move-object v2, p2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ln3/z/e3;

    .line 12
    iput-object v8, v0, Ln3/z/z$b;->g:Ljava/lang/Object;

    iput-object v7, v0, Ln3/z/z$b;->h:Ljava/lang/Object;

    iput-object v6, v0, Ln3/z/z$b;->i:Ljava/lang/Object;

    iput-object v4, v0, Ln3/z/z$b;->j:Ljava/lang/Object;

    iput-object v2, v0, Ln3/z/z$b;->k:Ljava/lang/Object;

    iput-object p1, v0, Ln3/z/z$b;->l:Ljava/lang/Object;

    iput v3, v0, Ln3/z/z$b;->e:I

    invoke-virtual {p2, v8, v0}, Ln3/z/e3;->a(Ls1/u/w;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 13
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 14
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {v4, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_7
    check-cast v4, Ljava/util/List;

    .line 16
    iput-object v4, v6, Ln3/z/z;->b:Ljava/util/List;

    .line 17
    sget-object p1, Ls1/s;->a:Ls1/s;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-interface {v7, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :goto_4
    invoke-interface {v7, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method
