.class public Lcom/mopub/common/privacy/PersonalInfoManager$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/privacy/SyncRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/privacy/PersonalInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/common/privacy/PersonalInfoManager;


# direct methods
.method public constructor <init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/PersonalInfoManager$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/mopub/network/MoPubNetworkError;

    .line 2
    invoke-virtual {v1}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 3
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v1

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 5
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SYNC_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 8
    iput-boolean v3, p1, Lcom/mopub/common/privacy/PersonalInfoManager;->l:Z

    .line 9
    iget-object p1, p1, Lcom/mopub/common/privacy/PersonalInfoManager;->h:Lcom/mopub/common/SdkInitializationListener;

    if-eqz p1, :cond_2

    .line 10
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Personal Info Manager initialization finished but ran into errors."

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 12
    iget-object p1, p1, Lcom/mopub/common/privacy/PersonalInfoManager;->h:Lcom/mopub/common/SdkInitializationListener;

    .line 13
    invoke-interface {p1}, Lcom/mopub/common/SdkInitializationListener;->onInitializationFinished()V

    .line 14
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p1, Lcom/mopub/common/privacy/PersonalInfoManager;->h:Lcom/mopub/common/SdkInitializationListener;

    :cond_2
    return-void
.end method

.method public onSuccess(Lcom/mopub/common/privacy/SyncResponse;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SYNC_COMPLETED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 4
    iget-object v2, v2, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 5
    iget-object v3, v2, Le/n/a/l/e;->w:Ljava/lang/Boolean;

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isGdprRegion()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 7
    iput-object v3, v2, Le/n/a/l/e;->w:Ljava/lang/Boolean;

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isForceGdprApplies()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 10
    iput-boolean v3, v2, Lcom/mopub/common/privacy/PersonalInfoManager;->m:Z

    .line 11
    iget-object v4, v2, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 12
    iput-boolean v3, v4, Le/n/a/l/e;->g:Z

    .line 13
    invoke-virtual {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 14
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 15
    iget-object v4, v0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 16
    iget-object v4, v4, Le/n/a/l/e;->d:Lcom/mopub/common/privacy/ConsentStatus;

    .line 17
    invoke-virtual {v0, v4, v4, v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->c(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 19
    iget-object v0, v0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 20
    iget-object v0, v0, Le/n/a/l/e;->c:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 22
    iget-object v2, v2, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 23
    iget-object v2, v2, Le/n/a/l/e;->b:Ljava/lang/String;

    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 25
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 26
    iget-object v2, v2, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 27
    iput-object v0, v2, Le/n/a/l/e;->b:Ljava/lang/String;

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 29
    iget-object v2, v0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 30
    iget-object v0, v0, Lcom/mopub/common/privacy/PersonalInfoManager;->k:Lcom/mopub/common/privacy/ConsentStatus;

    .line 31
    iput-object v0, v2, Le/n/a/l/e;->e:Lcom/mopub/common/privacy/ConsentStatus;

    .line 32
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isWhitelisted()Z

    move-result v0

    .line 33
    iput-boolean v0, v2, Le/n/a/l/e;->k:Z

    .line 34
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 35
    iget-object v0, v0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 36
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentVendorListVersion()Ljava/lang/String;

    move-result-object v2

    .line 37
    iput-object v2, v0, Le/n/a/l/e;->l:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 39
    iget-object v0, v0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 40
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentVendorListLink()Ljava/lang/String;

    move-result-object v2

    .line 41
    iput-object v2, v0, Le/n/a/l/e;->m:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 43
    iget-object v0, v0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 44
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v2

    .line 45
    iput-object v2, v0, Le/n/a/l/e;->n:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 47
    iget-object v0, v0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 48
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentPrivacyPolicyLink()Ljava/lang/String;

    move-result-object v2

    .line 49
    iput-object v2, v0, Le/n/a/l/e;->o:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentVendorListIabHash()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentVendorListIabFormat()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 53
    iget-object v4, v4, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 54
    iget-object v4, v4, Le/n/a/l/e;->q:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 56
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 57
    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 58
    iget-object v4, v4, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 59
    iput-object v2, v4, Le/n/a/l/e;->p:Ljava/lang/String;

    .line 60
    iput-object v0, v4, Le/n/a/l/e;->q:Ljava/lang/String;

    .line 61
    :cond_3
    iget-object v0, p1, Lcom/mopub/common/privacy/SyncResponse;->n:Ljava/lang/String;

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 63
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 64
    iget-object v2, v2, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 65
    invoke-virtual {v2, v0}, Le/n/a/l/e;->setExtras(Ljava/lang/String;)V

    .line 66
    :cond_4
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getConsentChangeReason()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isForceExplicitNo()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 68
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 69
    iget-object v2, v2, Lcom/mopub/common/privacy/PersonalInfoManager;->g:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    .line 70
    invoke-interface {v2, v0}, Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;->onForceExplicitNo(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_5
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isInvalidateConsent()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 72
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 73
    iget-object v2, v2, Lcom/mopub/common/privacy/PersonalInfoManager;->g:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    .line 74
    invoke-interface {v2, v0}, Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;->onInvalidateConsent(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_6
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isReacquireConsent()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 76
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 77
    iget-object v2, v2, Lcom/mopub/common/privacy/PersonalInfoManager;->g:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    .line 78
    invoke-interface {v2, v0}, Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;->onReacquireConsent(Ljava/lang/String;)V

    .line 79
    :cond_7
    :goto_0
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCallAgainAfterSecs()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 81
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_8

    .line 82
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 83
    iput-wide v4, p1, Lcom/mopub/common/privacy/PersonalInfoManager;->i:J

    goto :goto_1

    .line 84
    :cond_8
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callAgainAfterSecs is not positive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 85
    :catch_0
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "Unable to parse callAgainAfterSecs. Ignoring value"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 86
    :cond_9
    :goto_1
    sget-object p1, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 87
    iget-object v0, v0, Lcom/mopub/common/privacy/PersonalInfoManager;->k:Lcom/mopub/common/privacy/ConsentStatus;

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_a

    .line 89
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 90
    iget-object v0, v0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 91
    iput-object v2, v0, Le/n/a/l/e;->h:Ljava/lang/String;

    .line 92
    :cond_a
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 93
    iget-boolean v4, v0, Lcom/mopub/common/privacy/PersonalInfoManager;->n:Z

    if-eqz v4, :cond_b

    .line 94
    iput-boolean v1, v0, Lcom/mopub/common/privacy/PersonalInfoManager;->m:Z

    .line 95
    iput-boolean v1, v0, Lcom/mopub/common/privacy/PersonalInfoManager;->n:Z

    .line 96
    :cond_b
    iget-object v0, v0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 97
    invoke-virtual {v0}, Le/n/a/l/e;->b()V

    .line 98
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 99
    iput-boolean v1, v0, Lcom/mopub/common/privacy/PersonalInfoManager;->l:Z

    .line 100
    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    .line 101
    iget-object v0, v0, Lcom/mopub/common/privacy/PersonalInfoManager;->k:Lcom/mopub/common/privacy/ConsentStatus;

    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 103
    iget-object v1, v0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 104
    iget-boolean v1, v1, Le/n/a/l/e;->k:Z

    if-eqz v1, :cond_c

    .line 105
    sget-object v1, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_WHITELISTED_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    .line 106
    invoke-virtual {v0, p1, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    .line 107
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-virtual {p1, v3}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    .line 108
    :cond_c
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 109
    iget-object p1, p1, Lcom/mopub/common/privacy/PersonalInfoManager;->h:Lcom/mopub/common/SdkInitializationListener;

    if-eqz p1, :cond_d

    .line 110
    invoke-interface {p1}, Lcom/mopub/common/SdkInitializationListener;->onInitializationFinished()V

    .line 111
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 112
    iput-object v2, p1, Lcom/mopub/common/privacy/PersonalInfoManager;->h:Lcom/mopub/common/SdkInitializationListener;

    :cond_d
    return-void
.end method
