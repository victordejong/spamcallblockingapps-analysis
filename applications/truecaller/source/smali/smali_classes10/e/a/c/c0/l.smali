.class public final Le/a/c/c0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/c0/k;


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:Le/a/c/c0/o;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Le/a/c/c0/o;)V
    .locals 1

    const-string v0, "prefs"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsConfig"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/c0/l;->a:Landroid/content/SharedPreferences;

    iput-object p2, p0, Le/a/c/c0/l;->b:Le/a/c/c0/o;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/insights/utils/FeedbackConsentType;)Lcom/truecaller/insights/utils/FeedbackConsentState;
    .locals 2

    const-string v0, "consentType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/c0/l;->a:Landroid/content/SharedPreferences;

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/insights/utils/FeedbackConsentType;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/c/c0/l;->b:Le/a/c/c0/o;

    invoke-interface {p1}, Le/a/c/c0/o;->O()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lcom/truecaller/insights/utils/FeedbackConsentState;->CONSENT_GIVEN:Lcom/truecaller/insights/utils/FeedbackConsentState;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/truecaller/insights/utils/FeedbackConsentState;->NOT_STARTED:Lcom/truecaller/insights/utils/FeedbackConsentState;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v0, "prefs.getString(\n       \u2026entState.NOT_STARTED.name"

    .line 6
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Lcom/truecaller/insights/utils/FeedbackConsentState;->valueOf(Ljava/lang/String;)Lcom/truecaller/insights/utils/FeedbackConsentState;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/truecaller/insights/utils/FeedbackConsentType;->values()[Lcom/truecaller/insights/utils/FeedbackConsentType;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 2
    aget-object v2, v0, v1

    .line 3
    iget-object v3, p0, Le/a/c/c0/l;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {v2}, Lcom/truecaller/insights/utils/FeedbackConsentType;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/truecaller/insights/utils/FeedbackConsentState;->NOT_STARTED:Lcom/truecaller/insights/utils/FeedbackConsentState;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/truecaller/insights/utils/FeedbackConsentType;->values()[Lcom/truecaller/insights/utils/FeedbackConsentType;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 2
    aget-object v2, v0, v1

    .line 3
    iget-object v3, p0, Le/a/c/c0/l;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {v2}, Lcom/truecaller/insights/utils/FeedbackConsentType;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/truecaller/insights/utils/FeedbackConsentState;->CONSENT_NOT_GIVEN:Lcom/truecaller/insights/utils/FeedbackConsentState;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/truecaller/insights/utils/FeedbackConsentType;->values()[Lcom/truecaller/insights/utils/FeedbackConsentType;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 2
    aget-object v2, v0, v1

    .line 3
    iget-object v3, p0, Le/a/c/c0/l;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {v2}, Lcom/truecaller/insights/utils/FeedbackConsentType;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/truecaller/insights/utils/FeedbackConsentState;->CONSENT_GIVEN:Lcom/truecaller/insights/utils/FeedbackConsentState;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Lcom/truecaller/insights/utils/FeedbackConsentType;Lcom/truecaller/insights/utils/FeedbackConsentState;)V
    .locals 5

    const-string v0, "consentType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/insights/utils/FeedbackConsentState;->CONSENT_GIVEN:Lcom/truecaller/insights/utils/FeedbackConsentState;

    if-ne p2, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/truecaller/insights/utils/FeedbackConsentType;->values()[Lcom/truecaller/insights/utils/FeedbackConsentType;

    move-result-object p1

    const/4 v0, 0x5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    aget-object v2, p1, v1

    .line 4
    iget-object v3, p0, Le/a/c/c0/l;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {v2}, Lcom/truecaller/insights/utils/FeedbackConsentType;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/c/c0/l;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/insights/utils/FeedbackConsentType;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method
