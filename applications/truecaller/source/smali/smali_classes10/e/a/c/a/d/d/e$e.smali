.class public final Le/a/c/a/d/d/e$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/d/d/e;->h(Ln3/z/i0$c;Ln3/z/i0$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.truecaller.insights.ui.financepage.domain.FinancePageDataSource$loadInitial$1"
    f = "FinancePageDataSource.kt"
    l = {
        0x51,
        0xc1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/a/d/d/e;

.field public final synthetic g:J

.field public final synthetic h:Ln3/z/i0$b;


# direct methods
.method public constructor <init>(Le/a/c/a/d/d/e;JLn3/z/i0$b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/d/d/e$e;->f:Le/a/c/a/d/d/e;

    iput-wide p2, p0, Le/a/c/a/d/d/e$e;->g:J

    iput-object p4, p0, Le/a/c/a/d/d/e$e;->h:Ln3/z/i0$b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/c/a/d/d/e$e;

    iget-object v1, p0, Le/a/c/a/d/d/e$e;->f:Le/a/c/a/d/d/e;

    iget-wide v2, p0, Le/a/c/a/d/d/e$e;->g:J

    iget-object v4, p0, Le/a/c/a/d/d/e$e;->h:Ln3/z/i0$b;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/c/a/d/d/e$e;-><init>(Le/a/c/a/d/d/e;JLn3/z/i0$b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v5, p2

    check-cast v5, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/d/d/e$e;

    iget-object v1, p0, Le/a/c/a/d/d/e$e;->f:Le/a/c/a/d/d/e;

    iget-wide v2, p0, Le/a/c/a/d/d/e$e;->g:J

    iget-object v4, p0, Le/a/c/a/d/d/e$e;->h:Ln3/z/i0$b;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/a/c/a/d/d/e$e;-><init>(Le/a/c/a/d/d/e;JLn3/z/i0$b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/d/d/e$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a/d/d/e$e;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

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
    iget-object p1, p0, Le/a/c/a/d/d/e$e;->f:Le/a/c/a/d/d/e;

    iput v3, p0, Le/a/c/a/d/d/e$e;->e:I

    invoke-virtual {p1, p0}, Le/a/c/a/d/d/e;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 5
    :cond_3
    :goto_0
    iget-object p1, p0, Le/a/c/a/d/d/e$e;->f:Le/a/c/a/d/d/e;

    .line 6
    iget-object p1, p1, Le/a/c/a/d/d/e;->k:Le/a/c/a/d/d/f;

    .line 7
    iget-wide v5, p0, Le/a/c/a/d/d/e$e;->g:J

    .line 8
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1, v5, v6}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v1}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object v1

    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v1

    const-string v3, "DateTime(initialPosition\u2026).minusDays(DAYS_TO_LOAD)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-wide v7, v1, Lw3/b/a/e0/e;->a:J

    .line 10
    sget-object v9, Lcom/truecaller/insights/insightsui/LoadDirection;->AFTER:Lcom/truecaller/insights/insightsui/LoadDirection;

    .line 11
    iget-object v1, p0, Le/a/c/a/d/d/e$e;->f:Le/a/c/a/d/d/e;

    invoke-static {v1}, Le/a/c/a/d/d/e;->i(Le/a/c/a/d/d/e;)Le/a/c/q/i;

    move-result-object v10

    .line 12
    iget-object v1, p0, Le/a/c/a/d/d/e$e;->f:Le/a/c/a/d/d/e;

    .line 13
    iget-object v3, v1, Le/a/c/a/d/d/e;->n:Lcom/truecaller/insights/ui/financepage/models/FinanceTab;

    .line 14
    invoke-virtual {v1, v3}, Le/a/c/a/d/d/e;->j(Lcom/truecaller/insights/ui/financepage/models/FinanceTab;)Lcom/truecaller/insights/insightsui/TransactionType;

    move-result-object v11

    .line 15
    iget-object v1, p0, Le/a/c/a/d/d/e$e;->f:Le/a/c/a/d/d/e;

    .line 16
    iget-object v1, v1, Le/a/c/a/d/d/e;->o:Ljava/util/List;

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 19
    check-cast v4, Le/a/c/a/l/a;

    .line 20
    iget-object v4, v4, Le/a/c/a/l/a;->c:Ljava/util/List;

    .line 21
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v3}, Le/q/f/a/d/a;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v12

    .line 22
    iget-object v1, p0, Le/a/c/a/d/d/e$e;->f:Le/a/c/a/d/d/e;

    .line 23
    iget-object v13, v1, Le/a/c/a/d/d/e;->q:Ljava/lang/String;

    .line 24
    new-instance v1, Le/a/c/q/f;

    const/4 v4, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Le/a/c/q/f;-><init>(ZJJLcom/truecaller/insights/insightsui/LoadDirection;Le/a/c/q/i;Lcom/truecaller/insights/insightsui/TransactionType;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Le/a/c/a/i/c;->c(Ljava/lang/Object;)Lq3/a/x2/f;

    move-result-object p1

    .line 25
    new-instance v1, Le/a/c/a/d/d/e$e$a;

    invoke-direct {v1, p0}, Le/a/c/a/d/d/e$e$a;-><init>(Le/a/c/a/d/d/e$e;)V

    iput v2, p0, Le/a/c/a/d/d/e$e;->e:I

    invoke-interface {p1, v1, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 26
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
