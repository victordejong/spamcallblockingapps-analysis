.class public final Lcom/google/android/gms/internal/ads/zzafp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/gms/internal/ads/zzhd;
.implements Lcom/google/android/gms/internal/ads/zzjy;
.implements Lcom/google/android/gms/internal/ads/zzagy;
.implements Lcom/google/android/gms/internal/ads/zzaeb;
.implements Lcom/google/android/gms/internal/ads/zzahq;


# instance fields
.field private zzA:Z

.field private zzB:I

.field private zzC:Z

.field private zzD:Z

.field private zzE:Z

.field private zzF:Z

.field private zzG:I

.field private zzH:Lcom/google/android/gms/internal/ads/zzafo;

.field private zzI:J

.field private zzJ:I

.field private zzK:Z

.field private zzL:Lcom/google/android/gms/internal/ads/zzaeg;

.field private final zzM:Lcom/google/android/gms/internal/ads/zzadz;

.field private final zza:[Lcom/google/android/gms/internal/ads/zzahv;

.field private final zzb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzahv;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:[Lcom/google/android/gms/internal/ads/zzahw;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzjz;

.field private final zze:Lcom/google/android/gms/internal/ads/zzka;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzafy;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzki;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzalg;

.field private final zzi:Landroid/os/HandlerThread;

.field private final zzj:Landroid/os/Looper;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzaip;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzain;

.field private final zzm:J

.field private final zzn:Lcom/google/android/gms/internal/ads/zzaec;

.field private final zzo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzafl;",
            ">;"
        }
    .end annotation
.end field

.field private final zzp:Lcom/google/android/gms/internal/ads/zzaku;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzafn;

.field private final zzr:Lcom/google/android/gms/internal/ads/zzags;

.field private final zzs:Lcom/google/android/gms/internal/ads/zzagz;

.field private zzt:Lcom/google/android/gms/internal/ads/zzahz;

.field private zzu:Lcom/google/android/gms/internal/ads/zzahd;

.field private zzv:Lcom/google/android/gms/internal/ads/zzafm;

.field private zzw:Z

.field private zzx:Z

.field private zzy:Z

.field private zzz:Z


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzahv;Lcom/google/android/gms/internal/ads/zzjz;Lcom/google/android/gms/internal/ads/zzka;Lcom/google/android/gms/internal/ads/zzafy;Lcom/google/android/gms/internal/ads/zzki;IZLcom/google/android/gms/internal/ads/zzcy;Lcom/google/android/gms/internal/ads/zzahz;Lcom/google/android/gms/internal/ads/zzadz;JZLandroid/os/Looper;Lcom/google/android/gms/internal/ads/zzaku;Lcom/google/android/gms/internal/ads/zzafn;[B)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-object/from16 v5, p15

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v6, p16

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzq:Lcom/google/android/gms/internal/ads/zzafn;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzd:Lcom/google/android/gms/internal/ads/zzjz;

    move-object v6, p3

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzafp;->zze:Lcom/google/android/gms/internal/ads/zzka;

    move-object v7, p4

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzf:Lcom/google/android/gms/internal/ads/zzafy;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzg:Lcom/google/android/gms/internal/ads/zzki;

    const/4 v8, 0x0

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzB:I

    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzC:Z

    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzt:Lcom/google/android/gms/internal/ads/zzahz;

    move-object/from16 v9, p10

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzM:Lcom/google/android/gms/internal/ads/zzadz;

    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzx:Z

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzp:Lcom/google/android/gms/internal/ads/zzaku;

    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzafy;->zzd()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzm:J

    .line 2
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzafy;->zze()Z

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzahd;->zza(Lcom/google/android/gms/internal/ads/zzka;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzafm;

    .line 4
    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/zzafm;-><init>(Lcom/google/android/gms/internal/ads/zzahd;)V

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzv:Lcom/google/android/gms/internal/ads/zzafm;

    const/4 v6, 0x2

    new-array v7, v6, [Lcom/google/android/gms/internal/ads/zzahw;

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzc:[Lcom/google/android/gms/internal/ads/zzahw;

    :goto_0
    if-ge v8, v6, :cond_0

    .line 5
    aget-object v7, v1, v8

    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/ads/zzahv;->zzae(I)V

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzc:[Lcom/google/android/gms/internal/ads/zzahw;

    .line 6
    aget-object v9, v1, v8

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzahv;->zzad()Lcom/google/android/gms/internal/ads/zzahw;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaec;

    .line 7
    invoke-direct {v1, p0, v5}, Lcom/google/android/gms/internal/ads/zzaec;-><init>(Lcom/google/android/gms/internal/ads/zzaeb;Lcom/google/android/gms/internal/ads/zzaku;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzn:Lcom/google/android/gms/internal/ads/zzaec;

    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzo:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/IdentityHashMap;

    .line 9
    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 10
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzb:Ljava/util/Set;

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaip;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzaip;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzk:Lcom/google/android/gms/internal/ads/zzaip;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzain;

    .line 12
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzain;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzl:Lcom/google/android/gms/internal/ads/zzain;

    .line 13
    invoke-virtual {p2, p0, v3}, Lcom/google/android/gms/internal/ads/zzjz;->zzk(Lcom/google/android/gms/internal/ads/zzjy;Lcom/google/android/gms/internal/ads/zzki;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzK:Z

    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p14

    .line 14
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzags;

    .line 15
    invoke-direct {v2, v4, v1}, Lcom/google/android/gms/internal/ads/zzags;-><init>(Lcom/google/android/gms/internal/ads/zzcy;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzagz;

    .line 16
    invoke-direct {v2, p0, v4, v1}, Lcom/google/android/gms/internal/ads/zzagz;-><init>(Lcom/google/android/gms/internal/ads/zzagy;Lcom/google/android/gms/internal/ads/zzcy;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzs:Lcom/google/android/gms/internal/ads/zzagz;

    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, -0x10

    const-string v3, "ExoPlayer:Playback"

    .line 17
    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzi:Landroid/os/HandlerThread;

    .line 18
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 19
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzj:Landroid/os/Looper;

    .line 20
    invoke-interface {v5, v1, p0}, Lcom/google/android/gms/internal/ads/zzaku;->zza(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzalg;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    return-void
.end method

.method private final zzA()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzd:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzhe;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhe;->zzg()J

    move-result-wide v4

    move-wide v6, v4

    goto :goto_0

    :cond_1
    move-wide v6, v2

    :goto_0
    cmp-long v1, v6, v2

    const/4 v10, 0x0

    if-eqz v1, :cond_2

    .line 3
    invoke-direct {p0, v6, v7}, Lcom/google/android/gms/internal/ads/zzafp;->zzG(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 4
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    cmp-long v0, v6, v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzc:J

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v0, p0

    move-wide v2, v6

    .line 6
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzafp;->zzV(Lcom/google/android/gms/internal/ads/zzhf;JJJZI)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    goto/16 :goto_4

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzn:Lcom/google/android/gms/internal/ads/zzaec;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzags;->zzi()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v10

    .line 9
    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaec;->zzf(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzI:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zza()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 10
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzo:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 12
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzK:Z

    if-eqz v0, :cond_5

    const-wide/16 v5, -0x1

    add-long/2addr v3, v5

    iput-boolean v10, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzK:Z

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 13
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    .line 14
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result v0

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzJ:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzo:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzo:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, -0x1

    .line 16
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzafl;

    goto :goto_2

    :cond_6
    move-object v7, v6

    :goto_2
    if-eqz v7, :cond_8

    if-ltz v0, :cond_7

    if-nez v0, :cond_8

    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-gez v7, :cond_8

    :cond_7
    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzo:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, -0x1

    .line 17
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzafl;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzo:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzo:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzafl;

    :cond_9
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzJ:I

    .line 20
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 21
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    .line 22
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzags;->zzg()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zze()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzq:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzZ()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzr:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 26
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzl:Z

    if-eqz v1, :cond_c

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    .line 27
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzafp;->zzC(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzn:Lcom/google/android/gms/internal/ads/zzahf;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzahf;->zzb:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzM:Lcom/google/android/gms/internal/ads/zzadz;

    .line 28
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzafp;->zzB(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;J)J

    move-result-wide v2

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzZ()J

    move-result-wide v4

    .line 30
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzadz;->zzd(JJ)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzn:Lcom/google/android/gms/internal/ads/zzaec;

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzA()Lcom/google/android/gms/internal/ads/zzahf;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzahf;->zzb:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzn:Lcom/google/android/gms/internal/ads/zzaec;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 32
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzahd;->zzn:Lcom/google/android/gms/internal/ads/zzahf;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzahf;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzahf;->zzc:F

    .line 33
    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzahf;-><init>(FF)V

    .line 34
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzaec;->zzz(Lcom/google/android/gms/internal/ads/zzahf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 35
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzn:Lcom/google/android/gms/internal/ads/zzahf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzn:Lcom/google/android/gms/internal/ads/zzaec;

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzA()Lcom/google/android/gms/internal/ads/zzahf;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzahf;->zzb:F

    .line 37
    invoke-direct {p0, v0, v1, v10, v10}, Lcom/google/android/gms/internal/ads/zzafp;->zzR(Lcom/google/android/gms/internal/ads/zzahf;FZZ)V

    :cond_c
    return-void
.end method

.method private final zzB(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzl:Lcom/google/android/gms/internal/ads/zzain;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzk:Lcom/google/android/gms/internal/ads/zzaip;

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzk:Lcom/google/android/gms/internal/ads/zzaip;

    .line 3
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzaip;->zze:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaip;->zzb()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzk:Lcom/google/android/gms/internal/ads/zzaip;

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzaip;->zzh:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzaip;->zzf:J

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzamq;->zzab(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzk:Lcom/google/android/gms/internal/ads/zzaip;

    .line 5
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzaip;->zze:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide p1

    sub-long/2addr p1, p3

    return-wide p1

    :cond_1
    :goto_0
    return-wide v2
.end method

.method private final zzC(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzl:Lcom/google/android/gms/internal/ads/zzain;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzk:Lcom/google/android/gms/internal/ads/zzaip;

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {p1, p2, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzk:Lcom/google/android/gms/internal/ads/zzaip;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaip;->zzb()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzk:Lcom/google/android/gms/internal/ads/zzaip;

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzaip;->zzh:Z

    if-eqz p2, :cond_1

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzaip;->zze:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private final zzD(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzalg;->zzh(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    add-long/2addr p1, p3

    .line 2
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzalg;->zzg(IJ)Z

    return-void
.end method

.method private final zzE(Lcom/google/android/gms/internal/ads/zzhf;JZ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzags;->zzi()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzafp;->zzF(Lcom/google/android/gms/internal/ads/zzhf;JZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private final zzF(Lcom/google/android/gms/internal/ads/zzhf;JZZ)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzz()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzz:Z

    const/4 v1, 0x2

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 2
    iget p5, p5, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    const/4 v2, 0x3

    if-ne p5, v2, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzafp;->zzu(I)V

    :cond_1
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 4
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object p5

    move-object v2, p5

    :goto_0
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 5
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v2

    goto :goto_0

    :cond_3
    :goto_1
    const-wide/16 v3, 0x0

    if-nez p4, :cond_4

    if-ne p5, v2, :cond_4

    if-eqz v2, :cond_7

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzagp;->zza()J

    move-result-wide p4

    add-long/2addr p4, p2

    cmp-long p1, p4, v3

    if-gez p1, :cond_7

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    move p4, v0

    :goto_2
    if-ge p4, v1, :cond_5

    .line 8
    aget-object p5, p1, p4

    .line 9
    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/ads/zzafp;->zzL(Lcom/google/android/gms/internal/ads/zzahv;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_7

    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object p1

    if-eq p1, v2, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzags;->zzk()Lcom/google/android/gms/internal/ads/zzagp;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 12
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzags;->zzl(Lcom/google/android/gms/internal/ads/zzagp;)Z

    .line 13
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzagp;->zzb(J)V

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzW()V

    :cond_7
    if-eqz v2, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 15
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzags;->zzl(Lcom/google/android/gms/internal/ads/zzagp;)Z

    iget-boolean p1, v2, Lcom/google/android/gms/internal/ads/zzagp;->zzd:Z

    if-nez p1, :cond_8

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 16
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzagq;->zza(J)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object p1

    iput-object p1, v2, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    goto :goto_4

    .line 17
    :cond_8
    iget-boolean p1, v2, Lcom/google/android/gms/internal/ads/zzagp;->zze:Z

    if-eqz p1, :cond_9

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzhe;

    .line 18
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhe;->zzi(J)J

    move-result-wide p2

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzhe;

    iget-wide p4, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzm:J

    sub-long p4, p2, p4

    .line 19
    invoke-interface {p1, p4, p5, v0}, Lcom/google/android/gms/internal/ads/zzhe;->zze(JZ)V

    .line 20
    :cond_9
    :goto_4
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzafp;->zzG(J)V

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzS()V

    goto :goto_5

    .line 22
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzags;->zzm()V

    .line 24
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzafp;->zzG(J)V

    .line 25
    :goto_5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzafp;->zzY(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    .line 26
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzalg;->zzf(I)Z

    return-wide p2
.end method

.method private final zzG(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zza()J

    move-result-wide v0

    add-long/2addr p1, v0

    .line 3
    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzI:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzn:Lcom/google/android/gms/internal/ads/zzaec;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    const/4 p2, 0x0

    move v0, p2

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 5
    aget-object v1, p1, v0

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzafp;->zzaf(Lcom/google/android/gms/internal/ads/zzahv;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzI:J

    .line 7
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzahv;->zzap(J)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzagp;->zzq()Lcom/google/android/gms/internal/ads/zzka;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzka;->zzd:[Lcom/google/android/gms/internal/ads/zzjg;

    array-length v1, v0

    move v2, p2

    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object p1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private final zzH(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzD:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/gms/internal/ads/zzafp;->zzI(ZZZZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzv:Lcom/google/android/gms/internal/ads/zzafm;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzafm;->zzb(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzf:Lcom/google/android/gms/internal/ads/zzafy;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafy;->zzb()V

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzafp;->zzu(I)V

    return-void
.end method

.method private final zzI(ZZZZ)V
    .locals 30

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzalg;->zzh(I)V

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzL:Lcom/google/android/gms/internal/ads/zzaeg;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzz:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzn:Lcom/google/android/gms/internal/ads/zzaec;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaec;->zzb()V

    const-wide/16 v5, 0x0

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzI:J

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    move v6, v4

    :goto_0
    const-string v7, "ExoPlayerImplInternal"

    if-ge v6, v2, :cond_0

    .line 3
    aget-object v0, v5, v6

    .line 4
    :try_start_0
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzafp;->zzL(Lcom/google/android/gms/internal/ads/zzahv;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaeg; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v8, "Disable failed."

    .line 5
    invoke-static {v7, v8, v0}, Lcom/google/android/gms/internal/ads/zzaln;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 6
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    move v6, v4

    :goto_3
    if-ge v6, v2, :cond_2

    .line 7
    aget-object v0, v5, v6

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzb:Ljava/util/Set;

    .line 8
    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 9
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzahv;->zzas()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v8, v0

    const-string v0, "Reset failed."

    .line 10
    invoke-static {v7, v0, v8}, Lcom/google/android/gms/internal/ads/zzaln;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 11
    :cond_2
    iput v4, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzG:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 12
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    .line 13
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 14
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzl:Lcom/google/android/gms/internal/ads/zzain;

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/ads/zzafp;->zzad(Lcom/google/android/gms/internal/ads/zzahd;Lcom/google/android/gms/internal/ads/zzain;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_5

    .line 15
    :cond_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 16
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    goto :goto_6

    .line 17
    :cond_4
    :goto_5
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 18
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzc:J

    :goto_6
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_6

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzH:Lcom/google/android/gms/internal/ads/zzafo;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 19
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 20
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzafp;->zzJ(Lcom/google/android/gms/internal/ads/zzaiq;)Landroid/util/Pair;

    move-result-object v0

    .line 21
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhf;

    .line 22
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 23
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    move-object/from16 v18, v2

    goto :goto_7

    :cond_5
    move-object/from16 v18, v2

    move v0, v4

    :goto_7
    move-wide/from16 v26, v5

    move-wide v8, v9

    goto :goto_8

    :cond_6
    move-object/from16 v18, v2

    move v0, v4

    move-wide/from16 v26, v5

    move-wide v8, v7

    :goto_8
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzags;->zzm()V

    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzA:Z

    new-instance v2, Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 25
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget v12, v4, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    if-eqz p4, :cond_7

    goto :goto_9

    .line 26
    :cond_7
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzahd;->zzf:Lcom/google/android/gms/internal/ads/zzaeg;

    :goto_9
    move-object v13, v3

    if-eqz v0, :cond_8

    .line 27
    sget-object v3, Lcom/google/android/gms/internal/ads/zzs;->zza:Lcom/google/android/gms/internal/ads/zzs;

    goto :goto_a

    :cond_8
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzahd;->zzh:Lcom/google/android/gms/internal/ads/zzs;

    :goto_a
    move-object v15, v3

    if-eqz v0, :cond_9

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzafp;->zze:Lcom/google/android/gms/internal/ads/zzka;

    goto :goto_b

    .line 28
    :cond_9
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzahd;->zzi:Lcom/google/android/gms/internal/ads/zzka;

    :goto_b
    move-object/from16 v16, v3

    if-eqz v0, :cond_a

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    goto :goto_c

    :cond_a
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzahd;->zzj:Ljava/util/List;

    :goto_c
    move-object/from16 v17, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    const/4 v14, 0x0

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzl:Z

    move/from16 v19, v3

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzm:I

    move/from16 v20, v3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzn:Lcom/google/android/gms/internal/ads/zzahf;

    move-object/from16 v21, v0

    const-wide/16 v24, 0x0

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzF:Z

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object v5, v2

    move-object/from16 v7, v18

    move-wide/from16 v10, v26

    move-wide/from16 v22, v26

    invoke-direct/range {v5 .. v29}, Lcom/google/android/gms/internal/ads/zzahd;-><init>(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;JJILcom/google/android/gms/internal/ads/zzaeg;ZLcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzka;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhf;ZILcom/google/android/gms/internal/ads/zzahf;JJJZZ)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    if-eqz p3, :cond_b

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzafp;->zzs:Lcom/google/android/gms/internal/ads/zzagz;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagz;->zzg()V

    :cond_b
    return-void
.end method

.method private final zzJ(Lcom/google/android/gms/internal/ads/zzaiq;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaiq;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/ads/zzhf;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzahd;->zzb()Lcom/google/android/gms/internal/ads/zzhf;

    move-result-object p1

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzC:Z

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zze(Z)I

    move-result v6

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzk:Lcom/google/android/gms/internal/ads/zzaip;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzl:Lcom/google/android/gms/internal/ads/zzain;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    .line 4
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzaiq;->zzv(Lcom/google/android/gms/internal/ads/zzaip;Lcom/google/android/gms/internal/ads/zzain;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 5
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 6
    invoke-virtual {v3, p1, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzags;->zzp(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/zzhf;

    move-result-object v3

    .line 7
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzl:Lcom/google/android/gms/internal/ads/zzain;

    .line 8
    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    iget p1, v3, Lcom/google/android/gms/internal/ads/zzo;->zzc:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzl:Lcom/google/android/gms/internal/ads/zzain;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzo;->zzb:I

    .line 9
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzain;->zzc(I)I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzl:Lcom/google/android/gms/internal/ads/zzain;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzain;->zzi()J

    goto :goto_0

    :cond_1
    move-wide v1, v4

    .line 11
    :cond_2
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final zzK(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzaiq;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzo:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzo:Ljava/util/ArrayList;

    .line 4
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void

    .line 5
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzo:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzafl;

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzafl;->zzb:Ljava/lang/Object;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    const/4 p1, 0x0

    .line 9
    throw p1
.end method

.method private final zzL(Lcom/google/android/gms/internal/ads/zzahv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafp;->zzaf(Lcom/google/android/gms/internal/ads/zzahv;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzn:Lcom/google/android/gms/internal/ads/zzaec;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaec;->zze(Lcom/google/android/gms/internal/ads/zzahv;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafp;->zzah(Lcom/google/android/gms/internal/ads/zzahv;)V

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzahv;->zzar()V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzG:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzG:I

    return-void
.end method

.method private final zzM()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzagq;->zze:J

    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzd:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v5

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    cmp-long v0, v5, v1

    if-ltz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzac()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    move v3, v4

    :cond_2
    :goto_0
    return v3
.end method

.method private final zzN(Lcom/google/android/gms/internal/ads/zzaiq;Z)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 1
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzH:Lcom/google/android/gms/internal/ads/zzafo;

    iget-object v9, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    iget v4, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzB:I

    iget-boolean v10, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzC:Z

    iget-object v13, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzk:Lcom/google/android/gms/internal/ads/zzaip;

    iget-object v14, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzl:Lcom/google/android/gms/internal/ads/zzain;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v1

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzahd;->zzb()Lcom/google/android/gms/internal/ads/zzhf;

    move-result-object v0

    move-object v8, v0

    move v5, v3

    move-object v15, v11

    move-wide/from16 v13, v16

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const-wide/16 v10, 0x0

    goto/16 :goto_11

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    .line 3
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    .line 4
    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/zzafp;->zzad(Lcom/google/android/gms/internal/ads/zzahd;Lcom/google/android/gms/internal/ads/zzain;)Z

    move-result v19

    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v19, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzc:J

    :goto_1
    move-wide/from16 v23, v5

    if-eqz v8, :cond_6

    const/4 v5, 0x1

    move-object v6, v1

    move-object/from16 v1, p1

    move-object v2, v8

    move v11, v3

    move v3, v5

    const/4 v7, -0x1

    move v5, v10

    move-object v11, v6

    move-object v6, v13

    move-object/from16 v21, v9

    move v9, v7

    move-object v7, v14

    .line 8
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzafp;->zzae(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzafo;ZIZLcom/google/android/gms/internal/ads/zzaip;Lcom/google/android/gms/internal/ads/zzain;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_3

    .line 9
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/zzaiq;->zze(Z)I

    move-result v1

    move v5, v1

    move-wide/from16 v1, v23

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_4

    .line 10
    :cond_3
    iget-wide v2, v8, Lcom/google/android/gms/internal/ads/zzafo;->zzc:J

    cmp-long v2, v2, v16

    if-nez v2, :cond_4

    .line 11
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 12
    invoke-virtual {v12, v1, v14}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v1

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    move-wide/from16 v1, v23

    const/4 v3, 0x0

    goto :goto_2

    .line 13
    :cond_4
    iget-object v15, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 14
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move v5, v9

    const/4 v3, 0x1

    .line 15
    :goto_2
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    move v6, v3

    const/4 v3, 0x0

    :goto_4
    move v10, v4

    move v4, v5

    move/from16 v22, v6

    const-wide/16 v7, 0x0

    :goto_5
    move-object/from16 v27, v15

    move v15, v3

    move-object/from16 v3, v27

    goto/16 :goto_a

    :cond_6
    move-object v11, v1

    move-object/from16 v21, v9

    const/4 v9, -0x1

    .line 16
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/zzaiq;->zze(Z)I

    move-result v1

    :goto_6
    move v4, v1

    move-object v3, v15

    move-wide/from16 v1, v23

    const-wide/16 v7, 0x0

    :goto_7
    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    goto/16 :goto_a

    .line 18
    :cond_7
    invoke-virtual {v12, v15}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v9, :cond_9

    .line 19
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    move-object v1, v13

    move-object v2, v14

    move v3, v4

    move v4, v10

    move-object v5, v15

    move-object/from16 v7, p1

    .line 20
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzafp;->zzm(Lcom/google/android/gms/internal/ads/zzaip;Lcom/google/android/gms/internal/ads/zzain;IZLjava/lang/Object;Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzaiq;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 21
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/zzaiq;->zze(Z)I

    move-result v1

    const/4 v3, 0x1

    goto :goto_8

    .line 22
    :cond_8
    invoke-virtual {v12, v1, v14}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    const/4 v3, 0x0

    :goto_8
    move v4, v1

    move-wide/from16 v1, v23

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/16 v22, 0x0

    goto :goto_5

    :cond_9
    cmp-long v1, v23, v16

    if-nez v1, :cond_a

    .line 23
    invoke-virtual {v12, v15, v14}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    goto :goto_6

    :cond_a
    if-eqz v19, :cond_c

    .line 24
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    invoke-virtual {v1, v2, v14}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    .line 25
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget v2, v14, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    const-wide/16 v7, 0x0

    .line 26
    invoke-virtual {v1, v2, v13, v7, v8}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object v1

    .line 27
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaip;->zzn:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    .line 28
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 29
    invoke-virtual {v12, v15, v14}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v1

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    move-wide/from16 v5, v23

    .line 30
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzaiq;->zzv(Lcom/google/android/gms/internal/ads/zzaip;Lcom/google/android/gms/internal/ads/zzain;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 31
    iget-object v15, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 32
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_9

    :cond_b
    move-wide/from16 v1, v23

    :goto_9
    move v4, v9

    move-object v3, v15

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x1

    goto :goto_a

    :cond_c
    const-wide/16 v7, 0x0

    move v4, v9

    move-object v3, v15

    move-wide/from16 v1, v23

    goto/16 :goto_7

    :goto_a
    if-eq v4, v9, :cond_d

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    .line 33
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzaiq;->zzv(Lcom/google/android/gms/internal/ads/zzaip;Lcom/google/android/gms/internal/ads/zzain;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 34
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 35
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v4, v1

    move-wide/from16 v1, v16

    goto :goto_b

    :cond_d
    move-wide v4, v1

    :goto_b
    move-object/from16 v6, v21

    .line 36
    invoke-virtual {v6, v12, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzags;->zzp(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/zzhf;

    move-result-object v6

    iget v13, v6, Lcom/google/android/gms/internal/ads/zzo;->zze:I

    if-eq v13, v9, :cond_f

    .line 37
    iget v13, v11, Lcom/google/android/gms/internal/ads/zzo;->zze:I

    if-eq v13, v9, :cond_e

    iget v7, v6, Lcom/google/android/gms/internal/ads/zzo;->zzb:I

    if-lt v7, v13, :cond_e

    goto :goto_c

    :cond_e
    const/4 v7, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v7, 0x1

    .line 38
    :goto_d
    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 39
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v13

    if-nez v13, :cond_10

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v13

    if-nez v13, :cond_10

    if-eqz v7, :cond_10

    const/4 v7, 0x1

    goto :goto_e

    :cond_10
    const/4 v7, 0x0

    .line 40
    :goto_e
    invoke-virtual {v12, v3, v14}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    if-eqz v8, :cond_12

    if-nez v19, :cond_12

    cmp-long v3, v23, v1

    if-nez v3, :cond_12

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v3

    if-eqz v3, :cond_11

    iget v3, v6, Lcom/google/android/gms/internal/ads/zzo;->zzb:I

    .line 41
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzain;->zzj(I)Z

    .line 42
    :cond_11
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v3

    if-eqz v3, :cond_12

    iget v3, v11, Lcom/google/android/gms/internal/ads/zzo;->zzb:I

    .line 43
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzain;->zzj(I)Z

    :cond_12
    const/4 v3, 0x1

    if-eq v3, v7, :cond_13

    goto :goto_f

    :cond_13
    move-object v6, v11

    .line 44
    :goto_f
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 45
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 46
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    goto :goto_10

    .line 47
    :cond_14
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    invoke-virtual {v12, v0, v14}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    .line 48
    iget v0, v6, Lcom/google/android/gms/internal/ads/zzo;->zzc:I

    iget v4, v6, Lcom/google/android/gms/internal/ads/zzo;->zzb:I

    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzain;->zzc(I)I

    move-result v4

    if-ne v0, v4, :cond_15

    .line 49
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzain;->zzi()J

    :cond_15
    const-wide/16 v4, 0x0

    :cond_16
    :goto_10
    move-wide v13, v1

    move-object v8, v6

    move v2, v10

    move/from16 v7, v22

    move-wide v10, v4

    move v5, v3

    move v3, v15

    move-object/from16 v15, p0

    .line 50
    :goto_11
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 51
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    .line 52
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    cmp-long v0, v10, v0

    if-eqz v0, :cond_17

    goto :goto_12

    :cond_17
    const/16 v19, 0x0

    goto :goto_13

    :cond_18
    :goto_12
    move/from16 v19, v5

    :goto_13
    const/16 v20, 0x3

    if-eqz v3, :cond_1a

    :try_start_0
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 53
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    if-eq v0, v5, :cond_19

    const/4 v3, 0x4

    .line 54
    invoke-direct {v15, v3}, Lcom/google/android/gms/internal/ads/zzafp;->zzu(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_14

    :cond_19
    const/4 v3, 0x4

    :goto_14
    const/4 v4, 0x0

    .line 55
    :try_start_1
    invoke-direct {v15, v4, v4, v4, v5}, Lcom/google/android/gms/internal/ads/zzafp;->zzI(ZZZZ)V

    goto :goto_16

    :catchall_0
    move-exception v0

    move v9, v5

    move-wide/from16 v25, v13

    :goto_15
    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_20

    :cond_1a
    const/4 v3, 0x4

    const/4 v4, 0x0

    :goto_16
    if-nez v19, :cond_21

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-wide v3, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzI:J

    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzags;->zzi()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    const-wide/high16 v21, -0x8000000000000000L

    if-nez v0, :cond_1b

    move-wide/from16 v25, v13

    const-wide/16 v5, 0x0

    goto :goto_19

    .line 57
    :cond_1b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zza()J

    move-result-wide v23

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzd:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_1c

    move-wide/from16 v25, v13

    move-wide/from16 v5, v23

    goto :goto_19

    :cond_1c
    move-wide/from16 v5, v23

    const/4 v2, 0x0

    :goto_17
    :try_start_3
    iget-object v9, v15, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-wide/from16 v25, v13

    const/4 v13, 0x2

    if-ge v2, v13, :cond_20

    .line 58
    :try_start_4
    aget-object v9, v9, v2

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzafp;->zzaf(Lcom/google/android/gms/internal/ads/zzahv;)Z

    move-result v9

    if-eqz v9, :cond_1f

    iget-object v9, v15, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    aget-object v9, v9, v2

    .line 59
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzahv;->zzaj()Lcom/google/android/gms/internal/ads/zziu;

    move-result-object v9

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzc:[Lcom/google/android/gms/internal/ads/zziu;

    aget-object v13, v13, v2

    if-eq v9, v13, :cond_1d

    goto :goto_18

    :cond_1d
    iget-object v9, v15, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    .line 60
    aget-object v9, v9, v2

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzahv;->zzal()J

    move-result-wide v13

    cmp-long v9, v13, v21

    if-nez v9, :cond_1e

    move-wide/from16 v5, v21

    goto :goto_19

    .line 61
    :cond_1e
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1f
    :goto_18
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v13, v25

    goto :goto_17

    :catchall_1
    move-exception v0

    goto :goto_1a

    :cond_20
    :goto_19
    move-object/from16 v2, p1

    const/4 v9, 0x4

    const/4 v13, 0x0

    const/4 v9, 0x1

    const/4 v14, 0x0

    .line 62
    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzags;->zzn(Lcom/google/android/gms/internal/ads/zzaiq;JJ)Z

    move-result v0

    if-nez v0, :cond_24

    .line 63
    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/ads/zzafp;->zzx(Z)V

    goto :goto_1c

    :catchall_2
    move-exception v0

    move-wide/from16 v25, v13

    :goto_1a
    const/4 v9, 0x1

    goto :goto_15

    :catchall_3
    move-exception v0

    move v9, v5

    move-wide/from16 v25, v13

    const/4 v14, 0x0

    move v13, v4

    goto/16 :goto_20

    :cond_21
    move v9, v5

    move-wide/from16 v25, v13

    const/4 v14, 0x0

    move v13, v4

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    :goto_1b
    if-eqz v0, :cond_23

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 66
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 67
    invoke-virtual {v1, v12, v3}, Lcom/google/android/gms/internal/ads/zzags;->zzo(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzagq;)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zzr()V

    :cond_22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    goto :goto_1b

    .line 69
    :cond_23
    invoke-direct {v15, v8, v10, v11, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzE(Lcom/google/android/gms/internal/ads/zzhf;JZ)J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-wide v10, v0

    .line 70
    :cond_24
    :goto_1c
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 71
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    if-eq v9, v7, :cond_25

    move-wide/from16 v6, v16

    goto :goto_1d

    :cond_25
    move-wide v6, v10

    :goto_1d
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzafp;->zzO(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;J)V

    if-nez v19, :cond_26

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 72
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzc:J

    cmp-long v0, v25, v0

    if-eqz v0, :cond_29

    :cond_26
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 73
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    .line 74
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    if-eqz v19, :cond_27

    if-eqz p2, :cond_27

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzl:Lcom/google/android/gms/internal/ads/zzain;

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzain;->zzf:Z

    if-nez v0, :cond_27

    goto :goto_1e

    :cond_27
    move v9, v13

    :goto_1e
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 77
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzd:J

    .line 78
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    const/16 v18, 0x4

    goto :goto_1f

    :cond_28
    move/from16 v18, v20

    :goto_1f
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v10

    move-wide v7, v5

    move-wide/from16 v5, v25

    move/from16 v10, v18

    .line 79
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzafp;->zzV(Lcom/google/android/gms/internal/ads/zzhf;JJJZI)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 80
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzP()V

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 81
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-direct {v15, v12, v0}, Lcom/google/android/gms/internal/ads/zzafp;->zzK(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzaiq;)V

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 82
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzahd;->zzd(Lcom/google/android/gms/internal/ads/zzaiq;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v0

    if-nez v0, :cond_2a

    iput-object v14, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzH:Lcom/google/android/gms/internal/ads/zzafo;

    .line 84
    :cond_2a
    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/ads/zzafp;->zzY(Z)V

    return-void

    :catchall_4
    move-exception v0

    .line 85
    :goto_20
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 86
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    if-eq v9, v7, :cond_2b

    move-wide/from16 v6, v16

    goto :goto_21

    :cond_2b
    move-wide v6, v10

    :goto_21
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzafp;->zzO(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;J)V

    if-nez v19, :cond_2c

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 87
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzc:J

    cmp-long v1, v25, v1

    if-eqz v1, :cond_2f

    :cond_2c
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 88
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    .line 89
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    if-eqz v19, :cond_2d

    if-eqz p2, :cond_2d

    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzl:Lcom/google/android/gms/internal/ads/zzain;

    .line 91
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzain;->zzf:Z

    if-nez v1, :cond_2d

    goto :goto_22

    :cond_2d
    move v9, v13

    :goto_22
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 92
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzd:J

    .line 93
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2e

    const/16 v18, 0x4

    goto :goto_23

    :cond_2e
    move/from16 v18, v20

    :goto_23
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v10

    move-wide v7, v5

    move-wide/from16 v5, v25

    move/from16 v10, v18

    .line 94
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzafp;->zzV(Lcom/google/android/gms/internal/ads/zzhf;JJJZI)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 95
    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzP()V

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 96
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-direct {v15, v12, v1}, Lcom/google/android/gms/internal/ads/zzafp;->zzK(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzaiq;)V

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 97
    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzahd;->zzd(Lcom/google/android/gms/internal/ads/zzaiq;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v1

    if-nez v1, :cond_30

    iput-object v14, v15, Lcom/google/android/gms/internal/ads/zzafp;->zzH:Lcom/google/android/gms/internal/ads/zzafo;

    .line 99
    :cond_30
    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/ads/zzafp;->zzY(Z)V

    .line 100
    throw v0
.end method

.method private final zzO(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;J)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzafp;->zzC(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzl:Lcom/google/android/gms/internal/ads/zzain;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzk:Lcom/google/android/gms/internal/ads/zzaip;

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzM:Lcom/google/android/gms/internal/ads/zzadz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzk:Lcom/google/android/gms/internal/ads/zzaip;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaip;->zzj:Lcom/google/android/gms/internal/ads/zzagh;

    sget v4, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzadz;->zza(Lcom/google/android/gms/internal/ads/zzagh;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p5, v0

    if-eqz v4, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzM:Lcom/google/android/gms/internal/ads/zzadz;

    .line 5
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    .line 6
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/google/android/gms/internal/ads/zzafp;->zzB(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;J)J

    move-result-wide p1

    .line 7
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzadz;->zzb(J)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzk:Lcom/google/android/gms/internal/ads/zzaip;

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Ljava/lang/Object;

    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result p2

    if-nez p2, :cond_2

    .line 10
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzl:Lcom/google/android/gms/internal/ads/zzain;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzk:Lcom/google/android/gms/internal/ads/zzaip;

    .line 11
    invoke-virtual {p3, p2, p4, v2, v3}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object p2

    .line 12
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 13
    :goto_0
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzM:Lcom/google/android/gms/internal/ads/zzadz;

    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzadz;->zzb(J)V

    :cond_3
    return-void

    .line 15
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzn:Lcom/google/android/gms/internal/ads/zzaec;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaec;->zzA()Lcom/google/android/gms/internal/ads/zzahf;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzahf;->zzb:F

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzahd;->zzn:Lcom/google/android/gms/internal/ads/zzahf;

    iget p3, p2, Lcom/google/android/gms/internal/ads/zzahf;->zzb:F

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzn:Lcom/google/android/gms/internal/ads/zzaec;

    .line 17
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaec;->zzz(Lcom/google/android/gms/internal/ads/zzahf;)V

    :cond_5
    return-void
.end method

.method private final zzP()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 2
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzagq;->zzh:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzx:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzy:Z

    return-void
.end method

.method private final zzQ(Lcom/google/android/gms/internal/ads/zzahf;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzahf;->zzb:F

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzafp;->zzR(Lcom/google/android/gms/internal/ads/zzahf;FZZ)V

    return-void
.end method

.method private final zzR(Lcom/google/android/gms/internal/ads/zzahf;FZZ)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzv:Lcom/google/android/gms/internal/ads/zzafm;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzafm;->zzb(I)V

    :cond_0
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzahd;

    move-object v1, v13

    iget-object v2, v14, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v3, v14, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-wide v4, v14, Lcom/google/android/gms/internal/ads/zzahd;->zzc:J

    iget-wide v6, v14, Lcom/google/android/gms/internal/ads/zzahd;->zzd:J

    iget v8, v14, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    iget-object v9, v14, Lcom/google/android/gms/internal/ads/zzahd;->zzf:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-boolean v10, v14, Lcom/google/android/gms/internal/ads/zzahd;->zzg:Z

    iget-object v11, v14, Lcom/google/android/gms/internal/ads/zzahd;->zzh:Lcom/google/android/gms/internal/ads/zzs;

    iget-object v12, v14, Lcom/google/android/gms/internal/ads/zzahd;->zzi:Lcom/google/android/gms/internal/ads/zzka;

    move-object/from16 p3, v13

    iget-object v13, v14, Lcom/google/android/gms/internal/ads/zzahd;->zzj:Ljava/util/List;

    move-object/from16 v0, p3

    iget-object v0, v14, Lcom/google/android/gms/internal/ads/zzahd;->zzk:Lcom/google/android/gms/internal/ads/zzhf;

    move-object/from16 p4, v1

    move-object v1, v14

    move-object v14, v0

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzl:Z

    move v15, v0

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzm:I

    move/from16 v16, v0

    move-object v0, v2

    move-object/from16 v26, v3

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzq:J

    move-wide/from16 v18, v2

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzr:J

    move-wide/from16 v20, v2

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    move-wide/from16 v22, v2

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzo:Z

    move/from16 v24, v2

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzp:Z

    move/from16 v25, v1

    move-object/from16 v17, p1

    move-object/from16 v1, p4

    move-object v2, v0

    move-object/from16 v3, v26

    .line 2
    invoke-direct/range {v1 .. v25}, Lcom/google/android/gms/internal/ads/zzahd;-><init>(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;JJILcom/google/android/gms/internal/ads/zzaeg;ZLcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzka;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhf;ZILcom/google/android/gms/internal/ads/zzahf;JJJZZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    :cond_1
    move-object/from16 v1, p1

    .line 3
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzahf;->zzb:F

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzagp;->zzq()Lcom/google/android/gms/internal/ads/zzka;

    move-result-object v4

    .line 5
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzka;->zzd:[Lcom/google/android/gms/internal/ads/zzjg;

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    :goto_2
    const/4 v4, 0x2

    if-ge v3, v4, :cond_5

    .line 6
    aget-object v4, v2, v3

    if-eqz v4, :cond_4

    .line 7
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzahf;->zzb:F

    move/from16 v6, p2

    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzahv;->zzM(FF)V

    goto :goto_3

    :cond_4
    move/from16 v6, p2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private final zzS()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzT()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzags;->zzg()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zzf()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzaa(J)J

    move-result-wide v6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzI:J

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zza()J

    move-result-wide v3

    goto :goto_0

    .line 7
    :cond_1
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzI:J

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zza()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    :goto_0
    sub-long/2addr v1, v3

    move-wide v4, v1

    .line 9
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzf:Lcom/google/android/gms/internal/ads/zzafy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzn:Lcom/google/android/gms/internal/ads/zzaec;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaec;->zzA()Lcom/google/android/gms/internal/ads/zzahf;

    move-result-object v0

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzahf;->zzb:F

    .line 11
    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzafy;->zzf(JJF)Z

    move-result v0

    .line 12
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzA:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzags;->zzg()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzI:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzagp;->zzi(J)V

    .line 14
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzU()V

    return-void
.end method

.method private final zzT()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzags;->zzg()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zzf()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final zzU()V
    .locals 30

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzags;->zzg()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzA:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzhe;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhe;->zzm()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v14, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v14, v4

    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 3
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzg:Z

    if-eq v14, v2, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/ads/zzahd;

    move-object v5, v2

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzc:J

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzd:J

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzf:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzh:Lcom/google/android/gms/internal/ads/zzs;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzi:Lcom/google/android/gms/internal/ads/zzka;

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzj:Ljava/util/List;

    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzk:Lcom/google/android/gms/internal/ads/zzhf;

    move-object/from16 v18, v3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzl:Z

    move/from16 v19, v3

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzm:I

    move/from16 v20, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzn:Lcom/google/android/gms/internal/ads/zzahf;

    move-object/from16 v21, v3

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzq:J

    move-wide/from16 v22, v3

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzr:J

    move-wide/from16 v24, v3

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    move-wide/from16 v26, v3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzo:Z

    move/from16 v28, v3

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzp:Z

    move/from16 v29, v1

    .line 4
    invoke-direct/range {v5 .. v29}, Lcom/google/android/gms/internal/ads/zzahd;-><init>(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;JJILcom/google/android/gms/internal/ads/zzaeg;ZLcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzka;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhf;ZILcom/google/android/gms/internal/ads/zzahf;JJJZZ)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    :cond_2
    return-void
.end method

.method private final zzV(Lcom/google/android/gms/internal/ads/zzhf;JJJZI)Lcom/google/android/gms/internal/ads/zzahd;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-wide/from16 v5, p4

    .line 1
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzK:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    cmp-long v1, p2, v7

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    .line 2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzK:Z

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzP()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 4
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzh:Lcom/google/android/gms/internal/ads/zzs;

    .line 5
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzi:Lcom/google/android/gms/internal/ads/zzka;

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzj:Ljava/util/List;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzs:Lcom/google/android/gms/internal/ads/zzagz;

    .line 7
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzagz;->zzc()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v1

    if-nez v1, :cond_2

    .line 9
    sget-object v7, Lcom/google/android/gms/internal/ads/zzs;->zza:Lcom/google/android/gms/internal/ads/zzs;

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagp;->zzp()Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v7

    :goto_2
    if-nez v1, :cond_3

    .line 11
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzafp;->zze:Lcom/google/android/gms/internal/ads/zzka;

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagp;->zzq()Lcom/google/android/gms/internal/ads/zzka;

    move-result-object v8

    .line 13
    :goto_3
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzka;->zzd:[Lcom/google/android/gms/internal/ads/zzjg;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzfog;

    .line 14
    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzfog;-><init>()V

    .line 15
    array-length v11, v9

    move v12, v3

    move v13, v12

    :goto_4
    if-ge v12, v11, :cond_6

    aget-object v14, v9, v12

    if-eqz v14, :cond_5

    .line 16
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzjg;->zzd(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v14

    .line 17
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzafv;->zzj:Lcom/google/android/gms/internal/ads/zzaiv;

    if-nez v14, :cond_4

    new-instance v14, Lcom/google/android/gms/internal/ads/zzaiv;

    new-array v15, v3, [Lcom/google/android/gms/internal/ads/zzaiu;

    .line 18
    invoke-direct {v14, v15}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>([Lcom/google/android/gms/internal/ads/zzaiu;)V

    invoke-virtual {v10, v14}, Lcom/google/android/gms/internal/ads/zzfog;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfog;

    goto :goto_5

    .line 19
    :cond_4
    invoke-virtual {v10, v14}, Lcom/google/android/gms/internal/ads/zzfog;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfog;

    move v13, v4

    :cond_5
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_6
    if-eqz v13, :cond_7

    .line 20
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzfog;->zzf()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v3

    goto :goto_6

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v3

    :goto_6
    if-eqz v1, :cond_8

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 21
    iget-wide v9, v4, Lcom/google/android/gms/internal/ads/zzagq;->zzc:J

    cmp-long v9, v9, v5

    if-eqz v9, :cond_8

    .line 22
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzagq;->zzb(J)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    :cond_8
    move-object v13, v3

    goto :goto_7

    .line 23
    :cond_9
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 24
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/ads/zzs;->zza:Lcom/google/android/gms/internal/ads/zzs;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafp;->zze:Lcom/google/android/gms/internal/ads/zzka;

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v4

    move-object v11, v1

    move-object v12, v3

    move-object v13, v4

    goto :goto_8

    :cond_a
    move-object v13, v1

    :goto_7
    move-object v11, v7

    move-object v12, v8

    :goto_8
    if-eqz p8, :cond_b

    .line 27
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzv:Lcom/google/android/gms/internal/ads/zzafm;

    move/from16 v3, p9

    .line 28
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzafm;->zzd(I)V

    :cond_b
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 29
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzZ()J

    move-result-wide v9

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    .line 30
    invoke-virtual/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/zzahd;->zzc(Lcom/google/android/gms/internal/ads/zzhf;JJJJLcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzka;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v1

    return-object v1
.end method

.method private final zzW()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzafp;->zzX([Z)V

    return-void
.end method

.method private final zzX([Z)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzags;->zzi()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagp;->zzq()Lcom/google/android/gms/internal/ads/zzka;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 3
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzka;->zza(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzb:Ljava/util/Set;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    aget-object v6, v6, v4

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    .line 4
    aget-object v5, v5, v4

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzahv;->zzas()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_1
    const/4 v6, 0x1

    if-ge v4, v5, :cond_7

    .line 5
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzka;->zza(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 6
    aget-boolean v7, p1, v4

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    .line 7
    aget-object v8, v8, v4

    .line 8
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzafp;->zzaf(Lcom/google/android/gms/internal/ads/zzahv;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 9
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzags;->zzi()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 10
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v10

    if-ne v9, v10, :cond_3

    move/from16 v16, v6

    goto :goto_2

    :cond_3
    move/from16 v16, v3

    .line 11
    :goto_2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzagp;->zzq()Lcom/google/android/gms/internal/ads/zzka;

    move-result-object v10

    .line 12
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzka;->zzb:[Lcom/google/android/gms/internal/ads/zzahx;

    aget-object v11, v11, v4

    .line 13
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzka;->zzd:[Lcom/google/android/gms/internal/ads/zzjg;

    aget-object v10, v10, v4

    .line 14
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzafp;->zzaj(Lcom/google/android/gms/internal/ads/zzjg;)[Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v12

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzac()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    const/4 v13, 0x3

    if-ne v10, v13, :cond_4

    move/from16 v21, v6

    goto :goto_3

    :cond_4
    move/from16 v21, v3

    :goto_3
    if-nez v7, :cond_5

    if-eqz v21, :cond_5

    move v15, v6

    goto :goto_4

    :cond_5
    move v15, v3

    :goto_4
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzG:I

    add-int/2addr v7, v6

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzG:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzb:Ljava/util/Set;

    .line 16
    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzagp;->zzc:[Lcom/google/android/gms/internal/ads/zziu;

    aget-object v6, v6, v4

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzI:J

    .line 18
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzagp;->zzc()J

    move-result-wide v17

    .line 19
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzagp;->zza()J

    move-result-wide v19

    move-object v9, v8

    move-object v10, v11

    move-object v11, v12

    move-object v12, v6

    .line 20
    invoke-interface/range {v9 .. v20}, Lcom/google/android/gms/internal/ads/zzahv;->zzag(Lcom/google/android/gms/internal/ads/zzahx;[Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zziu;JZZJJ)V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzafh;

    .line 21
    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/zzafh;-><init>(Lcom/google/android/gms/internal/ads/zzafp;)V

    const/16 v7, 0xb

    invoke-interface {v8, v7, v6}, Lcom/google/android/gms/internal/ads/zzahr;->zzE(ILjava/lang/Object;)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzafp;->zzn:Lcom/google/android/gms/internal/ads/zzaec;

    .line 22
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzaec;->zzd(Lcom/google/android/gms/internal/ads/zzahv;)V

    if-eqz v21, :cond_6

    .line 23
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzahv;->zzah()V

    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 24
    :cond_7
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzg:Z

    return-void
.end method

.method private final zzY(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzags;->zzg()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 5
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzahd;->zzk:Lcom/google/android/gms/internal/ads/zzhf;

    .line 6
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzo;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 7
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzahd;->zzg(Lcom/google/android/gms/internal/ads/zzhf;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    if-nez v0, :cond_2

    .line 8
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zze()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzq:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzZ()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzr:J

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzd:Z

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zzp()Lcom/google/android/gms/internal/ads/zzs;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zzq()Lcom/google/android/gms/internal/ads/zzka;

    move-result-object v0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzafp;->zzab(Lcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzka;)V

    :cond_4
    return-void
.end method

.method private final zzZ()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzq:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzafp;->zzaa(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzaa(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzags;->zzg()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzI:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zza()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long/2addr p1, v3

    .line 2
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private final zzab(Lcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzka;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzf:Lcom/google/android/gms/internal/ads/zzafy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzka;->zzd:[Lcom/google/android/gms/internal/ads/zzjg;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzafy;->zzi([Lcom/google/android/gms/internal/ads/zzahv;Lcom/google/android/gms/internal/ads/zzs;[Lcom/google/android/gms/internal/ads/zzjg;)V

    return-void
.end method

.method private final zzac()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzl:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzm:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static zzad(Lcom/google/android/gms/internal/ads/zzahd;Lcom/google/android/gms/internal/ads/zzain;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object p0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzain;->zzf:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static zzae(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzafo;ZIZLcom/google/android/gms/internal/ads/zzaip;Lcom/google/android/gms/internal/ads/zzain;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaiq;",
            "Lcom/google/android/gms/internal/ads/zzafo;",
            "ZIZ",
            "Lcom/google/android/gms/internal/ads/zzaip;",
            "Lcom/google/android/gms/internal/ads/zzain;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p6

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafo;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    return-object v9

    :cond_0
    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v3

    if-ne v2, v3, :cond_1

    move-object v10, v7

    goto :goto_0

    :cond_1
    move-object v10, v1

    .line 4
    :goto_0
    :try_start_0
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzafo;->zzb:I

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzafo;->zzc:J

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzaiq;->zzv(Lcom/google/android/gms/internal/ads/zzaip;Lcom/google/android/gms/internal/ads/zzain;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/ads/zzaiq;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 7
    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 8
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzain;->zzf:Z

    if-eqz v2, :cond_3

    iget v2, v8, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    const-wide/16 v3, 0x0

    move-object/from16 v11, p5

    .line 9
    invoke-virtual {v10, v2, v11, v3, v4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object v2

    .line 10
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaip;->zzn:I

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 11
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 12
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v1

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    .line 13
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzafo;->zzc:J

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaiq;->zzv(Lcom/google/android/gms/internal/ads/zzaip;Lcom/google/android/gms/internal/ads/zzain;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    move-object/from16 v11, p5

    .line 15
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move v2, p3

    move/from16 v3, p4

    move-object v5, v10

    move-object v6, p0

    .line 16
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzafp;->zzm(Lcom/google/android/gms/internal/ads/zzaip;Lcom/google/android/gms/internal/ads/zzain;IZLjava/lang/Object;Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzaiq;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {p0, v0, v8}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v0

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaiq;->zzv(Lcom/google/android/gms/internal/ads/zzaip;Lcom/google/android/gms/internal/ads/zzain;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_5
    return-object v9
.end method

.method private static zzaf(Lcom/google/android/gms/internal/ads/zzahv;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzahv;->zzaf()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final zzag(Lcom/google/android/gms/internal/ads/zzahs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzahs;->zzh()Z

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzahs;->zza()Lcom/google/android/gms/internal/ads/zzahr;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzahs;->zzc()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzahs;->zze()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzahr;->zzE(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzahs;->zzi(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzahs;->zzi(Z)V

    .line 4
    throw v1
.end method

.method private static final zzah(Lcom/google/android/gms/internal/ads/zzahv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzahv;->zzaf()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzahv;->zzaq()V

    :cond_0
    return-void
.end method

.method private static final zzai(Lcom/google/android/gms/internal/ads/zzahv;J)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzahv;->zzam()V

    .line 2
    instance-of p1, p0, Lcom/google/android/gms/internal/ads/zzaks;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    check-cast p0, Lcom/google/android/gms/internal/ads/zzaks;

    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method private static zzaj(Lcom/google/android/gms/internal/ads/zzjg;)[Lcom/google/android/gms/internal/ads/zzafv;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjg;->zzc()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzafv;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzjg;->zzd(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzafp;)Lcom/google/android/gms/internal/ads/zzalg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    return-object p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzafp;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzE:Z

    return p1
.end method

.method public static zzm(Lcom/google/android/gms/internal/ads/zzaip;Lcom/google/android/gms/internal/ads/zzain;IZLjava/lang/Object;Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzaiq;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p5, p4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result p4

    .line 2
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzaiq;->zzg()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p4

    move p4, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p4, v1, :cond_1

    move-object v3, p5

    move-object v5, p1

    move-object v6, p0

    move v7, p2

    move v8, p3

    .line 3
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzaiq;->zzu(ILcom/google/android/gms/internal/ads/zzain;Lcom/google/android/gms/internal/ads/zzaip;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    move p4, v1

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p5, v4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzj(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p4, v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_2
    invoke-virtual {p6, p4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzj(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic zzr(Lcom/google/android/gms/internal/ads/zzahs;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzag(Lcom/google/android/gms/internal/ads/zzahs;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaeg; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Unexpected error delivering message on external thread."

    .line 2
    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzaln;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    .line 3
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final zzs(Ljava/io/IOException;I)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaeg;->zza(Ljava/io/IOException;I)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 3
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaeg;->zzd(Lcom/google/android/gms/internal/ads/zzo;)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object p1

    :cond_0
    const-string p2, "ExoPlayerImplInternal"

    const-string v0, "Playback error"

    .line 4
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzaln;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 5
    invoke-direct {p0, p2, p2}, Lcom/google/android/gms/internal/ads/zzafp;->zzH(ZZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzahd;->zzf(Lcom/google/android/gms/internal/ads/zzaeg;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    return-void
.end method

.method private final declared-synchronized zzt(Lcom/google/android/gms/internal/ads/zzfmj;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfmj<",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    const-wide/16 v0, 0x1f4

    add-long/2addr p2, v0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfmj;->zza()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x1

    move v2, v0

    .line 4
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, p2, v0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final zzu(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    if-eq v1, p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzahd;->zze(I)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    :cond_0
    return-void
.end method

.method private final zzv()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzv:Lcom/google/android/gms/internal/ads/zzafm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzafm;->zzc(Lcom/google/android/gms/internal/ads/zzahd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzv:Lcom/google/android/gms/internal/ads/zzafm;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzafm;->zza(Lcom/google/android/gms/internal/ads/zzafm;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzq:Lcom/google/android/gms/internal/ads/zzafn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzv:Lcom/google/android/gms/internal/ads/zzafm;

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzafn;->zza(Lcom/google/android/gms/internal/ads/zzafm;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzafm;-><init>(Lcom/google/android/gms/internal/ads/zzahd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzv:Lcom/google/android/gms/internal/ads/zzafm;

    :cond_0
    return-void
.end method

.method private final zzw(ZIZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzv:Lcom/google/android/gms/internal/ads/zzafm;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzafm;->zzb(I)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzv:Lcom/google/android/gms/internal/ads/zzafm;

    .line 2
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzafm;->zze(I)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 3
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzahd;->zzh(ZI)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzz:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzagp;->zzq()Lcom/google/android/gms/internal/ads/zzka;

    move-result-object p3

    .line 5
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzka;->zzd:[Lcom/google/android/gms/internal/ads/zzjg;

    array-length p4, p3

    move v0, p1

    :goto_1
    if-ge v0, p4, :cond_0

    aget-object v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzac()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzz()V

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzA()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 9
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-ne p1, p2, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzy()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    .line 11
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzalg;->zzf(I)Z

    return-void

    :cond_3
    if-ne p1, p3, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    .line 12
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzalg;->zzf(I)Z

    :cond_4
    return-void
.end method

.method private final zzx(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 2
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzafp;->zzF(Lcom/google/android/gms/internal/ads/zzhf;JZZ)J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 4
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 5
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzc:J

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzd:J

    const/4 v10, 0x5

    move-object v1, p0

    move-object v2, v0

    move v9, p1

    .line 6
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzafp;->zzV(Lcom/google/android/gms/internal/ads/zzhf;JJJZI)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    :cond_0
    return-void
.end method

.method private final zzy()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzz:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzn:Lcom/google/android/gms/internal/ads/zzaec;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaec;->zza()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v2, v1, v0

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzaf(Lcom/google/android/gms/internal/ads/zzahv;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzahv;->zzah()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zzz()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzn:Lcom/google/android/gms/internal/ads/zzaec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaec;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 2
    aget-object v2, v0, v1

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzaf(Lcom/google/android/gms/internal/ads/zzahv;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzah(Lcom/google/android/gms/internal/ads/zzahv;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 48

    move-object/from16 v11, p0

    move-object/from16 v1, p1

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 1
    :try_start_0
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    const/4 v15, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x4

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x2

    packed-switch v2, :pswitch_data_0

    move v1, v13

    return v1

    .line 2
    :pswitch_0
    invoke-direct {v11, v14}, Lcom/google/android/gms/internal/ads/zzafp;->zzx(Z)V

    :cond_0
    :goto_0
    move v3, v14

    goto/16 :goto_43

    .line 3
    :pswitch_1
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v14, :cond_1

    move v1, v14

    goto :goto_1

    :cond_1
    move v1, v13

    :goto_1
    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzF:Z

    if-eq v1, v2, :cond_0

    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzF:Z

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 4
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    if-nez v1, :cond_3

    if-eq v3, v9, :cond_3

    if-ne v3, v14, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    .line 6
    invoke-interface {v1, v7}, Lcom/google/android/gms/internal/ads/zzalg;->zzf(I)Z

    goto :goto_0

    .line 7
    :cond_3
    :goto_2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzahd;->zzi(Z)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    goto :goto_0

    .line 8
    :pswitch_2
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_4

    move v1, v14

    goto :goto_3

    :cond_4
    move v1, v13

    :goto_3
    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzx:Z

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzP()V

    iget-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzy:Z

    if-eqz v1, :cond_0

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzags;->zzi()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v1

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 11
    invoke-direct {v11, v14}, Lcom/google/android/gms/internal/ads/zzafp;->zzx(Z)V

    .line 12
    invoke-direct {v11, v13}, Lcom/google/android/gms/internal/ads/zzafp;->zzY(Z)V

    goto :goto_0

    .line 13
    :pswitch_3
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzs:Lcom/google/android/gms/internal/ads/zzagz;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagz;->zzh()Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v1

    .line 15
    invoke-direct {v11, v1, v14}, Lcom/google/android/gms/internal/ads/zzafp;->zzN(Lcom/google/android/gms/internal/ads/zzaiq;Z)V

    goto :goto_0

    .line 16
    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzix;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzv:Lcom/google/android/gms/internal/ads/zzafm;

    .line 17
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzafm;->zzb(I)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzs:Lcom/google/android/gms/internal/ads/zzagz;

    .line 18
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzagz;->zzn(Lcom/google/android/gms/internal/ads/zzix;)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v1

    .line 19
    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/zzafp;->zzN(Lcom/google/android/gms/internal/ads/zzaiq;Z)V

    goto :goto_0

    .line 20
    :pswitch_5
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget v3, v1, Landroid/os/Message;->arg2:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzix;

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzv:Lcom/google/android/gms/internal/ads/zzafm;

    .line 21
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzafm;->zzb(I)V

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzs:Lcom/google/android/gms/internal/ads/zzagz;

    .line 22
    invoke-virtual {v4, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzagz;->zzl(IILcom/google/android/gms/internal/ads/zzix;)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v1

    .line 23
    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/zzafp;->zzN(Lcom/google/android/gms/internal/ads/zzaiq;Z)V

    goto/16 :goto_0

    .line 24
    :pswitch_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzafj;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzv:Lcom/google/android/gms/internal/ads/zzafm;

    .line 25
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzafm;->zzb(I)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzs:Lcom/google/android/gms/internal/ads/zzagz;

    .line 26
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzafj;->zza:I

    .line 27
    invoke-virtual {v2, v13, v13, v13, v15}, Lcom/google/android/gms/internal/ads/zzagz;->zzm(IIILcom/google/android/gms/internal/ads/zzix;)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v1

    .line 28
    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/zzafp;->zzN(Lcom/google/android/gms/internal/ads/zzaiq;Z)V

    goto/16 :goto_0

    .line 29
    :pswitch_7
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzafi;

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzv:Lcom/google/android/gms/internal/ads/zzafm;

    .line 30
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzafm;->zzb(I)V

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzs:Lcom/google/android/gms/internal/ads/zzagz;

    if-ne v1, v3, :cond_5

    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzagz;->zzd()I

    move-result v1

    :cond_5
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzafi;->zza(Lcom/google/android/gms/internal/ads/zzafi;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzafi;->zzd(Lcom/google/android/gms/internal/ads/zzafi;)Lcom/google/android/gms/internal/ads/zzix;

    move-result-object v2

    .line 32
    invoke-virtual {v4, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzagz;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzix;)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v1

    .line 33
    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/zzafp;->zzN(Lcom/google/android/gms/internal/ads/zzaiq;Z)V

    goto/16 :goto_0

    .line 34
    :pswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzafi;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzv:Lcom/google/android/gms/internal/ads/zzafm;

    .line 35
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzafm;->zzb(I)V

    .line 36
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzafi;->zzb(Lcom/google/android/gms/internal/ads/zzafi;)I

    move-result v2

    if-eq v2, v3, :cond_6

    new-instance v2, Lcom/google/android/gms/internal/ads/zzafo;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaht;

    .line 37
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzafi;->zza(Lcom/google/android/gms/internal/ads/zzafi;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzafi;->zzd(Lcom/google/android/gms/internal/ads/zzafi;)Lcom/google/android/gms/internal/ads/zzix;

    move-result-object v5

    invoke-direct {v3, v4, v5, v15}, Lcom/google/android/gms/internal/ads/zzaht;-><init>(Ljava/util/Collection;Lcom/google/android/gms/internal/ads/zzix;[B)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzafi;->zzb(Lcom/google/android/gms/internal/ads/zzafi;)I

    move-result v4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzafi;->zzc(Lcom/google/android/gms/internal/ads/zzafi;)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzafo;-><init>(Lcom/google/android/gms/internal/ads/zzaiq;IJ)V

    iput-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzH:Lcom/google/android/gms/internal/ads/zzafo;

    :cond_6
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzs:Lcom/google/android/gms/internal/ads/zzagz;

    .line 38
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzafi;->zza(Lcom/google/android/gms/internal/ads/zzafi;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzafi;->zzd(Lcom/google/android/gms/internal/ads/zzafi;)Lcom/google/android/gms/internal/ads/zzix;

    move-result-object v1

    .line 39
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzagz;->zzj(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzix;)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v1

    .line 40
    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/zzafp;->zzN(Lcom/google/android/gms/internal/ads/zzaiq;Z)V

    goto/16 :goto_0

    .line 41
    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzahf;

    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/zzafp;->zzQ(Lcom/google/android/gms/internal/ads/zzahf;Z)V

    goto/16 :goto_0

    .line 42
    :pswitch_a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzahs;

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzahs;->zzf()Landroid/os/Looper;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_7

    .line 45
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzahs;->zzi(Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzp:Lcom/google/android/gms/internal/ads/zzaku;

    .line 46
    invoke-interface {v3, v2, v15}, Lcom/google/android/gms/internal/ads/zzaku;->zza(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzalg;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzafg;

    invoke-direct {v3, v11, v1}, Lcom/google/android/gms/internal/ads/zzafg;-><init>(Lcom/google/android/gms/internal/ads/zzafp;Lcom/google/android/gms/internal/ads/zzahs;)V

    .line 47
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzalg;->zzj(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 48
    :pswitch_b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzahs;

    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzahs;->zzf()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzj:Landroid/os/Looper;

    if-ne v2, v3, :cond_9

    .line 50
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzafp;->zzag(Lcom/google/android/gms/internal/ads/zzahs;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 51
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    if-eq v1, v10, :cond_8

    if-ne v1, v7, :cond_0

    :cond_8
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    .line 52
    invoke-interface {v1, v7}, Lcom/google/android/gms/internal/ads/zzalg;->zzf(I)Z

    goto/16 :goto_0

    :cond_9
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    const/16 v3, 0xf

    .line 53
    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzalg;->zzc(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzalf;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzalf;->zza()V

    goto/16 :goto_0

    .line 54
    :pswitch_c
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_a

    move v2, v14

    goto :goto_4

    :cond_a
    move v2, v13

    :goto_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzD:Z

    if-eq v3, v2, :cond_c

    iput-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzD:Z

    if-nez v2, :cond_c

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    move v3, v13

    :goto_5
    if-ge v3, v7, :cond_c

    .line 55
    aget-object v4, v2, v3

    .line 56
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzafp;->zzaf(Lcom/google/android/gms/internal/ads/zzahv;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzb:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 57
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzahv;->zzas()V

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_c
    if-eqz v1, :cond_0

    monitor-enter p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaeg; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzey; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaha; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzak; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzgj; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :try_start_1
    invoke-virtual {v1, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 60
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 61
    :pswitch_d
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_d

    move v1, v14

    goto :goto_6

    :cond_d
    move v1, v13

    :goto_6
    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzC:Z

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 62
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzags;->zzb(Lcom/google/android/gms/internal/ads/zzaiq;Z)Z

    move-result v1

    if-nez v1, :cond_e

    .line 63
    invoke-direct {v11, v14}, Lcom/google/android/gms/internal/ads/zzafp;->zzx(Z)V

    .line 64
    :cond_e
    invoke-direct {v11, v13}, Lcom/google/android/gms/internal/ads/zzafp;->zzY(Z)V

    goto/16 :goto_0

    .line 65
    :pswitch_e
    iget v1, v1, Landroid/os/Message;->arg1:I

    iput v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzB:I

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 66
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzags;->zza(Lcom/google/android/gms/internal/ads/zzaiq;I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 67
    invoke-direct {v11, v14}, Lcom/google/android/gms/internal/ads/zzafp;->zzx(Z)V

    .line 68
    :cond_f
    invoke-direct {v11, v13}, Lcom/google/android/gms/internal/ads/zzafp;->zzY(Z)V

    goto/16 :goto_0

    .line 69
    :pswitch_f
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzn:Lcom/google/android/gms/internal/ads/zzaec;

    .line 70
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzA()Lcom/google/android/gms/internal/ads/zzahf;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzahf;->zzb:F

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v2

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 72
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzags;->zzi()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v3

    move v4, v14

    :goto_7
    if-eqz v2, :cond_0

    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzagp;->zzd:Z

    if-eqz v5, :cond_0

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 73
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v2, v1, v5}, Lcom/google/android/gms/internal/ads/zzagp;->zzj(FLcom/google/android/gms/internal/ads/zzaiq;)Lcom/google/android/gms/internal/ads/zzka;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzagp;->zzq()Lcom/google/android/gms/internal/ads/zzka;

    move-result-object v6

    if-eqz v6, :cond_13

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzka;->zzd:[Lcom/google/android/gms/internal/ads/zzjg;

    .line 74
    array-length v8, v8

    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzka;->zzd:[Lcom/google/android/gms/internal/ads/zzjg;

    array-length v10, v10

    if-eq v8, v10, :cond_10

    goto :goto_a

    :cond_10
    move v8, v13

    .line 75
    :goto_8
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzka;->zzd:[Lcom/google/android/gms/internal/ads/zzjg;

    .line 76
    array-length v10, v10

    if-ge v8, v10, :cond_11

    .line 77
    invoke-virtual {v5, v6, v8}, Lcom/google/android/gms/internal/ads/zzka;->zzb(Lcom/google/android/gms/internal/ads/zzka;I)Z

    move-result v10

    if-eqz v10, :cond_13

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_11
    if-ne v2, v3, :cond_12

    move v5, v13

    goto :goto_9

    :cond_12
    move v5, v14

    :goto_9
    and-int/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v2

    goto :goto_7

    :cond_13
    :goto_a
    if-eqz v4, :cond_19

    .line 78
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 79
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v10

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 80
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzags;->zzl(Lcom/google/android/gms/internal/ads/zzagp;)Z

    move-result v19

    new-array v8, v7, [Z

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 81
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    move-object v15, v10

    move-object/from16 v16, v5

    move-wide/from16 v17, v1

    move-object/from16 v20, v8

    .line 82
    invoke-virtual/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzagp;->zzl(Lcom/google/android/gms/internal/ads/zzka;JZ[Z)J

    move-result-wide v5

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 83
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    if-eq v2, v9, :cond_14

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    cmp-long v1, v5, v1

    if-eqz v1, :cond_14

    move v15, v14

    goto :goto_b

    :cond_14
    move v15, v13

    :goto_b
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 84
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzc:J

    move-object/from16 v16, v8

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzd:J

    const/16 v17, 0x5

    move-object/from16 v1, p0

    move-wide/from16 v19, v3

    move-wide v3, v5

    move-wide v12, v5

    move-wide/from16 v5, v19

    const/4 v14, 0x2

    move v9, v15

    move-object/from16 v22, v10

    move/from16 v10, v17

    .line 85
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzafp;->zzV(Lcom/google/android/gms/internal/ads/zzhf;JJJZI)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    if-eqz v15, :cond_15

    .line 86
    invoke-direct {v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzafp;->zzG(J)V

    :cond_15
    new-array v1, v14, [Z

    const/4 v2, 0x0

    :goto_c
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    if-ge v2, v14, :cond_18

    aget-object v3, v3, v2

    .line 87
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzafp;->zzaf(Lcom/google/android/gms/internal/ads/zzahv;)Z

    move-result v4

    aput-boolean v4, v1, v2

    move-object/from16 v5, v22

    .line 88
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzagp;->zzc:[Lcom/google/android/gms/internal/ads/zziu;

    aget-object v6, v6, v2

    if-eqz v4, :cond_17

    .line 89
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzahv;->zzaj()Lcom/google/android/gms/internal/ads/zziu;

    move-result-object v4

    if-eq v6, v4, :cond_16

    .line 90
    invoke-direct {v11, v3}, Lcom/google/android/gms/internal/ads/zzafp;->zzL(Lcom/google/android/gms/internal/ads/zzahv;)V

    goto :goto_d

    :cond_16
    aget-boolean v4, v16, v2

    if-eqz v4, :cond_17

    iget-wide v6, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzI:J

    .line 91
    invoke-interface {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzahv;->zzap(J)V

    :cond_17
    :goto_d
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v22, v5

    goto :goto_c

    .line 92
    :cond_18
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzafp;->zzX([Z)V

    goto :goto_e

    :cond_19
    move v14, v7

    .line 93
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 94
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzags;->zzl(Lcom/google/android/gms/internal/ads/zzagp;)Z

    iget-boolean v1, v2, Lcom/google/android/gms/internal/ads/zzagp;->zzd:Z

    if-eqz v1, :cond_1a

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 95
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    iget-wide v6, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzI:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzagp;->zza()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 96
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const/4 v1, 0x0

    .line 97
    invoke-virtual {v2, v5, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzagp;->zzk(Lcom/google/android/gms/internal/ads/zzka;JZ)J

    :cond_1a
    :goto_e
    const/4 v1, 0x1

    .line 98
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzafp;->zzY(Z)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 99
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    const/4 v12, 0x4

    if-eq v1, v12, :cond_71

    .line 100
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzS()V

    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzA()V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    .line 102
    invoke-interface {v1, v14}, Lcom/google/android/gms/internal/ads/zzalg;->zzf(I)Z

    goto/16 :goto_42

    .line 103
    :pswitch_10
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhe;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 104
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzags;->zzc(Lcom/google/android/gms/internal/ads/zzhe;)Z

    move-result v1

    if-eqz v1, :cond_71

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzI:J

    .line 105
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzags;->zzd(J)V

    .line 106
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzS()V

    goto/16 :goto_42

    .line 107
    :pswitch_11
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhe;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 108
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzags;->zzc(Lcom/google/android/gms/internal/ads/zzhe;)Z

    move-result v1

    if-eqz v1, :cond_71

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 109
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzags;->zzg()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v1

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzn:Lcom/google/android/gms/internal/ads/zzaec;

    .line 110
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaec;->zzA()Lcom/google/android/gms/internal/ads/zzahf;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzahf;->zzb:F

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 111
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzagp;->zzg(FLcom/google/android/gms/internal/ads/zzaiq;)V

    .line 112
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagp;->zzp()Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagp;->zzq()Lcom/google/android/gms/internal/ads/zzka;

    move-result-object v3

    .line 113
    invoke-direct {v11, v2, v3}, Lcom/google/android/gms/internal/ads/zzafp;->zzab(Lcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzka;)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v2

    if-ne v1, v2, :cond_1b

    .line 115
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    invoke-direct {v11, v2, v3}, Lcom/google/android/gms/internal/ads/zzafp;->zzG(J)V

    .line 116
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzW()V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 117
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/zzahd;->zzc:J

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object/from16 v1, p0

    move-object v2, v3

    move-wide v3, v7

    .line 118
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzafp;->zzV(Lcom/google/android/gms/internal/ads/zzhf;JJJZI)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 119
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzS()V

    goto/16 :goto_42

    :pswitch_12
    move v1, v13

    move v2, v14

    .line 120
    invoke-direct {v11, v2, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzafp;->zzI(ZZZZ)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzf:Lcom/google/android/gms/internal/ads/zzafy;

    .line 121
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzafy;->zzc()V

    .line 122
    invoke-direct {v11, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzu(I)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzi:Landroid/os/HandlerThread;

    .line 123
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    monitor-enter p0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzaeg; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzey; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaha; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzak; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzgj; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iput-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzw:Z

    .line 124
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 125
    monitor-exit p0

    return v2

    :catchall_1
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    :pswitch_13
    move v1, v13

    move v2, v14

    .line 126
    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzH(ZZ)V

    goto/16 :goto_42

    .line 127
    :pswitch_14
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzahz;

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzt:Lcom/google/android/gms/internal/ads/zzahz;

    goto/16 :goto_42

    .line 128
    :pswitch_15
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzahf;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzn:Lcom/google/android/gms/internal/ads/zzaec;

    .line 129
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzz(Lcom/google/android/gms/internal/ads/zzahf;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzn:Lcom/google/android/gms/internal/ads/zzaec;

    .line 130
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzA()Lcom/google/android/gms/internal/ads/zzahf;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzQ(Lcom/google/android/gms/internal/ads/zzahf;Z)V

    goto/16 :goto_42

    :pswitch_16
    move v14, v7

    move v12, v9

    .line 131
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzafo;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzv:Lcom/google/android/gms/internal/ads/zzafm;

    const/4 v3, 0x1

    .line 132
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzafm;->zzb(I)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 133
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    const/4 v4, 0x1

    iget v5, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzB:I

    iget-boolean v6, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzC:Z

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzk:Lcom/google/android/gms/internal/ads/zzaip;

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzl:Lcom/google/android/gms/internal/ads/zzain;

    move-object v3, v1

    .line 134
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzafp;->zzae(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzafo;ZIZLcom/google/android/gms/internal/ads/zzaip;Lcom/google/android/gms/internal/ads/zzain;)Landroid/util/Pair;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1c

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 135
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 136
    invoke-direct {v11, v5}, Lcom/google/android/gms/internal/ads/zzafp;->zzJ(Lcom/google/android/gms/internal/ads/zzaiq;)Landroid/util/Pair;

    move-result-object v5

    .line 137
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/ads/zzhf;

    .line 138
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 139
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v5

    const/4 v9, 0x1

    xor-int/2addr v5, v9

    move v9, v5

    move-wide/from16 v14, v16

    move-wide/from16 v46, v7

    move-object v8, v6

    :goto_f
    move-wide/from16 v5, v46

    goto :goto_12

    .line 140
    :cond_1c
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 141
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 142
    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzafo;->zzc:J

    cmp-long v6, v14, v16

    if-nez v6, :cond_1d

    move-wide/from16 v14, v16

    goto :goto_10

    :cond_1d
    move-wide v14, v7

    :goto_10
    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    iget-object v9, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 143
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 144
    invoke-virtual {v6, v9, v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzags;->zzp(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/zzhf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 145
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v7, v5, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzl:Lcom/google/android/gms/internal/ads/zzain;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzl:Lcom/google/android/gms/internal/ads/zzain;

    iget v7, v5, Lcom/google/android/gms/internal/ads/zzo;->zzb:I

    .line 146
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzain;->zzc(I)I

    move-result v6

    iget v7, v5, Lcom/google/android/gms/internal/ads/zzo;->zzc:I

    if-ne v6, v7, :cond_1e

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzl:Lcom/google/android/gms/internal/ads/zzain;

    .line 147
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzain;->zzi()J

    :cond_1e
    move-object v8, v5

    const/4 v9, 0x1

    move-wide v5, v3

    goto :goto_12

    :cond_1f
    move-wide/from16 v19, v14

    .line 148
    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/zzafo;->zzc:J
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzaeg; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzey; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaha; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzak; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzgj; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    cmp-long v6, v13, v16

    if-nez v6, :cond_20

    const/4 v6, 0x1

    goto :goto_11

    :cond_20
    const/4 v6, 0x0

    :goto_11
    move v9, v6

    move-wide/from16 v14, v19

    move-wide/from16 v46, v7

    move-object v8, v5

    goto :goto_f

    .line 149
    :goto_12
    :try_start_5
    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 150
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v7

    if-eqz v7, :cond_21

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzH:Lcom/google/android/gms/internal/ads/zzafo;

    goto :goto_13

    :cond_21
    if-nez v2, :cond_23

    .line 151
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 152
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_22

    .line 153
    invoke-direct {v11, v12}, Lcom/google/android/gms/internal/ads/zzafp;->zzu(I)V

    :cond_22
    const/4 v1, 0x0

    .line 154
    invoke-direct {v11, v1, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzI(ZZZZ)V

    :goto_13
    move-wide v12, v5

    goto/16 :goto_18

    :cond_23
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 155
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 156
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzd:Z

    if-eqz v2, :cond_24

    cmp-long v2, v5, v3

    if-eqz v2, :cond_24

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzhe;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzt:Lcom/google/android/gms/internal/ads/zzahz;

    .line 157
    invoke-interface {v1, v5, v6, v2}, Lcom/google/android/gms/internal/ads/zzhe;->zzj(JLcom/google/android/gms/internal/ads/zzahz;)J

    move-result-wide v1

    goto :goto_14

    :cond_24
    move-wide v1, v5

    .line 158
    :goto_14
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide v3

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    iget-wide v12, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide v12

    cmp-long v3, v3, v12

    if-nez v3, :cond_27

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    const/4 v7, 0x2

    if-eq v4, v7, :cond_25

    if-ne v4, v10, :cond_27

    .line 159
    :cond_25
    iget-wide v12, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v10, 0x2

    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v12

    move-wide v5, v14

    move-wide v7, v12

    .line 160
    :try_start_6
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzafp;->zzV(Lcom/google/android/gms/internal/ads/zzhf;JJJZI)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v1

    :goto_15
    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzaeg; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzey; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaha; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzak; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzgj; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_42

    :cond_26
    move-wide v1, v5

    :cond_27
    :try_start_7
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 161
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    const/4 v3, 0x1

    goto :goto_16

    :cond_28
    const/4 v3, 0x0

    .line 162
    :goto_16
    invoke-direct {v11, v8, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzafp;->zzE(Lcom/google/android/gms/internal/ads/zzhf;JZ)J

    move-result-wide v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    cmp-long v1, v5, v12

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    goto :goto_17

    :cond_29
    const/4 v1, 0x0

    :goto_17
    or-int/2addr v9, v1

    :try_start_8
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 163
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v8

    move-wide v6, v14

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzafp;->zzO(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_18
    const/4 v10, 0x2

    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v12

    move-wide v5, v14

    move-wide v7, v12

    .line 164
    :try_start_9
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzafp;->zzV(Lcom/google/android/gms/internal/ads/zzhf;JJJZI)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v1

    goto :goto_15

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-wide/from16 v46, v12

    move-object v12, v1

    move v13, v9

    move-wide/from16 v9, v46

    goto :goto_19

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v12, v1

    move v13, v9

    move-wide v9, v5

    :goto_19
    const/16 v16, 0x2

    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v9

    move-wide v5, v14

    move-wide v7, v9

    move v9, v13

    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzafp;->zzV(Lcom/google/android/gms/internal/ads/zzhf;JJJZI)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 165
    throw v12

    .line 166
    :pswitch_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 167
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzs:Lcom/google/android/gms/internal/ads/zzagz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagz;->zzc()Z

    move-result v1

    if-nez v1, :cond_2a

    goto/16 :goto_26

    .line 168
    :cond_2a
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzI:J

    .line 169
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzags;->zzd(J)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 170
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzags;->zze()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzI:J

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 171
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzags;->zzf(JLcom/google/android/gms/internal/ads/zzahd;)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzc:[Lcom/google/android/gms/internal/ads/zzahw;

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzd:Lcom/google/android/gms/internal/ads/zzjz;

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzf:Lcom/google/android/gms/internal/ads/zzafy;

    .line 172
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzafy;->zzh()Lcom/google/android/gms/internal/ads/zzko;

    move-result-object v25

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzs:Lcom/google/android/gms/internal/ads/zzagz;

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzafp;->zze:Lcom/google/android/gms/internal/ads/zzka;

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v1

    move-object/from16 v28, v6

    .line 173
    invoke-virtual/range {v22 .. v28}, Lcom/google/android/gms/internal/ads/zzags;->zzr([Lcom/google/android/gms/internal/ads/zzahw;Lcom/google/android/gms/internal/ads/zzjz;Lcom/google/android/gms/internal/ads/zzko;Lcom/google/android/gms/internal/ads/zzagz;Lcom/google/android/gms/internal/ads/zzagq;Lcom/google/android/gms/internal/ads/zzka;)Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v2

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzhe;

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    .line 174
    invoke-interface {v3, v11, v4, v5}, Lcom/google/android/gms/internal/ads/zzhe;->zzb(Lcom/google/android/gms/internal/ads/zzhd;J)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 175
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v1

    if-ne v1, v2, :cond_2b

    .line 176
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzagp;->zzc()J

    move-result-wide v1

    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzG(J)V

    :cond_2b
    const/4 v1, 0x0

    .line 177
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzafp;->zzY(Z)V

    :cond_2c
    iget-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzA:Z

    if-eqz v1, :cond_2d

    .line 178
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzT()Z

    move-result v1

    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzA:Z

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzU()V

    goto :goto_1a

    .line 180
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzS()V

    .line 181
    :goto_1a
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 182
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzags;->zzi()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v1

    if-nez v1, :cond_2e

    goto/16 :goto_21

    .line 183
    :cond_2e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v2

    if-eqz v2, :cond_37

    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzy:Z

    if-eqz v2, :cond_2f

    goto/16 :goto_1e

    .line 184
    :cond_2f
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 185
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzags;->zzi()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v2

    .line 186
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzagp;->zzd:Z

    if-eqz v3, :cond_3b

    const/4 v3, 0x0

    :goto_1b
    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    const/4 v5, 0x2

    if-ge v3, v5, :cond_31

    .line 187
    aget-object v4, v4, v3

    .line 188
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzagp;->zzc:[Lcom/google/android/gms/internal/ads/zziu;

    aget-object v5, v5, v3

    .line 189
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzahv;->zzaj()Lcom/google/android/gms/internal/ads/zziu;

    move-result-object v6

    if-ne v6, v5, :cond_3b

    if-eqz v5, :cond_30

    .line 190
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzahv;->zzak()Z

    move-result v4

    if-nez v4, :cond_30

    .line 191
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    .line 192
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzagq;->zzf:Z

    goto/16 :goto_21

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v2

    .line 193
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzagp;->zzd:Z

    if-nez v2, :cond_32

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzI:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v4

    .line 194
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzagp;->zzc()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3b

    :cond_32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagp;->zzq()Lcom/google/android/gms/internal/ads/zzka;

    move-result-object v1

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 195
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzags;->zzj()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v2

    .line 196
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzagp;->zzq()Lcom/google/android/gms/internal/ads/zzka;

    move-result-object v3

    .line 197
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzagp;->zzd:Z

    if-eqz v4, :cond_34

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzhe;

    .line 198
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhe;->zzg()J

    move-result-wide v4

    cmp-long v4, v4, v16

    if-eqz v4, :cond_34

    .line 199
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzagp;->zzc()J

    move-result-wide v1

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    const/4 v4, 0x0

    :goto_1c
    const/4 v5, 0x2

    if-ge v4, v5, :cond_3b

    .line 200
    aget-object v5, v3, v4

    .line 201
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzahv;->zzaj()Lcom/google/android/gms/internal/ads/zziu;

    move-result-object v6

    if-eqz v6, :cond_33

    .line 202
    invoke-static {v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzai(Lcom/google/android/gms/internal/ads/zzahv;J)V

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_34
    const/4 v4, 0x0

    :goto_1d
    const/4 v5, 0x2

    if-ge v4, v5, :cond_3b

    .line 203
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzka;->zza(I)Z

    move-result v5

    .line 204
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzka;->zza(I)Z

    move-result v6

    if-eqz v5, :cond_36

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    .line 205
    aget-object v5, v5, v4

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzahv;->zzan()Z

    move-result v5

    if-nez v5, :cond_36

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzc:[Lcom/google/android/gms/internal/ads/zzahw;

    .line 206
    aget-object v5, v5, v4

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzahw;->zzac()I

    .line 207
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzka;->zzb:[Lcom/google/android/gms/internal/ads/zzahx;

    aget-object v5, v5, v4

    .line 208
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzka;->zzb:[Lcom/google/android/gms/internal/ads/zzahx;

    aget-object v9, v9, v4

    if-eqz v6, :cond_35

    .line 209
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzahx;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    :cond_35
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    .line 210
    aget-object v5, v5, v4

    .line 211
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzagp;->zzc()J

    move-result-wide v13

    .line 212
    invoke-static {v5, v13, v14}, Lcom/google/android/gms/internal/ads/zzafp;->zzai(Lcom/google/android/gms/internal/ads/zzahv;J)V

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 213
    :cond_37
    :goto_1e
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 214
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzagq;->zzi:Z

    if-nez v2, :cond_38

    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzy:Z

    if-eqz v2, :cond_3b

    :cond_38
    const/4 v2, 0x0

    :goto_1f
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    const/4 v4, 0x2

    if-ge v2, v4, :cond_3b

    .line 215
    aget-object v3, v3, v2

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzc:[Lcom/google/android/gms/internal/ads/zziu;

    .line 216
    aget-object v4, v4, v2

    if-eqz v4, :cond_3a

    .line 217
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzahv;->zzaj()Lcom/google/android/gms/internal/ads/zziu;

    move-result-object v5

    if-ne v5, v4, :cond_3a

    .line 218
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzahv;->zzak()Z

    move-result v4

    if-eqz v4, :cond_3a

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 219
    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzagq;->zze:J

    cmp-long v6, v4, v16

    if-eqz v6, :cond_39

    const-wide/high16 v19, -0x8000000000000000L

    cmp-long v4, v4, v19

    if-eqz v4, :cond_39

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagp;->zza()J

    move-result-wide v4

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 220
    iget-wide v13, v6, Lcom/google/android/gms/internal/ads/zzagq;->zze:J

    add-long/2addr v4, v13

    goto :goto_20

    :cond_39
    move-wide/from16 v4, v16

    .line 221
    :goto_20
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzafp;->zzai(Lcom/google/android/gms/internal/ads/zzahv;J)V

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 222
    :cond_3b
    :goto_21
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 223
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzags;->zzi()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v1

    if-eqz v1, :cond_42

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 224
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v2

    if-eq v2, v1, :cond_42

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzg:Z

    if-eqz v1, :cond_3c

    goto :goto_24

    .line 225
    :cond_3c
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 226
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzags;->zzi()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagp;->zzq()Lcom/google/android/gms/internal/ads/zzka;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_22
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    const/4 v6, 0x2

    if-ge v3, v6, :cond_41

    .line 228
    aget-object v5, v5, v3

    .line 229
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzafp;->zzaf(Lcom/google/android/gms/internal/ads/zzahv;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 230
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzahv;->zzaj()Lcom/google/android/gms/internal/ads/zziu;

    move-result-object v6

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzc:[Lcom/google/android/gms/internal/ads/zziu;

    aget-object v9, v9, v3

    .line 231
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzka;->zza(I)Z

    move-result v12

    if-eqz v12, :cond_3d

    if-ne v6, v9, :cond_3d

    goto :goto_23

    .line 232
    :cond_3d
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzahv;->zzan()Z

    move-result v6

    if-nez v6, :cond_3e

    .line 233
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzka;->zzd:[Lcom/google/android/gms/internal/ads/zzjg;

    aget-object v6, v6, v3

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzafp;->zzaj(Lcom/google/android/gms/internal/ads/zzjg;)[Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v23

    .line 234
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzc:[Lcom/google/android/gms/internal/ads/zziu;

    aget-object v24, v6, v3

    .line 235
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagp;->zzc()J

    move-result-wide v25

    .line 236
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagp;->zza()J

    move-result-wide v27

    move-object/from16 v22, v5

    .line 237
    invoke-interface/range {v22 .. v28}, Lcom/google/android/gms/internal/ads/zzahv;->zzai([Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zziu;JJ)V

    goto :goto_23

    .line 238
    :cond_3e
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzahv;->zzw()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 239
    invoke-direct {v11, v5}, Lcom/google/android/gms/internal/ads/zzafp;->zzL(Lcom/google/android/gms/internal/ads/zzahv;)V

    goto :goto_23

    :cond_3f
    const/4 v4, 0x1

    :cond_40
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_41
    if-nez v4, :cond_42

    .line 240
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzW()V

    :cond_42
    :goto_24
    const/4 v1, 0x0

    .line 241
    :goto_25
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzac()Z

    move-result v2

    if-eqz v2, :cond_44

    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzy:Z

    if-nez v2, :cond_44

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 242
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v2

    if-eqz v2, :cond_44

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v2

    if-eqz v2, :cond_44

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzI:J

    .line 243
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzagp;->zzc()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_44

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzagp;->zzg:Z

    if-eqz v2, :cond_44

    if-eqz v1, :cond_43

    .line 244
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzv()V

    :cond_43
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 245
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v12

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 246
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzags;->zzk()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v14

    .line 247
    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzagq;->zzc:J

    const/4 v9, 0x1

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v22, v3

    move-wide v3, v5

    move-wide/from16 v24, v5

    move-wide/from16 v5, v22

    move-wide/from16 v29, v7

    move-wide/from16 v7, v24

    move v13, v10

    move/from16 v10, v19

    .line 248
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzafp;->zzV(Lcom/google/android/gms/internal/ads/zzhf;JJJZI)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 249
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzafp;->zzO(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;J)V

    .line 250
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzP()V

    .line 251
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzA()V

    move v10, v13

    move-wide/from16 v7, v29

    const/4 v1, 0x1

    goto :goto_25

    :cond_44
    :goto_26
    move-wide/from16 v29, v7

    move v13, v10

    .line 252
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 253
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6a

    const/4 v2, 0x4

    if-ne v1, v2, :cond_45

    goto/16 :goto_3c

    .line 254
    :cond_45
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 255
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v1

    const-wide/16 v2, 0xa

    if-nez v1, :cond_46

    move-wide/from16 v4, v29

    .line 256
    invoke-direct {v11, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzafp;->zzD(JJ)V

    goto/16 :goto_42

    :cond_46
    move-wide/from16 v4, v29

    const-string v6, "doSomeWork"

    .line 257
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzamo;->zza(Ljava/lang/String;)V

    .line 258
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzA()V

    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzd:Z

    const-wide/16 v7, 0x3e8

    if-eqz v6, :cond_4e

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    mul-long/2addr v9, v7

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzhe;

    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 260
    iget-wide v7, v12, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzm:J

    sub-long/2addr v7, v2

    const/4 v2, 0x0

    invoke-interface {v6, v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzhe;->zze(JZ)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    :goto_27
    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    const/4 v8, 0x2

    if-ge v6, v8, :cond_4f

    aget-object v7, v7, v6

    .line 261
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzafp;->zzaf(Lcom/google/android/gms/internal/ads/zzahv;)Z

    move-result v12

    if-nez v12, :cond_47

    goto :goto_2d

    :cond_47
    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzI:J

    .line 262
    invoke-interface {v7, v13, v14, v9, v10}, Lcom/google/android/gms/internal/ads/zzahv;->zzO(JJ)V

    if-eqz v3, :cond_48

    .line 263
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzahv;->zzw()Z

    move-result v3

    if-eqz v3, :cond_48

    const/4 v3, 0x1

    goto :goto_28

    :cond_48
    const/4 v3, 0x0

    :goto_28
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzc:[Lcom/google/android/gms/internal/ads/zziu;

    aget-object v13, v13, v6

    .line 264
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzahv;->zzaj()Lcom/google/android/gms/internal/ads/zziu;

    move-result-object v14

    if-ne v13, v14, :cond_49

    .line 265
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzahv;->zzak()Z

    move-result v24

    if-eqz v24, :cond_49

    const/16 v24, 0x1

    goto :goto_29

    :cond_49
    const/16 v24, 0x0

    :goto_29
    if-ne v13, v14, :cond_4b

    if-nez v24, :cond_4b

    .line 266
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzahv;->zzx()Z

    move-result v13

    if-nez v13, :cond_4b

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzahv;->zzw()Z

    move-result v13

    if-eqz v13, :cond_4a

    goto :goto_2a

    :cond_4a
    const/4 v13, 0x0

    goto :goto_2b

    :cond_4b
    :goto_2a
    const/4 v13, 0x1

    :goto_2b
    if-eqz v2, :cond_4c

    if-eqz v13, :cond_4c

    const/4 v2, 0x1

    goto :goto_2c

    :cond_4c
    const/4 v2, 0x0

    :goto_2c
    if-nez v13, :cond_4d

    .line 267
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzahv;->zzao()V

    :cond_4d
    :goto_2d
    add-int/lit8 v6, v6, 0x1

    const/4 v13, 0x3

    goto :goto_27

    .line 268
    :cond_4e
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzhe;

    .line 269
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhe;->zzc()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 270
    :cond_4f
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 271
    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zzagq;->zze:J

    if-eqz v3, :cond_52

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzd:Z

    if-eqz v3, :cond_52

    cmp-long v3, v6, v16

    if-eqz v3, :cond_50

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 272
    iget-wide v9, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    cmp-long v3, v6, v9

    if-gtz v3, :cond_52

    :cond_50
    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzy:Z

    if-eqz v3, :cond_51

    const/4 v3, 0x0

    iput-boolean v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzy:Z

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 273
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzahd;->zzm:I

    const/4 v7, 0x5

    invoke-direct {v11, v3, v6, v3, v7}, Lcom/google/android/gms/internal/ads/zzafp;->zzw(ZIZI)V

    :cond_51
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 274
    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzagq;->zzi:Z

    if-eqz v3, :cond_52

    const/4 v3, 0x4

    .line 275
    invoke-direct {v11, v3}, Lcom/google/android/gms/internal/ads/zzafp;->zzu(I)V

    .line 276
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzz()V

    goto/16 :goto_36

    .line 277
    :cond_52
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 278
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_59

    iget v7, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzG:I

    if-nez v7, :cond_54

    .line 279
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzM()Z

    move-result v3

    if-eqz v3, :cond_59

    :cond_53
    :goto_2e
    const/4 v2, 0x3

    goto/16 :goto_31

    :cond_54
    if-nez v2, :cond_55

    goto/16 :goto_32

    .line 280
    :cond_55
    iget-boolean v7, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzg:Z

    if-eqz v7, :cond_53

    .line 281
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-direct {v11, v3, v7}, Lcom/google/android/gms/internal/ads/zzafp;->zzC(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzM:Lcom/google/android/gms/internal/ads/zzadz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzadz;->zze()J

    move-result-wide v16

    :cond_56
    move-wide/from16 v29, v16

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 282
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzags;->zzg()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v3

    .line 283
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzagp;->zzd()Z

    move-result v7

    if-eqz v7, :cond_57

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    iget-boolean v7, v7, Lcom/google/android/gms/internal/ads/zzagq;->zzi:Z

    if-eqz v7, :cond_57

    const/4 v7, 0x1

    goto :goto_2f

    :cond_57
    const/4 v7, 0x0

    .line 284
    :goto_2f
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v8

    if-eqz v8, :cond_58

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzagp;->zzd:Z

    if-nez v3, :cond_58

    const/4 v3, 0x1

    goto :goto_30

    :cond_58
    const/4 v3, 0x0

    :goto_30
    if-nez v7, :cond_53

    if-nez v3, :cond_53

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzf:Lcom/google/android/gms/internal/ads/zzafy;

    .line 285
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzZ()J

    move-result-wide v25

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzn:Lcom/google/android/gms/internal/ads/zzaec;

    .line 286
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaec;->zzA()Lcom/google/android/gms/internal/ads/zzahf;

    move-result-object v7

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzahf;->zzb:F

    iget-boolean v8, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzz:Z

    move-object/from16 v24, v3

    move/from16 v27, v7

    move/from16 v28, v8

    .line 287
    invoke-interface/range {v24 .. v30}, Lcom/google/android/gms/internal/ads/zzafy;->zzg(JFZJ)Z

    move-result v3

    if-eqz v3, :cond_59

    goto :goto_2e

    .line 288
    :goto_31
    invoke-direct {v11, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzu(I)V

    iput-object v15, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzL:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzac()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzy()V

    goto :goto_36

    :cond_59
    :goto_32
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 291
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_5e

    iget v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzG:I

    if-nez v3, :cond_5a

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzM()Z

    move-result v2

    if-nez v2, :cond_5e

    goto :goto_33

    :cond_5a
    if-nez v2, :cond_5e

    .line 293
    :goto_33
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzac()Z

    move-result v2

    iput-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzz:Z

    const/4 v2, 0x2

    .line 294
    invoke-direct {v11, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzu(I)V

    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzz:Z

    if-eqz v3, :cond_5d

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 295
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzags;->zzh()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v3

    :goto_34
    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzagp;->zzq()Lcom/google/android/gms/internal/ads/zzka;

    move-result-object v6

    .line 296
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzka;->zzd:[Lcom/google/android/gms/internal/ads/zzjg;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_35
    if-ge v8, v7, :cond_5b

    aget-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    :cond_5b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v3

    goto :goto_34

    :cond_5c
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzM:Lcom/google/android/gms/internal/ads/zzadz;

    .line 297
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzadz;->zzc()V

    .line 298
    :cond_5d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzz()V

    .line 299
    :cond_5e
    :goto_36
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 300
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    const/4 v2, 0x2

    if-ne v3, v2, :cond_62

    const/4 v3, 0x0

    :goto_37
    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    if-ge v3, v2, :cond_60

    aget-object v6, v6, v3

    .line 301
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzafp;->zzaf(Lcom/google/android/gms/internal/ads/zzahv;)Z

    move-result v6

    if-eqz v6, :cond_5f

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    aget-object v6, v6, v3

    .line 302
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzahv;->zzaj()Lcom/google/android/gms/internal/ads/zziu;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzc:[Lcom/google/android/gms/internal/ads/zziu;

    aget-object v7, v7, v3

    if-ne v6, v7, :cond_5f

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzafp;->zza:[Lcom/google/android/gms/internal/ads/zzahv;

    aget-object v6, v6, v3

    .line 303
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzahv;->zzao()V

    :cond_5f
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x2

    goto :goto_37

    :cond_60
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 304
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzg:Z

    if-nez v3, :cond_62

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzr:J

    const-wide/32 v8, 0x7a120

    cmp-long v1, v6, v8

    if-gez v1, :cond_62

    .line 305
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzT()Z

    move-result v1

    if-nez v1, :cond_61

    goto :goto_38

    .line 306
    :cond_61
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Playback stuck buffering and not loading"

    .line 307
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_62
    :goto_38
    iget-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzF:Z

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 309
    iget-boolean v6, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzo:Z

    if-eq v1, v6, :cond_63

    .line 310
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzahd;->zzi(Z)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 311
    :cond_63
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzac()Z

    move-result v1

    if-eqz v1, :cond_64

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_65

    :cond_64
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_67

    :cond_65
    iget-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzF:Z

    if-eqz v1, :cond_66

    iget-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzE:Z

    if-eqz v1, :cond_66

    const/4 v1, 0x1

    const/16 v18, 0x0

    goto :goto_39

    :cond_66
    const-wide/16 v1, 0xa

    .line 312
    invoke-direct {v11, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzD(JJ)V

    const/4 v1, 0x1

    const/16 v18, 0x1

    :goto_39
    xor-int/lit8 v2, v18, 0x1

    goto :goto_3b

    :cond_67
    iget v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzG:I

    if-eqz v2, :cond_68

    const/4 v2, 0x4

    if-eq v1, v2, :cond_68

    const-wide/16 v1, 0x3e8

    .line 313
    invoke-direct {v11, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzD(JJ)V

    goto :goto_3a

    :cond_68
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    const/4 v2, 0x2

    .line 314
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzalg;->zzh(I)V

    :goto_3a
    const/4 v2, 0x0

    .line 315
    :goto_3b
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 316
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzp:Z

    if-eq v3, v2, :cond_69

    new-instance v3, Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzc:J

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzd:J

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzf:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-boolean v13, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzg:Z

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzh:Lcom/google/android/gms/internal/ads/zzs;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzi:Lcom/google/android/gms/internal/ads/zzka;

    move/from16 v16, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzj:Ljava/util/List;

    move-object/from16 v17, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzk:Lcom/google/android/gms/internal/ads/zzhf;

    move-object/from16 v19, v2

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzl:Z

    move/from16 v20, v2

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzm:I

    move/from16 v36, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzn:Lcom/google/android/gms/internal/ads/zzahf;

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzq:J

    move-wide/from16 v38, v14

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzr:J

    move-wide/from16 v40, v14

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzo:Z

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    move/from16 v28, v10

    move-object/from16 v29, v12

    move/from16 v30, v13

    move-object/from16 v33, v17

    move-object/from16 v34, v19

    move/from16 v35, v20

    move-object/from16 v37, v2

    move-wide/from16 v42, v14

    move/from16 v44, v1

    move/from16 v45, v16

    .line 317
    invoke-direct/range {v21 .. v45}, Lcom/google/android/gms/internal/ads/zzahd;-><init>(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;JJILcom/google/android/gms/internal/ads/zzaeg;ZLcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzka;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhf;ZILcom/google/android/gms/internal/ads/zzahf;JJJZZ)V

    iput-object v3, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    :cond_69
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzE:Z

    .line 318
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamo;->zzb()V

    goto/16 :goto_42

    .line 319
    :cond_6a
    :goto_3c
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    const/4 v2, 0x2

    .line 320
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzalg;->zzh(I)V

    goto/16 :goto_42

    .line 321
    :pswitch_18
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_6b

    const/4 v2, 0x1

    goto :goto_3d

    :cond_6b
    const/4 v2, 0x0

    :goto_3d
    iget v1, v1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    invoke-direct {v11, v2, v1, v3, v3}, Lcom/google/android/gms/internal/ads/zzafp;->zzw(ZIZI)V

    goto/16 :goto_42

    :pswitch_19
    move v2, v9

    .line 322
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzv:Lcom/google/android/gms/internal/ads/zzafm;

    const/4 v3, 0x1

    .line 323
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzafm;->zzb(I)V

    const/4 v1, 0x0

    .line 324
    invoke-direct {v11, v1, v1, v1, v3}, Lcom/google/android/gms/internal/ads/zzafp;->zzI(ZZZZ)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzf:Lcom/google/android/gms/internal/ads/zzafy;

    .line 325
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzafy;->zza()V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 326
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v1

    const/4 v3, 0x1

    if-eq v3, v1, :cond_6c

    const/4 v9, 0x2

    goto :goto_3e

    :cond_6c
    move v9, v2

    :goto_3e
    invoke-direct {v11, v9}, Lcom/google/android/gms/internal/ads/zzafp;->zzu(I)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzs:Lcom/google/android/gms/internal/ads/zzagz;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzg:Lcom/google/android/gms/internal/ads/zzki;

    .line 327
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzagz;->zze(Lcom/google/android/gms/internal/ads/zzay;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    const/4 v2, 0x2

    .line 328
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzalg;->zzf(I)Z
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzaeg; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzey; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaha; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzak; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzgj; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_42

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 329
    instance-of v2, v1, Ljava/lang/IllegalStateException;

    const/16 v3, 0x3ec

    if-nez v2, :cond_6e

    instance-of v2, v1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_6d

    goto :goto_3f

    :cond_6d
    const/16 v12, 0x3e8

    goto :goto_40

    :cond_6e
    :goto_3f
    move v12, v3

    .line 330
    :goto_40
    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzaeg;->zzc(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object v1

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Playback error"

    .line 331
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzaln;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 332
    invoke-direct {v11, v3, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzH(ZZ)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 333
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzahd;->zzf(Lcom/google/android/gms/internal/ads/zzaeg;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    goto :goto_42

    :catch_1
    move-exception v0

    move-object v1, v0

    const/16 v2, 0x7d0

    .line 334
    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzs(Ljava/io/IOException;I)V

    goto :goto_42

    :catch_2
    move-exception v0

    move-object v1, v0

    const/16 v2, 0x3ea

    .line 335
    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzs(Ljava/io/IOException;I)V

    goto :goto_42

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 336
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzak;->zza:I

    .line 337
    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzs(Ljava/io/IOException;I)V

    goto :goto_42

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 338
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaha;->zzc:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_70

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzaha;->zzb:Z

    if-eq v3, v2, :cond_6f

    const/16 v12, 0xbbb

    goto :goto_41

    :cond_6f
    const/16 v12, 0xbb9

    goto :goto_41

    :cond_70
    const/16 v12, 0x3e8

    .line 339
    :goto_41
    invoke-direct {v11, v1, v12}, Lcom/google/android/gms/internal/ads/zzafp;->zzs(Ljava/io/IOException;I)V

    goto :goto_42

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 340
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzey;->zza:I

    .line 341
    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzs(Ljava/io/IOException;I)V

    :cond_71
    :goto_42
    const/4 v3, 0x1

    goto :goto_43

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 342
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaeg;->zza:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_72

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzr:Lcom/google/android/gms/internal/ads/zzags;

    .line 343
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzags;->zzi()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v2

    if-eqz v2, :cond_72

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 344
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaeg;->zzd(Lcom/google/android/gms/internal/ads/zzo;)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object v1

    :cond_72
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzaeg;->zzg:Z

    if-eqz v2, :cond_73

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzL:Lcom/google/android/gms/internal/ads/zzaeg;

    if-nez v2, :cond_73

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Recoverable renderer error"

    .line 345
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzaln;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzL:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    const/16 v3, 0x19

    .line 346
    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzalg;->zzc(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzalf;

    move-result-object v1

    .line 347
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzalg;->zze(Lcom/google/android/gms/internal/ads/zzalf;)Z

    goto :goto_42

    .line 348
    :cond_73
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzL:Lcom/google/android/gms/internal/ads/zzaeg;

    if-eqz v2, :cond_74

    .line 349
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzged;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzL:Lcom/google/android/gms/internal/ads/zzaeg;

    :cond_74
    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Playback error"

    .line 350
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzaln;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 351
    invoke-direct {v11, v3, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzH(ZZ)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 352
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzahd;->zzf(Lcom/google/android/gms/internal/ads/zzaeg;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzafp;->zzu:Lcom/google/android/gms/internal/ads/zzahd;

    .line 353
    :goto_43
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafp;->zzv()V

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzalg;->zzf(I)Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzahf;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    const/16 v1, 0x10

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzalg;->zzc(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzalf;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzalf;->zza()V

    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzalg;->zzb(I)Lcom/google/android/gms/internal/ads/zzalf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzalf;->zza()V

    return-void
.end method

.method public final zzf(ZI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzalg;->zzd(III)Lcom/google/android/gms/internal/ads/zzalf;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzalf;->zza()V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzaiq;IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzafo;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzafo;-><init>(Lcom/google/android/gms/internal/ads/zzaiq;IJ)V

    const/4 p1, 0x3

    .line 2
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzalg;->zzc(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzalf;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzalf;->zza()V

    return-void
.end method

.method public final zzh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzalg;->zzb(I)Lcom/google/android/gms/internal/ads/zzalf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzalf;->zza()V

    return-void
.end method

.method public final declared-synchronized zzi(Lcom/google/android/gms/internal/ads/zzahs;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzw:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzi:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    const/16 v1, 0xe

    .line 3
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzalg;->zzc(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzalf;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzalf;->zza()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 4
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzahs;->zzi(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzj()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzw:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzi:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    const/4 v1, 0x7

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzalg;->zzf(I)Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaff;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaff;-><init>(Lcom/google/android/gms/internal/ads/zzafp;)V

    const-wide/16 v1, 0x1f4

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzt(Lcom/google/android/gms/internal/ads/zzfmj;J)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzk()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzj:Landroid/os/Looper;

    return-object v0
.end method

.method public final zzl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzalg;->zzf(I)Z

    return-void
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzhe;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzalg;->zzc(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzalf;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzalf;->zza()V

    return-void
.end method

.method public final synthetic zzo()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzw:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp(Lcom/google/android/gms/internal/ads/zziw;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhe;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    const/16 v1, 0x9

    .line 2
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzalg;->zzc(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzalf;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzalf;->zza()V

    return-void
.end method

.method public final zzq(Ljava/util/List;IJLcom/google/android/gms/internal/ads/zzix;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzagx;",
            ">;IJ",
            "Lcom/google/android/gms/internal/ads/zzix;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzh:Lcom/google/android/gms/internal/ads/zzalg;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzafi;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzafi;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzix;IJLcom/google/android/gms/internal/ads/zzafk;[B)V

    const/16 p1, 0x11

    .line 2
    invoke-interface {v0, p1, v9}, Lcom/google/android/gms/internal/ads/zzalg;->zzc(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzalf;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzalf;->zza()V

    return-void
.end method
