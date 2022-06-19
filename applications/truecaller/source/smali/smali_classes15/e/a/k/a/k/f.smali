.class public final Le/a/k/a/k/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/a/k/d;


# instance fields
.field public a:Le/m/a/c/c0;

.field public final b:Lq3/a/b3/c;

.field public final c:Ls1/w/f;

.field public final d:Ls1/w/f;

.field public final e:Le/a/k/a/k/c;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/k/a/k/c;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/a/k/f;->c:Ls1/w/f;

    iput-object p2, p0, Le/a/k/a/k/f;->d:Ls1/w/f;

    iput-object p3, p0, Le/a/k/a/k/f;->e:Le/a/k/a/k/c;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object p1

    iput-object p1, p0, Le/a/k/a/k/f;->b:Lq3/a/b3/c;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/m/a/c/c0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/k/a/k/f$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/k/a/k/f$b;

    iget v1, v0, Le/a/k/a/k/f$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/a/k/f$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/a/k/f$b;

    invoke-direct {v0, p0, p1}, Le/a/k/a/k/f$b;-><init>(Le/a/k/a/k/f;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/k/a/k/f$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/a/k/f$b;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Le/a/k/a/k/f$b;->h:Ljava/lang/Object;

    check-cast v1, Lq3/a/b3/c;

    iget-object v0, v0, Le/a/k/a/k/f$b;->g:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/k/f;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/k/a/k/f$b;->h:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    iget-object v4, v0, Le/a/k/a/k/f$b;->g:Ljava/lang/Object;

    check-cast v4, Le/a/k/a/k/f;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v2, p0, Le/a/k/a/k/f;->b:Lq3/a/b3/c;

    .line 4
    iput-object p0, v0, Le/a/k/a/k/f$b;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/k/a/k/f$b;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/k/a/k/f$b;->e:I

    invoke-interface {v2, v5, v0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p0

    .line 5
    :goto_1
    :try_start_1
    iget-object p1, v4, Le/a/k/a/k/f;->a:Le/m/a/c/c0;

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    iput-object v4, v0, Le/a/k/a/k/f$b;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/k/a/k/f$b;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/k/a/k/f$b;->e:I

    .line 6
    iget-object p1, v4, Le/a/k/a/k/f;->c:Ls1/w/f;

    new-instance v3, Le/a/k/a/k/e;

    invoke-direct {v3, v4, v5}, Le/a/k/a/k/e;-><init>(Le/a/k/a/k/f;Ls1/w/d;)V

    invoke-static {p1, v3, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v1, v2

    move-object v0, v4

    .line 7
    :goto_2
    :try_start_2
    move-object v2, p1

    check-cast v2, Le/m/a/c/c0;

    .line 8
    iput-object v2, v0, Le/a/k/a/k/f;->a:Le/m/a/c/c0;

    check-cast p1, Le/m/a/c/c0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v1

    .line 9
    :goto_3
    invoke-interface {v2, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :goto_4
    move-object v2, v1

    goto :goto_5

    :catchall_1
    move-exception p1

    :goto_5
    invoke-interface {v2, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/m/a/c/c0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/k/a/k/f$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/k/a/k/f$a;

    iget v1, v0, Le/a/k/a/k/f$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/a/k/f$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/a/k/f$a;

    invoke-direct {v0, p0, p1}, Le/a/k/a/k/f$a;-><init>(Le/a/k/a/k/f;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/k/a/k/f$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/a/k/f$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v1, v0, Le/a/k/a/k/f$a;->h:Ljava/lang/Object;

    check-cast v1, Lq3/a/b3/c;

    iget-object v0, v0, Le/a/k/a/k/f$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/k/f;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/k/a/k/f;->b:Lq3/a/b3/c;

    .line 4
    iput-object p0, v0, Le/a/k/a/k/f$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/k/a/k/f$a;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/k/a/k/f$a;->e:I

    invoke-interface {p1, v3, v0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    .line 5
    :goto_1
    :try_start_0
    iget-object p1, v0, Le/a/k/a/k/f;->a:Le/m/a/c/c0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {v1, v3}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v1, v3}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method

.method public release()Lq3/a/p1;
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/k/a/k/f;->d:Ls1/w/f;

    new-instance v3, Le/a/k/a/k/f$c;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Le/a/k/a/k/f$c;-><init>(Le/a/k/a/k/f;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method
