.class public final synthetic Le/a/q4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/q4/l0;

.field public final synthetic b:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;


# direct methods
.method public synthetic constructor <init>(Le/a/q4/l0;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q4/h;->a:Le/a/q4/l0;

    iput-object p2, p0, Le/a/q4/h;->b:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Le/a/q4/h;->a:Le/a/q4/l0;

    iget-object p2, p0, Le/a/q4/h;->b:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 1
    iget-object p1, p1, Le/a/q4/l0;->c:Le/a/q4/o0;

    .line 2
    iput-object p2, p1, Le/a/q4/o0;->s:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 3
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 4
    iget-object v0, p1, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v1, "referralLink"

    invoke-interface {v0, v1}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object p2, Le/a/q4/o0$b;->a:Le/a/q4/o0$b;

    iput-object p2, p1, Le/a/q4/o0;->r:Le/a/q4/o0$b;

    .line 6
    iget-object p2, p1, Le/a/q4/o0;->f:Le/a/q4/p0;

    invoke-virtual {p2, p1}, Le/a/q4/p0;->a(Le/a/w/b/a$a;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/q4/m0;

    iget-object v1, p1, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v2, "referralCode"

    invoke-interface {v1, v2}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Le/a/q4/o0;->Kj()Lcom/truecaller/referral/ReferralUrl;

    move-result-object v2

    iget-object p1, p1, Le/a/q4/o0;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p2, p1}, Le/a/q4/m0;->Iv(Ljava/lang/String;Lcom/truecaller/referral/ReferralUrl;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
