.class public final Lcom/google/android/gms/ads/internal/util/zzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkh;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbkj;

.field public final synthetic zzb:Landroid/content/Context;

.field public final synthetic zzc:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzs;Lcom/google/android/gms/internal/ads/zzbkj;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zza:Lcom/google/android/gms/internal/ads/zzbkj;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zzb:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zzc:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zza:Lcom/google/android/gms/internal/ads/zzbkj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkj;->zzc()Ln3/d/a/h;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v2, Ln3/d/a/a$a;

    invoke-direct {v2}, Ln3/d/a/a$a;-><init>()V

    const/4 v3, 0x1

    const-string v4, "android.support.customtabs.extra.SESSION"

    if-eqz v0, :cond_1

    .line 4
    iget-object v5, v0, Ln3/d/a/h;->c:Landroid/content/ComponentName;

    .line 5
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v5, v0, Ln3/d/a/h;->b:Lm3/a/a/a;

    check-cast v5, Lm3/a/a/a$a;

    .line 7
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, v0, Ln3/d/a/h;->d:Landroid/app/PendingIntent;

    .line 9
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 10
    invoke-virtual {v6, v4, v5}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    if-eqz v0, :cond_0

    const-string v5, "android.support.customtabs.extra.SESSION_ID"

    .line 11
    invoke-virtual {v6, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12
    :cond_0
    invoke-virtual {v1, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 13
    :cond_1
    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_2

    .line 14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 16
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    const-string v0, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    .line 17
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 18
    invoke-virtual {v2}, Ln3/d/a/a$a;->a()Ln3/d/a/a;

    move-result-object v0

    invoke-virtual {v0}, Ln3/d/a/a;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "androidx.browser.customtabs.extra.SHARE_STATE"

    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    new-instance v0, Ln3/d/a/f;

    invoke-direct {v0, v1, v5}, Ln3/d/a/f;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 21
    iget-object v1, v0, Ln3/d/a/f;->a:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zzb:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzglo;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zzb:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zzc:Landroid/net/Uri;

    .line 22
    invoke-virtual {v0, v1, v2}, Ln3/d/a/f;->a(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zza:Lcom/google/android/gms/internal/ads/zzbkj;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zzb:Landroid/content/Context;

    .line 23
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbkj;->zzb(Landroid/app/Activity;)V

    return-void
.end method
