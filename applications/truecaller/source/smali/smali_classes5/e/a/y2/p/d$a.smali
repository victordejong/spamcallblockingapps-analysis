.class public Le/a/y2/p/d$a;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/y2/p/d;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Lcom/truecaller/background_work/persistence/WorkActionRetryResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/y2/p/d;


# direct methods
.method public constructor <init>(Le/a/y2/p/d;Ln3/c0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/y2/p/d$a;->a:Le/a/y2/p/d;

    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->getActionName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->getActionName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object v0, p0, Le/a/y2/p/d$a;->a:Le/a/y2/p/d;

    .line 6
    iget-object v0, v0, Le/a/y2/p/d;->c:Le/a/y2/p/b;

    .line 7
    invoke-virtual {p2}, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->getPeriod()Lcom/truecaller/background_work/WorkActionPeriod;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/y2/p/b;->a(Lcom/truecaller/background_work/WorkActionPeriod;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 8
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 10
    :goto_1
    invoke-virtual {p2}, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->getInternetRequired()Z

    move-result v0

    const/4 v1, 0x3

    int-to-long v2, v0

    .line 11
    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    const/4 v0, 0x4

    .line 12
    invoke-virtual {p2}, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->getRetriedTimes()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkActionRetryResult` (`actionName`,`period`,`internetRequired`,`retriedTimes`) VALUES (?,?,?,?)"

    return-object v0
.end method
