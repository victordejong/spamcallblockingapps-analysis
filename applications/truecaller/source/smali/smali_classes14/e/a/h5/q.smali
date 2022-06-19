.class public final Le/a/h5/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h5/m;


# instance fields
.field public a:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lq3/a/b3/c;

.field public final c:Ls1/w/f;

.field public final d:Landroid/content/Context;

.field public final e:Le/a/p5/g;


# direct methods
.method public constructor <init>(Ls1/w/f;Landroid/content/Context;Le/a/p5/g;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h5/q;->c:Ls1/w/f;

    iput-object p2, p0, Le/a/h5/q;->d:Landroid/content/Context;

    iput-object p3, p0, Le/a/h5/q;->e:Le/a/p5/g;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object p1

    iput-object p1, p0, Le/a/h5/q;->b:Lq3/a/b3/c;

    return-void
.end method


# virtual methods
.method public a(Ls1/z/b/l;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/h5/q$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/h5/q$e;-><init>(Le/a/h5/q;Ls1/w/d;)V

    .line 2
    sget-object v2, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v3, p0, Le/a/h5/q;->c:Ls1/w/f;

    new-instance v5, Le/a/h5/r;

    invoke-direct {v5, p1, v0, v1}, Le/a/h5/r;-><init>(Ls1/z/b/l;Ls1/z/b/l;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public b(Ls1/z/b/l;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/h5/q$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/h5/q$b;-><init>(Le/a/h5/q;Ls1/w/d;)V

    .line 2
    sget-object v2, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v3, p0, Le/a/h5/q;->c:Ls1/w/f;

    new-instance v5, Le/a/h5/r;

    invoke-direct {v5, p1, v0, v1}, Le/a/h5/r;-><init>(Ls1/z/b/l;Ls1/z/b/l;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    sget-object v0, Le/a/h5/q$d;->b:Le/a/h5/q$d;

    invoke-virtual {p0, v0}, Le/a/h5/q;->a(Ls1/z/b/l;)V

    return-void
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/h5/q$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/h5/q$c;-><init>(Le/a/h5/q;Ls1/w/d;)V

    invoke-virtual {p0, v0, p1}, Le/a/h5/q;->h(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .locals 1

    .line 1
    sget-object v0, Le/a/h5/q$a;->b:Le/a/h5/q$a;

    invoke-virtual {p0, v0}, Le/a/h5/q;->b(Ls1/z/b/l;)V

    return-void
.end method

.method public f(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h5/q;->a:Ls1/z/b/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Le/a/h5/q;->a:Ls1/z/b/l;

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public g(Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/h5/q$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/h5/q$f;-><init>(Le/a/h5/q;Ls1/w/d;)V

    invoke-virtual {p0, v0, p1}, Le/a/h5/q;->h(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/h5/q$g;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/h5/q$g;

    iget v1, v0, Le/a/h5/q$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/h5/q$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/h5/q$g;

    invoke-direct {v0, p0, p2}, Le/a/h5/q$g;-><init>(Le/a/h5/q;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/h5/q$g;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/h5/q$g;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/h5/q$g;->g:Ljava/lang/Object;

    check-cast p1, Le/a/h5/q;

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto/16 :goto_5

    :catch_0
    move-exception p2

    goto :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/h5/q$g;->h:Ljava/lang/Object;

    check-cast p1, Ls1/z/b/l;

    iget-object v2, v0, Le/a/h5/q$g;->g:Ljava/lang/Object;

    check-cast v2, Le/a/h5/q;

    :try_start_1
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    iget-object p2, p0, Le/a/h5/q;->b:Lq3/a/b3/c;

    invoke-interface {p2}, Lq3/a/b3/c;->a()Z

    .line 5
    iget-object p2, p0, Le/a/h5/q;->b:Lq3/a/b3/c;

    iput-object p0, v0, Le/a/h5/q$g;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/h5/q$g;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/h5/q$g;->e:I

    invoke-static {p2, v5, v0, v4, v5}, Ls1/a/a/a/v0/f/d;->z2(Lq3/a/b3/c;Ljava/lang/Object;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 6
    :goto_1
    :try_start_3
    iput-object v2, v0, Le/a/h5/q$g;->g:Ljava/lang/Object;

    iput-object v5, v0, Le/a/h5/q$g;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/h5/q$g;->e:I

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object p1, v2

    :goto_2
    :try_start_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 7
    iput-object v5, p1, Le/a/h5/q;->a:Ls1/z/b/l;

    .line 8
    iget-object v0, p1, Le/a/h5/q;->b:Lq3/a/b3/c;

    invoke-interface {v0}, Lq3/a/b3/c;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p1, Le/a/h5/q;->b:Lq3/a/b3/c;

    invoke-static {p1, v5, v4, v5}, Ls1/a/a/a/v0/f/d;->U3(Lq3/a/b3/c;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 9
    :cond_6
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :goto_3
    move-object p2, p1

    move-object p1, v2

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object v2, p0

    goto :goto_6

    :catch_2
    move-exception p1

    move-object p2, p1

    move-object p1, p0

    .line 10
    :goto_4
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    move-object v2, p1

    move-object p1, p2

    .line 11
    :goto_6
    iput-object v5, v2, Le/a/h5/q;->a:Ls1/z/b/l;

    .line 12
    iget-object p2, v2, Le/a/h5/q;->b:Lq3/a/b3/c;

    invoke-interface {p2}, Lq3/a/b3/c;->a()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, v2, Le/a/h5/q;->b:Lq3/a/b3/c;

    invoke-static {p2, v5, v4, v5}, Ls1/a/a/a/v0/f/d;->U3(Lq3/a/b3/c;Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_7
    throw p1
.end method

.method public final i(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lq3/a/o;

    invoke-static {p1}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 2
    invoke-virtual {v0}, Lq3/a/o;->z()V

    .line 3
    iget-object v1, p0, Le/a/h5/q;->e:Le/a/p5/g;

    .line 4
    invoke-interface {v1}, Le/a/p5/g;->s()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    invoke-virtual {v0, v1}, Lq3/a/o;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Le/a/h5/q;->e:Le/a/p5/g;

    .line 8
    invoke-interface {v1}, Le/a/p5/g;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v0, v1}, Lq3/a/o;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance v1, Le/a/h5/q$h;

    invoke-direct {v1, v0}, Le/a/h5/q$h;-><init>(Lq3/a/n;)V

    .line 12
    iput-object v1, p0, Le/a/h5/q;->a:Ls1/z/b/l;

    .line 13
    iget-object v1, p0, Le/a/h5/q;->d:Landroid/content/Context;

    const-string v2, "context"

    .line 14
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {v1}, Lcom/truecaller/tcpermissions/RoleRequesterActivity;->pa(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 16
    :goto_0
    invoke-virtual {v0}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v0

    .line 17
    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne v0, v1, :cond_2

    const-string v1, "frame"

    .line 18
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public final j(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v1, Lq3/a/o;

    invoke-static {p1}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 2
    invoke-virtual {v1}, Lq3/a/o;->z()V

    .line 3
    iget-object v2, p0, Le/a/h5/q;->e:Le/a/p5/g;

    .line 4
    invoke-interface {v2}, Le/a/p5/g;->t()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lq3/a/o;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Le/a/h5/q;->e:Le/a/p5/g;

    .line 6
    invoke-interface {v2}, Le/a/p5/g;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Lq3/a/o;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Le/a/h5/q$i;

    invoke-direct {v0, v1}, Le/a/h5/q$i;-><init>(Lq3/a/n;)V

    .line 8
    iput-object v0, p0, Le/a/h5/q;->a:Ls1/z/b/l;

    .line 9
    iget-object v0, p0, Le/a/h5/q;->d:Landroid/content/Context;

    const-string v2, "context"

    .line 10
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {v0}, Lcom/truecaller/tcpermissions/RoleRequesterActivity;->qa(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 12
    :goto_0
    invoke-virtual {v1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v0

    .line 13
    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne v0, v1, :cond_2

    const-string v1, "frame"

    .line 14
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method
