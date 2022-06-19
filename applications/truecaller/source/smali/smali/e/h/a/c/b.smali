.class public Le/h/a/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# instance fields
.field public final synthetic a:Lcom/android/installreferrer/api/InstallReferrerClient;

.field public final synthetic b:Le/h/a/c/a;


# direct methods
.method public constructor <init>(Le/h/a/c/a;Lcom/android/installreferrer/api/InstallReferrerClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/b;->b:Le/h/a/c/a;

    iput-object p2, p0, Le/h/a/c/b;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/h/a/c/b;->b:Le/h/a/c/a;

    .line 2
    iget-object v1, v0, Le/h/a/c/a;->f:Le/h/a/c/w;

    .line 3
    iget-boolean v1, v1, Le/h/a/c/w;->i:Z

    if-nez v1, :cond_0

    .line 4
    invoke-static {v0}, Le/h/a/c/a;->a(Le/h/a/c/a;)V

    :cond_0
    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Le/h/a/c/b;->b:Le/h/a/c/a;

    .line 2
    iget-object p1, p1, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object v0, p0, Le/h/a/c/b;->b:Le/h/a/c/a;

    .line 4
    iget-object v0, v0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "Install Referrer data not set, API not supported by Play Store on device"

    .line 6
    invoke-virtual {p1, v0, v1}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Le/h/a/c/b;->b:Le/h/a/c/a;

    .line 8
    iget-object p1, p1, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 9
    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object v0, p0, Le/h/a/c/b;->b:Le/h/a/c/a;

    .line 10
    iget-object v0, v0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 11
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "Install Referrer data not set, connection to Play Store unavailable"

    .line 12
    invoke-virtual {p1, v0, v1}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 13
    :try_start_0
    iget-object v1, p0, Le/h/a/c/b;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v2

    .line 15
    iget-object v3, p0, Le/h/a/c/b;->b:Le/h/a/c/a;

    .line 16
    iget-object v3, v3, Le/h/a/c/a;->f:Le/h/a/c/w;

    .line 17
    invoke-virtual {v1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    move-result-wide v4

    .line 18
    iput-wide v4, v3, Le/h/a/c/w;->o:J

    .line 19
    iget-object v3, p0, Le/h/a/c/b;->b:Le/h/a/c/a;

    .line 20
    iget-object v3, v3, Le/h/a/c/a;->f:Le/h/a/c/w;

    .line 21
    invoke-virtual {v1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    move-result-wide v4

    .line 22
    iput-wide v4, v3, Le/h/a/c/w;->a:J

    .line 23
    iget-object v1, p0, Le/h/a/c/b;->b:Le/h/a/c/a;

    .line 24
    iget-object v1, v1, Le/h/a/c/a;->a:Le/h/a/c/f;

    .line 25
    invoke-virtual {v1, v2}, Le/h/a/c/f;->l(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Le/h/a/c/b;->b:Le/h/a/c/a;

    .line 27
    iget-object v3, v1, Le/h/a/c/a;->f:Le/h/a/c/w;

    .line 28
    iput-boolean v0, v3, Le/h/a/c/w;->i:Z

    .line 29
    iget-object v0, v1, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 30
    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/b;->b:Le/h/a/c/a;

    .line 31
    iget-object v1, v1, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 32
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Install Referrer data set [Referrer URL-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 34
    iget-object v1, p0, Le/h/a/c/b;->b:Le/h/a/c/a;

    .line 35
    iget-object v1, v1, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 36
    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v2, p0, Le/h/a/c/b;->b:Le/h/a/c/a;

    .line 37
    iget-object v2, v2, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 38
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "Install referrer client null pointer exception caused by Google Play Install Referrer library - "

    .line 39
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 40
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {v1, v2, v0}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Le/h/a/c/b;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    .line 43
    iget-object v0, p0, Le/h/a/c/b;->b:Le/h/a/c/a;

    .line 44
    iget-object v0, v0, Le/h/a/c/a;->f:Le/h/a/c/w;

    .line 45
    iput-boolean p1, v0, Le/h/a/c/w;->i:Z

    goto :goto_0

    :catch_1
    move-exception v0

    .line 46
    iget-object v1, p0, Le/h/a/c/b;->b:Le/h/a/c/a;

    .line 47
    iget-object v1, v1, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 48
    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v2, p0, Le/h/a/c/b;->b:Le/h/a/c/a;

    .line 49
    iget-object v2, v2, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 50
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "Remote exception caused by Google Play Install Referrer library - "

    .line 51
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 52
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {v1, v2, v0}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Le/h/a/c/b;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    .line 55
    iget-object v0, p0, Le/h/a/c/b;->b:Le/h/a/c/a;

    .line 56
    iget-object v0, v0, Le/h/a/c/a;->f:Le/h/a/c/w;

    .line 57
    iput-boolean p1, v0, Le/h/a/c/w;->i:Z

    :goto_0
    return-void
.end method
