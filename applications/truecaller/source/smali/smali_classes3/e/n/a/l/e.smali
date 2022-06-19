.class public Le/n/a/l/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/privacy/ConsentData;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/mopub/common/privacy/ConsentStatus;

.field public e:Lcom/mopub/common/privacy/ConsentStatus;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Lcom/mopub/common/privacy/ConsentStatus;

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Z

.field public w:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/n/a/l/e;->a:Landroid/content/Context;

    .line 4
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    iput-object v0, p0, Le/n/a/l/e;->d:Lcom/mopub/common/privacy/ConsentStatus;

    const-string v1, ""

    .line 5
    iput-object v1, p0, Le/n/a/l/e;->b:Ljava/lang/String;

    const-string v2, "com.mopub.privacy"

    .line 6
    invoke-static {p1, v2}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "info/adunit"

    .line 7
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Le/n/a/l/e;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "info/cached_last_ad_unit_id_used_for_init"

    .line 8
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Le/n/a/l/e;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v3, "info/consent_status"

    .line 10
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/privacy/ConsentStatus;->fromString(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    iput-object v0, p0, Le/n/a/l/e;->d:Lcom/mopub/common/privacy/ConsentStatus;

    const-string v0, "info/last_successfully_synced_consent_status"

    .line 11
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    iput-object v2, p0, Le/n/a/l/e;->e:Lcom/mopub/common/privacy/ConsentStatus;

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v0}, Lcom/mopub/common/privacy/ConsentStatus;->fromString(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    iput-object v0, p0, Le/n/a/l/e;->e:Lcom/mopub/common/privacy/ConsentStatus;

    :goto_0
    const/4 v0, 0x0

    const-string v3, "info/is_whitelisted"

    .line 15
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Le/n/a/l/e;->k:Z

    const-string v3, "info/current_vendor_list_version"

    .line 16
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Le/n/a/l/e;->l:Ljava/lang/String;

    const-string v3, "info/current_vendor_list_link"

    .line 17
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Le/n/a/l/e;->m:Ljava/lang/String;

    const-string v3, "info/current_privacy_policy_version"

    .line 18
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Le/n/a/l/e;->n:Ljava/lang/String;

    const-string v3, "info/current_privacy_policy_link"

    .line 19
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Le/n/a/l/e;->o:Ljava/lang/String;

    const-string v3, "info/current_vendor_list_iab_format"

    .line 20
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Le/n/a/l/e;->p:Ljava/lang/String;

    const-string v3, "info/current_vendor_list_iab_hash"

    .line 21
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Le/n/a/l/e;->q:Ljava/lang/String;

    const-string v3, "info/consented_vendor_list_version"

    .line 22
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Le/n/a/l/e;->r:Ljava/lang/String;

    const-string v3, "info/consented_privacy_policy_version"

    .line 23
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Le/n/a/l/e;->s:Ljava/lang/String;

    const-string v3, "info/consented_vendor_list_iab_format"

    .line 24
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Le/n/a/l/e;->t:Ljava/lang/String;

    const-string v3, "info/extras"

    .line 25
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Le/n/a/l/e;->u:Ljava/lang/String;

    const-string v3, "info/consent_change_reason"

    .line 26
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Le/n/a/l/e;->f:Ljava/lang/String;

    const-string v3, "info/reacquire_consent"

    .line 27
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Le/n/a/l/e;->v:Z

    const-string v3, "info/gdpr_applies"

    .line 28
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    iput-object v2, p0, Le/n/a/l/e;->w:Ljava/lang/Boolean;

    goto :goto_1

    .line 31
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Le/n/a/l/e;->w:Ljava/lang/Boolean;

    :goto_1
    const-string v3, "info/force_gdpr_applies"

    .line 32
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Le/n/a/l/e;->g:Z

    const-string v0, "info/udid"

    .line 33
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "info/ifa"

    if-nez v4, :cond_2

    const-string v4, "ifa:"

    .line 35
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Le/n/a/l/e;->h:Ljava/lang/String;

    .line 36
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 37
    iget-object v3, p0, Le/n/a/l/e;->h:Ljava/lang/String;

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 40
    :cond_2
    invoke-interface {p1, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/n/a/l/e;->h:Ljava/lang/String;

    :goto_2
    const-string v0, "info/last_changed_ms"

    .line 41
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/n/a/l/e;->i:Ljava/lang/String;

    const-string v0, "info/consent_status_before_dnt"

    .line 42
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    iput-object v2, p0, Le/n/a/l/e;->j:Lcom/mopub/common/privacy/ConsentStatus;

    goto :goto_3

    .line 45
    :cond_3
    invoke-static {p1}, Lcom/mopub/common/privacy/ConsentStatus;->fromString(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object p1

    iput-object p1, p0, Le/n/a/l/e;->j:Lcom/mopub/common/privacy/ConsentStatus;

    :goto_3
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getCurrentLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    const-string p1, "%%LANGUAGE%%"

    .line 7
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/n/a/l/e;->a:Landroid/content/Context;

    const-string v1, "com.mopub.privacy"

    invoke-static {v0, v1}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/n/a/l/e;->b:Ljava/lang/String;

    const-string v2, "info/adunit"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    iget-object v1, p0, Le/n/a/l/e;->c:Ljava/lang/String;

    const-string v2, "info/cached_last_ad_unit_id_used_for_init"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    iget-object v1, p0, Le/n/a/l/e;->d:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "info/consent_status"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    iget-object v1, p0, Le/n/a/l/e;->e:Lcom/mopub/common/privacy/ConsentStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v3, "info/last_successfully_synced_consent_status"

    .line 8
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9
    iget-boolean v1, p0, Le/n/a/l/e;->k:Z

    const-string v3, "info/is_whitelisted"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    iget-object v1, p0, Le/n/a/l/e;->l:Ljava/lang/String;

    const-string v3, "info/current_vendor_list_version"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 11
    iget-object v1, p0, Le/n/a/l/e;->m:Ljava/lang/String;

    const-string v3, "info/current_vendor_list_link"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    iget-object v1, p0, Le/n/a/l/e;->n:Ljava/lang/String;

    const-string v3, "info/current_privacy_policy_version"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    iget-object v1, p0, Le/n/a/l/e;->o:Ljava/lang/String;

    const-string v3, "info/current_privacy_policy_link"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 14
    iget-object v1, p0, Le/n/a/l/e;->p:Ljava/lang/String;

    const-string v3, "info/current_vendor_list_iab_format"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 15
    iget-object v1, p0, Le/n/a/l/e;->q:Ljava/lang/String;

    const-string v3, "info/current_vendor_list_iab_hash"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 16
    iget-object v1, p0, Le/n/a/l/e;->r:Ljava/lang/String;

    const-string v3, "info/consented_vendor_list_version"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 17
    iget-object v1, p0, Le/n/a/l/e;->s:Ljava/lang/String;

    const-string v3, "info/consented_privacy_policy_version"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    iget-object v1, p0, Le/n/a/l/e;->t:Ljava/lang/String;

    const-string v3, "info/consented_vendor_list_iab_format"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 19
    iget-object v1, p0, Le/n/a/l/e;->u:Ljava/lang/String;

    const-string v3, "info/extras"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    iget-object v1, p0, Le/n/a/l/e;->f:Ljava/lang/String;

    const-string v3, "info/consent_change_reason"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 21
    iget-boolean v1, p0, Le/n/a/l/e;->v:Z

    const-string v3, "info/reacquire_consent"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 22
    iget-object v1, p0, Le/n/a/l/e;->w:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v3, "info/gdpr_applies"

    .line 24
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    iget-boolean v1, p0, Le/n/a/l/e;->g:Z

    const-string v3, "info/force_gdpr_applies"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 26
    iget-object v1, p0, Le/n/a/l/e;->h:Ljava/lang/String;

    const-string v3, "info/ifa"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    iget-object v1, p0, Le/n/a/l/e;->i:Ljava/lang/String;

    const-string v3, "info/last_changed_ms"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    iget-object v1, p0, Le/n/a/l/e;->j:Lcom/mopub/common/privacy/ConsentStatus;

    if-nez v1, :cond_2

    goto :goto_2

    .line 29
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    :goto_2
    const-string v1, "info/consent_status_before_dnt"

    .line 30
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public chooseAdUnit()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/n/a/l/e;->b:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/n/a/l/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getConsentedPrivacyPolicyVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/n/a/l/e;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getConsentedVendorListIabFormat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/n/a/l/e;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getConsentedVendorListVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/n/a/l/e;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPrivacyPolicyLink()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Le/n/a/l/e;->getCurrentPrivacyPolicyLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPrivacyPolicyLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Le/n/a/l/e;->o:Ljava/lang/String;

    iget-object v1, p0, Le/n/a/l/e;->a:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Le/n/a/l/e;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentPrivacyPolicyVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/n/a/l/e;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVendorListIabFormat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/n/a/l/e;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVendorListLink()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Le/n/a/l/e;->getCurrentVendorListLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentVendorListLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Le/n/a/l/e;->m:Ljava/lang/String;

    iget-object v1, p0, Le/n/a/l/e;->a:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Le/n/a/l/e;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentVendorListVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/n/a/l/e;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/n/a/l/e;->u:Ljava/lang/String;

    return-object v0
.end method

.method public isForceGdprApplies()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/n/a/l/e;->g:Z

    return v0
.end method

.method public setExtras(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/a/l/e;->u:Ljava/lang/String;

    return-void
.end method
