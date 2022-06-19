.class public Lcom/mopub/common/privacy/PersonalInfoManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/privacy/PersonalInfoManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/SdkInitializationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/common/privacy/PersonalInfoManager;


# direct methods
.method public constructor <init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$a;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIdChanged(Lcom/mopub/common/privacy/AdvertisingId;Lcom/mopub/common/privacy/AdvertisingId;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$a;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->DNT:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->DENIED_BY_DNT_ON:Lcom/mopub/common/privacy/ConsentChangeReason;

    .line 6
    invoke-virtual {p1, p2, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    .line 7
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$a;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result p1

    if-nez p1, :cond_3

    .line 9
    sget-object p1, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$a;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 10
    iget-object p2, p2, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 11
    iget-object p2, p2, Le/n/a/l/e;->j:Lcom/mopub/common/privacy/ConsentStatus;

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 13
    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$a;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->DNT_OFF:Lcom/mopub/common/privacy/ConsentChangeReason;

    .line 14
    invoke-virtual {p2, p1, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    return-void

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$a;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->DNT_OFF:Lcom/mopub/common/privacy/ConsentChangeReason;

    .line 16
    invoke-virtual {p1, p2, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    return-void

    .line 17
    :cond_3
    iget-object p1, p2, Lcom/mopub/common/privacy/AdvertisingId;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 18
    iget-object p1, p2, Lcom/mopub/common/privacy/AdvertisingId;->a:Ljava/lang/String;

    .line 19
    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$a;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 20
    iget-object p2, p2, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 21
    iget-object p2, p2, Le/n/a/l/e;->h:Ljava/lang/String;

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$a;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 23
    iget-object p2, p2, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    .line 24
    iget-object p2, p2, Le/n/a/l/e;->d:Lcom/mopub/common/privacy/ConsentStatus;

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 26
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$a;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 27
    iget-object p2, p1, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Le/n/a/l/e;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p2, Le/n/a/l/e;->e:Lcom/mopub/common/privacy/ConsentStatus;

    .line 29
    iput-object v0, p2, Le/n/a/l/e;->i:Ljava/lang/String;

    .line 30
    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->IFA_CHANGED:Lcom/mopub/common/privacy/ConsentChangeReason;

    .line 31
    invoke-virtual {p1, p2, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    :cond_4
    return-void
.end method
