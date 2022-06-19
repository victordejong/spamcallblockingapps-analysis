.class public Le/n/a/l/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/SdkInitializationListener;


# instance fields
.field public final synthetic a:Lcom/mopub/common/privacy/PersonalInfoManager;


# direct methods
.method public constructor <init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/a/l/f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationFinished()V
    .locals 11

    .line 1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "MoPubIdentifier initialized."

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/n/a/l/f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 3
    iget-object v0, v0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    .line 6
    iget-object v2, p0, Le/n/a/l/f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 7
    iget-boolean v3, v2, Lcom/mopub/common/privacy/PersonalInfoManager;->l:Z

    .line 8
    invoke-virtual {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v4

    iget-object v2, p0, Le/n/a/l/f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 9
    iget-object v6, v2, Lcom/mopub/common/privacy/PersonalInfoManager;->j:Ljava/lang/Long;

    .line 10
    iget-wide v7, v2, Lcom/mopub/common/privacy/PersonalInfoManager;->i:J

    .line 11
    iget-object v2, v2, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 12
    iget-object v9, v2, Le/n/a/l/e;->h:Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v10

    const/4 v5, 0x0

    .line 14
    invoke-static/range {v3 .. v10}, Lcom/mopub/common/privacy/PersonalInfoManager;->e(ZLjava/lang/Boolean;ZLjava/lang/Long;JLjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Le/n/a/l/f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 16
    iget-object v0, v0, Lcom/mopub/common/privacy/PersonalInfoManager;->h:Lcom/mopub/common/SdkInitializationListener;

    if-eqz v0, :cond_1

    .line 17
    invoke-interface {v0}, Lcom/mopub/common/SdkInitializationListener;->onInitializationFinished()V

    .line 18
    iget-object v0, p0, Le/n/a/l/f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    const/4 v2, 0x0

    .line 19
    iput-object v2, v0, Lcom/mopub/common/privacy/PersonalInfoManager;->h:Lcom/mopub/common/SdkInitializationListener;

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Le/n/a/l/f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->d()V

    .line 21
    :cond_1
    :goto_0
    new-instance v0, Lcom/mopub/mobileads/MoPubConversionTracker;

    iget-object v2, p0, Le/n/a/l/f;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 22
    iget-object v2, v2, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    .line 23
    invoke-direct {v0, v2}, Lcom/mopub/mobileads/MoPubConversionTracker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubConversionTracker;->reportAppOpen(Z)V

    return-void
.end method
