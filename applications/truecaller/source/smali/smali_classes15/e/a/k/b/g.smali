.class public final Le/a/k/b/g;
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
    c = "com.truecaller.videocallerid.debug.ExoplayerDebuggingUtil$simulatePlayingEventsWithDebug$1"
    f = "ExoplayerDebuggingUtil.kt"
    l = {
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/m/a/c/c0;

.field public final synthetic g:I

.field public final synthetic h:Lq3/a/w2/d0;


# direct methods
.method public constructor <init>(Le/m/a/c/c0;ILq3/a/w2/d0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/b/g;->f:Le/m/a/c/c0;

    iput p2, p0, Le/a/k/b/g;->g:I

    iput-object p3, p0, Le/a/k/b/g;->h:Lq3/a/w2/d0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/k/b/g;

    iget-object v0, p0, Le/a/k/b/g;->f:Le/m/a/c/c0;

    iget v1, p0, Le/a/k/b/g;->g:I

    iget-object v2, p0, Le/a/k/b/g;->h:Lq3/a/w2/d0;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/k/b/g;-><init>(Le/m/a/c/c0;ILq3/a/w2/d0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/b/g;

    iget-object v0, p0, Le/a/k/b/g;->f:Le/m/a/c/c0;

    iget v1, p0, Le/a/k/b/g;->g:I

    iget-object v2, p0, Le/a/k/b/g;->h:Lq3/a/w2/d0;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/k/b/g;-><init>(Le/m/a/c/c0;ILq3/a/w2/d0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k/b/g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/b/g;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p1, p0

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

    move-object p1, p0

    :cond_2
    :goto_0
    const-wide/16 v3, 0x3e8

    .line 4
    iput v2, p1, Le/a/k/b/g;->e:I

    invoke-static {v3, v4, p1}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    .line 5
    :cond_3
    :goto_1
    iget-object v1, p1, Le/a/k/b/g;->f:Le/m/a/c/c0;

    invoke-interface {v1}, Le/m/a/c/q0;->getContentDuration()J

    move-result-wide v3

    .line 6
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v3, v4}, Ljava/lang/Long;-><init>(J)V

    .line 7
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 8
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_2

    .line 10
    iget-object v3, p1, Le/a/k/b/g;->f:Le/m/a/c/c0;

    invoke-interface {v3}, Le/m/a/c/q0;->getCurrentPosition()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-double v5, v5

    div-double/2addr v3, v5

    const/16 v1, 0x64

    int-to-double v5, v1

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Le/q/f/a/d/a;->I2(D)I

    move-result v1

    const/16 v3, 0x63

    .line 11
    iget v4, p1, Le/a/k/b/g;->g:I

    if-le v4, v1, :cond_6

    goto :goto_0

    :cond_6
    if-lt v3, v1, :cond_2

    .line 12
    iget-object v1, p1, Le/a/k/b/g;->h:Lq3/a/w2/d0;

    sget-object v3, Le/a/k/c/t$a;->a:Le/a/k/c/t$a;

    invoke-static {v1, v3}, Le/a/p5/s0/g;->l1(Lq3/a/w2/d0;Ljava/lang/Object;)V

    goto :goto_0
.end method
