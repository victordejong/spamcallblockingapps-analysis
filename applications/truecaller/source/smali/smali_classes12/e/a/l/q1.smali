.class public final Le/a/l/q1;
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
    c = "com.truecaller.premium.PremiumNotificationService$handleStatusChangedNotification$1"
    f = "PremiumNotificationService.kt"
    l = {
        0x66,
        0x6d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:I

.field public k:I

.field public final synthetic l:Lcom/truecaller/premium/PremiumNotificationService;

.field public final synthetic m:Lcom/truecaller/premium/data/SubscriptionStatusReason;


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/PremiumNotificationService;Lcom/truecaller/premium/data/SubscriptionStatusReason;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/q1;->l:Lcom/truecaller/premium/PremiumNotificationService;

    iput-object p2, p0, Le/a/l/q1;->m:Lcom/truecaller/premium/data/SubscriptionStatusReason;

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

    new-instance p1, Le/a/l/q1;

    iget-object v0, p0, Le/a/l/q1;->l:Lcom/truecaller/premium/PremiumNotificationService;

    iget-object v1, p0, Le/a/l/q1;->m:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/q1;-><init>(Lcom/truecaller/premium/PremiumNotificationService;Lcom/truecaller/premium/data/SubscriptionStatusReason;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/q1;

    iget-object v0, p0, Le/a/l/q1;->l:Lcom/truecaller/premium/PremiumNotificationService;

    iget-object v1, p0, Le/a/l/q1;->m:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/q1;-><init>(Lcom/truecaller/premium/PremiumNotificationService;Lcom/truecaller/premium/data/SubscriptionStatusReason;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/q1;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/l/q1;->k:I

    const/4 v2, 0x0

    const-string v3, "billing"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    iget v5, p0, Le/a/l/q1;->j:I

    iget-object v0, p0, Le/a/l/q1;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Le/a/l/q1;->h:Ljava/lang/Object;

    check-cast v1, [Ls1/k;

    iget-object v3, p0, Le/a/l/q1;->g:Ljava/lang/Object;

    check-cast v3, [Ls1/k;

    iget-object v4, p0, Le/a/l/q1;->f:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Le/a/l/q1;->e:Ljava/lang/Object;

    check-cast v6, Lcom/truecaller/clevertap/CleverTapManager;

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
    iget-object p1, p0, Le/a/l/q1;->m:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    sget-object v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;->SUBSCRIPTION_RENEWED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    if-ne p1, v1, :cond_6

    .line 5
    iget-object p1, p0, Le/a/l/q1;->l:Lcom/truecaller/premium/PremiumNotificationService;

    .line 6
    iget-object p1, p1, Lcom/truecaller/premium/PremiumNotificationService;->e:Le/a/l/n2/e;

    if-eqz p1, :cond_5

    .line 7
    iput v5, p0, Le/a/l/q1;->k:I

    invoke-interface {p1, p0}, Le/a/l/n2/e;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Le/a/l/n2/f;

    if-eqz p1, :cond_6

    .line 8
    iget-object v1, p0, Le/a/l/q1;->l:Lcom/truecaller/premium/PremiumNotificationService;

    .line 9
    iget-object v1, v1, Lcom/truecaller/premium/PremiumNotificationService;->f:Le/a/l/n0;

    if-eqz v1, :cond_4

    .line 10
    invoke-interface {v1, p1}, Le/a/l/n0;->c(Le/a/l/n2/f;)V

    goto :goto_1

    :cond_4
    const-string p1, "premiumEventsLogger"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_5
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 13
    :cond_6
    :goto_1
    iget-object p1, p0, Le/a/l/q1;->l:Lcom/truecaller/premium/PremiumNotificationService;

    .line 14
    iget-object v6, p1, Lcom/truecaller/premium/PremiumNotificationService;->k:Lcom/truecaller/clevertap/CleverTapManager;

    if-eqz v6, :cond_b

    const-string p1, "PremiumRTDNStatus"

    new-array v1, v4, [Ls1/k;

    const/4 v7, 0x0

    .line 15
    iget-object v8, p0, Le/a/l/q1;->m:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    .line 16
    new-instance v9, Ls1/k;

    const-string v10, "Status"

    invoke-direct {v9, v10, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v1, v7

    const-string v7, "SKU"

    .line 17
    iget-object v8, p0, Le/a/l/q1;->l:Lcom/truecaller/premium/PremiumNotificationService;

    .line 18
    iget-object v8, v8, Lcom/truecaller/premium/PremiumNotificationService;->e:Le/a/l/n2/e;

    if-eqz v8, :cond_a

    .line 19
    iput-object v6, p0, Le/a/l/q1;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/l/q1;->f:Ljava/lang/Object;

    iput-object v1, p0, Le/a/l/q1;->g:Ljava/lang/Object;

    iput-object v1, p0, Le/a/l/q1;->h:Ljava/lang/Object;

    iput-object v7, p0, Le/a/l/q1;->i:Ljava/lang/Object;

    iput v5, p0, Le/a/l/q1;->j:I

    iput v4, p0, Le/a/l/q1;->k:I

    invoke-interface {v8, p0}, Le/a/l/n2/e;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_7

    return-object v0

    :cond_7
    move-object v4, p1

    move-object p1, v3

    move-object v0, v7

    move-object v3, v1

    :goto_2
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/premium/billing/Receipt;

    if-eqz p1, :cond_8

    .line 20
    iget-object p1, p1, Lcom/truecaller/premium/billing/Receipt;->a:Ljava/util/List;

    if-eqz p1, :cond_8

    .line 21
    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    :cond_8
    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    const-string v2, ""

    .line 22
    :goto_3
    new-instance p1, Ls1/k;

    invoke-direct {p1, v0, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    aput-object p1, v1, v5

    .line 24
    invoke-static {v3}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object p1

    .line 25
    invoke-interface {v6, v4, p1}, Lcom/truecaller/clevertap/CleverTapManager;->push(Ljava/lang/String;Ljava/util/Map;)V

    .line 26
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 27
    :cond_a
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_b
    const-string p1, "cleverTapManager"

    .line 28
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
