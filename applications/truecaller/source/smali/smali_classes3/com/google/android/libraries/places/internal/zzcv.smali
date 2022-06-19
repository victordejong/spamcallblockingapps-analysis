.class public final Lcom/google/android/libraries/places/internal/zzcv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzcw;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzdb;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzdj;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/libraries/places/internal/zzdb;Lcom/google/android/libraries/places/internal/zzdj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzcv;->zza:Lcom/google/android/libraries/places/internal/zzdb;

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzcv;->zzb:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzcv;->zzc:Lcom/google/android/libraries/places/internal/zzdj;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/libraries/places/internal/zzdb;Lcom/google/android/libraries/places/internal/zzdj;Lcom/google/android/libraries/places/internal/zzcu;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzcv;-><init>(Landroid/content/Context;Lcom/google/android/libraries/places/internal/zzdb;Lcom/google/android/libraries/places/internal/zzdj;)V

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzcz;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzcx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzcx;-><init>(Lcom/google/android/libraries/places/internal/zzcu;)V

    return-object v0
.end method

.method private final zzc()Le/d/e/p;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcv;->zzb:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzdg;->zza(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Le/d/e/x/b;

    new-instance v2, Le/d/e/x/f;

    invoke-direct {v2}, Le/d/e/x/f;-><init>()V

    invoke-direct {v1, v2}, Le/d/e/x/b;-><init>(Le/d/e/x/a;)V

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v3, "volley"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    new-instance v0, Le/d/e/p;

    new-instance v3, Le/d/e/x/d;

    invoke-direct {v3, v2}, Le/d/e/x/d;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3, v1}, Le/d/e/p;-><init>(Le/d/e/b;Le/d/e/i;)V

    .line 5
    iget-object v1, v0, Le/d/e/p;->i:Le/d/e/d;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 6
    iput-boolean v2, v1, Le/d/e/d;->e:Z

    .line 7
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 8
    :cond_0
    iget-object v1, v0, Le/d/e/p;->h:[Le/d/e/j;

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v1, v5

    if-eqz v6, :cond_1

    .line 9
    iput-boolean v2, v6, Le/d/e/j;->e:Z

    .line 10
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_2
    new-instance v1, Le/d/e/d;

    iget-object v2, v0, Le/d/e/p;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, v0, Le/d/e/p;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v5, v0, Le/d/e/p;->e:Le/d/e/b;

    iget-object v6, v0, Le/d/e/p;->g:Le/d/e/r;

    invoke-direct {v1, v2, v3, v5, v6}, Le/d/e/d;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Le/d/e/b;Le/d/e/r;)V

    iput-object v1, v0, Le/d/e/p;->i:Le/d/e/d;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 13
    :goto_1
    iget-object v1, v0, Le/d/e/p;->h:[Le/d/e/j;

    array-length v1, v1

    if-ge v4, v1, :cond_3

    .line 14
    new-instance v1, Le/d/e/j;

    iget-object v2, v0, Le/d/e/p;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, v0, Le/d/e/p;->f:Le/d/e/i;

    iget-object v5, v0, Le/d/e/p;->e:Le/d/e/b;

    iget-object v6, v0, Le/d/e/p;->g:Le/d/e/r;

    invoke-direct {v1, v2, v3, v5, v6}, Le/d/e/j;-><init>(Ljava/util/concurrent/BlockingQueue;Le/d/e/i;Le/d/e/b;Le/d/e/r;)V

    .line 15
    iget-object v2, v0, Le/d/e/p;->h:[Le/d/e/j;

    aput-object v1, v2, v4

    .line 16
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 17
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzvs;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/d/e/p;

    return-object v0
.end method

.method private final zzd()Lcom/google/android/libraries/places/internal/zzt;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzdl;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzcv;->zzb:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzdl;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzcv;->zzc:Lcom/google/android/libraries/places/internal/zzdj;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzcv;->zza:Lcom/google/android/libraries/places/internal/zzdb;

    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzw;->zza(Lcom/google/android/libraries/places/internal/zzdn;Lcom/google/android/libraries/places/internal/zzdj;Lcom/google/android/libraries/places/internal/zzds;)Lcom/google/android/libraries/places/internal/zzt;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/libraries/places/api/net/PlacesClient;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcv;->zza:Lcom/google/android/libraries/places/internal/zzdb;

    .line 2
    new-instance v1, Lcom/google/android/libraries/places/internal/zzdr;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzcv;->zzb:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/libraries/places/internal/zzdr;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzcv;->zzc()Le/d/e/p;

    move-result-object v2

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbu;

    invoke-direct {v3}, Lcom/google/android/libraries/places/internal/zzbu;-><init>()V

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzae;->zza(Le/d/e/p;Lcom/google/android/libraries/places/internal/zzal;)Lcom/google/android/libraries/places/internal/zzx;

    move-result-object v2

    .line 4
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzcv;->zzc()Le/d/e/p;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzak;->zza(Le/d/e/p;)Lcom/google/android/libraries/places/internal/zzad;

    move-result-object v3

    .line 5
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzcv;->zzd()Lcom/google/android/libraries/places/internal/zzt;

    move-result-object v4

    invoke-static {}, Lcom/google/android/libraries/places/internal/zza;->zza()Lcom/google/android/libraries/places/internal/zzb;

    move-result-object v5

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbf;->zza()Lcom/google/android/libraries/places/internal/zzbg;

    move-result-object v6

    .line 6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzch;->zza()Lcom/google/android/libraries/places/internal/zzci;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/libraries/places/internal/zzbj;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbk;

    move-result-object v7

    .line 7
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbn;->zza()Lcom/google/android/libraries/places/internal/zzbo;

    move-result-object v8

    .line 8
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzch;->zza()Lcom/google/android/libraries/places/internal/zzci;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/libraries/places/internal/zzbr;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbs;

    move-result-object v9

    .line 9
    invoke-static/range {v0 .. v9}, Lcom/google/android/libraries/places/internal/zzcg;->zza(Lcom/google/android/libraries/places/internal/zzda;Lcom/google/android/libraries/places/internal/zzdr;Lcom/google/android/libraries/places/internal/zzx;Lcom/google/android/libraries/places/internal/zzad;Lcom/google/android/libraries/places/internal/zzcy;Lcom/google/android/libraries/places/internal/zzb;Lcom/google/android/libraries/places/internal/zzbg;Lcom/google/android/libraries/places/internal/zzbk;Lcom/google/android/libraries/places/internal/zzbo;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbv;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/google/android/libraries/places/internal/zza;->zza()Lcom/google/android/libraries/places/internal/zzb;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzcv;->zzb:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzdg;->zza(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 12
    sget-object v3, Lcom/google/android/gms/location/LocationServices;->a:Lcom/google/android/gms/common/api/Api$ClientKey;

    new-instance v3, Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-direct {v3, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;-><init>(Landroid/content/Context;)V

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 13
    invoke-static {v3, v2}, Lcom/google/android/libraries/places/internal/zzvs;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 14
    new-instance v3, Lcom/google/android/libraries/places/internal/zzcr;

    new-instance v4, Lcom/google/android/libraries/places/internal/zzco;

    invoke-direct {v4}, Lcom/google/android/libraries/places/internal/zzco;-><init>()V

    invoke-direct {v3, v4}, Lcom/google/android/libraries/places/internal/zzcr;-><init>(Lcom/google/android/libraries/places/internal/zzco;)V

    .line 15
    invoke-static {v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzn;->zza(Lcom/google/android/libraries/places/internal/zzb;Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/libraries/places/internal/zzcr;)Lcom/google/android/libraries/places/internal/zzk;

    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzcv;->zzb:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzdg;->zza(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    .line 17
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 18
    invoke-static {}, Lcom/google/android/libraries/places/internal/zza;->zza()Lcom/google/android/libraries/places/internal/zzb;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzu;->zza(Landroid/net/wifi/WifiManager;Lcom/google/android/libraries/places/internal/zzb;)Lcom/google/android/libraries/places/internal/zzs;

    move-result-object v2

    .line 19
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzcv;->zzd()Lcom/google/android/libraries/places/internal/zzt;

    move-result-object v3

    invoke-static {}, Lcom/google/android/libraries/places/internal/zza;->zza()Lcom/google/android/libraries/places/internal/zzb;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzba;->zza(Lcom/google/android/libraries/places/internal/zzy;Lcom/google/android/libraries/places/internal/zzk;Lcom/google/android/libraries/places/internal/zzs;Lcom/google/android/libraries/places/internal/zzcy;Lcom/google/android/libraries/places/internal/zzb;)Lcom/google/android/libraries/places/internal/zzaq;

    move-result-object v0

    return-object v0
.end method
