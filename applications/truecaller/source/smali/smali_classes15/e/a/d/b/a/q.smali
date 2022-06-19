.class public final Le/a/d/b/a/q;
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
    c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter$waitPeerToBeOnlineJob$1"
    f = "LegacyVoipServicePresenter.kt"
    l = {
        0x3cc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Le/a/d/b/a/b;


# direct methods
.method public constructor <init>(Le/a/d/b/a/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/a/q;->i:Le/a/d/b/a/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/d/b/a/q;

    iget-object v0, p0, Le/a/d/b/a/q;->i:Le/a/d/b/a/b;

    invoke-direct {p1, v0, p2}, Le/a/d/b/a/q;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/b/a/q;

    iget-object v0, p0, Le/a/d/b/a/q;->i:Le/a/d/b/a/b;

    invoke-direct {p1, v0, p2}, Le/a/d/b/a/q;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/b/a/q;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/b/a/q;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Le/a/d/b/a/q;->g:Ljava/lang/Object;

    check-cast v2, Lq3/a/w2/l;

    iget-object v5, p0, Le/a/d/b/a/q;->f:Ljava/lang/Object;

    check-cast v5, Lq3/a/w2/z;

    iget-object v6, p0, Le/a/d/b/a/q;->e:Ljava/lang/Object;

    check-cast v6, Le/a/d/b/a/q;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v7, v6

    move-object v6, v5

    move-object v5, v2

    move-object v2, v1

    move-object v1, p0

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/b/a/q;->i:Le/a/d/b/a/b;

    .line 5
    iget-object p1, p1, Le/a/d/b/a/b;->v:Le/a/d/x/r/o;

    .line 6
    invoke-interface {p1}, Le/a/d/x/r/o;->e()Lq3/a/w2/h;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lq3/a/w2/h;->p2()Lq3/a/w2/z;

    move-result-object v5

    .line 8
    :try_start_1
    invoke-interface {v5}, Lq3/a/w2/z;->iterator()Lq3/a/w2/l;

    move-result-object p1

    move-object v6, p0

    move-object v2, p1

    move-object p1, v6

    :goto_0
    iput-object v6, p1, Le/a/d/b/a/q;->e:Ljava/lang/Object;

    iput-object v5, p1, Le/a/d/b/a/q;->f:Ljava/lang/Object;

    iput-object v2, p1, Le/a/d/b/a/q;->g:Ljava/lang/Object;

    iput v4, p1, Le/a/d/b/a/q;->h:I

    invoke-interface {v2, v6}, Lq3/a/w2/l;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v7, v1, :cond_2

    return-object v1

    :cond_2
    move-object v9, v1

    move-object v1, p1

    move-object p1, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v2

    move-object v2, v9

    :goto_1
    :try_start_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v5}, Lq3/a/w2/l;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/voip/manager/rtm/RtmMsg;

    .line 9
    invoke-virtual {p1}, Lcom/truecaller/voip/manager/rtm/RtmMsg;->getSenderId()Ljava/lang/String;

    move-result-object p1

    iget-object v8, v1, Le/a/d/b/a/q;->i:Le/a/d/b/a/b;

    invoke-static {v8}, Le/a/d/b/a/b;->Jj(Le/a/d/b/a/b;)Lcom/truecaller/voip/VoipUser;

    move-result-object v8

    .line 10
    iget-object v8, v8, Lcom/truecaller/voip/VoipUser;->a:Ljava/lang/String;

    .line 11
    invoke-static {p1, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    xor-int/2addr p1, v4

    if-eqz p1, :cond_3

    move-object p1, v1

    move-object v1, v2

    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {v6, v3, v4, v3}, Ls1/a/a/a/v0/f/d;->U(Lq3/a/w2/z;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-object v0

    :cond_4
    invoke-static {v6, v3, v4, v3}, Ls1/a/a/a/v0/f/d;->U(Lq3/a/w2/z;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception p1

    move-object v5, v6

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_2
    invoke-static {v5, v3, v4, v3}, Ls1/a/a/a/v0/f/d;->U(Lq3/a/w2/z;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    throw p1
.end method
