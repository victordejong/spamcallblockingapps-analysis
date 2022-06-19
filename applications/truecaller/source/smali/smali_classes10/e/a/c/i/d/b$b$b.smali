.class public final Le/a/c/i/d/b$b$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/i/d/b$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.core.enrichment.InsightsEnrichmentManagerImpl$areThereNewEntriesToEnrich$1$pruneCount$1"
    f = "InsightsEnrichmentManager.kt"
    l = {
        0xd3,
        0xd3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/c/i/d/b$b;


# direct methods
.method public constructor <init>(Le/a/c/i/d/b$b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/i/d/b$b$b;->g:Le/a/c/i/d/b$b;

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

    new-instance p1, Le/a/c/i/d/b$b$b;

    iget-object v0, p0, Le/a/c/i/d/b$b$b;->g:Le/a/c/i/d/b$b;

    invoke-direct {p1, v0, p2}, Le/a/c/i/d/b$b$b;-><init>(Le/a/c/i/d/b$b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/i/d/b$b$b;

    iget-object v0, p0, Le/a/c/i/d/b$b$b;->g:Le/a/c/i/d/b$b;

    invoke-direct {p1, v0, p2}, Le/a/c/i/d/b$b$b;-><init>(Le/a/c/i/d/b$b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/i/d/b$b$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/i/d/b$b$b;->f:I

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
    iget-object v1, p0, Le/a/c/i/d/b$b$b;->e:Ljava/lang/Object;

    check-cast v1, Le/a/c/c/f/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/i/d/b$b$b;->g:Le/a/c/i/d/b$b;

    iget-object p1, p1, Le/a/c/i/d/b$b;->h:Le/a/c/i/d/b;

    .line 5
    iget-object v1, p1, Le/a/c/i/d/b;->b:Le/a/c/c/f/g;

    .line 6
    iget-object p1, p1, Le/a/c/i/d/b;->d:Le/a/c/c/f/n;

    .line 7
    iput-object v1, p0, Le/a/c/i/d/b$b$b;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/c/i/d/b$b$b;->f:I

    const-string v3, "INSIGHTS.PRUNING"

    invoke-interface {p1, v3, p0}, Le/a/c/c/f/n;->q(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lcom/truecaller/insights/models/states/InsightState;

    invoke-virtual {p1}, Lcom/truecaller/insights/models/states/InsightState;->getLastUpdatedAt()Ljava/util/Date;

    move-result-object p1

    const/4 v3, 0x0

    iput-object v3, p0, Le/a/c/i/d/b$b$b;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/c/i/d/b$b$b;->f:I

    invoke-interface {v1, p1, p0}, Le/a/c/c/f/g;->a(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    return-object p1
.end method
