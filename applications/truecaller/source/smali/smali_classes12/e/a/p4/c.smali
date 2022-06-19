.class public final Le/a/p4/c;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/p4/b;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    return-void
.end method


# virtual methods
.method public B1()Z
    .locals 2

    const-string v0, "imDebugVersioning"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public B2()Z
    .locals 2

    const-string v0, "delayImAttachmentSending"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public E2()Z
    .locals 1

    const-string v0, "imEmptyUserInfo"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public F1()Ljava/lang/String;
    .locals 1

    const-string v0, "premiumDebugSubscriptions"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F2(Ljava/lang/String;)V
    .locals 1

    const-string v0, "business_custom_replies"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public H1(Z)V
    .locals 1

    const-string v0, "qaEnableDomainFronting"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public L1(Z)V
    .locals 1

    const-string v0, "\u0448sUseDebugSubscriptions"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public N1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "premiumDebugSubscriptions"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public O1(Z)V
    .locals 1

    const-string v0, "imDebugVersioning"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public O2()Ljava/lang/String;
    .locals 1

    const-string v0, "business_custom_replies"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public P0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "premiumGoldTopImageUrl"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 1

    const-string v0, "premiumTopImageUrl"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public R0()Z
    .locals 2

    const-string v0, "delayImAttachmentUploads"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public S()Z
    .locals 1

    const-string v0, "qaUseRazorPayLiveKey"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public S1()Ljava/lang/String;
    .locals 1

    const-string v0, "premiumGoldTopImageUrl"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public T2(Z)V
    .locals 1

    const-string v0, "qaDisableFirebaseConfig"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public U0(Z)V
    .locals 1

    const-string v0, "qaExpireImAttachments"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public V2()Ljava/lang/String;
    .locals 1

    const-string v0, "premiumTopImageUrl"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public W1(Z)V
    .locals 1

    const-string v0, "qaAbTestEnableLocalConfig"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public Y0()Z
    .locals 2

    const-string v0, "qaEnableDomainFronting"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Y1()Z
    .locals 2

    const-string v0, "finish_truecaller_init"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Z0(Z)V
    .locals 1

    const-string v0, "finish_truecaller_init"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public Z2(Z)V
    .locals 1

    const-string v0, "imEmptyUserInfo"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public a1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "qaForcedInboxBanner"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a3(Z)V
    .locals 1

    const-string v0, "useShortUrgentMessageExpiry"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public d3()Z
    .locals 1

    const-string v0, "qaDisableFirebaseConfig"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public g2()Z
    .locals 1

    const-string v0, "\u0448sUseDebugSubscriptions"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public h1()Z
    .locals 1

    const-string v0, "qaAddSamplePremiumCards"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public j3()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public k0()Z
    .locals 1

    const-string v0, "qaAbTestEnableLocalConfig"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public k2(Z)V
    .locals 1

    const-string v0, "qaUseRazorPayLiveKey"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    const-string v0, "qa-menu"

    return-object v0
.end method

.method public l1(Z)V
    .locals 1

    const-string v0, "shouldTreatSmsAsUrgent"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public m0()Z
    .locals 2

    const-string v0, "qaExpireImAttachments"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m1(Z)V
    .locals 1

    const-string v0, "delayImAttachmentSending"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public n0()Ljava/lang/String;
    .locals 1

    const-string v0, "disabledPremiumFeatures"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n1(Z)V
    .locals 1

    const-string v0, "qaAddSamplePremiumCards"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ge p1, p2, :cond_0

    const-string p1, "premiumDebugSubscriptions"

    .line 1
    invoke-virtual {p0, p1}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public p0()Z
    .locals 2

    const-string v0, "shouldTreatSmsAsUrgent"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public q1()Z
    .locals 2

    const-string v0, "useShortUrgentMessageExpiry"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public q2(Z)V
    .locals 1

    const-string v0, "imDebugCommands"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public t2()Z
    .locals 2

    const-string v0, "imDebugCommands"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public u(Z)V
    .locals 1

    const-string v0, "delayImAttachmentUploads"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public v2(Ljava/lang/String;)V
    .locals 1

    const-string v0, "disabledPremiumFeatures"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public x2()Ljava/lang/String;
    .locals 1

    const-string v0, "qaForcedInboxBanner"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
