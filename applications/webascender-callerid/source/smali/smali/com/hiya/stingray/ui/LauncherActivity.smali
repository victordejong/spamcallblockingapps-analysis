.class public Lcom/hiya/stingray/ui/LauncherActivity;
.super Lcom/hiya/stingray/ui/common/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/LauncherActivity$b;
    }
.end annotation


# instance fields
.field private A:Lcom/hiya/stingray/t/d0;

.field private B:Lcom/hiya/stingray/t/d0;

.field r:Lcom/hiya/stingray/manager/i1;

.field s:Lcom/hiya/stingray/manager/h4;

.field t:Lcom/hiya/stingray/ui/login/o;

.field u:Lcom/hiya/stingray/manager/e1;

.field v:Lcom/hiya/stingray/t/i1/t0;

.field w:Lcom/hiya/stingray/manager/b1;

.field x:Lcom/hiya/stingray/manager/u3;

.field y:Lcom/hiya/stingray/manager/d3;

.field z:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/e;-><init>()V

    return-void
.end method

.method private O(Landroid/content/Intent;)Lcom/hiya/stingray/ui/LauncherActivity$b;
    .locals 3

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/LauncherActivity$b;->HOME_SCREEN:Lcom/hiya/stingray/ui/LauncherActivity$b;

    const-string v1, "upgrade_from_notification"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v0, Lcom/hiya/stingray/ui/LauncherActivity$b;->PREMIUM_UPSELL:Lcom/hiya/stingray/ui/LauncherActivity$b;

    goto :goto_0

    :cond_0
    const-string v1, "REPORT_CONTACT_DETAIL"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/t/d0;

    iput-object v0, p0, Lcom/hiya/stingray/ui/LauncherActivity;->B:Lcom/hiya/stingray/t/d0;

    .line 6
    sget-object v0, Lcom/hiya/stingray/ui/LauncherActivity$b;->REPORT_SCREEN:Lcom/hiya/stingray/ui/LauncherActivity$b;

    goto :goto_0

    :cond_1
    const-string v1, "CONTACT_DETAIL_FROM_POST_CALL_TOUCH"

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/t/d0;

    iput-object v0, p0, Lcom/hiya/stingray/ui/LauncherActivity;->A:Lcom/hiya/stingray/t/d0;

    .line 9
    sget-object v0, Lcom/hiya/stingray/ui/LauncherActivity$b;->CONTACT_DETAIL:Lcom/hiya/stingray/ui/LauncherActivity$b;

    goto :goto_0

    :cond_2
    const-string v1, "CONTACT_DETAIL_FROM_NOTIFICATION"

    .line 10
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/t/d0;

    iput-object v0, p0, Lcom/hiya/stingray/ui/LauncherActivity;->A:Lcom/hiya/stingray/t/d0;

    .line 12
    sget-object v0, Lcom/hiya/stingray/ui/LauncherActivity$b;->CONTACT_DETAIL:Lcom/hiya/stingray/ui/LauncherActivity$b;

    .line 13
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/LauncherActivity;->V(Landroid/content/Intent;)V

    .line 14
    iget-object p1, p0, Lcom/hiya/stingray/ui/LauncherActivity;->y:Lcom/hiya/stingray/manager/d3;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/d3;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    sget-object v0, Lcom/hiya/stingray/ui/LauncherActivity$b;->ONBOARDING:Lcom/hiya/stingray/ui/LauncherActivity$b;

    :cond_4
    return-object v0
.end method

.method private P()V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    .line 2
    const-class v1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailActivity;

    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/ui/LauncherActivity;->A:Lcom/hiya/stingray/t/d0;

    invoke-static {p0, v1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailActivity;->O(Landroid/content/Context;Lcom/hiya/stingray/t/d0;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 4
    invoke-virtual {v0}, Landroid/app/TaskStackBuilder;->startActivities()V

    return-void
.end method

.method private Q()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SCROLL_TO_TOP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private R()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hiya/stingray/ui/login/OnBoardingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private S()V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    .line 2
    const-class v1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailActivity;

    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/ui/LauncherActivity;->B:Lcom/hiya/stingray/t/d0;

    invoke-static {p0, v1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailActivity;->O(Landroid/content/Context;Lcom/hiya/stingray/t/d0;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 4
    iget-object v1, p0, Lcom/hiya/stingray/ui/LauncherActivity;->B:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/hiya/stingray/ui/submitreport/ReportActivity;->O(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 5
    invoke-virtual {v0}, Landroid/app/TaskStackBuilder;->startActivities()V

    return-void
.end method

.method private T()V
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/premium/upsell/c$b;->POSTCALL_AUTOBLOCK:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    invoke-static {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity;->O(Landroid/content/Context;Lcom/hiya/stingray/ui/premium/upsell/c$b;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private U(Lcom/hiya/stingray/ui/LauncherActivity$b;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/LauncherActivity$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/ui/LauncherActivity;->T()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/LauncherActivity;->B:Lcom/hiya/stingray/t/d0;

    if-eqz p1, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/LauncherActivity;->S()V

    goto :goto_0

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Try to launch report screen but reportCallLogItem is null"

    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/ui/LauncherActivity;->Q()V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/hiya/stingray/ui/LauncherActivity;->A:Lcom/hiya/stingray/t/d0;

    if-eqz p1, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/hiya/stingray/ui/LauncherActivity;->P()V

    goto :goto_0

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Try to launch contact detail but callLogItem is null"

    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-direct {p0}, Lcom/hiya/stingray/ui/LauncherActivity;->Q()V

    goto :goto_0

    .line 11
    :cond_5
    invoke-direct {p0}, Lcom/hiya/stingray/ui/LauncherActivity;->Q()V

    goto :goto_0

    .line 12
    :cond_6
    invoke-direct {p0}, Lcom/hiya/stingray/ui/LauncherActivity;->R()V

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private V(Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "app_launch"

    if-eqz v0, :cond_0

    const-string v0, "launch_action_by_user"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/LauncherActivity;->u:Lcom/hiya/stingray/manager/e1;

    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {v2}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/LauncherActivity;->u:Lcom/hiya/stingray/manager/e1;

    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v0

    const-string v2, "other"

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->z()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->U(Lcom/hiya/stingray/ui/LauncherActivity;)V

    const p1, 0x7f140003

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0}, Landroidx/preference/c;->j(Landroid/content/Context;IZ)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/LauncherActivity;->O(Landroid/content/Intent;)Lcom/hiya/stingray/ui/LauncherActivity$b;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/LauncherActivity;->U(Lcom/hiya/stingray/ui/LauncherActivity$b;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method
