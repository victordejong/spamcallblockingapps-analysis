.class public final Ln3/z/a3$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/a3;->a(ILs1/z/b/l;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.SingleRunner$runInIsolation$2"
    f = "SingleRunner.kt"
    l = {
        0x37,
        0x3b,
        0x3d,
        0x3d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Ln3/z/a3;

.field public final synthetic h:I

.field public final synthetic i:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Ln3/z/a3;ILs1/z/b/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/a3$d;->g:Ln3/z/a3;

    iput p2, p0, Ln3/z/a3$d;->h:I

    iput-object p3, p0, Ln3/z/a3$d;->i:Ls1/z/b/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/a3$d;

    iget-object v1, p0, Ln3/z/a3$d;->g:Ln3/z/a3;

    iget v2, p0, Ln3/z/a3$d;->h:I

    iget-object v3, p0, Ln3/z/a3$d;->i:Ls1/z/b/l;

    invoke-direct {v0, v1, v2, v3, p2}, Ln3/z/a3$d;-><init>(Ln3/z/a3;ILs1/z/b/l;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/a3$d;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/a3$d;

    iget-object v1, p0, Ln3/z/a3$d;->g:Ln3/z/a3;

    iget v2, p0, Ln3/z/a3$d;->h:I

    iget-object v3, p0, Ln3/z/a3$d;->i:Ls1/z/b/l;

    invoke-direct {v0, v1, v2, v3, p2}, Ln3/z/a3$d;-><init>(Ln3/z/a3;ILs1/z/b/l;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/a3$d;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/z/a3$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/a3$d;->f:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/z/a3$d;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    iget-object v1, p0, Ln3/z/a3$d;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/p1;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Ln3/z/a3$d;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/p1;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Ln3/z/a3$d;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    invoke-interface {p1}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object p1

    sget v1, Lq3/a/p1;->e0:I

    sget-object v1, Lq3/a/p1$a;->a:Lq3/a/p1$a;

    invoke-interface {p1, v1}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object p1

    if-eqz p1, :cond_9

    check-cast p1, Lq3/a/p1;

    .line 5
    iget-object v1, p0, Ln3/z/a3$d;->g:Ln3/z/a3;

    .line 6
    iget-object v1, v1, Ln3/z/a3;->a:Ln3/z/a3$b;

    .line 7
    iget v6, p0, Ln3/z/a3$d;->h:I

    .line 8
    iput-object p1, p0, Ln3/z/a3$d;->e:Ljava/lang/Object;

    iput v5, p0, Ln3/z/a3$d;->f:I

    .line 9
    invoke-virtual {v1, v6, p1, p0}, Ln3/z/a3$b;->b(ILq3/a/p1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v7, v1

    move-object v1, p1

    move-object p1, v7

    .line 10
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 11
    :try_start_1
    iget-object p1, p0, Ln3/z/a3$d;->i:Ls1/z/b/l;

    iput-object v1, p0, Ln3/z/a3$d;->e:Ljava/lang/Object;

    iput v4, p0, Ln3/z/a3$d;->f:I

    invoke-interface {p1, p0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_6

    return-object v0

    .line 12
    :cond_6
    :goto_1
    iget-object p1, p0, Ln3/z/a3$d;->g:Ln3/z/a3;

    .line 13
    iget-object p1, p1, Ln3/z/a3;->a:Ln3/z/a3$b;

    const/4 v2, 0x0

    .line 14
    iput-object v2, p0, Ln3/z/a3$d;->e:Ljava/lang/Object;

    iput v3, p0, Ln3/z/a3$d;->f:I

    invoke-virtual {p1, v1, p0}, Ln3/z/a3$b;->a(Lq3/a/p1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :goto_2
    iget-object v3, p0, Ln3/z/a3$d;->g:Ln3/z/a3;

    .line 15
    iget-object v3, v3, Ln3/z/a3;->a:Ln3/z/a3$b;

    .line 16
    iput-object p1, p0, Ln3/z/a3$d;->e:Ljava/lang/Object;

    iput v2, p0, Ln3/z/a3$d;->f:I

    invoke-virtual {v3, v1, p0}, Ln3/z/a3$b;->a(Lq3/a/p1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    return-object v0

    :cond_7
    move-object v0, p1

    .line 17
    :goto_3
    throw v0

    :cond_8
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 18
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Internal error. coroutineScope should\'ve created a job."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
