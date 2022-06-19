.class public final Le/a/l/p2/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/b1;


# instance fields
.field public final a:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Le/a/b0/o/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coreSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/c1;->a:Le/a/b0/o/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/premium/data/SubscriptionStatusReason;
    .locals 3

    .line 1
    sget-object v0, Lcom/truecaller/premium/data/SubscriptionStatusReason;->Companion:Lcom/truecaller/premium/data/SubscriptionStatusReason$a;

    iget-object v1, p0, Le/a/l/p2/c1;->a:Le/a/b0/o/a;

    const-string v2, "subscriptionStatusChangedReason"

    invoke-interface {v1, v2}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/premium/data/SubscriptionStatusReason$a;->a(Ljava/lang/String;)Lcom/truecaller/premium/data/SubscriptionStatusReason;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/p2/c1;->a:Le/a/b0/o/a;

    const-string v1, "subscriptionStatusChangedReason"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/truecaller/premium/data/SubscriptionStatusReason;)V
    .locals 2

    const-string v0, "reason"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/p2/c1;->a:Le/a/b0/o/a;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "subscriptionStatusChangedReason"

    invoke-interface {v0, v1, p1}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
