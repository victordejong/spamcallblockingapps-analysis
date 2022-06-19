.class public abstract Le/a/y2/p/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/List;Lcom/truecaller/background_work/WorkActionPeriod;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/truecaller/background_work/WorkActionPeriod;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract b(Lcom/truecaller/background_work/WorkActionPeriod;Z)V
.end method

.method public abstract c(Lcom/truecaller/background_work/WorkActionPeriod;ZLjava/util/Collection;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/background_work/WorkActionPeriod;",
            "Z",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/background_work/persistence/WorkActionRetryResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d(Lcom/truecaller/background_work/WorkActionPeriod;ZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/background_work/WorkActionPeriod;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract e(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/background_work/persistence/WorkActionRetryResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public f(Ljava/util/List;Le/a/y2/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Le/a/y2/g;",
            ")V"
        }
    .end annotation

    const-string v0, "actionNames"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bucket"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p2, Le/a/y2/g;->b:Lcom/truecaller/background_work/WorkActionPeriod;

    .line 2
    iget-boolean v1, p2, Le/a/y2/g;->c:Z

    .line 3
    invoke-virtual {p0, v0, v1, p1}, Le/a/y2/p/c;->d(Lcom/truecaller/background_work/WorkActionPeriod;ZLjava/util/List;)V

    .line 4
    sget-object v0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->Companion:Lcom/truecaller/background_work/persistence/WorkActionRetryResult$a;

    invoke-virtual {v0, p1, p2}, Lcom/truecaller/background_work/persistence/WorkActionRetryResult$a;->a(Ljava/util/List;Le/a/y2/g;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/y2/p/c;->e(Ljava/util/List;)V

    return-void
.end method
