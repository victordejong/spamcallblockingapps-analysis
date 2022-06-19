.class public final Lcom/google/android/gms/internal/ads/zzaia;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzahy;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaku;

.field private zzd:Lcom/google/android/gms/internal/ads/zzjz;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhq;

.field private zzf:Lcom/google/android/gms/internal/ads/zzafy;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzki;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzcy;

.field private final zzi:Landroid/os/Looper;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzg;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzahz;

.field private zzl:Z

.field private final zzm:Lcom/google/android/gms/internal/ads/zzadz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzahy;)V
    .locals 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/ads/zznq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zznq;-><init>()V

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzjt;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzjt;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzgt;

    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzoa;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaea;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzaea;-><init>()V

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzkr;->zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzkr;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcy;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzaku;->zza:Lcom/google/android/gms/internal/ads/zzaku;

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/zzcy;-><init>(Lcom/google/android/gms/internal/ads/zzaku;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaia;->zza:Landroid/content/Context;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaia;->zzb:Lcom/google/android/gms/internal/ads/zzahy;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaia;->zzd:Lcom/google/android/gms/internal/ads/zzjz;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzaia;->zze:Lcom/google/android/gms/internal/ads/zzhq;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaia;->zzf:Lcom/google/android/gms/internal/ads/zzafy;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzaia;->zzg:Lcom/google/android/gms/internal/ads/zzki;

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzaia;->zzh:Lcom/google/android/gms/internal/ads/zzcy;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamq;->zzk()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaia;->zzi:Landroid/os/Looper;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzg;->zza:Lcom/google/android/gms/internal/ads/zzg;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaia;->zzj:Lcom/google/android/gms/internal/ads/zzg;

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzahz;->zze:Lcom/google/android/gms/internal/ads/zzahz;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaia;->zzk:Lcom/google/android/gms/internal/ads/zzahz;

    const-wide/16 v1, 0x14

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v14

    const-wide/16 v1, 0x1f4

    .line 7
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v16

    new-instance v1, Lcom/google/android/gms/internal/ads/zzadz;

    const v9, 0x3f7851ec    # 0.97f

    const v10, 0x3f83d70a    # 1.03f

    const-wide/16 v11, 0x3e8

    const v13, 0x33d6bf95    # 1.0E-7f

    const v18, 0x3f7fbe77    # 0.999f

    const/16 v19, 0x0

    move-object v8, v1

    .line 8
    invoke-direct/range {v8 .. v19}, Lcom/google/android/gms/internal/ads/zzadz;-><init>(FFJFJJFLcom/google/android/gms/internal/ads/zzady;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaia;->zzm:Lcom/google/android/gms/internal/ads/zzadz;

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzaia;->zzc:Lcom/google/android/gms/internal/ads/zzaku;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzaia;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zza:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzahy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzb:Lcom/google/android/gms/internal/ads/zzahy;

    return-object p0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzaku;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzc:Lcom/google/android/gms/internal/ads/zzaku;

    return-object p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzjz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzd:Lcom/google/android/gms/internal/ads/zzjz;

    return-object p0
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzhq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zze:Lcom/google/android/gms/internal/ads/zzhq;

    return-object p0
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzafy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzf:Lcom/google/android/gms/internal/ads/zzafy;

    return-object p0
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzki;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzg:Lcom/google/android/gms/internal/ads/zzki;

    return-object p0
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzcy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzh:Lcom/google/android/gms/internal/ads/zzcy;

    return-object p0
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/ads/zzaia;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzi:Landroid/os/Looper;

    return-object p0
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzj:Lcom/google/android/gms/internal/ads/zzg;

    return-object p0
.end method

.method public static synthetic zzk(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzahz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzk:Lcom/google/android/gms/internal/ads/zzahz;

    return-object p0
.end method

.method public static synthetic zzo(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzadz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzm:Lcom/google/android/gms/internal/ads/zzadz;

    return-object p0
.end method


# virtual methods
.method public final zzl(Lcom/google/android/gms/internal/ads/zzjz;)Lcom/google/android/gms/internal/ads/zzaia;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzl:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzd:Lcom/google/android/gms/internal/ads/zzjz;

    return-object p0
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzafy;)Lcom/google/android/gms/internal/ads/zzaia;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzl:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzf:Lcom/google/android/gms/internal/ads/zzafy;

    return-object p0
.end method

.method public final zzn()Lcom/google/android/gms/internal/ads/zzaie;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzl:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzl:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaie;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaie;-><init>(Lcom/google/android/gms/internal/ads/zzaia;)V

    return-object v0
.end method
