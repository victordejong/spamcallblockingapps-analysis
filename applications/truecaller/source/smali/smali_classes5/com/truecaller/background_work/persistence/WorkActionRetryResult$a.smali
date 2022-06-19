.class public final Lcom/truecaller/background_work/persistence/WorkActionRetryResult$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/background_work/persistence/WorkActionRetryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Le/a/y2/g;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Le/a/y2/g;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/background_work/persistence/WorkActionRetryResult;",
            ">;"
        }
    .end annotation

    const-string v0, "names"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bucket"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/String;

    .line 4
    new-instance v2, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;

    .line 5
    iget-object v3, p2, Le/a/y2/g;->b:Lcom/truecaller/background_work/WorkActionPeriod;

    .line 6
    iget-boolean v4, p2, Le/a/y2/g;->c:Z

    const/4 v5, 0x0

    .line 7
    invoke-direct {v2, v1, v3, v4, v5}, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;-><init>(Ljava/lang/String;Lcom/truecaller/background_work/WorkActionPeriod;ZI)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
