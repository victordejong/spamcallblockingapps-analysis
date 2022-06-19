.class public final Le/a/l/j0;
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
    c = "com.truecaller.premium.PremiumBasePresenterImpl$maybeRefreshAlertForPendingState$1"
    f = "PremiumBasePresenter.kt"
    l = {
        0x141
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/l/e0;


# direct methods
.method public constructor <init>(Le/a/l/e0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/j0;->f:Le/a/l/e0;

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

    new-instance p1, Le/a/l/j0;

    iget-object v0, p0, Le/a/l/j0;->f:Le/a/l/e0;

    invoke-direct {p1, v0, p2}, Le/a/l/j0;-><init>(Le/a/l/e0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/j0;

    iget-object v0, p0, Le/a/l/j0;->f:Le/a/l/e0;

    invoke-direct {p1, v0, p2}, Le/a/l/j0;-><init>(Le/a/l/e0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/j0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/l/j0;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Le/a/l/j0;->f:Le/a/l/e0;

    .line 5
    iget-object v1, v1, Le/a/l/e0;->R:Le/a/u3/g;

    .line 6
    iget-object v3, v1, Le/a/u3/g;->L:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0x22

    aget-object v4, v4, v5

    invoke-virtual {v3, v1, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    check-cast v1, Le/a/u3/i;

    const/16 v3, 0xa

    .line 7
    invoke-interface {v1, v3}, Le/a/u3/i;->getInt(I)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iput v2, p0, Le/a/l/j0;->e:I

    invoke-static {v3, v4, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/l/j0;->f:Le/a/l/e0;

    .line 9
    iget-object p1, p1, Le/a/l/e0;->z:Le/a/l/p2/t1;

    .line 10
    invoke-virtual {p1}, Le/a/l/p2/t1;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Le/a/l/p2/t1;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 11
    iget-object p1, p0, Le/a/l/j0;->f:Le/a/l/e0;

    .line 12
    iget-object p1, p1, Le/a/l/e0;->h:Ljava/util/Map;

    .line 13
    sget-object v0, Lcom/truecaller/premium/PremiumAlertType;->PENDING_PURCHASE:Lcom/truecaller/premium/PremiumAlertType;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Le/a/l/j0;->f:Le/a/l/e0;

    .line 15
    invoke-virtual {p1}, Le/a/l/e0;->Mj()V

    .line 16
    iget-object p1, p0, Le/a/l/j0;->f:Le/a/l/e0;

    .line 17
    invoke-virtual {p1}, Le/a/l/e0;->ak()V

    .line 18
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
