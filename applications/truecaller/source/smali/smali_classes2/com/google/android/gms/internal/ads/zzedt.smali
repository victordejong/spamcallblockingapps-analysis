.class public final synthetic Lcom/google/android/gms/internal/ads/zzedt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdvi;

.field private final zzb:Landroid/app/Activity;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzffc;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzedq;

.field private final zze:Ljava/lang/String;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/zzbu;

.field private final zzg:Ljava/lang/String;

.field private final zzh:Landroid/content/res/Resources;

.field private final zzi:Lcom/google/android/gms/ads/internal/overlay/zzl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdvi;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzffc;Lcom/google/android/gms/internal/ads/zzedq;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzbu;Ljava/lang/String;Landroid/content/res/Resources;Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedt;->zza:Lcom/google/android/gms/internal/ads/zzdvi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedt;->zzb:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzedt;->zzc:Lcom/google/android/gms/internal/ads/zzffc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzedt;->zzd:Lcom/google/android/gms/internal/ads/zzedq;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzedt;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzedt;->zzf:Lcom/google/android/gms/ads/internal/util/zzbu;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzedt;->zzg:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzedt;->zzh:Landroid/content/res/Resources;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzedt;->zzi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzedt;->zza:Lcom/google/android/gms/internal/ads/zzdvi;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzedt;->zzb:Landroid/app/Activity;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzedt;->zzc:Lcom/google/android/gms/internal/ads/zzffc;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzedt;->zzd:Lcom/google/android/gms/internal/ads/zzedq;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzedt;->zze:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzedt;->zzf:Lcom/google/android/gms/ads/internal/util/zzbu;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzedt;->zzg:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzedt;->zzh:Landroid/content/res/Resources;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzedt;->zzi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    if-eqz v9, :cond_0

    const-string v2, "dialog_action"

    const-string v3, "confirm"

    invoke-static {v2, v3}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v16

    const-string v7, "dialog_click"

    move-object v2, v10

    move-object v3, v9

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v1, v8

    move-object/from16 v8, v16

    .line 2
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzedy;->zzh(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdvi;Lcom/google/android/gms/internal/ads/zzffc;Lcom/google/android/gms/internal/ads/zzedq;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    move-object v1, v8

    .line 3
    :goto_0
    :try_start_0
    new-instance v2, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v2, v10}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0, v2, v14, v13}, Lcom/google/android/gms/ads/internal/util/zzbu;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Failed to schedule offline notification poster."

    .line 5
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :goto_1
    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ads/zzedq;->zzd(Ljava/lang/String;)V

    if-eqz v9, :cond_1

    const-string v7, "offline_notification_worker_not_scheduled"

    move-object v2, v10

    move-object v3, v9

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    .line 7
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzedy;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdvi;Lcom/google/android/gms/internal/ads/zzffc;Lcom/google/android/gms/internal/ads/zzedq;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zze()Lcom/google/android/gms/ads/internal/util/zzad;

    move-result-object v0

    .line 10
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzad;->zzm()I

    move-result v0

    invoke-direct {v2, v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    if-nez v15, :cond_2

    const-string v0, "You\'ll get a notification with the link when you\'re back online"

    goto :goto_2

    .line 11
    :cond_2
    sget v0, Lcom/google/android/gms/ads/impl/R$string;->offline_opt_in_confirmation:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    :goto_2
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzedw;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzl;)V

    .line 13
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 14
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    new-instance v2, Ljava/util/Timer;

    .line 16
    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzedx;

    .line 17
    invoke-direct {v3, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzedx;-><init>(Landroid/app/AlertDialog;Ljava/util/Timer;Lcom/google/android/gms/ads/internal/overlay/zzl;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
