.class final Lcom/hiya/stingray/notification/PromoPremiumManagerWorker$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->p()Landroidx/work/ListenableWorker$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker$a;->f:Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/d0;",
            ">;)I"
        }
    .end annotation

    const-string v0, "callLogs"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/t/d0;

    const-string v3, "it"

    .line 4
    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hiya/stingray/t/d0;->j()Lcom/hiya/stingray/t/f0;

    move-result-object v3

    sget-object v4, Lcom/hiya/stingray/t/f0;->BLOCKED:Lcom/hiya/stingray/t/f0;

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lcom/hiya/stingray/t/d0;->s()J

    move-result-wide v2

    iget-object v4, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker$a;->f:Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;

    invoke-virtual {v4}, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->q()Lcom/hiya/stingray/manager/v3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hiya/stingray/manager/v3;->k()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x0

    :goto_1
    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_4

    goto :goto_0

    .line 5
    :cond_4
    invoke-static {}, Lkotlin/s/k;->o()V

    const/4 p1, 0x0

    throw p1

    :cond_5
    move v1, v0

    :goto_3
    return v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker$a;->a(Ljava/util/List;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
