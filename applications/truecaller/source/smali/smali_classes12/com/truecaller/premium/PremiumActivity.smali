.class public Lcom/truecaller/premium/PremiumActivity;
.super Le/a/l/t;
.source "SourceFile"

# interfaces
.implements Le/a/l/n2/k;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008 \u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ#\u0010\u0011\u001a\u00020\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J+\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0015\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006!"
    }
    d2 = {
        "Lcom/truecaller/premium/PremiumActivity;",
        "Ln3/b/a/h;",
        "Le/a/l/n2/k;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onBackPressed",
        "()V",
        "Le/a/l/b$e;",
        "qa",
        "()Le/a/l/b$e;",
        "",
        "paymentId",
        "Lcom/razorpay/PaymentData;",
        "paymentData",
        "onPaymentSuccess",
        "(Ljava/lang/String;Lcom/razorpay/PaymentData;)V",
        "",
        "errorCode",
        "errorDescription",
        "onPaymentError",
        "(ILjava/lang/String;Lcom/razorpay/PaymentData;)V",
        "Le/a/l/n2/k$a;",
        "d",
        "Le/a/l/n2/k$a;",
        "getWebPaymentPurchaseUpdateListener",
        "()Le/a/l/n2/k$a;",
        "O",
        "(Le/a/l/n2/k$a;)V",
        "webPaymentPurchaseUpdateListener",
        "<init>",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public d:Le/a/l/n2/k$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/l/t;-><init>()V

    return-void
.end method


# virtual methods
.method public O(Le/a/l/n2/k$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/premium/PremiumActivity;->d:Le/a/l/n2/k$a;

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a07e4

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->J(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->M()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->c0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Le/a/j4/b/a/h;->D(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Le/a/c3/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Le/a/e/a2;->Y(Landroid/app/Activity;)V

    :cond_0
    const v0, 0x7f0d0046

    .line 5
    invoke-virtual {p0, v0}, Ln3/b/a/h;->setContentView(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, "launchContext"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string v3, "intent.extras?.getString\u2026iew.KEY_LAUNCH_CONTEXT)!!"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/truecaller/premium/PremiumLaunchContext;->valueOf(Ljava/lang/String;)Lcom/truecaller/premium/PremiumLaunchContext;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "analyticsMetadata"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 8
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v4, "selectedPage"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    if-nez p1, :cond_4

    .line 9
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 10
    new-instance v4, Ln3/r/a/a;

    invoke-direct {v4, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const p1, 0x7f0a07e4

    .line 11
    invoke-virtual {p0}, Lcom/truecaller/premium/PremiumActivity;->qa()Le/a/l/b$e;

    move-result-object v5

    invoke-static {v0, v3, v1, v5}, Le/a/l/b$d;->a(Lcom/truecaller/premium/PremiumLaunchContext;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;Ljava/lang/String;Le/a/l/b$e;)Le/a/l/b;

    move-result-object v0

    .line 12
    invoke-virtual {v4, p1, v0, v2}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 13
    invoke-virtual {v4}, Ln3/r/a/a;->i()V

    :cond_4
    return-void
.end method

.method public onPaymentError(ILjava/lang/String;Lcom/razorpay/PaymentData;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/truecaller/premium/PremiumActivity;->d:Le/a/l/n2/k$a;

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p3, p1, p2}, Le/a/l/n2/k$a;->onPaymentError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPaymentSuccess(Ljava/lang/String;Lcom/razorpay/PaymentData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/PremiumActivity;->d:Le/a/l/n2/k$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Le/a/l/n2/k$a;->a(Ljava/lang/String;Lcom/razorpay/PaymentData;)V

    :cond_0
    return-void
.end method

.method public qa()Le/a/l/b$e;
    .locals 4

    .line 1
    new-instance v0, Le/a/l/b$e;

    const v1, 0x7f08170a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v2, v3}, Le/a/l/b$e;-><init>(Ljava/lang/Integer;IZI)V

    return-object v0
.end method
