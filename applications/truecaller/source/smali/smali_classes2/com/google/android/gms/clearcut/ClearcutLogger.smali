.class public final Lcom/google/android/gms/clearcut/ClearcutLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;,
        Lcom/google/android/gms/clearcut/ClearcutLogger$zzc;,
        Lcom/google/android/gms/clearcut/ClearcutLogger$zza;,
        Lcom/google/android/gms/clearcut/ClearcutLogger$zzb;
    }
.end annotation


# static fields
.field public static final m:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/internal/clearcut/zzj;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/internal/clearcut/zzj;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public final g:Z

.field public h:Lcom/google/android/gms/internal/clearcut/zzge$zzv$zzb;

.field public final i:Lcom/google/android/gms/clearcut/zzb;

.field public final j:Lcom/google/android/gms/common/util/Clock;

.field public k:Lcom/google/android/gms/clearcut/ClearcutLogger$zzc;

.field public final l:Lcom/google/android/gms/clearcut/ClearcutLogger$zza;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/ClearcutLogger;->m:Lcom/google/android/gms/common/api/Api$ClientKey;

    new-instance v1, Le/m/a/f/c/a;

    invoke-direct {v1}, Le/m/a/f/c/a;-><init>()V

    sput-object v1, Lcom/google/android/gms/clearcut/ClearcutLogger;->n:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    new-instance v2, Lcom/google/android/gms/common/api/Api;

    const-string v3, "ClearcutLogger.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v2, Lcom/google/android/gms/clearcut/ClearcutLogger;->o:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/clearcut/zzb;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/clearcut/ClearcutLogger$zza;)V
    .locals 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->e:I

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzge$zzv$zzb;->zzbhk:Lcom/google/android/gms/internal/clearcut/zzge$zzv$zzb;

    iput-object v1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->h:Lcom/google/android/gms/internal/clearcut/zzge$zzv$zzb;

    iput-object p1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "ClearcutLogger"

    const-string v3, "This can\'t happen."

    invoke-static {v2, v3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p1, v1

    .line 2
    :goto_0
    iput p1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->c:I

    iput v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->e:I

    iput-object p2, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->f:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->g:Z

    iput-object p5, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->i:Lcom/google/android/gms/clearcut/zzb;

    iput-object p6, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->j:Lcom/google/android/gms/common/util/Clock;

    new-instance p1, Lcom/google/android/gms/clearcut/ClearcutLogger$zzc;

    invoke-direct {p1}, Lcom/google/android/gms/clearcut/ClearcutLogger$zzc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->k:Lcom/google/android/gms/clearcut/ClearcutLogger$zzc;

    sget-object p1, Lcom/google/android/gms/internal/clearcut/zzge$zzv$zzb;->zzbhk:Lcom/google/android/gms/internal/clearcut/zzge$zzv$zzb;

    iput-object p1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->h:Lcom/google/android/gms/internal/clearcut/zzge$zzv$zzb;

    iput-object p7, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->l:Lcom/google/android/gms/clearcut/ClearcutLogger$zza;

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string p1, "can\'t be anonymous with an upload account"

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/clearcut/ClearcutLogger;
    .locals 9
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    new-instance v8, Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zze;->zzb(Landroid/content/Context;)Lcom/google/android/gms/clearcut/zzb;

    move-result-object v5

    .line 1
    sget-object v6, Lcom/google/android/gms/common/util/DefaultClock;->a:Lcom/google/android/gms/common/util/DefaultClock;

    .line 2
    new-instance v7, Lcom/google/android/gms/internal/clearcut/zzp;

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/clearcut/zzp;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/clearcut/ClearcutLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/clearcut/zzb;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/clearcut/ClearcutLogger$zza;)V

    return-object v8
.end method


# virtual methods
.method public final b([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    new-instance v0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;-><init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[BLe/m/a/f/c/a;)V

    return-object v0
.end method
