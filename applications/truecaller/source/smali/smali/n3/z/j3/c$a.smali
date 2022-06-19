.class public final Ln3/z/j3/c$a;
.super Ln3/z/j3/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/z/j3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/z/j3/k<",
        "Ln3/z/j3/c$c<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final f:Ln3/z/j3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/j3/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:Ln3/z/j3/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/j3/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Lq3/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/z/j3/c$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final synthetic k:Ln3/z/j3/c;


# direct methods
.method public constructor <init>(Ln3/z/j3/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ln3/z/j3/c$a;->k:Ln3/z/j3/c;

    .line 2
    iget-object v0, p1, Ln3/z/j3/c;->b:Lq3/a/i0;

    .line 3
    invoke-direct {p0, v0}, Ln3/z/j3/k;-><init>(Lq3/a/i0;)V

    .line 4
    iget p1, p1, Ln3/z/j3/c;->c:I

    if-lez p1, :cond_0

    .line 5
    new-instance v0, Ln3/z/j3/b;

    invoke-direct {v0, p1}, Ln3/z/j3/b;-><init>(I)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ln3/z/j3/h;

    invoke-direct {v0}, Ln3/z/j3/h;-><init>()V

    .line 7
    :goto_0
    iput-object v0, p0, Ln3/z/j3/c$a;->f:Ln3/z/j3/a;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln3/z/j3/c$a;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ln3/z/j3/c$c;

    invoke-virtual {p0, p1, p2}, Ln3/z/j3/c$a;->k(Ln3/z/j3/c$c;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/z/j3/c$a;->j:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/z/j3/c$b;

    .line 3
    invoke-virtual {v1}, Ln3/z/j3/c$b;->a()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/z/j3/c$a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Ln3/z/j3/c$a;->g:Ln3/z/j3/i;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Ln3/z/j3/i;->a:Lq3/a/p1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/z/j3/c$a;->g:Ln3/z/j3/i;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ln3/z/j3/i;

    iget-object v1, p0, Ln3/z/j3/c$a;->k:Ln3/z/j3/c;

    .line 3
    iget-object v2, v1, Ln3/z/j3/c;->b:Lq3/a/i0;

    .line 4
    iget-object v1, v1, Ln3/z/j3/c;->g:Lq3/a/x2/f;

    .line 5
    new-instance v3, Ln3/z/j3/d;

    invoke-direct {v3, p0}, Ln3/z/j3/d;-><init>(Ln3/z/j3/c$a;)V

    invoke-direct {v0, v2, v1, v3}, Ln3/z/j3/i;-><init>(Lq3/a/i0;Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 6
    iput-object v0, p0, Ln3/z/j3/c$a;->g:Ln3/z/j3/i;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Ln3/z/j3/c$a;->h:Z

    .line 8
    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 9
    iget-object v2, v0, Ln3/z/j3/i;->b:Lq3/a/i0;

    new-instance v5, Ln3/z/j3/j;

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Ln3/z/j3/j;-><init>(Ln3/z/j3/i;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-void
.end method

.method public final g(Ln3/z/j3/c$b;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/j3/c$b<",
            "TT;>;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    sget-object v1, Ls1/s;->a:Ls1/s;

    instance-of v2, p2, Ln3/z/j3/c$a$a;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Ln3/z/j3/c$a$a;

    iget v3, v2, Ln3/z/j3/c$a$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Ln3/z/j3/c$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Ln3/z/j3/c$a$a;

    invoke-direct {v2, p0, p2}, Ln3/z/j3/c$a$a;-><init>(Ln3/z/j3/c$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v2, Ln3/z/j3/c$a$a;->d:Ljava/lang/Object;

    .line 1
    iget v3, v2, Ln3/z/j3/c$a$a;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v2, Ln3/z/j3/c$a$a;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v3, v2, Ln3/z/j3/c$a$a;->g:Ljava/lang/Object;

    check-cast v3, Ln3/z/j3/c$b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Ln3/z/j3/c$a;->j:Ljava/util/List;

    .line 5
    instance-of v3, p2, Ljava/util/Collection;

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/z/j3/c$b;

    .line 7
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "entry"

    invoke-static {p1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v3, v3, Ln3/z/j3/c$b;->a:Lq3/a/w2/d0;

    iget-object v6, p1, Ln3/z/j3/c$b;->a:Lq3/a/w2/d0;

    if-ne v3, v6, :cond_5

    move v3, v4

    goto :goto_1

    :cond_5
    move v3, v5

    .line 9
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_6
    :goto_2
    move v5, v4

    :goto_3
    if-eqz v5, :cond_c

    .line 11
    iget-boolean p2, p1, Ln3/z/j3/c$b;->b:Z

    xor-int/2addr p2, v4

    if-eqz p2, :cond_b

    .line 12
    iget-object p2, p0, Ln3/z/j3/c$a;->j:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p2, p0, Ln3/z/j3/c$a;->f:Ln3/z/j3/a;

    invoke-interface {p2}, Ln3/z/j3/a;->e1()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v4

    if-eqz p2, :cond_9

    .line 14
    iget-object p2, p0, Ln3/z/j3/c$a;->f:Ln3/z/j3/a;

    invoke-interface {p2}, Ln3/z/j3/a;->e1()Ljava/util/Collection;

    move-result-object p2

    .line 15
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v3, p1

    move-object p1, p2

    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3/z/j3/c$c$b$c;

    .line 16
    iput-object v3, v2, Ln3/z/j3/c$a$a;->g:Ljava/lang/Object;

    iput-object p1, v2, Ln3/z/j3/c$a$a;->h:Ljava/lang/Object;

    iput v4, v2, Ln3/z/j3/c$a$a;->e:I

    .line 17
    iput-boolean v4, v3, Ln3/z/j3/c$b;->b:Z

    .line 18
    iget-object v5, v3, Ln3/z/j3/c$b;->a:Lq3/a/w2/d0;

    invoke-interface {v5, p2, v2}, Lq3/a/w2/d0;->v(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_8

    goto :goto_5

    :cond_8
    move-object p2, v1

    :goto_5
    if-ne p2, v0, :cond_7

    return-object v0

    .line 19
    :cond_9
    iget-object p1, p0, Ln3/z/j3/c$a;->i:Lq3/a/w;

    if-eqz p1, :cond_a

    invoke-interface {p1, v1}, Lq3/a/w;->K(Ljava/lang/Object;)Z

    :cond_a
    return-object v1

    .line 20
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already received a value"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 22
    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already in the list."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final h(Ln3/z/j3/c$c$a;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/j3/c$c$a<",
            "TT;>;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ln3/z/j3/c$a$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ln3/z/j3/c$a$b;

    iget v1, v0, Ln3/z/j3/c$a$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/z/j3/c$a$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/z/j3/c$a$b;

    invoke-direct {v0, p0, p2}, Ln3/z/j3/c$a$b;-><init>(Ln3/z/j3/c$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Ln3/z/j3/c$a$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/z/j3/c$a$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ln3/z/j3/c$a$b;->g:Ljava/lang/Object;

    check-cast p1, Ln3/z/j3/c$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Ln3/z/j3/c$b;

    .line 5
    iget-object p1, p1, Ln3/z/j3/c$c$a;->a:Lq3/a/w2/d0;

    const/4 v2, 0x0

    const/4 v4, 0x2

    .line 6
    invoke-direct {p2, p1, v2, v4}, Ln3/z/j3/c$b;-><init>(Lq3/a/w2/d0;ZI)V

    iput-object p0, v0, Ln3/z/j3/c$a$b;->g:Ljava/lang/Object;

    iput v3, v0, Ln3/z/j3/c$a$b;->e:I

    .line 7
    invoke-virtual {p0, p2, v0}, Ln3/z/j3/c$a;->g(Ln3/z/j3/c$b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 8
    :goto_1
    invoke-virtual {p1}, Ln3/z/j3/c$a;->f()V

    .line 9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final i(Ln3/z/j3/c$c$b$c;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/j3/c$c$b$c<",
            "TT;>;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    instance-of v2, p2, Ln3/z/j3/c$a$c;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Ln3/z/j3/c$a$c;

    iget v3, v2, Ln3/z/j3/c$a$c;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Ln3/z/j3/c$a$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Ln3/z/j3/c$a$c;

    invoke-direct {v2, p0, p2}, Ln3/z/j3/c$a$c;-><init>(Ln3/z/j3/c$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v2, Ln3/z/j3/c$a$c;->d:Ljava/lang/Object;

    .line 1
    iget v3, v2, Ln3/z/j3/c$a$c;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v2, Ln3/z/j3/c$a$c;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v3, v2, Ln3/z/j3/c$a$c;->g:Ljava/lang/Object;

    check-cast v3, Ln3/z/j3/c$c$b$c;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v2, Ln3/z/j3/c$a$c;->h:Ljava/lang/Object;

    check-cast p1, Ln3/z/j3/c$c$b$c;

    iget-object v3, v2, Ln3/z/j3/c$a$c;->g:Ljava/lang/Object;

    check-cast v3, Ln3/z/j3/c$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Ln3/z/j3/c$a;->k:Ln3/z/j3/c;

    .line 5
    iget-object p2, p2, Ln3/z/j3/c;->e:Ls1/z/b/p;

    .line 6
    iget-object v3, p1, Ln3/z/j3/c$c$b$c;->a:Ljava/lang/Object;

    .line 7
    iput-object p0, v2, Ln3/z/j3/c$a$c;->g:Ljava/lang/Object;

    iput-object p1, v2, Ln3/z/j3/c$a$c;->h:Ljava/lang/Object;

    iput v5, v2, Ln3/z/j3/c$a$c;->e:I

    invoke-interface {p2, v3, v2}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v3, p0

    .line 8
    :goto_1
    iget-object p2, v3, Ln3/z/j3/c$a;->f:Ln3/z/j3/a;

    invoke-interface {p2, p1}, Ln3/z/j3/a;->f1(Ln3/z/j3/c$c$b$c;)V

    .line 9
    iput-boolean v5, v3, Ln3/z/j3/c$a;->h:Z

    .line 10
    iget-object p2, v3, Ln3/z/j3/c$a;->f:Ln3/z/j3/a;

    invoke-interface {p2}, Ln3/z/j3/a;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 11
    iget-object p2, p1, Ln3/z/j3/c$c$b$c;->b:Lq3/a/w;

    .line 12
    iput-object p2, v3, Ln3/z/j3/c$a;->i:Lq3/a/w;

    .line 13
    :cond_5
    iget-object p2, v3, Ln3/z/j3/c$a;->j:Ljava/util/List;

    .line 14
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v3, p1

    move-object p1, p2

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3/z/j3/c$b;

    .line 15
    iput-object v3, v2, Ln3/z/j3/c$a$c;->g:Ljava/lang/Object;

    iput-object p1, v2, Ln3/z/j3/c$a$c;->h:Ljava/lang/Object;

    iput v4, v2, Ln3/z/j3/c$a$c;->e:I

    .line 16
    iput-boolean v5, p2, Ln3/z/j3/c$b;->b:Z

    .line 17
    iget-object p2, p2, Ln3/z/j3/c$b;->a:Lq3/a/w2/d0;

    invoke-interface {p2, v3, v2}, Lq3/a/w2/d0;->v(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    goto :goto_3

    :cond_7
    move-object p2, v0

    :goto_3
    if-ne p2, v1, :cond_6

    return-object v1

    :cond_8
    return-object v0
.end method

.method public final j(Lq3/a/w2/d0;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/d0<",
            "-",
            "Ln3/z/j3/c$c$b$c<",
            "TT;>;>;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    instance-of v2, p2, Ln3/z/j3/c$a$d;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Ln3/z/j3/c$a$d;

    iget v3, v2, Ln3/z/j3/c$a$d;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Ln3/z/j3/c$a$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Ln3/z/j3/c$a$d;

    invoke-direct {v2, p0, p2}, Ln3/z/j3/c$a$d;-><init>(Ln3/z/j3/c$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v2, Ln3/z/j3/c$a$d;->d:Ljava/lang/Object;

    .line 1
    iget v3, v2, Ln3/z/j3/c$a$d;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Ln3/z/j3/c$a;->j:Ljava/util/List;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    move v5, v3

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 6
    check-cast v6, Ln3/z/j3/c$b;

    .line 7
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "channel"

    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v6, v6, Ln3/z/j3/c$b;->a:Lq3/a/w2/d0;

    if-ne v6, p1, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v3

    .line 9
    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 10
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, -0x1

    :goto_3
    if-ltz v5, :cond_7

    .line 11
    iget-object p1, p0, Ln3/z/j3/c$a;->j:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Ln3/z/j3/c$a;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Ln3/z/j3/c$a;->k:Ln3/z/j3/c;

    .line 13
    iget-boolean p1, p1, Ln3/z/j3/c;->f:Z

    if-nez p1, :cond_7

    .line 14
    iget-object p1, p0, Ln3/z/j3/c$a;->g:Ln3/z/j3/i;

    if-eqz p1, :cond_7

    iput v4, v2, Ln3/z/j3/c$a$d;->e:I

    .line 15
    iget-object p1, p1, Ln3/z/j3/i;->a:Lq3/a/p1;

    invoke-static {p1, v2}, Ls1/a/a/a/v0/f/d;->V(Lq3/a/p1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_4

    :cond_6
    move-object p1, v0

    :goto_4
    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_5
    return-object v0
.end method

.method public k(Ln3/z/j3/c$c;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/j3/c$c<",
            "TT;>;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ln3/z/j3/c$a$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ln3/z/j3/c$a$e;

    iget v1, v0, Ln3/z/j3/c$a$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/z/j3/c$a$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/z/j3/c$a$e;

    invoke-direct {v0, p0, p2}, Ln3/z/j3/c$a$e;-><init>(Ln3/z/j3/c$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Ln3/z/j3/c$a$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/z/j3/c$a$e;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    :goto_1
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    instance-of p2, p1, Ln3/z/j3/c$c$a;

    if-eqz p2, :cond_4

    check-cast p1, Ln3/z/j3/c$c$a;

    iput v5, v0, Ln3/z/j3/c$a$e;->e:I

    invoke-virtual {p0, p1, v0}, Ln3/z/j3/c$a;->h(Ln3/z/j3/c$c$a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_e

    return-object v1

    .line 5
    :cond_4
    instance-of p2, p1, Ln3/z/j3/c$c$c;

    if-eqz p2, :cond_5

    check-cast p1, Ln3/z/j3/c$c$c;

    .line 6
    iget-object p1, p1, Ln3/z/j3/c$c$c;->a:Lq3/a/w2/d0;

    .line 7
    iput v4, v0, Ln3/z/j3/c$a$e;->e:I

    invoke-virtual {p0, p1, v0}, Ln3/z/j3/c$a;->j(Lq3/a/w2/d0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_e

    return-object v1

    .line 8
    :cond_5
    instance-of p2, p1, Ln3/z/j3/c$c$b$c;

    if-eqz p2, :cond_6

    check-cast p1, Ln3/z/j3/c$c$b$c;

    iput v3, v0, Ln3/z/j3/c$a$e;->e:I

    invoke-virtual {p0, p1, v0}, Ln3/z/j3/c$a;->i(Ln3/z/j3/c$c$b$c;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_e

    return-object v1

    .line 9
    :cond_6
    instance-of p2, p1, Ln3/z/j3/c$c$b$a;

    if-eqz p2, :cond_7

    check-cast p1, Ln3/z/j3/c$c$b$a;

    .line 10
    iput-boolean v5, p0, Ln3/z/j3/c$a;->h:Z

    .line 11
    iget-object p2, p0, Ln3/z/j3/c$a;->j:Ljava/util/List;

    .line 12
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/z/j3/c$b;

    .line 13
    iget-object v1, p1, Ln3/z/j3/c$c$b$a;->a:Ljava/lang/Throwable;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "error"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-boolean v5, v0, Ln3/z/j3/c$b;->b:Z

    .line 16
    iget-object v0, v0, Ln3/z/j3/c$b;->a:Lq3/a/w2/d0;

    invoke-interface {v0, v1}, Lq3/a/w2/d0;->u(Ljava/lang/Throwable;)Z

    goto :goto_2

    .line 17
    :cond_7
    instance-of p2, p1, Ln3/z/j3/c$c$b$b;

    if-eqz p2, :cond_e

    check-cast p1, Ln3/z/j3/c$c$b$b;

    .line 18
    iget-object p1, p1, Ln3/z/j3/c$c$b$b;->a:Ln3/z/j3/i;

    .line 19
    iget-object p2, p0, Ln3/z/j3/c$a;->g:Ln3/z/j3/i;

    if-eq p2, p1, :cond_8

    goto :goto_4

    .line 20
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iget-object v0, p0, Ln3/z/j3/c$a;->j:Ljava/util/List;

    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/z/j3/c$b;

    .line 24
    iget-boolean v2, v1, Ln3/z/j3/c$b;->b:Z

    if-eqz v2, :cond_a

    .line 25
    iget-object v2, p0, Ln3/z/j3/c$a;->k:Ln3/z/j3/c;

    .line 26
    iget-boolean v2, v2, Ln3/z/j3/c;->d:Z

    if-nez v2, :cond_9

    .line 27
    invoke-virtual {v1}, Ln3/z/j3/c$b;->a()V

    goto :goto_3

    .line 28
    :cond_9
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 29
    :cond_a
    iget-boolean v2, p0, Ln3/z/j3/c$a;->h:Z

    if-eqz v2, :cond_b

    .line 30
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 31
    :cond_b
    iget-object v2, p0, Ln3/z/j3/c$a;->k:Ln3/z/j3/c;

    .line 32
    iget-boolean v2, v2, Ln3/z/j3/c;->d:Z

    if-nez v2, :cond_c

    .line 33
    invoke-virtual {v1}, Ln3/z/j3/c$b;->a()V

    goto :goto_3

    .line 34
    :cond_c
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 35
    :cond_d
    iget-object v0, p0, Ln3/z/j3/c$a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    iget-object v0, p0, Ln3/z/j3/c$a;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    iget-object v0, p0, Ln3/z/j3/c$a;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Ln3/z/j3/c$a;->g:Ln3/z/j3/i;

    .line 39
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_e

    .line 40
    invoke-virtual {p0}, Ln3/z/j3/c$a;->f()V

    .line 41
    :cond_e
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
