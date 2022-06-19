.class public final Le/a/g/a/w;
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
    c = "com.truecaller.acs.ui.AfterCallBasePresenter$searchForContact$1"
    f = "AfterCallBasePresenter.kt"
    l = {
        0x4cb
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/g/a/m;

.field public final synthetic g:Lcom/truecaller/data/entity/HistoryEvent;


# direct methods
.method public constructor <init>(Le/a/g/a/m;Lcom/truecaller/data/entity/HistoryEvent;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/w;->f:Le/a/g/a/m;

    iput-object p2, p0, Le/a/g/a/w;->g:Lcom/truecaller/data/entity/HistoryEvent;

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

    new-instance p1, Le/a/g/a/w;

    iget-object v0, p0, Le/a/g/a/w;->f:Le/a/g/a/m;

    iget-object v1, p0, Le/a/g/a/w;->g:Lcom/truecaller/data/entity/HistoryEvent;

    invoke-direct {p1, v0, v1, p2}, Le/a/g/a/w;-><init>(Le/a/g/a/m;Lcom/truecaller/data/entity/HistoryEvent;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/g/a/w;

    iget-object v0, p0, Le/a/g/a/w;->f:Le/a/g/a/m;

    iget-object v1, p0, Le/a/g/a/w;->g:Lcom/truecaller/data/entity/HistoryEvent;

    invoke-direct {p1, v0, v1, p2}, Le/a/g/a/w;-><init>(Le/a/g/a/m;Lcom/truecaller/data/entity/HistoryEvent;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/g/a/w;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/g/a/w;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

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

    .line 4
    iget-object p1, p0, Le/a/g/a/w;->f:Le/a/g/a/m;

    .line 5
    iget-object p1, p1, Le/a/g/a/m;->Q:Le/a/g/j/a0;

    .line 6
    iget-object v2, p0, Le/a/g/a/w;->g:Lcom/truecaller/data/entity/HistoryEvent;

    .line 7
    iget v2, v2, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    const/4 v4, 0x6

    const/4 v5, 0x2

    if-eq v2, v3, :cond_4

    if-eq v2, v5, :cond_3

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    const/4 v5, 0x5

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    const/16 v5, 0xa

    if-eq v2, v5, :cond_2

    const/16 v4, 0x3e7

    :cond_2
    move v7, v4

    goto :goto_0

    :cond_3
    move v7, v3

    goto :goto_0

    :cond_4
    move v7, v5

    .line 8
    :goto_0
    iget-object v2, p0, Le/a/g/a/w;->g:Lcom/truecaller/data/entity/HistoryEvent;

    .line 9
    iget-object v8, v2, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    const-string v2, "event.rawNumber"

    .line 10
    invoke-static {v8, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Le/a/g/a/w;->g:Lcom/truecaller/data/entity/HistoryEvent;

    .line 12
    iget-object v9, v2, Lcom/truecaller/data/entity/HistoryEvent;->d:Ljava/lang/String;

    .line 13
    iput v3, p0, Le/a/g/a/w;->e:I

    .line 14
    move-object v6, p1

    check-cast v6, Le/a/g/j/c0;

    .line 15
    iget-object p1, v6, Le/a/g/j/c0;->b:Ls1/w/f;

    new-instance v2, Le/a/g/j/b0;

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Le/a/g/j/b0;-><init>(Le/a/g/j/c0;ILjava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {p1, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_1

    :cond_5
    move-object p1, v0

    :goto_1
    if-ne p1, v1, :cond_6

    return-object v1

    .line 16
    :cond_6
    :goto_2
    iget-object p1, p0, Le/a/g/a/w;->f:Le/a/g/a/m;

    .line 17
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/h;

    if-eqz p1, :cond_7

    .line 18
    invoke-interface {p1}, Le/a/g/a/h;->zy()V

    :cond_7
    return-object v0
.end method
