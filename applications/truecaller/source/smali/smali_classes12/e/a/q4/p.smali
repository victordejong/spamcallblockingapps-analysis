.class public final synthetic Le/a/q4/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/q4/r0;


# direct methods
.method public synthetic constructor <init>(Le/a/q4/r0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q4/p;->a:Le/a/q4/r0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Le/a/q4/p;->a:Le/a/q4/r0;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Referral"

    invoke-static {v0, v1}, Lcom/truecaller/analytics/ChosenComponentReceiver;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v6

    .line 4
    iget-object v0, p1, Le/a/q4/r0;->c:Lcom/truecaller/referral/ReferralUrl;

    sget-object v1, Lcom/truecaller/referral/ReferralUrl$b;->k:Lcom/truecaller/referral/ReferralUrl$b;

    .line 5
    iput-object v1, v0, Lcom/truecaller/referral/ReferralUrl;->a:Lcom/truecaller/referral/ReferralUrl$b;

    .line 6
    invoke-virtual {v0}, Lcom/truecaller/referral/ReferralUrl;->a()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120eb1

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1206ba

    .line 8
    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120e8b

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const/4 v0, 0x1

    iget-object v7, p1, Le/a/q4/r0;->g:Ljava/lang/String;

    aput-object v7, v5, v0

    .line 9
    invoke-virtual {p1, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 10
    invoke-static/range {v1 .. v6}, Le/a/b0/q/g0;->S(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/content/IntentSender;)Z

    return-void
.end method
