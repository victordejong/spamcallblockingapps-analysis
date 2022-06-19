.class public final Le/a/q2/w0/c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.analytics.call.CallAnalyticsImpl$listenAndLogCalls$1"
    f = "CallAnalytics.kt"
    l = {
        0x109,
        0xd8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Le/a/q2/w0/b;

.field public final synthetic k:Lq3/a/w2/z;


# direct methods
.method public constructor <init>(Le/a/q2/w0/b;Lq3/a/w2/z;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/q2/w0/c;->j:Le/a/q2/w0/b;

    iput-object p2, p0, Le/a/q2/w0/c;->k:Lq3/a/w2/z;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/q2/w0/c;

    iget-object v0, p0, Le/a/q2/w0/c;->j:Le/a/q2/w0/b;

    iget-object v1, p0, Le/a/q2/w0/c;->k:Lq3/a/w2/z;

    invoke-direct {p1, v0, v1, p2}, Le/a/q2/w0/c;-><init>(Le/a/q2/w0/b;Lq3/a/w2/z;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/q2/w0/c;

    iget-object v0, p0, Le/a/q2/w0/c;->j:Le/a/q2/w0/b;

    iget-object v1, p0, Le/a/q2/w0/c;->k:Lq3/a/w2/z;

    invoke-direct {p1, v0, v1, p2}, Le/a/q2/w0/c;-><init>(Le/a/q2/w0/b;Lq3/a/w2/z;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/q2/w0/c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/q2/w0/c;->i:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Le/a/q2/w0/c;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v5, p0, Le/a/q2/w0/c;->g:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, p0, Le/a/q2/w0/c;->f:Ljava/lang/Object;

    check-cast v6, Lq3/a/w2/l;

    iget-object v7, p0, Le/a/q2/w0/c;->e:Ljava/lang/Object;

    check-cast v7, Lq3/a/w2/z;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v6

    move-object v6, v5

    move-object v5, p0

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/q2/w0/c;->f:Ljava/lang/Object;

    check-cast v1, Lq3/a/w2/l;

    iget-object v5, p0, Le/a/q2/w0/c;->e:Ljava/lang/Object;

    move-object v7, v5

    check-cast v7, Lq3/a/w2/z;

    :try_start_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v1

    move-object v1, p0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v7, p0, Le/a/q2/w0/c;->k:Lq3/a/w2/z;

    .line 5
    :try_start_2
    invoke-interface {v7}, Lq3/a/w2/z;->iterator()Lq3/a/w2/l;

    move-result-object p1

    move-object v1, p0

    :goto_0
    iput-object v7, v1, Le/a/q2/w0/c;->e:Ljava/lang/Object;

    iput-object p1, v1, Le/a/q2/w0/c;->f:Ljava/lang/Object;

    iput-object v4, v1, Le/a/q2/w0/c;->g:Ljava/lang/Object;

    iput-object v4, v1, Le/a/q2/w0/c;->h:Ljava/lang/Object;

    iput v3, v1, Le/a/q2/w0/c;->i:I

    invoke-interface {p1, v1}, Lq3/a/w2/l;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_3

    return-object v0

    :cond_3
    move-object v6, p1

    move-object p1, v5

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v6}, Lq3/a/w2/l;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/util/List;

    .line 6
    invoke-static {v5}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v13, v1

    move-object v1, p1

    move-object p1, v6

    move-object v6, v5

    move-object v5, v13

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/f/y/x;

    .line 7
    invoke-static {v8}, Le/a/m0/a1$k;->v0(Le/a/f/y/x;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping conference call: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    .line 9
    :cond_5
    new-instance v9, Ls1/z/c/c0;

    invoke-direct {v9}, Ls1/z/c/c0;-><init>()V

    iget-object v10, v5, Le/a/q2/w0/c;->j:Le/a/q2/w0/b;

    .line 10
    iget-object v10, v10, Le/a/q2/w0/b;->h:Lo3/a;

    .line 11
    invoke-interface {v10}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/q2/w0/h/k;

    invoke-interface {v10, v8}, Le/a/q2/w0/h/k;->a(Le/a/f/y/x;)Le/a/q2/w0/h/j;

    move-result-object v10

    iput-object v10, v9, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 12
    iget-object v10, v5, Le/a/q2/w0/c;->j:Le/a/q2/w0/b;

    invoke-static {v10}, Le/a/q2/w0/b;->d(Le/a/q2/w0/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v10

    iget-object v11, v9, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v11, Le/a/q2/w0/h/j;

    invoke-virtual {v10, v8, v11}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 13
    invoke-static {v8}, Le/a/m0/a1$k;->c0(Le/a/f/y/x;)Ljava/lang/String;

    goto :goto_2

    .line 14
    :cond_6
    iget-object v10, v5, Le/a/q2/w0/c;->j:Le/a/q2/w0/b;

    iget-object v11, v9, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v11, Le/a/q2/w0/h/j;

    .line 15
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v12, Le/a/q2/w0/e;

    invoke-direct {v12, v10, v11}, Le/a/q2/w0/e;-><init>(Le/a/q2/w0/b;Le/a/q2/w0/h/j;)V

    invoke-interface {v11, v12}, Le/a/q2/w0/h/j;->g(Ls1/z/b/a;)V

    .line 17
    new-instance v12, Le/a/q2/w0/g;

    invoke-direct {v12, v10, v11}, Le/a/q2/w0/g;-><init>(Le/a/q2/w0/b;Le/a/q2/w0/h/j;)V

    invoke-interface {v11, v12}, Le/a/q2/w0/h/j;->c(Ls1/z/b/a;)V

    .line 18
    iget-object v10, v5, Le/a/q2/w0/c;->j:Le/a/q2/w0/b;

    .line 19
    iget-object v10, v10, Le/a/q2/w0/b;->d:Ls1/w/f;

    .line 20
    new-instance v11, Le/a/q2/w0/c$a;

    invoke-direct {v11, v8, v9, v4}, Le/a/q2/w0/c$a;-><init>(Le/a/f/y/x;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object v7, v5, Le/a/q2/w0/c;->e:Ljava/lang/Object;

    iput-object p1, v5, Le/a/q2/w0/c;->f:Ljava/lang/Object;

    iput-object v6, v5, Le/a/q2/w0/c;->g:Ljava/lang/Object;

    iput-object v1, v5, Le/a/q2/w0/c;->h:Ljava/lang/Object;

    iput v2, v5, Le/a/q2/w0/c;->i:I

    invoke-static {v10, v11, v5}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_4

    return-object v0

    .line 21
    :cond_7
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 22
    iget-object v1, v5, Le/a/q2/w0/c;->j:Le/a/q2/w0/b;

    invoke-static {v1}, Le/a/q2/w0/b;->d(Le/a/q2/w0/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 23
    iget-object v1, v5, Le/a/q2/w0/c;->j:Le/a/q2/w0/b;

    .line 24
    iget-object v1, v1, Le/a/q2/w0/b;->i:Le/a/q2/w0/h/h;

    .line 25
    invoke-interface {v1}, Le/a/q2/w0/h/h;->clear()V

    :cond_8
    move-object v1, v5

    goto/16 :goto_0

    .line 26
    :cond_9
    sget-object p1, Ls1/s;->a:Ls1/s;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    invoke-static {v7, v4}, Ls1/a/a/a/v0/f/d;->Z(Lq3/a/w2/z;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 28
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 29
    invoke-static {v7, p1}, Ls1/a/a/a/v0/f/d;->Z(Lq3/a/w2/z;Ljava/lang/Throwable;)V

    throw v0
.end method
