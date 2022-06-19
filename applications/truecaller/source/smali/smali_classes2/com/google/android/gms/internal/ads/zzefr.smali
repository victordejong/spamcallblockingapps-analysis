.class public final Lcom/google/android/gms/internal/ads/zzefr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeec<",
        "Lcom/google/android/gms/internal/ads/zzdji;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdkf;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzezy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdkf;Lcom/google/android/gms/internal/ads/zzezy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefr;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzefr;->zzb:Lcom/google/android/gms/internal/ads/zzdkf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefr;->zzc:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzefr;->zzd:Lcom/google/android/gms/internal/ads/zzezy;

    return-void
.end method

.method private static zzd(Lcom/google/android/gms/internal/ads/zzezz;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzezz;->zzv:Lorg/json/JSONObject;

    const-string v0, "tab_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzefr;->zza:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbkj;->zza(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzefr;->zzd(Lcom/google/android/gms/internal/ads/zzezz;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfal;",
            "Lcom/google/android/gms/internal/ads/zzezz;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzdji;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzefr;->zzd(Lcom/google/android/gms/internal/ads/zzezz;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzefp;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzefp;-><init>(Lcom/google/android/gms/internal/ads/zzefr;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzefr;->zzc:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v2, Ln3/d/a/a$a;

    invoke-direct {v2}, Ln3/d/a/a$a;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "android.support.customtabs.extra.SESSION"

    .line 3
    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 4
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 6
    invoke-virtual {v0, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const-string v5, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    .line 7
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    invoke-virtual {v2}, Ln3/d/a/a$a;->a()Ln3/d/a/a;

    move-result-object v2

    invoke-virtual {v2}, Ln3/d/a/a;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "androidx.browser.customtabs.extra.SHARE_STATE"

    .line 9
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    new-instance v2, Ln3/d/a/f;

    invoke-direct {v2, v0, v7}, Ln3/d/a/f;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 11
    iget-object v0, v2, Ln3/d/a/f;->a:Landroid/content/Intent;

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 12
    new-instance v9, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v0, v2, Ln3/d/a/f;->a:Landroid/content/Intent;

    invoke-direct {v9, v0, v7}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzt;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzchl;

    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzchl;-><init>()V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzefr;->zzb:Lcom/google/android/gms/internal/ads/zzdkf;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcxv;

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 14
    invoke-direct {v3, v4, v5, v7}, Lcom/google/android/gms/internal/ads/zzcxv;-><init>(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdjm;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzefq;

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/zzefq;-><init>(Lcom/google/android/gms/internal/ads/zzchl;)V

    .line 15
    invoke-direct {v4, v5, v7}, Lcom/google/android/gms/internal/ads/zzdjm;-><init>(Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzcml;)V

    .line 16
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdkf;->zzQ(Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzdjm;)Lcom/google/android/gms/internal/ads/zzdjj;

    move-result-object v2

    .line 17
    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdjj;->zzi()Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v11

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcgz;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v4

    .line 19
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzcgz;-><init>(IIZZZ)V

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v3

    move-object v13, v4

    .line 20
    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/internal/ads/zzbcv;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzdio;)V

    .line 21
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzchl;->zzc(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzefr;->zzd:Lcom/google/android/gms/internal/ads/zzezy;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzezy;->zzd()V

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdjj;->zzh()Lcom/google/android/gms/internal/ads/zzdji;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v2, "Error in CustomTabsAdRenderer"

    .line 24
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    throw v0
.end method
