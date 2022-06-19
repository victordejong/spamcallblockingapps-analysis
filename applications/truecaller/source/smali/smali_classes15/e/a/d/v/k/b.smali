.class public final Le/a/d/v/k/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/v/k/a;


# instance fields
.field public final a:Le/a/d/c0/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/d/c0/r<",
            "Le/a/d/v/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Le/a/d/x/q/h;

.field public final d:Le/a/d/x/r/h;

.field public final e:Le/a/d/c0/t;

.field public final synthetic f:Lq3/a/i0;


# direct methods
.method public constructor <init>(Lq3/a/i0;Ljava/lang/String;Le/a/d/x/q/h;Le/a/d/x/r/h;Le/a/d/c0/t;Le/a/d/c0/m1;)V
    .locals 7
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v6, "coroutineScope"

    invoke-static {p1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "ownVoipId"

    invoke-static {p2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "rtcManager"

    invoke-static {p3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "rtmChannel"

    invoke-static {p4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "nativeCallStateModel"

    invoke-static {p5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "voipTelecomUtil"

    invoke-static {p6, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/d/v/k/b;->f:Lq3/a/i0;

    iput-object p2, p0, Le/a/d/v/k/b;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/d/v/k/b;->c:Le/a/d/x/q/h;

    iput-object p4, p0, Le/a/d/v/k/b;->d:Le/a/d/x/r/h;

    iput-object p5, p0, Le/a/d/v/k/b;->e:Le/a/d/c0/t;

    .line 3
    new-instance v0, Le/a/d/c0/r;

    new-instance v1, Le/a/d/v/a;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v1, v2, v2, v2, v3}, Le/a/d/v/a;-><init>(ZZZI)V

    invoke-direct {v0, v1}, Le/a/d/c0/r;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le/a/d/v/k/b;->a:Le/a/d/c0/r;

    .line 4
    move-object v0, p6

    check-cast v0, Le/a/d/c0/n1;

    invoke-virtual {v0}, Le/a/d/c0/n1;->a()Z

    .line 5
    new-instance v0, Le/a/d/v/k/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/d/v/k/c;-><init>(Le/a/d/v/k/b;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object p1, p0

    move-object p2, v2

    move-object p3, v3

    move-object p4, v0

    move p5, v4

    move-object p6, v5

    invoke-static/range {p1 .. p6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 6
    new-instance v0, Le/a/d/v/k/d;

    invoke-direct {v0, p0, v1}, Le/a/d/v/k/d;-><init>(Le/a/d/v/k/b;Ls1/w/d;)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object p2, v1

    move-object p3, v2

    move-object p4, v0

    move p5, v3

    move-object p6, v4

    invoke-static/range {p1 .. p6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public b()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/v/k/b;->a:Le/a/d/c0/r;

    return-object v0
.end method

.method public final c(Le/a/d/c0/s;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/c0/s;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p2, Le/a/d/v/k/b$a;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/d/v/k/b$a;

    iget v2, v1, Le/a/d/v/k/b$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/d/v/k/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/d/v/k/b$a;

    invoke-direct {v1, p0, p2}, Le/a/d/v/k/b$a;-><init>(Le/a/d/v/k/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/d/v/k/b$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/d/v/k/b$a;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v6, :cond_1

    iget-object p1, v1, Le/a/d/v/k/b$a;->i:Ljava/lang/Object;

    check-cast p1, Lq3/a/b3/c;

    iget-object v2, v1, Le/a/d/v/k/b$a;->h:Ljava/lang/Object;

    check-cast v2, Le/a/d/c0/r;

    iget-object v1, v1, Le/a/d/v/k/b$a;->g:Ljava/lang/Object;

    check-cast v1, Le/a/d/v/k/b;

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
    invoke-virtual {p1}, Le/a/d/c0/s;->a()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 5
    iget-object p1, p0, Le/a/d/v/k/b;->a:Le/a/d/c0/r;

    .line 6
    iget-object p2, p1, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 7
    iput-object p0, v1, Le/a/d/v/k/b$a;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/d/v/k/b$a;->h:Ljava/lang/Object;

    iput-object p2, v1, Le/a/d/v/k/b$a;->i:Ljava/lang/Object;

    iput v6, v1, Le/a/d/v/k/b$a;->e:I

    invoke-interface {p2, v5, v1}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_3

    return-object v2

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move-object p1, p2

    .line 8
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    .line 9
    iget-object p2, v1, Le/a/d/v/k/b;->c:Le/a/d/x/q/h;

    .line 10
    iget-object v2, v1, Le/a/d/v/k/b;->a:Le/a/d/c0/r;

    .line 11
    invoke-virtual {v2}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d/v/a;

    .line 12
    iget-boolean v2, v2, Le/a/d/v/a;->b:Z

    if-nez v2, :cond_4

    move v4, v6

    .line 13
    :cond_4
    invoke-interface {p2, v4}, Le/a/d/x/q/h;->f(Z)V

    .line 14
    iget-object p2, v1, Le/a/d/v/k/b;->c:Le/a/d/x/q/h;

    .line 15
    iget-object v1, v1, Le/a/d/v/k/b;->a:Le/a/d/c0/r;

    .line 16
    invoke-virtual {v1}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/v/a;

    .line 17
    iget-boolean v1, v1, Le/a/d/v/a;->a:Z

    .line 18
    invoke-interface {p2, v1}, Le/a/d/x/q/h;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-interface {p1, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception p2

    invoke-interface {p1, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p2

    .line 20
    :cond_5
    instance-of p2, p1, Le/a/d/c0/s$c;

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    instance-of p2, p1, Le/a/d/c0/s$b;

    if-eqz p2, :cond_7

    :goto_2
    invoke-virtual {p0, v6}, Le/a/d/v/k/b;->h(Z)Lq3/a/p1;

    goto :goto_3

    .line 21
    :cond_7
    instance-of p1, p1, Le/a/d/c0/s$a;

    if-eqz p1, :cond_8

    invoke-virtual {p0, v4}, Le/a/d/v/k/b;->h(Z)Lq3/a/p1;

    :cond_8
    :goto_3
    return-object v0
.end method

.method public e(Z)Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/v/k/b$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/d/v/k/b$b;-><init>(Le/a/d/v/k/b;ZLs1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public g()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/v/k/b$d;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/v/k/b$d;-><init>(Le/a/d/v/k/b;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/v/k/b;->f:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public h(Z)Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/v/k/b$c;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/d/v/k/b$c;-><init>(Le/a/d/v/k/b;ZLs1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method
