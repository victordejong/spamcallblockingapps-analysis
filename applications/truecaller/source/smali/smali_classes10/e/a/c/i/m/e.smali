.class public final Le/a/c/i/m/e;
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
    c = "com.truecaller.insights.core.sync.InsightsSyncManagerImpl$setLastSyncedMessageId$1"
    f = "InsightsSyncManager.kt"
    l = {
        0xc5,
        0xc7
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/i/m/d;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/c/i/m/d;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/i/m/e;->f:Le/a/c/i/m/d;

    iput-object p2, p0, Le/a/c/i/m/e;->g:Ljava/lang/String;

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

    new-instance p1, Le/a/c/i/m/e;

    iget-object v0, p0, Le/a/c/i/m/e;->f:Le/a/c/i/m/d;

    iget-object v1, p0, Le/a/c/i/m/e;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/i/m/e;-><init>(Le/a/c/i/m/d;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/i/m/e;

    iget-object v0, p0, Le/a/c/i/m/e;->f:Le/a/c/i/m/d;

    iget-object v1, p0, Le/a/c/i/m/e;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/i/m/e;-><init>(Le/a/c/i/m/d;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/i/m/e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/i/m/e;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

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

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/i/m/e;->f:Le/a/c/i/m/d;

    .line 5
    iget-object p1, p1, Le/a/c/i/m/d;->f:Le/a/c/c/f/n;

    .line 6
    iput v3, p0, Le/a/c/i/m/e;->e:I

    invoke-interface {p1, p0}, Le/a/c/c/f/n;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 7
    :cond_3
    :goto_0
    check-cast p1, Lcom/truecaller/insights/models/states/InsightState;

    .line 8
    iget-object v1, p0, Le/a/c/i/m/e;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/truecaller/insights/models/states/InsightState;->setLastUpdatedData(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Le/a/c/i/m/e;->f:Le/a/c/i/m/d;

    .line 10
    iget-object v1, v1, Le/a/c/i/m/d;->f:Le/a/c/c/f/n;

    .line 11
    iput v2, p0, Le/a/c/i/m/e;->e:I

    invoke-interface {v1, p1, p0}, Le/a/c/c/f/n;->r(Lcom/truecaller/insights/models/states/InsightState;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 12
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
