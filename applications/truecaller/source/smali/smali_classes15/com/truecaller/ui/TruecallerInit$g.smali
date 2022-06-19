.class public Lcom/truecaller/ui/TruecallerInit$g;
.super Landroidx/drawerlayout/widget/DrawerLayout$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/ui/TruecallerInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lcom/truecaller/ui/TruecallerInit;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/TruecallerInit;Lcom/truecaller/ui/TruecallerInit$b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/TruecallerInit$g;->d:Lcom/truecaller/ui/TruecallerInit;

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout$e;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/truecaller/ui/TruecallerInit$g;->a:Z

    .line 3
    iput-boolean p1, p0, Lcom/truecaller/ui/TruecallerInit$g;->b:Z

    .line 4
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/truecaller/ui/TruecallerInit$g;->c:Landroid/util/SparseArray;

    const p2, 0x7f0a0651

    const-string v0, "inboxCleanup"

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f0a144d

    const-string v0, "yourYearOnTruecaller"

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f0a065b

    const-string v0, "whoViewedMyProfile"

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f0a0655

    const-string v0, "qrScanner"

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f0a0653

    const-string v0, "notifications"

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f0a0649

    const-string v0, "manageBlocking"

    .line 10
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f0a064a

    const-string v0, "callRecording"

    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f0a0654

    const-string v0, "personalSafety"

    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f0a065a

    const-string v0, "truecallerNews"

    .line 13
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f0a0659

    const-string v0, "shareTruecaller"

    .line 14
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f0a0656

    const-string v0, "inviteFriends"

    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f0a0658

    const-string v0, "settings"

    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f0a0657

    const-string v0, "sendFeedback"

    .line 17
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f0a064d

    const-string v0, "faq"

    .line 18
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f0a064c

    const-string v0, "covidDirectory"

    .line 19
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f0a0650

    const-string v0, "help"

    .line 20
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/truecaller/ui/TruecallerInit$g;->d:Lcom/truecaller/ui/TruecallerInit;

    iget-object p1, p1, Lcom/truecaller/ui/TruecallerInit;->q1:Lcom/truecaller/premium/ui/PremiumNavDrawerItemView;

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p1, Lcom/truecaller/premium/ui/PremiumNavDrawerItemView;->t:Le/a/l/v2/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/a/l/v2/d;->Ij()V

    goto :goto_0

    :cond_0
    const-string p1, "viewPresenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/truecaller/ui/TruecallerInit$g;->d:Lcom/truecaller/ui/TruecallerInit;

    .line 4
    iget-object v0, p1, Lcom/truecaller/ui/TruecallerInit;->o:Lcom/truecaller/ui/components/DrawerHeaderView;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/truecaller/ui/TruecallerInit;->g:Lcom/truecaller/TrueApp;

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->W()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p1, Lcom/truecaller/ui/TruecallerInit;->o:Lcom/truecaller/ui/components/DrawerHeaderView;

    iget-object v1, p1, Lcom/truecaller/ui/TruecallerInit;->m0:Lo3/a;

    .line 6
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l/p2/v0;

    invoke-interface {v1}, Le/a/l/p2/v0;->D2()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/truecaller/ui/TruecallerInit;->x0:Le/a/b0/o/a;

    const-string v2, "profileIsCredUser"

    .line 7
    invoke-interface {p1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 8
    invoke-virtual {v0, v1, p1}, Lcom/truecaller/ui/components/DrawerHeaderView;->g1(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/truecaller/ui/TruecallerInit$g;->d:Lcom/truecaller/ui/TruecallerInit;

    .line 2
    iget v0, p1, Lcom/truecaller/ui/TruecallerInit;->B:I

    const v1, 0x7f0a0651

    const-string v2, "Drawer"

    const/4 v6, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity;->a:Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity$a;->a(Landroid/content/Context;Lcom/truecaller/messaging/inboxcleanup/CleanupResult;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_0
    const v1, 0x7f0a064c

    if-ne v0, v1, :cond_1

    .line 4
    sget-object v0, Lcom/truecaller/bizmon/governmentServices/ui/activities/GovernmentServicesActivity;->e:Lcom/truecaller/bizmon/governmentServices/ui/activities/GovernmentServicesActivity$a;

    const-string v1, "nav_covid_directory"

    invoke-virtual {v0, p1, v1}, Lcom/truecaller/bizmon/governmentServices/ui/activities/GovernmentServicesActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_1
    const v1, 0x7f0a144d

    const-string v3, "source"

    const-string v4, "context"

    if-ne v0, v1, :cond_2

    const-string v0, "DrawerMenu"

    .line 5
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/stats/StatsActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_2
    const v1, 0x7f0a0655

    if-ne v0, v1, :cond_3

    .line 8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x1b5d

    invoke-virtual {p1, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 9
    iget-object p1, p1, Lcom/truecaller/ui/TruecallerInit;->m:Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->c(I)V

    goto/16 :goto_1

    :cond_3
    const v1, 0x7f0a0653

    if-ne v0, v1, :cond_4

    .line 10
    invoke-static {p1}, Le/a/i4/y/d;->cB(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_4
    const v1, 0x7f0a064d

    if-ne v0, v1, :cond_5

    const-string v0, "https://support.truecaller.com/hc/en-us/categories/201513109-Android"

    .line 11
    invoke-static {p1, v0, v6}, Le/a/e/a2;->S(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto/16 :goto_1

    :cond_5
    const v1, 0x7f0a065b

    if-ne v0, v1, :cond_6

    .line 12
    sget-object v0, Lcom/truecaller/whoviewedme/WhoViewedMeLaunchContext;->NAVIGATION_DRAWER:Lcom/truecaller/whoviewedme/WhoViewedMeLaunchContext;

    invoke-static {p1, v0}, Lcom/truecaller/whoviewedme/WhoViewedMeActivity;->pa(Landroid/content/Context;Lcom/truecaller/whoviewedme/WhoViewedMeLaunchContext;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_6
    const v1, 0x7f0a0650

    if-ne v0, v1, :cond_7

    .line 13
    sget-object v2, Lcom/truecaller/ui/settings/SettingsCategory;->SETTINGS_HELP:Lcom/truecaller/ui/settings/SettingsCategory;

    const/4 v3, 0x0

    .line 14
    sget-object v0, Lcom/truecaller/ui/settings/SettingsActivity;->g:Lcom/truecaller/ui/settings/SettingsActivity$a;

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/truecaller/ui/settings/SettingsActivity$a;->b(Lcom/truecaller/ui/settings/SettingsActivity$a;Landroid/content/Context;Lcom/truecaller/ui/settings/SettingsCategory;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_7
    const v1, 0x7f0a0657

    const-string v7, "sideBar"

    if-ne v0, v1, :cond_8

    .line 16
    iget-object v0, p1, Lcom/truecaller/ui/TruecallerInit;->r0:Le/a/q2/a;

    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;->FEEDBACK:Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;

    invoke-static {v7, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;->i(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 17
    sget-object v0, Lcom/truecaller/ui/SingleActivity$FragmentSingle;->FEEDBACK_FORM:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    invoke-static {p1, v0}, Lcom/truecaller/ui/SingleActivity;->ua(Landroid/content/Context;Lcom/truecaller/ui/SingleActivity$FragmentSingle;)Landroid/content/Intent;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/truecaller/ui/TruecallerInit$g;->d:Lcom/truecaller/ui/TruecallerInit;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_8
    const v1, 0x7f0a0659

    if-ne v0, v1, :cond_9

    .line 19
    invoke-static {p1, v2}, Lcom/truecaller/analytics/ChosenComponentReceiver;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    .line 21
    iget-object v0, p0, Lcom/truecaller/ui/TruecallerInit$g;->d:Lcom/truecaller/ui/TruecallerInit;

    invoke-virtual {v0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12036b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/truecaller/ui/TruecallerInit$g;->d:Lcom/truecaller/ui/TruecallerInit;

    .line 22
    invoke-virtual {v0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1206ba

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/truecaller/ui/TruecallerInit$g;->d:Lcom/truecaller/ui/TruecallerInit;

    invoke-virtual {v0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1206b9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p1

    .line 23
    invoke-static/range {v0 .. v5}, Le/a/b0/q/g0;->S(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/content/IntentSender;)Z

    .line 24
    iget-object p1, p0, Lcom/truecaller/ui/TruecallerInit$g;->d:Lcom/truecaller/ui/TruecallerInit;

    iget-object p1, p1, Lcom/truecaller/ui/TruecallerInit;->r0:Le/a/q2/a;

    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;->SHARE:Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;

    invoke-static {v7, v0}, Lcom/truecaller/analytics/common/event/ViewActionEvent;->i(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    goto/16 :goto_1

    :cond_9
    const v1, 0x7f0a0656

    if-ne v0, v1, :cond_a

    .line 25
    iget-object p1, p1, Lcom/truecaller/ui/TruecallerInit;->T:Lcom/truecaller/referral/ReferralManager;

    if-eqz p1, :cond_13

    .line 26
    sget-object v0, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->NAVIGATION_DRAWER:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    invoke-interface {p1, v0}, Lcom/truecaller/referral/ReferralManager;->Xa(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V

    goto/16 :goto_1

    :cond_a
    const v1, 0x7f0a0658

    if-ne v0, v1, :cond_b

    .line 27
    sget-object v0, Lcom/truecaller/ui/settings/SettingsCategory;->SETTINGS_MAIN:Lcom/truecaller/ui/settings/SettingsCategory;

    invoke-static {p1, v0}, Lcom/truecaller/ui/settings/SettingsActivity;->ua(Landroid/content/Context;Lcom/truecaller/ui/settings/SettingsCategory;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_b
    const v1, 0x7f0a064a

    if-ne v0, v1, :cond_d

    .line 28
    iget-object v0, p1, Lcom/truecaller/ui/TruecallerInit;->Q0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Le/a/k0/a/e;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 29
    iget-object v0, p0, Lcom/truecaller/ui/TruecallerInit$g;->d:Lcom/truecaller/ui/TruecallerInit;

    iget-object v0, v0, Lcom/truecaller/ui/TruecallerInit;->X0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k0/f;

    invoke-interface {v0, v6}, Le/a/k0/f;->J0(Z)V

    .line 30
    :cond_c
    sget v0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->R:I

    .line 31
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/calling/recorder/CallRecordingListActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_d
    const v1, 0x7f0a0649

    if-ne v0, v1, :cond_10

    .line 35
    iget-object v0, p1, Lcom/truecaller/ui/TruecallerInit;->g:Lcom/truecaller/TrueApp;

    .line 36
    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->W()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Le/a/r/t/c;->ya()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    .line 37
    :cond_e
    iget-object v0, p0, Lcom/truecaller/ui/TruecallerInit$g;->d:Lcom/truecaller/ui/TruecallerInit;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/filters/blockedevents/BlockedEventsActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 38
    :cond_f
    :goto_0
    new-instance v0, Ln3/b/a/g$a;

    invoke-direct {v0, p1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1206bd

    .line 39
    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    const v1, 0x7f120da3

    .line 40
    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    const v1, 0x7f120da2

    new-instance v2, Le/a/e/w;

    invoke-direct {v2, p0, p1}, Le/a/e/w;-><init>(Lcom/truecaller/ui/TruecallerInit$g;Lcom/truecaller/ui/TruecallerInit;)V

    .line 41
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 42
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    goto :goto_1

    :cond_10
    const v1, 0x7f0a064b

    if-ne v0, v1, :cond_11

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/ui/settings/appearance/AppearanceSettingsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_11
    const v1, 0x7f0a0654

    if-ne v0, v1, :cond_12

    const-string v0, "side_menu"

    .line 44
    sget v1, Lcom/truecaller/personalsafety/awareness/ui/PersonalSafetyAwarenessActivity;->a:I

    .line 45
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/personalsafety/awareness/ui/PersonalSafetyAwarenessActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_12
    const v1, 0x7f0a065a

    if-ne v0, v1, :cond_13

    const-string v0, "sidebar"

    .line 48
    sget v1, Lcom/truecaller/social_media/presentation/view/SocialMediaLinksActivity;->a:I

    .line 49
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/social_media/presentation/view/SocialMediaLinksActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 53
    :cond_13
    :goto_1
    iget-object p1, p0, Lcom/truecaller/ui/TruecallerInit$g;->c:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/truecaller/ui/TruecallerInit$g;->d:Lcom/truecaller/ui/TruecallerInit;

    .line 54
    iget v0, v0, Lcom/truecaller/ui/TruecallerInit;->B:I

    .line 55
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_14

    .line 56
    iget-object v0, p0, Lcom/truecaller/ui/TruecallerInit$g;->d:Lcom/truecaller/ui/TruecallerInit;

    .line 57
    invoke-virtual {v0, p1}, Lcom/truecaller/ui/TruecallerInit;->Ja(Ljava/lang/String;)V

    goto :goto_2

    .line 58
    :cond_14
    iget-object p1, p0, Lcom/truecaller/ui/TruecallerInit$g;->d:Lcom/truecaller/ui/TruecallerInit;

    .line 59
    iget v0, p1, Lcom/truecaller/ui/TruecallerInit;->B:I

    if-nez v0, :cond_15

    const-string v0, "dismiss"

    .line 60
    invoke-virtual {p1, v0}, Lcom/truecaller/ui/TruecallerInit;->Ja(Ljava/lang/String;)V

    .line 61
    :cond_15
    :goto_2
    iget-object p1, p0, Lcom/truecaller/ui/TruecallerInit$g;->d:Lcom/truecaller/ui/TruecallerInit;

    .line 62
    iput v6, p1, Lcom/truecaller/ui/TruecallerInit;->B:I

    return-void
.end method

.method public c(I)V
    .locals 5

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iput-boolean v0, p0, Lcom/truecaller/ui/TruecallerInit$g;->b:Z

    goto :goto_1

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/truecaller/ui/TruecallerInit$g;->d:Lcom/truecaller/ui/TruecallerInit;

    iget-object v0, p1, Lcom/truecaller/ui/TruecallerInit;->m:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object p1, p1, Lcom/truecaller/ui/TruecallerInit;->n:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->r(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    iget-boolean v0, p0, Lcom/truecaller/ui/TruecallerInit$g;->a:Z

    if-nez v0, :cond_3

    .line 4
    iget-boolean v0, p0, Lcom/truecaller/ui/TruecallerInit$g;->b:Z

    const-string v1, "Method"

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Swipe"

    .line 6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "MenuButton"

    .line 8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/truecaller/ui/TruecallerInit$g;->d:Lcom/truecaller/ui/TruecallerInit;

    iget-object v1, v1, Lcom/truecaller/ui/TruecallerInit;->r0:Le/a/q2/a;

    .line 10
    new-instance v2, Le/a/q2/g$b$a;

    const-string v3, "ANDROID_MAIN_Menu_Opened"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0, v4}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    .line 11
    invoke-interface {v1, v2}, Le/a/q2/a;->e(Le/a/q2/g;)V

    :cond_3
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/truecaller/ui/TruecallerInit$g;->b:Z

    .line 13
    iput-boolean p1, p0, Lcom/truecaller/ui/TruecallerInit$g;->a:Z

    :goto_1
    return-void
.end method
