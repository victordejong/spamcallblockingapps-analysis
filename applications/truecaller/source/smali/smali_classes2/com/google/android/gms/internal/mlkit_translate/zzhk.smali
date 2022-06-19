.class public Lcom/google/android/gms/internal/mlkit_translate/zzhk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_translate/zzhk$zza;
    }
.end annotation


# static fields
.field private static zza:Ljava/util/concurrent/ExecutorService;

.field private static zzb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/mlkit_translate/zzhk$zza;

.field private final zzd:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zza:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_translate/zzhk$zza;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zzd:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzhk$zza;

    return-void
.end method

.method private static declared-synchronized zza()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zzb:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 6
    monitor-exit v0

    return-object v1

    .line 7
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->k0(Landroid/content/res/Configuration;)Ln3/k/e/d;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ln3/k/e/d;->c()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zzb:Ljava/util/List;

    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-virtual {v1}, Ln3/k/e/d;->c()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 10
    invoke-virtual {v1, v2}, Ln3/k/e/d;->b(I)Ljava/util/Locale;

    move-result-object v3

    .line 11
    sget-object v4, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zzb:Ljava/util/List;

    .line 12
    sget-object v5, Le/m/h/a/d/c;->a:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 13
    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zzb:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V
    .locals 4

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zzd:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbh;->zza()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NA"

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 19
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbh;->zzb()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbh$zza;

    move-result-object v2

    .line 20
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbh$zza;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbh$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbh$zza;

    move-result-object p2

    .line 22
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbh$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbh$zza;

    move-result-object p2

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zza()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbh$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbh$zza;

    move-result-object p2

    const-string v0, "o:a:mlkit:1.0.0"

    .line 24
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbh$zza;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbh$zza;

    move-result-object p2

    .line 25
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;->zzh()Lcom/google/android/gms/internal/mlkit_translate/zzlk;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_translate/zzkc;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbh;

    .line 26
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbu;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbh;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;

    .line 27
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzhk$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;->zzh()Lcom/google/android/gms/internal/mlkit_translate/zzlk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzkc;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhk$zza;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/mlkit_translate/zzbu;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad;->zzb()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzd()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zzb;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zzb;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zzd:Landroid/content/Context;

    invoke-static {v0}, Le/m/h/a/d/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zza:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_translate/zzhj;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhj;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzhk;Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzk:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbu;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbu;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzm:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbu;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzn:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbu;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzo:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbu;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    return-void
.end method
