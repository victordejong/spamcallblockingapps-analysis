.class public final synthetic Lcom/google/android/gms/internal/ads/zzedv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzedq;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdvi;

.field private final zzd:Landroid/app/Activity;

.field private final zze:Lcom/google/android/gms/internal/ads/zzffc;

.field private final zzf:Lcom/google/android/gms/ads/internal/overlay/zzl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzedq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdvi;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzffc;Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedv;->zza:Lcom/google/android/gms/internal/ads/zzedq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedv;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzedv;->zzc:Lcom/google/android/gms/internal/ads/zzdvi;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzedv;->zzd:Landroid/app/Activity;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzedv;->zze:Lcom/google/android/gms/internal/ads/zzffc;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzedv;->zzf:Lcom/google/android/gms/ads/internal/overlay/zzl;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 7

    .line 1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzedv;->zza:Lcom/google/android/gms/internal/ads/zzedq;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzedv;->zzb:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedv;->zzc:Lcom/google/android/gms/internal/ads/zzdvi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedv;->zzd:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzedv;->zze:Lcom/google/android/gms/internal/ads/zzffc;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzedv;->zzf:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzedq;->zzd(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v5, "dialog_action"

    const-string v6, "dismiss"

    invoke-static {v5, v6}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    const-string v5, "dialog_click"

    .line 2
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzedy;->zzh(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdvi;Lcom/google/android/gms/internal/ads/zzffc;Lcom/google/android/gms/internal/ads/zzedq;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzb()V

    :cond_1
    return-void
.end method
