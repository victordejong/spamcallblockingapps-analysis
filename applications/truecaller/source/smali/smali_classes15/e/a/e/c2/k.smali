.class public final synthetic Le/a/e/c2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# instance fields
.field public final synthetic a:Le/a/e/c2/f0;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c2/f0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c2/k;->a:Le/a/e/c2/f0;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Le/a/e/c2/k;->a:Le/a/e/c2/f0;

    check-cast p1, Landroid/view/View;

    .line 1
    iget-object p1, v0, Le/a/e/c2/f0;->b:Le/a/e/c2/f0$b;

    iget-object v0, v0, Le/a/e/c2/f0;->c:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    check-cast p1, Le/a/w4/s/c0$c;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v1

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v1

    .line 4
    iget-object v0, v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->k:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->asAnalyticsContext()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;->INVITE:Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;

    invoke-static {v0, v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent;->i(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    .line 6
    invoke-interface {v1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 7
    iget-object v0, p1, Le/a/w4/s/c0$c;->a:Le/a/w4/s/c0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    const-string v1, "ReferralManagerImpl"

    invoke-static {v0, v1}, Le/a/q4/l0;->PA(Ln3/r/a/l;Ljava/lang/String;)Lcom/truecaller/referral/ReferralManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v1, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->SEARCH_SCREEN_PROMO:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    check-cast v0, Le/a/q4/l0;

    invoke-virtual {v0, v1}, Le/a/q4/l0;->Ef(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    iget-object p1, v0, Le/a/q4/l0;->c:Le/a/q4/o0;

    invoke-virtual {p1, v1}, Le/a/q4/o0;->Xa(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p1, Le/a/w4/s/c0$c;->a:Le/a/w4/s/c0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SearchScreenPromo"

    invoke-static {v0, v1}, Lcom/truecaller/analytics/ChosenComponentReceiver;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v6

    .line 12
    iget-object v0, p1, Le/a/w4/s/c0$c;->a:Le/a/w4/s/c0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Le/a/w4/s/c0$c;->a:Le/a/w4/s/c0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f12036b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p1, Le/a/w4/s/c0$c;->a:Le/a/w4/s/c0;

    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1206ba

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Le/a/w4/s/c0$c;->a:Le/a/w4/s/c0;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1206b9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 14
    invoke-static/range {v1 .. v6}, Le/a/b0/q/g0;->S(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/content/IntentSender;)Z

    .line 15
    invoke-static {}, Le/d/c/a/a;->m1()Le/a/q2/a;

    move-result-object p1

    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;->SHARE:Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;

    const-string v1, "globalSearchHistory"

    invoke-static {v1, v0}, Lcom/truecaller/analytics/common/event/ViewActionEvent;->i(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 16
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
