.class public final Le/m/a/f/e/d;
.super Lcom/google/android/gms/internal/base/zap;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final synthetic b:Lcom/google/android/gms/common/GoogleApiAvailability;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/GoogleApiAvailability;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/d;->b:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/base/zap;-><init>(Landroid/os/Looper;)V

    .line 2
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/m/a/f/e/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Le/m/a/f/e/d;->b:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v0, p0, Le/m/a/f/e/d;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->d(Landroid/content/Context;)I

    move-result p1

    iget-object v0, p0, Le/m/a/f/e/d;->b:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->isUserRecoverableError(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Le/m/a/f/e/d;->b:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Le/m/a/f/e/d;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "n"

    .line 6
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->c(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->h(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method
