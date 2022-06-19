.class public Lcom/mopub/common/privacy/PersonalInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/privacy/PersonalInfoManager$e;,
        Lcom/mopub/common/privacy/PersonalInfoManager$f;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mopub/common/privacy/ConsentStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/n/a/l/e;

.field public final d:Lcom/mopub/common/privacy/ConsentDialogController;

.field public final e:Lcom/mopub/mobileads/MoPubConversionTracker;

.field public final f:Lcom/mopub/common/privacy/SyncRequest$Listener;

.field public g:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

.field public h:Lcom/mopub/common/SdkInitializationListener;

.field public i:J

.field public j:Ljava/lang/Long;

.field public k:Lcom/mopub/common/privacy/ConsentStatus;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/SdkInitializationListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x493e0

    .line 2
    iput-wide v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->i:J

    .line 3
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->b:Ljava/util/Set;

    .line 7
    new-instance v0, Lcom/mopub/common/privacy/PersonalInfoManager$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager$f;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/PersonalInfoManager$a;)V

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->f:Lcom/mopub/common/privacy/SyncRequest$Listener;

    .line 8
    new-instance v0, Lcom/mopub/common/privacy/PersonalInfoManager$e;

    invoke-direct {v0, p0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager$e;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/PersonalInfoManager$a;)V

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->g:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    .line 9
    invoke-static {v0}, Lcom/mopub/network/MultiAdResponse;->setServerOverrideListener(Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;)V

    .line 10
    new-instance v0, Lcom/mopub/common/privacy/ConsentDialogController;

    invoke-direct {v0, p1}, Lcom/mopub/common/privacy/ConsentDialogController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->d:Lcom/mopub/common/privacy/ConsentDialogController;

    .line 11
    new-instance v0, Le/n/a/l/e;

    invoke-direct {v0, p1}, Le/n/a/l/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13
    iget-object v1, v0, Le/n/a/l/e;->c:Ljava/lang/String;

    .line 14
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 15
    iput-object v1, v0, Le/n/a/l/e;->b:Ljava/lang/String;

    .line 16
    iput-object p2, v0, Le/n/a/l/e;->c:Ljava/lang/String;

    .line 17
    invoke-virtual {v0}, Le/n/a/l/e;->b()V

    .line 18
    :cond_0
    new-instance p2, Lcom/mopub/mobileads/MoPubConversionTracker;

    invoke-direct {p2, p1}, Lcom/mopub/mobileads/MoPubConversionTracker;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->e:Lcom/mopub/mobileads/MoPubConversionTracker;

    .line 19
    new-instance p2, Lcom/mopub/common/privacy/PersonalInfoManager$a;

    invoke-direct {p2, p0}, Lcom/mopub/common/privacy/PersonalInfoManager$a;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V

    .line 20
    iput-object p3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->h:Lcom/mopub/common/SdkInitializationListener;

    .line 21
    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object p1

    .line 23
    invoke-virtual {p1, p2}, Lcom/mopub/common/privacy/MoPubIdentifier;->setIdChangeListener(Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;)V

    .line 24
    new-instance p2, Le/n/a/l/f;

    invoke-direct {p2, p0}, Le/n/a/l/f;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V

    .line 25
    iput-object p2, p1, Lcom/mopub/common/privacy/MoPubIdentifier;->f:Lcom/mopub/common/SdkInitializationListener;

    .line 26
    iget-boolean p2, p1, Lcom/mopub/common/privacy/MoPubIdentifier;->e:Z

    if-eqz p2, :cond_1

    .line 27
    invoke-virtual {p1}, Lcom/mopub/common/privacy/MoPubIdentifier;->b()V

    :cond_1
    return-void
.end method

.method public static e(ZLjava/lang/Boolean;ZLjava/lang/Long;JLjava/lang/String;Z)Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    if-nez p1, :cond_1

    return p0

    .line 1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    if-eqz p2, :cond_3

    return p0

    :cond_3
    if-eqz p7, :cond_4

    .line 2
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    if-nez p3, :cond_5

    return p0

    .line 3
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p6

    sub-long/2addr p1, p6

    cmp-long p1, p1, p4

    if-lez p1, :cond_6

    move v0, p0

    :cond_6
    return v0
.end method


# virtual methods
.method public final a(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/mopub/common/privacy/ConsentChangeReason;->getReason()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mopub/common/privacy/PersonalInfoManager;->b(Lcom/mopub/common/privacy/ConsentStatus;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/mopub/common/privacy/ConsentStatus;Ljava/lang/String;)V
    .locals 7
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 4
    iget-object v1, v0, Le/n/a/l/e;->d:Lcom/mopub/common/privacy/ConsentStatus;

    .line 5
    iget-boolean v0, v0, Le/n/a/l/e;->v:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consent status is already "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Not doing a state transition."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    const-string v4, ""

    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9
    iput-object v4, v0, Le/n/a/l/e;->i:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 11
    iput-object p2, v0, Le/n/a/l/e;->f:Ljava/lang/String;

    .line 12
    iput-object p1, v0, Le/n/a/l/e;->d:Lcom/mopub/common/privacy/ConsentStatus;

    .line 13
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 18
    invoke-virtual {v0}, Le/n/a/l/e;->getCurrentPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v4

    .line 19
    iput-object v4, v0, Le/n/a/l/e;->s:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 21
    invoke-virtual {v0}, Le/n/a/l/e;->getCurrentVendorListVersion()Ljava/lang/String;

    move-result-object v4

    .line 22
    iput-object v4, v0, Le/n/a/l/e;->r:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 24
    invoke-virtual {v0}, Le/n/a/l/e;->getCurrentVendorListIabFormat()Ljava/lang/String;

    move-result-object v4

    .line 25
    iput-object v4, v0, Le/n/a/l/e;->t:Ljava/lang/String;

    .line 26
    :cond_4
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->DNT:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    .line 27
    invoke-virtual {v4, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 28
    :cond_5
    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    const/4 v5, 0x0

    .line 29
    iput-object v5, v4, Le/n/a/l/e;->s:Ljava/lang/String;

    .line 30
    iput-object v5, v4, Le/n/a/l/e;->r:Ljava/lang/String;

    .line 31
    iput-object v5, v4, Le/n/a/l/e;->t:Ljava/lang/String;

    .line 32
    :cond_6
    sget-object v4, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v4, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 33
    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    iget-object v5, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v5

    .line 34
    invoke-virtual {v5}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v5

    .line 35
    iget-object v5, v5, Lcom/mopub/common/privacy/AdvertisingId;->a:Ljava/lang/String;

    .line 36
    iput-object v5, v4, Le/n/a/l/e;->h:Ljava/lang/String;

    .line 37
    :cond_7
    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 39
    iput-object v1, v0, Le/n/a/l/e;->j:Lcom/mopub/common/privacy/ConsentStatus;

    .line 40
    :cond_8
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 41
    iput-boolean v3, v0, Le/n/a/l/e;->v:Z

    .line 42
    invoke-virtual {v0}, Le/n/a/l/e;->b()V

    .line 43
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 44
    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/common/ClientMetadata;->repopulateCountryData()V

    .line 45
    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->e:Lcom/mopub/mobileads/MoPubConversionTracker;

    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubConversionTracker;->shouldTrack()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 46
    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->e:Lcom/mopub/mobileads/MoPubConversionTracker;

    invoke-virtual {v4, v3}, Lcom/mopub/mobileads/MoPubConversionTracker;->reportAppOpen(Z)V

    .line 47
    :cond_9
    sget-object v4, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->UPDATED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    aput-object p1, v5, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x3

    aput-object p2, v5, v2

    invoke-static {v4, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0, v1, p1, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->c(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V

    return-void
.end method

.method public final c(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->b:Ljava/util/Set;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/mopub/common/privacy/ConsentStatusChangeListener;

    .line 3
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lcom/mopub/common/privacy/PersonalInfoManager$d;

    move-object v3, v9

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/mopub/common/privacy/PersonalInfoManager$d;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatusChangeListener;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public canCollectPersonalInformation()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->getPersonalInfoConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    sget-object v3, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public d()V
    .locals 4
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SYNC_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 3
    iget-object v0, v0, Le/n/a/l/e;->d:Lcom/mopub/common/privacy/ConsentStatus;

    .line 4
    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->k:Lcom/mopub/common/privacy/ConsentStatus;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->l:Z

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->j:Ljava/lang/Long;

    .line 7
    new-instance v1, Lcom/mopub/common/privacy/SyncUrlGenerator;

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->k:Lcom/mopub/common/privacy/ConsentStatus;

    .line 8
    invoke-virtual {v3}, Lcom/mopub/common/privacy/ConsentStatus;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    invoke-virtual {v2}, Le/n/a/l/e;->chooseAdUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 10
    iget-object v3, v3, Le/n/a/l/e;->h:Ljava/lang/String;

    .line 11
    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withConsentedIfa(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 12
    iget-object v3, v3, Le/n/a/l/e;->i:Ljava/lang/String;

    .line 13
    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withLastChangedMs(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 14
    iget-object v3, v3, Le/n/a/l/e;->e:Lcom/mopub/common/privacy/ConsentStatus;

    .line 15
    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withLastConsentStatus(Lcom/mopub/common/privacy/ConsentStatus;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 16
    iget-object v3, v3, Le/n/a/l/e;->f:Ljava/lang/String;

    .line 17
    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withConsentChangeReason(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 18
    invoke-virtual {v3}, Le/n/a/l/e;->getConsentedVendorListVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withConsentedVendorListVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 19
    invoke-virtual {v3}, Le/n/a/l/e;->getConsentedPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withConsentedPrivacyPolicyVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 21
    iget-object v3, v3, Le/n/a/l/e;->q:Ljava/lang/String;

    .line 22
    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withCachedVendorListIabHash(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 23
    invoke-virtual {v3}, Le/n/a/l/e;->getExtras()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withExtras(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    .line 24
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withGdprApplies(Ljava/lang/Boolean;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 25
    invoke-virtual {v3}, Le/n/a/l/e;->isForceGdprApplies()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withForceGdprApplies(Z)Lcom/mopub/common/privacy/SyncUrlGenerator;

    .line 26
    iget-boolean v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->m:Z

    if-eqz v2, :cond_0

    .line 27
    iput-boolean v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->n:Z

    .line 28
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withForceGdprAppliesChanged(Ljava/lang/Boolean;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    .line 29
    :cond_0
    new-instance v0, Lcom/mopub/common/privacy/SyncRequest;

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    sget-object v3, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    .line 30
    invoke-virtual {v1, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->f:Lcom/mopub/common/privacy/SyncRequest$Listener;

    invoke-direct {v0, v2, v1, v3}, Lcom/mopub/common/privacy/SyncRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/privacy/SyncRequest$Listener;)V

    .line 31
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    return-void
.end method

.method public forceGdprApplies()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    invoke-virtual {v0}, Le/n/a/l/e;->isForceGdprApplies()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, v1, Le/n/a/l/e;->g:Z

    .line 5
    iput-boolean v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->m:Z

    .line 6
    invoke-virtual {v1}, Le/n/a/l/e;->b()V

    .line 7
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 9
    iget-object v0, v0, Le/n/a/l/e;->d:Lcom/mopub/common/privacy/ConsentStatus;

    .line 10
    invoke-virtual {p0, v0, v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->c(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V

    .line 11
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    return-void
.end method

.method public gdprApplies()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    invoke-virtual {v0}, Le/n/a/l/e;->isForceGdprApplies()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 4
    iget-object v0, v0, Le/n/a/l/e;->w:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getConsentData()Lcom/mopub/common/privacy/ConsentData;
    .locals 2

    .line 1
    new-instance v0, Le/n/a/l/e;

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Le/n/a/l/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getPersonalInfoConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 2
    iget-object v0, v0, Le/n/a/l/e;->d:Lcom/mopub/common/privacy/ConsentStatus;

    return-object v0
.end method

.method public grantConsent()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Cannot grant consent because Do Not Track is on."

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 5
    iget-boolean v0, v0, Le/n/a/l/e;->k:Z

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v1, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_WHITELISTED_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "You do not have approval to use the grantConsent API. Please reach out to your account teams or support@mopub.com for more information."

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 8
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v1, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_NOT_WHITELISTED_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    .line 9
    :goto_0
    invoke-virtual {p0, v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    return-void
.end method

.method public isConsentDialogReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->d:Lcom/mopub/common/privacy/ConsentDialogController;

    .line 2
    iget-boolean v0, v0, Lcom/mopub/common/privacy/ConsentDialogController;->d:Z

    return v0
.end method

.method public loadConsentDialog(Lcom/mopub/common/privacy/ConsentDialogListener;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/util/ManifestUtils;->checkGdprActivitiesDeclared(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mopub/common/privacy/PersonalInfoManager$b;

    invoke-direct {v1, p0, p1}, Lcom/mopub/common/privacy/PersonalInfoManager$b;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentDialogListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p1, :cond_2

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mopub/common/privacy/PersonalInfoManager$c;

    invoke-direct {v1, p0, p1}, Lcom/mopub/common/privacy/PersonalInfoManager$c;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentDialogListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .line 9
    :cond_3
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->d:Lcom/mopub/common/privacy/ConsentDialogController;

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    invoke-static {v3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    iget-boolean v4, v2, Lcom/mopub/common/privacy/ConsentDialogController;->d:Z

    if-eqz v4, :cond_5

    if-eqz p1, :cond_4

    .line 13
    iget-object v0, v2, Lcom/mopub/common/privacy/ConsentDialogController;->f:Landroid/os/Handler;

    new-instance v1, Le/n/a/l/a;

    invoke-direct {v1, v2, p1}, Le/n/a/l/a;-><init>(Lcom/mopub/common/privacy/ConsentDialogController;Lcom/mopub/common/privacy/ConsentDialogListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_4
    monitor-exit v2

    goto :goto_0

    .line 15
    :cond_5
    :try_start_1
    iget-boolean v4, v2, Lcom/mopub/common/privacy/ConsentDialogController;->e:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    .line 16
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v5, [Ljava/lang/Object;

    const-string v3, "Already making a consent dialog load request."

    aput-object v3, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    monitor-exit v2

    goto :goto_0

    .line 18
    :cond_6
    :try_start_2
    iput-object p1, v2, Lcom/mopub/common/privacy/ConsentDialogController;->c:Lcom/mopub/common/privacy/ConsentDialogListener;

    .line 19
    iput-boolean v5, v2, Lcom/mopub/common/privacy/ConsentDialogController;->e:Z

    .line 20
    new-instance p1, Lcom/mopub/common/privacy/ConsentDialogRequest;

    iget-object v1, v2, Lcom/mopub/common/privacy/ConsentDialogController;->a:Landroid/content/Context;

    new-instance v4, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;

    .line 21
    iget-object v5, v3, Le/n/a/l/e;->b:Ljava/lang/String;

    .line 22
    iget-object v6, v3, Le/n/a/l/e;->d:Lcom/mopub/common/privacy/ConsentStatus;

    .line 23
    invoke-virtual {v6}, Lcom/mopub/common/privacy/ConsentStatus;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v1, v5, v6}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object v0, v4, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->h:Ljava/lang/Boolean;

    .line 25
    invoke-virtual {v3}, Le/n/a/l/e;->getConsentedPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v0

    .line 26
    iput-object v0, v4, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->k:Ljava/lang/String;

    .line 27
    invoke-virtual {v3}, Le/n/a/l/e;->getConsentedVendorListVersion()Ljava/lang/String;

    move-result-object v0

    .line 28
    iput-object v0, v4, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->j:Ljava/lang/String;

    .line 29
    invoke-virtual {v3}, Le/n/a/l/e;->isForceGdprApplies()Z

    move-result v0

    .line 30
    iput-boolean v0, v4, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->i:Z

    .line 31
    sget-object v0, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    .line 32
    invoke-virtual {v4, v0}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0, v2}, Lcom/mopub/common/privacy/ConsentDialogRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/privacy/ConsentDialogRequest$Listener;)V

    .line 33
    iget-object v0, v2, Lcom/mopub/common/privacy/ConsentDialogController;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    monitor-exit v2

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1
.end method

.method public requestSync(Z)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    .line 4
    iget-boolean v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->l:Z

    .line 5
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v2

    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->j:Ljava/lang/Long;

    iget-wide v5, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->i:J

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 6
    iget-object v7, v3, Le/n/a/l/e;->h:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v8

    move v3, p1

    .line 8
    invoke-static/range {v1 .. v8}, Lcom/mopub/common/privacy/PersonalInfoManager;->e(ZLjava/lang/Boolean;ZLjava/lang/Long;JLjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->d()V

    return-void
.end method

.method public revokeConsent()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Cannot revoke consent because Do Not Track is on."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v2, Lcom/mopub/common/privacy/ConsentChangeReason;->DENIED_BY_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-virtual {p0, v0, v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    return-void
.end method

.method public setAllowLegitimateInterest(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->o:Z

    return-void
.end method

.method public shouldAllowLegitimateInterest()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->o:Z

    return v0
.end method

.method public shouldShowConsentDialog()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 4
    iget-boolean v1, v0, Le/n/a/l/e;->v:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 5
    :cond_1
    iget-object v0, v0, Le/n/a/l/e;->d:Lcom/mopub/common/privacy/ConsentStatus;

    .line 6
    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public showConsentDialog()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->d:Lcom/mopub/common/privacy/ConsentDialogController;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 4
    iget-boolean v1, v0, Lcom/mopub/common/privacy/ConsentDialogController;->d:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/mopub/common/privacy/ConsentDialogController;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    iput-boolean v2, v0, Lcom/mopub/common/privacy/ConsentDialogController;->d:Z

    .line 6
    iget-object v1, v0, Lcom/mopub/common/privacy/ConsentDialogController;->a:Landroid/content/Context;

    iget-object v5, v0, Lcom/mopub/common/privacy/ConsentDialogController;->b:Ljava/lang/String;

    .line 7
    sget v6, Lcom/mopub/common/privacy/ConsentDialogActivity;->e:I

    .line 8
    invoke-static {v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "ConsentDialogActivity htmlData can\'t be empty string."

    aput-object v6, v5, v2

    invoke-static {v1, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 11
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v5, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v5}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    invoke-static {v5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "html-page-content"

    .line 15
    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-class v5, Lcom/mopub/common/privacy/ConsentDialogActivity;

    invoke-static {v1, v5, v6}, Lcom/mopub/common/util/Intents;->getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    .line 17
    :try_start_0
    invoke-static {v1, v5}, Lcom/mopub/common/util/Intents;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 18
    :catch_0
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "ConsentDialogActivity not found - did you declare it in AndroidManifest.xml?"

    aput-object v6, v5, v2

    invoke-static {v1, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 19
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v5, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v5}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 20
    :goto_0
    iput-boolean v2, v0, Lcom/mopub/common/privacy/ConsentDialogController;->e:Z

    .line 21
    iput-boolean v2, v0, Lcom/mopub/common/privacy/ConsentDialogController;->d:Z

    const/4 v1, 0x0

    .line 22
    iput-object v1, v0, Lcom/mopub/common/privacy/ConsentDialogController;->c:Lcom/mopub/common/privacy/ConsentDialogListener;

    .line 23
    iput-object v1, v0, Lcom/mopub/common/privacy/ConsentDialogController;->b:Ljava/lang/String;

    move v2, v4

    goto :goto_2

    .line 24
    :cond_2
    :goto_1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_2
    return v2
.end method

.method public subscribeConsentStatusChangeListener(Lcom/mopub/common/privacy/ConsentStatusChangeListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unsubscribeConsentStatusChangeListener(Lcom/mopub/common/privacy/ConsentStatusChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
