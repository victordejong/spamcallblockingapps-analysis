.class public final Lcom/google/android/gms/internal/ads/zzaot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zzA:Ljava/lang/reflect/Method;

.field private zzB:I

.field private zzC:J

.field private zzD:J

.field private zzE:I

.field private zzF:J

.field private zzG:J

.field private zzH:I

.field private zzI:I

.field private zzJ:J

.field private zzK:J

.field private zzL:J

.field private zzM:F

.field private zzN:[Lcom/google/android/gms/internal/ads/zzaob;

.field private zzO:[Ljava/nio/ByteBuffer;

.field private zzP:Ljava/nio/ByteBuffer;

.field private zzQ:Ljava/nio/ByteBuffer;

.field private zzR:[B

.field private zzS:I

.field private zzT:I

.field private zzU:Z

.field private zzV:Z

.field private zzW:I

.field private zzX:Z

.field private zzY:J

.field private final zza:Lcom/google/android/gms/internal/ads/zzaou;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzapa;

.field private final zzc:[Lcom/google/android/gms/internal/ads/zzaob;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaop;

.field private final zze:Landroid/os/ConditionVariable;

.field private final zzf:[J

.field private final zzg:Lcom/google/android/gms/internal/ads/zzaol;

.field private final zzh:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/zzaor;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:Landroid/media/AudioTrack;

.field private zzj:I

.field private zzk:I

.field private zzl:I

.field private zzm:I

.field private zzn:Z

.field private zzo:I

.field private zzp:J

.field private zzq:Lcom/google/android/gms/internal/ads/zzanq;

.field private zzr:Lcom/google/android/gms/internal/ads/zzanq;

.field private zzs:J

.field private zzt:J

.field private zzu:I

.field private zzv:I

.field private zzw:J

.field private zzx:J

.field private zzy:Z

.field private zzz:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzanz;[Lcom/google/android/gms/internal/ads/zzaob;Lcom/google/android/gms/internal/ads/zzaop;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzd:Lcom/google/android/gms/internal/ads/zzaop;

    new-instance p1, Landroid/os/ConditionVariable;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zze:Landroid/os/ConditionVariable;

    .line 2
    sget p1, Lcom/google/android/gms/internal/ads/zzave;->zza:I

    const/4 v0, 0x0

    const/16 v1, 0x12

    if-lt p1, v1, :cond_0

    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v1, "getLatency"

    .line 3
    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzA:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    sget p1, Lcom/google/android/gms/internal/ads/zzave;->zza:I

    const/16 v1, 0x13

    if-lt p1, v1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaom;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaom;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzg:Lcom/google/android/gms/internal/ads/zzaol;

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaol;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzaol;-><init>(Lcom/google/android/gms/internal/ads/zzaoq;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzg:Lcom/google/android/gms/internal/ads/zzaol;

    .line 6
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaou;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaou;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zza:Lcom/google/android/gms/internal/ads/zzaou;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapa;

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzapa;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzb:Lcom/google/android/gms/internal/ads/zzapa;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzaob;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzc:[Lcom/google/android/gms/internal/ads/zzaob;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaoy;

    .line 8
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzaoy;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput-object p1, v1, p3

    const/4 p1, 0x2

    .line 9
    invoke-static {p2, v3, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, v1, p1

    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzf:[J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzM:F

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzI:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzW:I

    .line 10
    sget-object p1, Lcom/google/android/gms/internal/ads/zzanq;->zza:Lcom/google/android/gms/internal/ads/zzanq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzr:Lcom/google/android/gms/internal/ads/zzanq;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzT:I

    new-array p1, v3, [Lcom/google/android/gms/internal/ads/zzaob;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzN:[Lcom/google/android/gms/internal/ads/zzaob;

    new-array p1, v3, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzO:[Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/util/LinkedList;

    .line 11
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzh:Ljava/util/LinkedList;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzaot;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zze:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private final zzp()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzc:[Lcom/google/android/gms/internal/ads/zzaob;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 2
    aget-object v4, v1, v3

    .line 3
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzaob;->zzb()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzaob;->zzi()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7
    new-array v3, v1, [Lcom/google/android/gms/internal/ads/zzaob;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzaob;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzN:[Lcom/google/android/gms/internal/ads/zzaob;

    .line 8
    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzO:[Ljava/nio/ByteBuffer;

    :goto_2
    if-ge v2, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzN:[Lcom/google/android/gms/internal/ads/zzaob;

    .line 9
    aget-object v0, v0, v2

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaob;->zzi()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzO:[Ljava/nio/ByteBuffer;

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaob;->zzg()Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private final zzq(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaos;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzN:[Lcom/google/android/gms/internal/ads/zzaob;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzO:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    .line 2
    aget-object v2, v2, v3

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzP:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_1

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaob;->zza:Ljava/nio/ByteBuffer;

    :cond_1
    :goto_1
    if-ne v1, v0, :cond_2

    .line 5
    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzaot;->zzr(Ljava/nio/ByteBuffer;J)Z

    goto :goto_2

    .line 6
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzN:[Lcom/google/android/gms/internal/ads/zzaob;

    .line 7
    aget-object v3, v3, v1

    .line 8
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzaob;->zze(Ljava/nio/ByteBuffer;)V

    .line 9
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaob;->zzg()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzO:[Ljava/nio/ByteBuffer;

    .line 10
    aput-object v3, v4, v1

    .line 11
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private final zzr(Ljava/nio/ByteBuffer;J)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaos;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    return p3

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzQ:Ljava/nio/ByteBuffer;

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-ne p2, p1, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    move p2, v1

    .line 2
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaup;->zza(Z)V

    goto :goto_1

    .line 3
    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzQ:Ljava/nio/ByteBuffer;

    .line 4
    sget p2, Lcom/google/android/gms/internal/ads/zzave;->zza:I

    if-ge p2, v0, :cond_5

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzR:[B

    if-eqz v2, :cond_3

    array-length v2, v2

    if-ge v2, p2, :cond_4

    .line 6
    :cond_3
    new-array v2, p2, [B

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzR:[B

    .line 7
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzR:[B

    .line 8
    invoke-virtual {p1, v3, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzS:I

    .line 10
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    .line 11
    sget v2, Lcom/google/android/gms/internal/ads/zzave;->zza:I

    if-ge v2, v0, :cond_7

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzF:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzg:Lcom/google/android/gms/internal/ads/zzaol;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaol;->zzd()J

    move-result-wide v4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzE:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzo:I

    int-to-long v7, v0

    mul-long/2addr v4, v7

    sub-long/2addr v2, v4

    long-to-int v0, v2

    sub-int/2addr v6, v0

    if-lez v6, :cond_6

    .line 13
    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzR:[B

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzS:I

    .line 14
    invoke-virtual {v2, v3, v4, v0}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    if-lez v0, :cond_8

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzS:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzS:I

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_2

    .line 16
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    .line 17
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 18
    :cond_8
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzY:J

    if-ltz v0, :cond_c

    .line 19
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzn:Z

    if-nez p1, :cond_9

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzF:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzF:J

    :cond_9
    if-ne v0, p2, :cond_b

    if-eqz p1, :cond_a

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzG:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzH:I

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzG:J

    :cond_a
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzQ:Ljava/nio/ByteBuffer;

    return p3

    :cond_b
    return v1

    .line 20
    :cond_c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaos;

    .line 21
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzaos;-><init>(I)V

    throw p1
.end method

.method private final zzs()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaos;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzT:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzN:[Lcom/google/android/gms/internal/ads/zzaob;

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzT:I

    :goto_1
    move v0, v2

    goto :goto_2

    :cond_1
    move v0, v3

    :goto_2
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzT:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzN:[Lcom/google/android/gms/internal/ads/zzaob;

    .line 2
    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_4

    .line 3
    aget-object v4, v5, v4

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzaob;->zzf()V

    .line 5
    :cond_2
    invoke-direct {p0, v7, v8}, Lcom/google/android/gms/internal/ads/zzaot;->zzq(J)V

    .line 6
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzaob;->zzh()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzT:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzT:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzQ:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 7
    invoke-direct {p0, v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzaot;->zzr(Ljava/nio/ByteBuffer;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzQ:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return v3

    :cond_5
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzT:I

    return v2
.end method

.method private final zzt()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzu()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/zzave;->zza:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzM:F

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzM:F

    .line 3
    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private final zzu()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzv(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzj:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private final zzw(J)J
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzj:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private final zzx()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzG:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzF:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzE:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method private final zzy()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzw:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzv:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzu:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzx:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzy:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzz:J

    return-void
.end method

.method private final zzz()Z
    .locals 4

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzave;->zza:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-ge v0, v3, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzm:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    move v1, v2

    :cond_2
    return v1
.end method


# virtual methods
.method public final zzb(Z)J
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzu()Z

    move-result v1

    if-eqz v1, :cond_e

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzI:I

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    const-wide/16 v3, 0x3e8

    if-ne v1, v2, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzg:Lcom/google/android/gms/internal/ads/zzaol;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaol;->zze()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    div-long/2addr v7, v3

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzx:J

    sub-long v9, v7, v9

    const-wide/16 v11, 0x7530

    cmp-long v9, v9, v11

    const/4 v10, 0x0

    if-ltz v9, :cond_2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzf:[J

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzu:I

    sub-long v12, v1, v7

    .line 4
    aput-wide v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    const/16 v9, 0xa

    rem-int/2addr v11, v9

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzu:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzv:I

    if-ge v11, v9, :cond_1

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzv:I

    :cond_1
    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzx:J

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzw:J

    move v9, v10

    :goto_0
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzv:I

    if-ge v9, v11, :cond_2

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzw:J

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzf:[J

    .line 5
    aget-wide v15, v14, v9

    int-to-long v5, v11

    div-long/2addr v15, v5

    add-long v5, v15, v12

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzw:J

    add-int/lit8 v9, v9, 0x1

    const-wide/16 v5, 0x0

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzz()Z

    move-result v5

    if-nez v5, :cond_7

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzz:J

    sub-long v5, v7, v5

    const-wide/32 v11, 0x7a120

    cmp-long v5, v5, v11

    if-ltz v5, :cond_7

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzg:Lcom/google/android/gms/internal/ads/zzaol;

    .line 7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaol;->zzf()Z

    move-result v5

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzy:Z

    const-wide/32 v11, 0x4c4b40

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzg:Lcom/google/android/gms/internal/ads/zzaol;

    .line 8
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaol;->zzg()J

    move-result-wide v5

    div-long/2addr v5, v3

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzg:Lcom/google/android/gms/internal/ads/zzaol;

    .line 9
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaol;->zzh()J

    move-result-wide v13

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzK:J

    cmp-long v3, v5, v3

    if-gez v3, :cond_3

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzy:Z

    goto :goto_1

    :cond_3
    sub-long/2addr v5, v7

    .line 10
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    cmp-long v3, v3, v11

    if-lez v3, :cond_4

    .line 11
    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzy:Z

    goto :goto_1

    .line 12
    :cond_4
    invoke-direct {v0, v13, v14}, Lcom/google/android/gms/internal/ads/zzaot;->zzv(J)J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v1, v1, v11

    if-lez v1, :cond_5

    .line 13
    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzy:Z

    .line 14
    :cond_5
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzA:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_6

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzn:Z

    if-nez v2, :cond_6

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    .line 15
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzp:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzL:J

    const-wide/16 v5, 0x0

    .line 16
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzL:J

    cmp-long v1, v3, v11

    if-lez v1, :cond_6

    const-wide/16 v3, 0x0

    .line 17
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzL:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 18
    :catch_0
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzA:Ljava/lang/reflect/Method;

    .line 19
    :cond_6
    :goto_2
    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzz:J

    .line 20
    :cond_7
    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzy:Z

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzg:Lcom/google/android/gms/internal/ads/zzaol;

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaol;->zzg()J

    move-result-wide v5

    div-long/2addr v5, v3

    sub-long/2addr v1, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaot;->zzw(J)J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzg:Lcom/google/android/gms/internal/ads/zzaol;

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaol;->zzh()J

    move-result-wide v3

    add-long/2addr v3, v1

    .line 23
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzaot;->zzv(J)J

    move-result-wide v1

    goto :goto_5

    .line 24
    :cond_8
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzv:I

    if-nez v3, :cond_9

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzg:Lcom/google/android/gms/internal/ads/zzaol;

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaol;->zze()J

    move-result-wide v1

    goto :goto_4

    :cond_9
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzw:J

    add-long/2addr v1, v3

    :goto_4
    if-nez p1, :cond_a

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzL:J

    sub-long/2addr v1, v3

    .line 26
    :cond_a
    :goto_5
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzJ:J

    :goto_6
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzh:Ljava/util/LinkedList;

    .line 27
    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzh:Ljava/util/LinkedList;

    .line 28
    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzaor;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaor;->zzc(Lcom/google/android/gms/internal/ads/zzaor;)J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-ltz v5, :cond_b

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzh:Ljava/util/LinkedList;

    .line 29
    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzaor;

    .line 30
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaor;->zza(Lcom/google/android/gms/internal/ads/zzaor;)Lcom/google/android/gms/internal/ads/zzanq;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzr:Lcom/google/android/gms/internal/ads/zzanq;

    .line 31
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaor;->zzc(Lcom/google/android/gms/internal/ads/zzaor;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzt:J

    .line 32
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaor;->zzb(Lcom/google/android/gms/internal/ads/zzaor;)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzJ:J

    sub-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzs:J

    goto :goto_6

    :cond_b
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzr:Lcom/google/android/gms/internal/ads/zzanq;

    .line 33
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzanq;->zzb:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_c

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzs:J

    add-long/2addr v1, v5

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzt:J

    sub-long/2addr v1, v5

    goto :goto_7

    :cond_c
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzh:Ljava/util/LinkedList;

    .line 34
    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzb:Lcom/google/android/gms/internal/ads/zzapa;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzapa;->zzn()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    cmp-long v5, v5, v7

    if-ltz v5, :cond_d

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzs:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzt:J

    sub-long v9, v1, v7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzb:Lcom/google/android/gms/internal/ads/zzapa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzapa;->zzm()J

    move-result-wide v11

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzb:Lcom/google/android/gms/internal/ads/zzapa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzapa;->zzn()J

    move-result-wide v13

    .line 35
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzave;->zzj(JJJ)J

    move-result-wide v1

    add-long/2addr v1, v5

    goto :goto_7

    :cond_d
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzs:J

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzr:Lcom/google/android/gms/internal/ads/zzanq;

    .line 36
    iget v7, v7, Lcom/google/android/gms/internal/ads/zzanq;->zzb:F

    float-to-double v7, v7

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaot;->zzt:J

    sub-long/2addr v1, v9

    long-to-double v1, v1

    mul-double/2addr v7, v1

    double-to-long v1, v7

    add-long/2addr v1, v5

    :goto_7
    add-long/2addr v3, v1

    return-wide v3

    :cond_e
    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1
.end method

.method public final zzc(Ljava/lang/String;IIII[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaon;
        }
    .end annotation

    .line 1
    invoke-static {p4, p2}, Lcom/google/android/gms/internal/ads/zzave;->zzp(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzB:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zza:Lcom/google/android/gms/internal/ads/zzaou;

    .line 2
    invoke-virtual {p1, p6}, Lcom/google/android/gms/internal/ads/zzaou;->zzk([I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzc:[Lcom/google/android/gms/internal/ads/zzaob;

    const/4 p5, 0x0

    move p6, p5

    move v0, p6

    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ge p6, v1, :cond_1

    .line 3
    aget-object v1, p1, p6

    .line 4
    :try_start_0
    invoke-interface {v1, p3, p2, p4}, Lcom/google/android/gms/internal/ads/zzaob;->zza(III)Z

    move-result v3
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaoa; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v0, v3

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaob;->zzb()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaob;->zzc()I

    move-result p2

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaob;->zzd()I

    move p4, v2

    :cond_0
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Lcom/google/android/gms/internal/ads/zzaon;

    .line 9
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzaon;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    if-eqz v0, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzp()V

    :cond_2
    const/16 p1, 0xfc

    packed-switch p2, :pswitch_data_0

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaon;

    const/16 p3, 0x26

    const-string p4, "Unsupported channel count: "

    invoke-static {p3, p4, p2}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaon;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :pswitch_0
    sget p6, Lcom/google/android/gms/internal/ads/zzamx;->zza:I

    goto :goto_1

    :pswitch_1
    const/16 p6, 0x4fc

    goto :goto_1

    :pswitch_2
    move p6, p1

    goto :goto_1

    :pswitch_3
    const/16 p6, 0xdc

    goto :goto_1

    :pswitch_4
    const/16 p6, 0xcc

    goto :goto_1

    :pswitch_5
    const/16 p6, 0x1c

    goto :goto_1

    :pswitch_6
    const/16 p6, 0xc

    goto :goto_1

    :pswitch_7
    const/4 p6, 0x4

    .line 14
    :goto_1
    sget v3, Lcom/google/android/gms/internal/ads/zzave;->zza:I

    const/16 v4, 0x17

    if-gt v3, v4, :cond_4

    sget-object v4, Lcom/google/android/gms/internal/ads/zzave;->zzb:Ljava/lang/String;

    const-string v5, "foster"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/google/android/gms/internal/ads/zzave;->zzc:Ljava/lang/String;

    const-string v5, "NVIDIA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eq p2, v1, :cond_5

    const/4 v1, 0x5

    if-eq p2, v1, :cond_5

    const/4 p1, 0x7

    if-eq p2, p1, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    sget p1, Lcom/google/android/gms/internal/ads/zzamx;->zza:I

    goto :goto_3

    :cond_4
    :goto_2
    move p1, p6

    :cond_5
    :goto_3
    const/16 p6, 0x19

    if-gt v3, p6, :cond_6

    sget-object p6, Lcom/google/android/gms/internal/ads/zzave;->zzb:Ljava/lang/String;

    const-string v1, "fugu"

    .line 16
    invoke-virtual {v1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_6
    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzu()Z

    move-result p6

    if-eqz p6, :cond_8

    iget p6, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzl:I

    if-ne p6, p4, :cond_8

    iget p6, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzj:I

    if-ne p6, p3, :cond_8

    iget p6, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzk:I

    if-eq p6, p1, :cond_7

    goto :goto_4

    :cond_7
    return-void

    .line 17
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzn()V

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzl:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzn:Z

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzj:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzk:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzm:I

    .line 18
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/ads/zzave;->zzp(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzE:I

    .line 19
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzm:I

    .line 20
    invoke-static {p3, p1, p2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p1

    const/4 p2, -0x2

    if-eq p1, p2, :cond_9

    const/4 p5, 0x1

    .line 21
    :cond_9
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    mul-int/lit8 p2, p1, 0x4

    const-wide/32 p3, 0x3d090

    invoke-direct {p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzaot;->zzw(J)J

    move-result-wide p3

    long-to-int p3, p3

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzE:I

    mul-int/2addr p3, p4

    int-to-long p4, p1

    const-wide/32 v0, 0xb71b0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaot;->zzw(J)J

    move-result-wide v0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzE:I

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 22
    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    long-to-int p1, p4

    if-ge p2, p3, :cond_a

    move p2, p3

    goto :goto_5

    :cond_a
    if-le p2, p1, :cond_b

    move p2, p1

    :cond_b
    :goto_5
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzo:I

    .line 23
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzE:I

    .line 24
    div-int/2addr p2, p1

    int-to-long p1, p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaot;->zzv(J)J

    move-result-wide p1

    .line 25
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzp:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzr:Lcom/google/android/gms/internal/ads/zzanq;

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaot;->zzj(Lcom/google/android/gms/internal/ads/zzanq;)Lcom/google/android/gms/internal/ads/zzanq;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final zzd()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzV:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzK:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final zze()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzI:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzI:I

    :cond_0
    return-void
.end method

.method public final zzf(Ljava/nio/ByteBuffer;J)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaoo;,
            Lcom/google/android/gms/internal/ads/zzaos;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    .line 1
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzP:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v6

    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaup;->zza(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzu()Z

    move-result v4

    const/4 v7, 0x0

    if-nez v4, :cond_5

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zze:Landroid/os/ConditionVariable;

    .line 2
    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzW:I

    if-nez v15, :cond_2

    new-instance v4, Landroid/media/AudioTrack;

    const/4 v9, 0x3

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzj:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzk:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzm:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzo:I

    const/4 v14, 0x1

    move-object v8, v4

    .line 3
    invoke-direct/range {v8 .. v14}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    goto :goto_2

    .line 4
    :cond_2
    new-instance v4, Landroid/media/AudioTrack;

    const/4 v9, 0x3

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzj:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzk:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzm:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzo:I

    const/4 v14, 0x1

    move-object v8, v4

    .line 5
    invoke-direct/range {v8 .. v15}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    .line 6
    :goto_2
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    .line 7
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    if-ne v4, v6, :cond_4

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    .line 8
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v4

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzW:I

    if-eq v7, v4, :cond_3

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzW:I

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzd:Lcom/google/android/gms/internal/ads/zzaop;

    check-cast v7, Lcom/google/android/gms/internal/ads/zzaov;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzaov;->zza:Lcom/google/android/gms/internal/ads/zzaox;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaox;->zzH(Lcom/google/android/gms/internal/ads/zzaox;)Lcom/google/android/gms/internal/ads/zzaoi;

    move-result-object v7

    .line 9
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzaoi;->zzg(I)V

    :cond_3
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzg:Lcom/google/android/gms/internal/ads/zzaol;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    .line 10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzz()Z

    move-result v8

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/ads/zzaol;->zza(Landroid/media/AudioTrack;Z)V

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzt()V

    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzX:Z

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzV:Z

    if-eqz v4, :cond_5

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzd()V

    goto :goto_4

    .line 13
    :cond_4
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    .line 14
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 15
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    .line 16
    throw v0

    :catch_0
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    .line 17
    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaoo;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzj:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzk:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzo:I

    .line 18
    invoke-direct {v0, v4, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzaoo;-><init>(IIII)V

    throw v0

    .line 19
    :cond_5
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzz()Z

    move-result v4

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    .line 20
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v9, :cond_6

    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzX:Z

    return v5

    :cond_6
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    .line 21
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v6, :cond_8

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzg:Lcom/google/android/gms/internal/ads/zzaol;

    .line 22
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaol;->zzd()J

    move-result-wide v10

    cmp-long v4, v10, v7

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    return v5

    :cond_8
    :goto_5
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzX:Z

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzi()Z

    move-result v7

    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzX:Z

    if-eqz v4, :cond_9

    if-nez v7, :cond_9

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    .line 24
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-eq v4, v6, :cond_9

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzY:J

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzd:Lcom/google/android/gms/internal/ads/zzaop;

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzo:I

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzp:J

    .line 26
    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzamx;->zza(J)J

    move-result-wide v14

    check-cast v4, Lcom/google/android/gms/internal/ads/zzaov;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaov;->zza:Lcom/google/android/gms/internal/ads/zzaox;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaox;->zzH(Lcom/google/android/gms/internal/ads/zzaox;)Lcom/google/android/gms/internal/ads/zzaoi;

    move-result-object v12

    sub-long v16, v7, v10

    .line 27
    invoke-virtual/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzaoi;->zze(IJJ)V

    :cond_9
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzP:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_17

    .line 28
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_a

    return v6

    :cond_a
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzn:Z

    if-eqz v4, :cond_f

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzH:I

    if-nez v4, :cond_f

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzm:I

    const/4 v7, 0x7

    const/4 v8, 0x5

    const/4 v10, 0x6

    if-eq v4, v7, :cond_e

    const/16 v7, 0x8

    if-ne v4, v7, :cond_b

    goto :goto_6

    :cond_b
    if-ne v4, v8, :cond_c

    const/16 v4, 0x600

    goto :goto_7

    :cond_c
    if-ne v4, v10, :cond_d

    .line 29
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzany;->zzc(Ljava/nio/ByteBuffer;)I

    move-result v4

    goto :goto_7

    .line 30
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v2, 0x26

    const-string v3, "Unexpected audio encoding: "

    invoke-static {v2, v3, v4}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_e
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v7, v4, 0x4

    .line 33
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/2addr v7, v6

    shl-int/2addr v7, v10

    add-int/2addr v4, v8

    .line 34
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xfc

    shr-int/2addr v4, v9

    or-int/2addr v4, v7

    add-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x20

    :goto_7
    iput v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzH:I

    :cond_f
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzq:Lcom/google/android/gms/internal/ads/zzanq;

    if-eqz v4, :cond_11

    .line 35
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzs()Z

    move-result v4

    if-nez v4, :cond_10

    return v5

    :cond_10
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzh:Ljava/util/LinkedList;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzaor;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzq:Lcom/google/android/gms/internal/ads/zzanq;

    const-wide/16 v12, 0x0

    .line 36
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 37
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzx()J

    move-result-wide v14

    invoke-direct {v1, v14, v15}, Lcom/google/android/gms/internal/ads/zzaot;->zzv(J)J

    move-result-wide v14

    const/16 v16, 0x0

    move-object v10, v7

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzaor;-><init>(Lcom/google/android/gms/internal/ads/zzanq;JJLcom/google/android/gms/internal/ads/zzaoq;)V

    .line 38
    invoke-virtual {v4, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzq:Lcom/google/android/gms/internal/ads/zzanq;

    .line 39
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzp()V

    :cond_11
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzI:I

    if-nez v4, :cond_12

    const-wide/16 v7, 0x0

    .line 40
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzJ:J

    iput v6, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzI:I

    goto :goto_9

    .line 41
    :cond_12
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzJ:J

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzn:Z

    if-eqz v4, :cond_13

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzD:J

    goto :goto_8

    .line 42
    :cond_13
    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzC:J

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzB:I

    int-to-long v12, v4

    .line 43
    div-long/2addr v10, v12

    .line 44
    :goto_8
    invoke-direct {v1, v10, v11}, Lcom/google/android/gms/internal/ads/zzaot;->zzv(J)J

    move-result-wide v10

    add-long/2addr v7, v10

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzI:I

    if-ne v4, v6, :cond_14

    sub-long v10, v7, v2

    .line 45
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x30d40

    cmp-long v4, v10, v12

    if-lez v4, :cond_14

    .line 46
    iput v9, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzI:I

    :cond_14
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzI:I

    if-ne v4, v9, :cond_15

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzJ:J

    sub-long v7, v2, v7

    add-long/2addr v7, v9

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzJ:J

    iput v6, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzI:I

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzd:Lcom/google/android/gms/internal/ads/zzaop;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzaov;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaov;->zza:Lcom/google/android/gms/internal/ads/zzaox;

    .line 47
    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzaox;->zzI(Lcom/google/android/gms/internal/ads/zzaox;Z)Z

    .line 48
    :cond_15
    :goto_9
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzn:Z

    if-eqz v4, :cond_16

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzD:J

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzH:I

    int-to-long v9, v4

    add-long/2addr v7, v9

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzD:J

    goto :goto_a

    .line 49
    :cond_16
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzC:J

    .line 50
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v9, v4

    add-long/2addr v7, v9

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzC:J

    .line 51
    :goto_a
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzP:Ljava/nio/ByteBuffer;

    :cond_17
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzn:Z

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzP:Ljava/nio/ByteBuffer;

    .line 52
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaot;->zzr(Ljava/nio/ByteBuffer;J)Z

    goto :goto_b

    .line 53
    :cond_18
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaot;->zzq(J)V

    .line 54
    :goto_b
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzP:Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzaot;->zzP:Ljava/nio/ByteBuffer;

    return v6

    :cond_19
    return v5
.end method

.method public final zzg()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaos;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzU:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzu()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzs()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzg:Lcom/google/android/gms/internal/ads/zzaol;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzx()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaol;->zzb(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzU:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzh()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzu()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzU:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzi()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    move v1, v2

    :cond_2
    return v1
.end method

.method public final zzi()Z
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzu()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzx()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzg:Lcom/google/android/gms/internal/ads/zzaol;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaol;->zzd()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzz()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    .line 4
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    move v1, v2

    :cond_2
    return v1
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzanq;)Lcom/google/android/gms/internal/ads/zzanq;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzn:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzanq;->zza:Lcom/google/android/gms/internal/ads/zzanq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzr:Lcom/google/android/gms/internal/ads/zzanq;

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzb:Lcom/google/android/gms/internal/ads/zzapa;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzanq;->zzb:F

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzapa;->zzk(F)F

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzb:Lcom/google/android/gms/internal/ads/zzapa;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzapa;->zzl(F)F

    invoke-direct {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzanq;-><init>(FF)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzq:Lcom/google/android/gms/internal/ads/zzanq;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzh:Ljava/util/LinkedList;

    .line 5
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzh:Ljava/util/LinkedList;

    .line 6
    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaor;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaor;->zza(Lcom/google/android/gms/internal/ads/zzaor;)Lcom/google/android/gms/internal/ads/zzanq;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzr:Lcom/google/android/gms/internal/ads/zzanq;

    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzanq;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzu()Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzq:Lcom/google/android/gms/internal/ads/zzanq;

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzr:Lcom/google/android/gms/internal/ads/zzanq;

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzr:Lcom/google/android/gms/internal/ads/zzanq;

    return-object p1
.end method

.method public final zzk()Lcom/google/android/gms/internal/ads/zzanq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzr:Lcom/google/android/gms/internal/ads/zzanq;

    return-object v0
.end method

.method public final zzl(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzM:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzM:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzt()V

    :cond_0
    return-void
.end method

.method public final zzm()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzV:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzg:Lcom/google/android/gms/internal/ads/zzaol;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaol;->zzc()V

    :cond_0
    return-void
.end method

.method public final zzn()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzu()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzC:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzD:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzF:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzG:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzH:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzq:Lcom/google/android/gms/internal/ads/zzanq;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzr:Lcom/google/android/gms/internal/ads/zzanq;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzq:Lcom/google/android/gms/internal/ads/zzanq;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzh:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzh:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaor;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaor;->zza(Lcom/google/android/gms/internal/ads/zzaor;)Lcom/google/android/gms/internal/ads/zzanq;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzr:Lcom/google/android/gms/internal/ads/zzanq;

    .line 5
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzh:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzs:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzt:J

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzP:Ljava/nio/ByteBuffer;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzQ:Ljava/nio/ByteBuffer;

    move v3, v2

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzN:[Lcom/google/android/gms/internal/ads/zzaob;

    .line 6
    array-length v6, v5

    if-ge v3, v6, :cond_2

    .line 7
    aget-object v5, v5, v3

    .line 8
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzaob;->zzi()V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzO:[Ljava/nio/ByteBuffer;

    .line 9
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzaob;->zzg()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzU:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzT:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzI:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzL:J

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    .line 11
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    .line 12
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzi:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzg:Lcom/google/android/gms/internal/ads/zzaol;

    .line 13
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzaol;->zza(Landroid/media/AudioTrack;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zze:Landroid/os/ConditionVariable;

    .line 14
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaok;

    .line 15
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzaok;-><init>(Lcom/google/android/gms/internal/ads/zzaot;Landroid/media/AudioTrack;)V

    .line 16
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_4
    return-void
.end method

.method public final zzo()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaot;->zzn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzc:[Lcom/google/android/gms/internal/ads/zzaob;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 2
    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaob;->zzj()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzW:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaot;->zzV:Z

    return-void
.end method
