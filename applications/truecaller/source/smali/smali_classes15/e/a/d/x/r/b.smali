.class public final Le/a/d/x/r/b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/lang/Integer;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.manager.rtm.AgoraRtmLoginManager$listenConnectionStates$1"
    f = "RtmLoginManager.kt"
    l = {
        0x97
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:I

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Le/a/d/x/r/c;


# direct methods
.method public constructor <init>(Le/a/d/x/r/c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/x/r/b;->i:Le/a/d/x/r/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/x/r/b;

    iget-object v1, p0, Le/a/d/x/r/b;->i:Le/a/d/x/r/c;

    invoke-direct {v0, v1, p2}, Le/a/d/x/r/b;-><init>(Le/a/d/x/r/c;Ls1/w/d;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v0, Le/a/d/x/r/b;->e:I

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/d/x/r/b;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/d/x/r/b;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/x/r/b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/x/r/b;->h:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget v0, p0, Le/a/d/x/r/b;->e:I

    iget-object v1, p0, Le/a/d/x/r/b;->g:Ljava/lang/Object;

    check-cast v1, Le/a/d/x/r/c;

    iget-object v4, p0, Le/a/d/x/r/b;->f:Ljava/lang/Object;

    check-cast v4, Le/a/d/x/r/c;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget p1, p0, Le/a/d/x/r/b;->e:I

    .line 4
    iget-object v1, p0, Le/a/d/x/r/b;->i:Le/a/d/x/r/c;

    .line 5
    :try_start_1
    iget-object v4, v1, Le/a/d/x/r/c;->b:Lq3/a/b3/c;

    .line 6
    iput-object v1, p0, Le/a/d/x/r/b;->f:Ljava/lang/Object;

    iput-object v1, p0, Le/a/d/x/r/b;->g:Ljava/lang/Object;

    iput p1, p0, Le/a/d/x/r/b;->e:I

    iput v3, p0, Le/a/d/x/r/b;->h:I

    invoke-static {v4, v2, p0, v3, v2}, Ls1/a/a/a/v0/f/d;->z2(Lq3/a/b3/c;Ljava/lang/Object;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_2

    return-object v0

    :cond_2
    move v0, p1

    .line 7
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v0, v3

    .line 8
    :goto_1
    iget-object v4, p0, Le/a/d/x/r/b;->i:Le/a/d/x/r/c;

    .line 9
    iget-object v4, v4, Le/a/d/x/r/c;->b:Lq3/a/b3/c;

    .line 10
    invoke-interface {v4}, Lq3/a/b3/c;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 11
    iget-object v4, p0, Le/a/d/x/r/b;->i:Le/a/d/x/r/c;

    .line 12
    iget-object v4, v4, Le/a/d/x/r/c;->b:Lq3/a/b3/c;

    .line 13
    invoke-static {v4, v2, v3, v2}, Ls1/a/a/a/v0/f/d;->U3(Lq3/a/b3/c;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 14
    :cond_4
    iput-boolean v0, v1, Le/a/d/x/r/c;->a:Z

    return-object p1

    .line 15
    :goto_2
    iget-object v0, p0, Le/a/d/x/r/b;->i:Le/a/d/x/r/c;

    .line 16
    iget-object v0, v0, Le/a/d/x/r/c;->b:Lq3/a/b3/c;

    .line 17
    invoke-interface {v0}, Lq3/a/b3/c;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    iget-object v0, p0, Le/a/d/x/r/b;->i:Le/a/d/x/r/c;

    .line 19
    iget-object v0, v0, Le/a/d/x/r/c;->b:Lq3/a/b3/c;

    .line 20
    invoke-static {v0, v2, v3, v2}, Ls1/a/a/a/v0/f/d;->U3(Lq3/a/b3/c;Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_5
    throw p1
.end method
