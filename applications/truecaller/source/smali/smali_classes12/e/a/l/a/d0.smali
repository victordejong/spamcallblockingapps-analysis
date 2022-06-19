.class public final Le/a/l/a/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/a/c0;


# instance fields
.field public a:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/a/d0;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Le/a/l/a/d0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "feature"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/l/a/d0;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/a/d0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "f"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/a/l/a/d0;->b:Ljava/lang/String;

    const-string v0, "c"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    const-string v2, "UUID.randomUUID().toString()"

    invoke-static {v2}, Le/d/c/a/a;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iput-object v1, p0, Le/a/l/a/d0;->a:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    const-string v0, "s"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iput-object p1, p0, Le/a/l/a/d0;->c:Ljava/lang/String;

    return-void
.end method

.method public e()Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/a/d0;->a:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Le/a/l/a/d0;->a:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    return-object v0
.end method
