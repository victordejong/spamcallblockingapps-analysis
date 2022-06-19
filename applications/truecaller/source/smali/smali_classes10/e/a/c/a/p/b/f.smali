.class public final Le/a/c/a/p/b/f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/c/y/m;",
        "Ls1/w/d<",
        "-",
        "Le/a/c/a/p/c/d;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.smartfeed.domain.GetInsightsSmartFeedUseCase$transformPagingData$1"
    f = "GetInsightsSmartFeedUseCase.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/c/a/p/b/g;

.field public final synthetic g:Lw3/b/a/b;


# direct methods
.method public constructor <init>(Le/a/c/a/p/b/g;Lw3/b/a/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/b/f;->f:Le/a/c/a/p/b/g;

    iput-object p2, p0, Le/a/c/a/p/b/f;->g:Lw3/b/a/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/p/b/f;

    iget-object v1, p0, Le/a/c/a/p/b/f;->f:Le/a/c/a/p/b/g;

    iget-object v2, p0, Le/a/c/a/p/b/f;->g:Lw3/b/a/b;

    invoke-direct {v0, v1, v2, p2}, Le/a/c/a/p/b/f;-><init>(Le/a/c/a/p/b/g;Lw3/b/a/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/p/b/f;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/p/b/f;

    iget-object v1, p0, Le/a/c/a/p/b/f;->f:Le/a/c/a/p/b/g;

    iget-object v2, p0, Le/a/c/a/p/b/f;->g:Lw3/b/a/b;

    invoke-direct {v0, v1, v2, p2}, Le/a/c/a/p/b/f;-><init>(Le/a/c/a/p/b/g;Lw3/b/a/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/p/b/f;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/a/p/b/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/a/p/b/f;->e:Ljava/lang/Object;

    check-cast p1, Le/a/c/y/m;

    .line 2
    iget-object v0, p1, Le/a/c/y/m;->e:Lw3/b/a/b;

    const-string v1, "$this$toCoordinates"

    .line 3
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Le/a/c/a/p/c/b;

    .line 5
    iget-wide v3, p1, Le/a/c/y/m;->a:J

    .line 6
    iget-wide v5, p1, Le/a/c/y/m;->b:J

    .line 7
    iget-object v7, p1, Le/a/c/y/m;->g:Ljava/lang/String;

    move-object v2, v1

    .line 8
    invoke-direct/range {v2 .. v7}, Le/a/c/a/p/c/b;-><init>(JJLjava/lang/String;)V

    .line 9
    new-instance v2, Le/a/c/a/p/c/a;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-direct {v2, v1, v0, v3, v4}, Le/a/c/a/p/c/a;-><init>(Le/a/c/a/p/c/b;Lw3/b/a/b;ZI)V

    .line 10
    iget-object v0, p0, Le/a/c/a/p/b/f;->f:Le/a/c/a/p/b/g;

    iget-object v1, p0, Le/a/c/a/p/b/f;->g:Lw3/b/a/b;

    const-string v5, "startOfToday"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p1, Le/a/c/y/m;->e:Lw3/b/a/b;

    .line 13
    invoke-virtual {v0}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object v0

    .line 14
    invoke-virtual {v0, v1}, Lw3/b/a/e0/c;->a(Lw3/b/a/z;)I

    move-result v5

    const/4 v6, 0x1

    if-gez v5, :cond_0

    goto/16 :goto_2

    .line 15
    :cond_0
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 16
    iget-object v0, p1, Le/a/c/y/m;->c:Ljava/lang/String;

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v5, -0x6a3494c6

    if-eq v1, v5, :cond_6

    const v5, 0x1f9827

    if-eq v1, v5, :cond_3

    const v4, 0x34ef8014

    if-eq v1, v4, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v1, "Delivery"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    iget-object v0, p1, Le/a/c/y/m;->j:Le/a/c/r/j/b;

    if-eqz v0, :cond_2

    .line 20
    iget v0, v0, Le/a/c/r/j/b;->d:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-nez v0, :cond_8

    .line 21
    iget-object v0, p1, Le/a/c/y/m;->d:Le/a/c/y/l;

    .line 22
    iget-object v0, v0, Le/a/c/y/l;->b:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 23
    sget-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryReadyForPickup:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    if-eq v0, v1, :cond_9

    goto :goto_2

    :cond_3
    const-string v1, "Bill"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    iget-object v0, p1, Le/a/c/y/m;->j:Le/a/c/r/j/b;

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    .line 26
    iget v0, v0, Le/a/c/r/j/b;->d:I

    if-eq v0, v1, :cond_4

    if-ne v0, v4, :cond_5

    :cond_4
    move v0, v6

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_1
    if-nez v0, :cond_8

    new-array v0, v1, [Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 27
    sget-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->BillPaid:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->BillRecharged:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    aput-object v1, v0, v6

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 28
    iget-object v1, p1, Le/a/c/y/m;->d:Le/a/c/y/l;

    .line 29
    iget-object v1, v1, Le/a/c/y/l;->b:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 30
    invoke-static {v0, v1}, Ls1/u/i;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_6
    const-string v1, "Travel"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    .line 32
    :cond_7
    invoke-virtual {v0, v1}, Lw3/b/a/e0/c;->a(Lw3/b/a/z;)I

    move-result v0

    if-lez v0, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    move v3, v6

    :cond_9
    :goto_3
    if-eqz v3, :cond_a

    .line 33
    new-instance v0, Le/a/c/a/p/c/d$a;

    invoke-direct {v0, v2, p1}, Le/a/c/a/p/c/d$a;-><init>(Le/a/c/a/p/c/a;Le/a/c/y/m;)V

    goto :goto_4

    .line 34
    :cond_a
    new-instance v0, Le/a/c/a/p/c/d$e;

    invoke-direct {v0, v2, p1}, Le/a/c/a/p/c/d$e;-><init>(Le/a/c/a/p/c/a;Le/a/c/y/m;)V

    :goto_4
    return-object v0
.end method
