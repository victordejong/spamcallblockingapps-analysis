.class public final Le/a/d/v/l/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/v/l/e/d;


# instance fields
.field public final a:Lq3/a/i0;

.field public final b:I

.field public final c:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/d/c0/z1/i;

.field public final e:Le/a/d/v/l/d;

.field public final f:Le/a/d/x/q/h;

.field public final g:Le/a/d/v/l/e/k;

.field public final h:Le/a/d/v/l/e/i;

.field public final i:Le/a/d/v/l/e/g;


# direct methods
.method public constructor <init>(Lq3/a/i0;ILq3/a/x2/a1;Le/a/d/c0/z1/i;Le/a/d/v/l/d;Le/a/d/x/q/h;Le/a/d/v/l/e/k;Le/a/d/v/l/e/i;Le/a/d/v/l/e/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "I",
            "Lq3/a/x2/a1<",
            "Ljava/lang/Boolean;",
            ">;",
            "Le/a/d/c0/z1/i;",
            "Le/a/d/v/l/d;",
            "Le/a/d/x/q/h;",
            "Le/a/d/v/l/e/k;",
            "Le/a/d/v/l/e/i;",
            "Le/a/d/v/l/e/g;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reachedOngoing"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callInfoRepository"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateMachine"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtcManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleInvite"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleCallSetting"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endCall"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/v/l/e/e;->a:Lq3/a/i0;

    iput p2, p0, Le/a/d/v/l/e/e;->b:I

    iput-object p3, p0, Le/a/d/v/l/e/e;->c:Lq3/a/x2/a1;

    iput-object p4, p0, Le/a/d/v/l/e/e;->d:Le/a/d/c0/z1/i;

    iput-object p5, p0, Le/a/d/v/l/e/e;->e:Le/a/d/v/l/d;

    iput-object p6, p0, Le/a/d/v/l/e/e;->f:Le/a/d/x/q/h;

    iput-object p7, p0, Le/a/d/v/l/e/e;->g:Le/a/d/v/l/e/k;

    iput-object p8, p0, Le/a/d/v/l/e/e;->h:Le/a/d/v/l/e/i;

    iput-object p9, p0, Le/a/d/v/l/e/e;->i:Le/a/d/v/l/e/g;

    return-void
.end method


# virtual methods
.method public c()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/v/l/e/e$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/v/l/e/e$a;-><init>(Le/a/d/v/l/e/e;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e(Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p1, Le/a/d/v/l/e/e$c;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/d/v/l/e/e$c;

    iget v2, v1, Le/a/d/v/l/e/e$c;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/d/v/l/e/e$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/d/v/l/e/e$c;

    invoke-direct {v1, p0, p1}, Le/a/d/v/l/e/e$c;-><init>(Le/a/d/v/l/e/e;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/d/v/l/e/e$c;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/d/v/l/e/e$c;->e:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v1, v1, Le/a/d/v/l/e/e$c;->g:Ljava/lang/Object;

    check-cast v1, Lq3/a/b3/c;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v3, v1, Le/a/d/v/l/e/e$c;->i:Ljava/lang/Object;

    check-cast v3, Le/a/d/c0/d0;

    iget-object v5, v1, Le/a/d/v/l/e/e$c;->h:Ljava/lang/Object;

    check-cast v5, Lq3/a/b3/c;

    iget-object v6, v1, Le/a/d/v/l/e/e$c;->g:Ljava/lang/Object;

    check-cast v6, Le/a/d/v/l/e/e;

    :try_start_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v5

    move-object v5, v3

    move-object v3, v10

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v1, v5

    goto/16 :goto_4

    :cond_3
    iget-object v3, v1, Le/a/d/v/l/e/e$c;->i:Ljava/lang/Object;

    check-cast v3, Lq3/a/b3/c;

    iget-object v6, v1, Le/a/d/v/l/e/e$c;->h:Ljava/lang/Object;

    check-cast v6, Le/a/d/c0/r;

    iget-object v8, v1, Le/a/d/v/l/e/e$c;->g:Ljava/lang/Object;

    check-cast v8, Le/a/d/v/l/e/e;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/v/l/e/e;->e:Le/a/d/v/l/d;

    .line 4
    iget-object v3, p1, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 5
    iput-object p0, v1, Le/a/d/v/l/e/e$c;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/d/v/l/e/e$c;->h:Ljava/lang/Object;

    iput-object v3, v1, Le/a/d/v/l/e/e$c;->i:Ljava/lang/Object;

    iput v6, v1, Le/a/d/v/l/e/e$c;->e:I

    invoke-interface {v3, v7, v1}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_5

    return-object v2

    :cond_5
    move-object v8, p0

    move-object v6, p1

    .line 6
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    move-result-object p1

    .line 7
    iget-object v6, v8, Le/a/d/v/l/e/e;->e:Le/a/d/v/l/d;

    invoke-virtual {v6}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/d/v/l/c;

    sget-object v9, Le/a/d/v/l/c$c;->b:Le/a/d/v/l/c$c;

    invoke-virtual {v6, v9}, Le/a/d/a0/a;->a(Le/a/d/a0/a;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v6, :cond_6

    .line 8
    invoke-interface {v3, v7}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    .line 9
    :cond_6
    :try_start_3
    iget-object v6, v8, Le/a/d/v/l/e/e;->g:Le/a/d/v/l/e/k;

    iput-object v8, v1, Le/a/d/v/l/e/e$c;->g:Ljava/lang/Object;

    iput-object v3, v1, Le/a/d/v/l/e/e$c;->h:Ljava/lang/Object;

    iput-object p1, v1, Le/a/d/v/l/e/e$c;->i:Ljava/lang/Object;

    iput v5, v1, Le/a/d/v/l/e/e$c;->e:I

    invoke-interface {v6, v1}, Le/a/d/v/l/e/k;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_7

    return-object v2

    :cond_7
    move-object v6, v8

    move-object v10, v5

    move-object v5, p1

    move-object p1, v10

    .line 10
    :goto_2
    check-cast p1, Lq3/a/x2/f;

    .line 11
    new-instance v8, Le/a/d/v/l/e/e$b;

    invoke-direct {v8, v5, v6, v1}, Le/a/d/v/l/e/e$b;-><init>(Le/a/d/c0/d0;Le/a/d/v/l/e/e;Ls1/w/d;)V

    iput-object v3, v1, Le/a/d/v/l/e/e$c;->g:Ljava/lang/Object;

    iput-object v7, v1, Le/a/d/v/l/e/e$c;->h:Ljava/lang/Object;

    iput-object v7, v1, Le/a/d/v/l/e/e$c;->i:Ljava/lang/Object;

    iput v4, v1, Le/a/d/v/l/e/e$c;->e:I

    invoke-interface {p1, v8, v1}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p1, v2, :cond_8

    return-object v2

    :cond_8
    move-object v1, v3

    .line 12
    :goto_3
    invoke-interface {v1, v7}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    :catchall_2
    move-exception p1

    move-object v1, v3

    :goto_4
    invoke-interface {v1, v7}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/v/l/e/e;->a:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method
