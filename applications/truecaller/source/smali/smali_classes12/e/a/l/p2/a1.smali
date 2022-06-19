.class public final Le/a/l/p2/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/l/p2/b1;

.field public final b:Le/a/l/p2/v0;


# direct methods
.method public constructor <init>(Le/a/l/p2/b1;Le/a/l/p2/v0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumSubscriptionStatusRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/a1;->a:Le/a/l/p2/b1;

    iput-object p2, p0, Le/a/l/p2/a1;->b:Le/a/l/p2/v0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/l/p2/a1;->b()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le/a/l/p2/a1;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/l/p2/a1;->a:Le/a/l/p2/b1;

    invoke-interface {v0}, Le/a/l/p2/b1;->a()Lcom/truecaller/premium/data/SubscriptionStatusReason;

    move-result-object v0

    sget-object v3, Lcom/truecaller/premium/data/SubscriptionStatusReason;->SUBSCRIPTION_PAUSED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/p2/a1;->a:Le/a/l/p2/b1;

    invoke-interface {v0}, Le/a/l/p2/b1;->a()Lcom/truecaller/premium/data/SubscriptionStatusReason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/premium/data/SubscriptionStatusReason;->isOnHold()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/p2/a1;->b:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/a1;->a:Le/a/l/p2/b1;

    invoke-interface {v0}, Le/a/l/p2/b1;->a()Lcom/truecaller/premium/data/SubscriptionStatusReason;

    move-result-object v0

    sget-object v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;->SUBSCRIPTION_CANCELED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
