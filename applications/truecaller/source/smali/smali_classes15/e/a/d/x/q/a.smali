.class public final Le/a/d/x/q/a;
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
    c = "com.truecaller.voip.manager.rtc.AgoraRtcManager$addPeer$1"
    f = "RtcManager.kt"
    l = {
        0x1c7
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/d/x/q/d;

.field public final synthetic i:I


# direct methods
.method public constructor <init>(Le/a/d/x/q/d;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/x/q/a;->h:Le/a/d/x/q/d;

    iput p2, p0, Le/a/d/x/q/a;->i:I

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

    new-instance p1, Le/a/d/x/q/a;

    iget-object v0, p0, Le/a/d/x/q/a;->h:Le/a/d/x/q/d;

    iget v1, p0, Le/a/d/x/q/a;->i:I

    invoke-direct {p1, v0, v1, p2}, Le/a/d/x/q/a;-><init>(Le/a/d/x/q/d;ILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/x/q/a;

    iget-object v0, p0, Le/a/d/x/q/a;->h:Le/a/d/x/q/d;

    iget v1, p0, Le/a/d/x/q/a;->i:I

    invoke-direct {p1, v0, v1, p2}, Le/a/d/x/q/a;-><init>(Le/a/d/x/q/d;ILs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/x/q/a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/x/q/a;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Le/a/d/x/q/a;->f:Ljava/lang/Object;

    check-cast v0, Lq3/a/b3/c;

    iget-object v1, p0, Le/a/d/x/q/a;->e:Ljava/lang/Object;

    check-cast v1, Le/a/d/c0/r;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

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
    iget-object p1, p0, Le/a/d/x/q/a;->h:Le/a/d/x/q/d;

    .line 5
    iget-object v1, p1, Le/a/d/x/q/d;->c:Le/a/d/c0/r;

    .line 6
    iget-object p1, v1, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 7
    iput-object v1, p0, Le/a/d/x/q/a;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/d/x/q/a;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/d/x/q/a;->g:I

    invoke-interface {p1, v2, p0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    move-result-object p1

    .line 9
    iget-object v1, p0, Le/a/d/x/q/a;->h:Le/a/d/x/q/d;

    invoke-virtual {v1}, Le/a/d/x/q/d;->h()Ljava/util/Set;

    move-result-object v1

    iget v3, p0, Le/a/d/x/q/a;->i:I

    .line 10
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 11
    invoke-static {v1, v4}, Ls1/u/i;->r0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 12
    new-instance v3, Le/a/d/x/q/i$b;

    invoke-direct {v3, v1}, Le/a/d/x/q/i$b;-><init>(Ljava/util/Set;)V

    invoke-interface {p1, v3}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V

    .line 13
    sget-object p1, Ls1/s;->a:Ls1/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-interface {v0, v2}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0, v2}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method
