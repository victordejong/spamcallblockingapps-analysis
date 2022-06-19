.class public Le/n/b/i0;
.super Lcom/mopub/common/BaseUrlGenerator;
.source "SourceFile"


# instance fields
.field public e:Landroid/content/Context;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/Boolean;

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;-><init>()V

    .line 2
    iput-object p1, p0, Le/n/b/i0;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/n/b/i0;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/n/b/i0;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    const-string v1, "/m/open"

    .line 2
    invoke-virtual {p0, p1, v1}, Lcom/mopub/common/BaseUrlGenerator;->g(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "v"

    const-string v1, "6"

    .line 3
    invoke-virtual {p0, p1, v1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    const-string v1, "av"

    .line 5
    invoke-virtual {p0, v1, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/mopub/common/BaseUrlGenerator;->c()V

    const-string p1, "os"

    const-string v1, "android"

    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Le/n/b/i0;->f:Ljava/lang/String;

    const-string v1, "adunit"

    invoke-virtual {p0, v1, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Le/n/b/i0;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "id"

    invoke-virtual {p0, v1, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Le/n/b/i0;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "bundle"

    invoke-virtual {p0, v1, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x2

    .line 13
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceProduct()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    .line 14
    invoke-virtual {p0, p1}, Lcom/mopub/common/BaseUrlGenerator;->h([Ljava/lang/String;)V

    .line 15
    iget-boolean p1, p0, Le/n/b/i0;->l:Z

    if-eqz p1, :cond_0

    .line 16
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "st"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    const-string p1, "nv"

    const-string v0, "5.16.4"

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/mopub/common/BaseUrlGenerator;->d()V

    .line 19
    invoke-virtual {p0}, Lcom/mopub/common/BaseUrlGenerator;->e()V

    .line 20
    iget-object p1, p0, Le/n/b/i0;->g:Ljava/lang/String;

    const-string v0, "current_consent_status"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Le/n/b/i0;->h:Ljava/lang/String;

    const-string v0, "consented_vendor_list_version"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Le/n/b/i0;->i:Ljava/lang/String;

    const-string v0, "consented_privacy_policy_version"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Le/n/b/i0;->j:Ljava/lang/Boolean;

    const-string v0, "gdpr_applies"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 24
    iget-boolean p1, p0, Le/n/b/i0;->k:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "force_gdpr_applies"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 25
    invoke-virtual {p0}, Lcom/mopub/common/BaseUrlGenerator;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public withConsentedPrivacyPolicyVersion(Ljava/lang/String;)Le/n/b/i0;
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/b/i0;->i:Ljava/lang/String;

    return-object p0
.end method

.method public withConsentedVendorListVersion(Ljava/lang/String;)Le/n/b/i0;
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/b/i0;->h:Ljava/lang/String;

    return-object p0
.end method

.method public withCurrentConsentStatus(Ljava/lang/String;)Le/n/b/i0;
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/b/i0;->g:Ljava/lang/String;

    return-object p0
.end method

.method public withForceGdprApplies(Z)Le/n/b/i0;
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/n/b/i0;->k:Z

    return-object p0
.end method

.method public withGdprApplies(Ljava/lang/Boolean;)Le/n/b/i0;
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/b/i0;->j:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withSessionTracker(Z)Le/n/b/i0;
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/n/b/i0;->l:Z

    return-object p0
.end method
