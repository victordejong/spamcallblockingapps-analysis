.class public final Lcom/google/android/gms/ads/internal/util/zzax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/ads/internal/util/zzay;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzay;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzax;->zza:Lcom/google/android/gms/ads/internal/util/zzay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzax;->zza:Lcom/google/android/gms/ads/internal/util/zzay;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/util/zzay;->zza:Landroid/content/Context;

    const-string p2, "https://support.google.com/dfp_premium/answer/7160685#push"

    .line 2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzX(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
