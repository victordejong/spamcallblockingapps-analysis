.class public Lcom/google/firebase/auth/api/fallback/service/FirebaseAuthFallbackService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "com.google.firebase.auth.api.gms.service.START"

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/firebase/auth/api/fallback/service/a;

    invoke-direct {p1, p0, p0}, Lcom/google/firebase/auth/api/fallback/service/a;-><init>(Lcom/google/firebase/auth/api/fallback/service/FirebaseAuthFallbackService;Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/n$a;->asBinder()Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
