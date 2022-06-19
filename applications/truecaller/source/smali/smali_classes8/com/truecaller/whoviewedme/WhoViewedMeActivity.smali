.class public final Lcom/truecaller/whoviewedme/WhoViewedMeActivity;
.super Le/a/r5/g;
.source "SourceFile"

# interfaces
.implements Le/a/l/n2/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/whoviewedme/WhoViewedMeActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\"B\u0007\u00a2\u0006\u0004\u0008 \u0010!J\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ#\u0010\u0011\u001a\u00020\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J+\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0015\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/truecaller/whoviewedme/WhoViewedMeActivity;",
        "Ln3/b/a/h;",
        "Le/a/l/n2/k;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/MenuItem;",
        "item",
        "",
        "onOptionsItemSelected",
        "(Landroid/view/MenuItem;)Z",
        "",
        "paymentId",
        "Lcom/razorpay/PaymentData;",
        "paymentData",
        "onPaymentSuccess",
        "(Ljava/lang/String;Lcom/razorpay/PaymentData;)V",
        "",
        "errorCode",
        "description",
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
        "()V",
        "a",
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
    invoke-direct {p0}, Le/a/r5/g;-><init>()V

    return-void
.end method

.method public static final pa(Landroid/content/Context;Lcom/truecaller/whoviewedme/WhoViewedMeLaunchContext;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launchContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/whoviewedme/WhoViewedMeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "launch_context"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "Intent(context, WhoViewe\u2026H_CONTEXT, launchContext)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public O(Le/a/l/n2/k$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/whoviewedme/WhoViewedMeActivity;->d:Le/a/l/n2/k$a;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Le/a/l4/k;->m0(Landroid/app/Activity;Z)V

    .line 2
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0d0063

    .line 3
    invoke-virtual {p0, v1}, Ln3/b/a/h;->setContentView(I)V

    const v1, 0x7f0a1270

    .line 4
    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 5
    invoke-virtual {p0, v1}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 6
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ln3/b/a/a;->n(Z)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ln3/b/a/a;->o(Z)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f1207dc

    invoke-virtual {v0, v1}, Ln3/b/a/a;->x(I)V

    :cond_2
    if-nez p1, :cond_4

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "launch_context"

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/truecaller/whoviewedme/WhoViewedMeLaunchContext;->UNKNOWN:Lcom/truecaller/whoviewedme/WhoViewedMeLaunchContext;

    :goto_0
    const-string v1, "null cannot be cast to non-null type com.truecaller.whoviewedme.WhoViewedMeLaunchContext"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/whoviewedme/WhoViewedMeLaunchContext;

    .line 10
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 11
    new-instance v2, Ln3/r/a/a;

    invoke-direct {v2, v1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const v1, 0x7f0a142b

    const-string v3, "launchContext"

    .line 12
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v3, Le/a/r5/v;

    invoke-direct {v3}, Le/a/r5/v;-><init>()V

    .line 14
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 15
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/4 p1, 0x0

    .line 17
    invoke-virtual {v2, v1, v3, p1}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 18
    invoke-virtual {v2}, Ln3/r/a/a;->f()I

    :cond_4
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPaymentError(ILjava/lang/String;Lcom/razorpay/PaymentData;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/truecaller/whoviewedme/WhoViewedMeActivity;->d:Le/a/l/n2/k$a;

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p3, p1, p2}, Le/a/l/n2/k$a;->onPaymentError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPaymentSuccess(Ljava/lang/String;Lcom/razorpay/PaymentData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/whoviewedme/WhoViewedMeActivity;->d:Le/a/l/n2/k$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Le/a/l/n2/k$a;->a(Ljava/lang/String;Lcom/razorpay/PaymentData;)V

    :cond_0
    return-void
.end method
