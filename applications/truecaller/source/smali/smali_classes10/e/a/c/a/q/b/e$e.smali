.class public final Le/a/c/a/q/b/e$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/q/b/e;->h(Ln3/z/i0$c;Ln3/z/i0$b;)V
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
    c = "com.truecaller.insights.ui.updatespage.domain.UpdatesPageDataSource$loadInitial$1"
    f = "UpdatesPageDataSource.kt"
    l = {
        0x4a,
        0xa5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/a/q/b/e;

.field public final synthetic g:J

.field public final synthetic h:Ln3/z/i0$b;


# direct methods
.method public constructor <init>(Le/a/c/a/q/b/e;JLn3/z/i0$b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/q/b/e$e;->f:Le/a/c/a/q/b/e;

    iput-wide p2, p0, Le/a/c/a/q/b/e$e;->g:J

    iput-object p4, p0, Le/a/c/a/q/b/e$e;->h:Ln3/z/i0$b;

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

    new-instance p1, Le/a/c/a/q/b/e$e;

    iget-object v1, p0, Le/a/c/a/q/b/e$e;->f:Le/a/c/a/q/b/e;

    iget-wide v2, p0, Le/a/c/a/q/b/e$e;->g:J

    iget-object v4, p0, Le/a/c/a/q/b/e$e;->h:Ln3/z/i0$b;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/c/a/q/b/e$e;-><init>(Le/a/c/a/q/b/e;JLn3/z/i0$b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v5, p2

    check-cast v5, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/q/b/e$e;

    iget-object v1, p0, Le/a/c/a/q/b/e$e;->f:Le/a/c/a/q/b/e;

    iget-wide v2, p0, Le/a/c/a/q/b/e$e;->g:J

    iget-object v4, p0, Le/a/c/a/q/b/e$e;->h:Ln3/z/i0$b;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/a/c/a/q/b/e$e;-><init>(Le/a/c/a/q/b/e;JLn3/z/i0$b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/q/b/e$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a/q/b/e$e;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/c/a/q/b/e$e;->f:Le/a/c/a/q/b/e;

    iput v4, v0, Le/a/c/a/q/b/e$e;->e:I

    invoke-virtual {v2, v0}, Le/a/c/a/q/b/e;->j(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_0
    iget-object v2, v0, Le/a/c/a/q/b/e$e;->f:Le/a/c/a/q/b/e;

    .line 6
    iget-object v2, v2, Le/a/c/a/q/b/e;->k:Le/a/c/a/q/b/f;

    .line 7
    new-instance v15, Le/a/c/q/f;

    const/4 v5, 0x1

    .line 8
    iget-wide v6, v0, Le/a/c/a/q/b/e$e;->g:J

    .line 9
    new-instance v4, Lw3/b/a/b;

    invoke-direct {v4, v6, v7}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v4}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object v4

    const/16 v8, 0xf

    invoke-virtual {v4, v8}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v4

    const-string v8, "DateTime(initialPosition\u2026).minusDays(DAYS_TO_LOAD)"

    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-wide v8, v4, Lw3/b/a/e0/e;->a:J

    .line 11
    sget-object v10, Lcom/truecaller/insights/insightsui/LoadDirection;->AFTER:Lcom/truecaller/insights/insightsui/LoadDirection;

    .line 12
    iget-object v4, v0, Le/a/c/a/q/b/e$e;->f:Le/a/c/a/q/b/e;

    invoke-static {v4}, Le/a/c/a/q/b/e;->i(Le/a/c/a/q/b/e;)Le/a/c/q/i;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0xe0

    move-object v4, v15

    move-object v3, v15

    move/from16 v15, v16

    .line 13
    invoke-direct/range {v4 .. v15}, Le/a/c/q/f;-><init>(ZJJLcom/truecaller/insights/insightsui/LoadDirection;Le/a/c/q/i;Lcom/truecaller/insights/insightsui/TransactionType;Ljava/util/List;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Le/a/c/a/i/c;->c(Ljava/lang/Object;)Lq3/a/x2/f;

    move-result-object v2

    .line 14
    new-instance v3, Le/a/c/a/q/b/e$e$a;

    invoke-direct {v3, v0}, Le/a/c/a/q/b/e$e$a;-><init>(Le/a/c/a/q/b/e$e;)V

    const/4 v4, 0x2

    iput v4, v0, Le/a/c/a/q/b/e$e;->e:I

    invoke-interface {v2, v3, v0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    .line 15
    :cond_4
    :goto_1
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
