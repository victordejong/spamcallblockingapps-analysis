.class public final Le/a/c/a/n/b/c$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/n/b/c;->f(Ln3/z/i0$d;Ln3/z/i0$a;)V
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
    c = "com.truecaller.insights.ui.reminders.domain.RemindersPageDataSource$loadAfter$1"
    f = "RemindersPageDataSource.kt"
    l = {
        0xad
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/a/n/b/c;

.field public final synthetic g:J

.field public final synthetic h:Ln3/z/i0$d;

.field public final synthetic i:Ln3/z/i0$a;


# direct methods
.method public constructor <init>(Le/a/c/a/n/b/c;JLn3/z/i0$d;Ln3/z/i0$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/n/b/c$b;->f:Le/a/c/a/n/b/c;

    iput-wide p2, p0, Le/a/c/a/n/b/c$b;->g:J

    iput-object p4, p0, Le/a/c/a/n/b/c$b;->h:Ln3/z/i0$d;

    iput-object p5, p0, Le/a/c/a/n/b/c$b;->i:Ln3/z/i0$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance p1, Le/a/c/a/n/b/c$b;

    iget-object v1, p0, Le/a/c/a/n/b/c$b;->f:Le/a/c/a/n/b/c;

    iget-wide v2, p0, Le/a/c/a/n/b/c$b;->g:J

    iget-object v4, p0, Le/a/c/a/n/b/c$b;->h:Ln3/z/i0$d;

    iget-object v5, p0, Le/a/c/a/n/b/c$b;->i:Ln3/z/i0$a;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/c/a/n/b/c$b;-><init>(Le/a/c/a/n/b/c;JLn3/z/i0$d;Ln3/z/i0$a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/c/a/n/b/c$b;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/c/a/n/b/c$b;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/n/b/c$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a/n/b/c$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/c/a/n/b/c$b;->f:Le/a/c/a/n/b/c;

    invoke-static {v2}, Le/a/c/a/n/b/c;->k(Le/a/c/a/n/b/c;)V

    .line 5
    iget-object v2, v0, Le/a/c/a/n/b/c$b;->f:Le/a/c/a/n/b/c;

    .line 6
    iget-object v2, v2, Le/a/c/a/n/b/c;->k:Le/a/c/a/n/b/e;

    .line 7
    new-instance v15, Le/a/c/q/f;

    const/4 v5, 0x0

    .line 8
    sget-object v10, Lcom/truecaller/insights/insightsui/LoadDirection;->AFTER:Lcom/truecaller/insights/insightsui/LoadDirection;

    .line 9
    iget-wide v6, v0, Le/a/c/a/n/b/c$b;->g:J

    .line 10
    new-instance v4, Lw3/b/a/b;

    invoke-direct {v4, v6, v7}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v4}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object v4

    const/16 v8, 0x1e

    invoke-virtual {v4, v8}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v4

    const-string v8, "DateTime(startTs).withTi\u2026).minusDays(DAYS_TO_LOAD)"

    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-wide v8, v4, Lw3/b/a/e0/e;->a:J

    .line 12
    iget-object v4, v0, Le/a/c/a/n/b/c$b;->f:Le/a/c/a/n/b/c;

    invoke-static {v4}, Le/a/c/a/n/b/c;->i(Le/a/c/a/n/b/c;)Le/a/c/q/i;

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
    new-instance v3, Le/a/c/a/n/b/c$b$a;

    invoke-direct {v3, v0}, Le/a/c/a/n/b/c$b$a;-><init>(Le/a/c/a/n/b/c$b;)V

    const/4 v4, 0x1

    iput v4, v0, Le/a/c/a/n/b/c$b;->e:I

    invoke-interface {v2, v3, v0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    .line 15
    :cond_2
    :goto_0
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
