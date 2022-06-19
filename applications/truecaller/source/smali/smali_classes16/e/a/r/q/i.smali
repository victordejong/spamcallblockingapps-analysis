.class public final Le/a/r/q/i;
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
    c = "com.truecaller.wizard.analytics.WizardTrackerImpl$enqueue$1"
    f = "WizardTracker.kt"
    l = {
        0x9c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/r/q/j;


# direct methods
.method public constructor <init>(Le/a/r/q/j;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/q/i;->f:Le/a/r/q/j;

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

    new-instance p1, Le/a/r/q/i;

    iget-object v0, p0, Le/a/r/q/i;->f:Le/a/r/q/j;

    invoke-direct {p1, v0, p2}, Le/a/r/q/i;-><init>(Le/a/r/q/j;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/q/i;

    iget-object v0, p0, Le/a/r/q/i;->f:Le/a/r/q/j;

    invoke-direct {p1, v0, p2}, Le/a/r/q/i;-><init>(Le/a/r/q/j;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r/q/i;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/r/q/i;->e:I

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

    .line 4
    :cond_2
    :goto_0
    iget-object v1, p1, Le/a/r/q/i;->f:Le/a/r/q/j;

    .line 5
    iget-object v1, v1, Le/a/r/q/j;->a:Ljava/util/Queue;

    .line 6
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 7
    iget-object v1, p1, Le/a/r/q/i;->f:Le/a/r/q/j;

    .line 8
    iget-object v1, v1, Le/a/r/q/j;->m:Ls1/w/f;

    .line 9
    new-instance v3, Le/a/r/q/i$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Le/a/r/q/i$a;-><init>(Ls1/w/d;)V

    iput v2, p1, Le/a/r/q/i;->e:I

    invoke-static {v1, v3, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    .line 10
    :cond_3
    :goto_1
    iget-object v1, p1, Le/a/r/q/i;->f:Le/a/r/q/j;

    .line 11
    iget-object v1, v1, Le/a/r/q/j;->a:Ljava/util/Queue;

    .line 12
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v3, p1, Le/a/r/q/i;->f:Le/a/r/q/j;

    .line 13
    invoke-virtual {v3, v1}, Le/a/r/q/j;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
