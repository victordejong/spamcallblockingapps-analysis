.class public final Lcom/google/android/gms/internal/ads/zzrk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznu;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzoa;

.field private static final zzb:[B

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzafv;


# instance fields
.field private zzA:I

.field private zzB:I

.field private zzC:Z

.field private zzD:Lcom/google/android/gms/internal/ads/zznx;

.field private zzE:[Lcom/google/android/gms/internal/ads/zzox;

.field private zzF:[Lcom/google/android/gms/internal/ads/zzox;

.field private zzG:Z

.field private final zzd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzafv;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zzrj;",
            ">;"
        }
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzi:[B

.field private final zzj:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzaja;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzm:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/internal/ads/zzqv;",
            ">;"
        }
    .end annotation
.end field

.field private final zzn:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/internal/ads/zzri;",
            ">;"
        }
    .end annotation
.end field

.field private zzo:I

.field private zzp:I

.field private zzq:J

.field private zzr:I

.field private zzs:Lcom/google/android/gms/internal/ads/zzamf;

.field private zzt:J

.field private zzu:I

.field private zzv:J

.field private zzw:J

.field private zzx:J

.field private zzy:Lcom/google/android/gms/internal/ads/zzrj;

.field private zzz:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzrh;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzrk;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzrk;->zzb:[B

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaft;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    const-string v1, "application/x-emsg"

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzrk;->zzc:Lcom/google/android/gms/internal/ads/zzafv;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzrk;-><init>(ILcom/google/android/gms/internal/ads/zzamn;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzamn;)V
    .locals 1

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzd:Ljava/util/List;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaja;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaja;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzk:Lcom/google/android/gms/internal/ads/zzaja;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    const/16 p2, 0x10

    .line 5
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzl:Lcom/google/android/gms/internal/ads/zzamf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzalw;->zza:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzf:Lcom/google/android/gms/internal/ads/zzamf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v0, 0x5

    .line 7
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    .line 8
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzh:Lcom/google/android/gms/internal/ads/zzamf;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzi:[B

    new-instance p2, Lcom/google/android/gms/internal/ads/zzamf;

    .line 9
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzj:Lcom/google/android/gms/internal/ads/zzamf;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 10
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzm:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 11
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzn:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    .line 12
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zze:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzw:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzv:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzx:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zznx;->zza:Lcom/google/android/gms/internal/ads/zznx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzD:Lcom/google/android/gms/internal/ads/zznx;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/android/gms/internal/ads/zzox;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzE:[Lcom/google/android/gms/internal/ads/zzox;

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzox;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzF:[Lcom/google/android/gms/internal/ads/zzox;

    return-void
.end method

.method private final zze()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzo:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzr:I

    return-void
.end method

.method private final zzf(J)V
    .locals 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaha;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object v1, v0

    .line 1
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzrk;->zzm:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4b

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzrk;->zzm:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzqv;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzqv;->zza:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_4b

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzrk;->zzm:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzqv;

    .line 3
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzqx;->zzd:I

    const v4, 0x6d6f6f76

    const/16 v5, 0xc

    if-ne v2, v4, :cond_8

    .line 4
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzqv;->zzb:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzrk;->zzi(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzn;

    move-result-object v7

    const v2, 0x6d766578

    .line 5
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzqv;->zzd(I)Lcom/google/android/gms/internal/ads/zzqv;

    move-result-object v2

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v11, Landroid/util/SparseArray;

    .line 8
    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzqv;->zzb:Ljava/util/List;

    .line 9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v4, :cond_4

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzqv;->zzb:Ljava/util/List;

    .line 10
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzqw;

    .line 11
    iget v13, v12, Lcom/google/android/gms/internal/ads/zzqx;->zzd:I

    const v14, 0x74726578

    if-ne v13, v14, :cond_1

    .line 12
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 13
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 14
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v5

    .line 15
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v13

    .line 16
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v14

    .line 17
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v15

    .line 18
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v12

    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzrf;

    add-int/lit8 v13, v13, -0x1

    invoke-direct {v6, v13, v14, v15, v12}, Lcom/google/android/gms/internal/ads/zzrf;-><init>(IIII)V

    .line 20
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 21
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzrf;

    invoke-virtual {v11, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    const v5, 0x6d656864

    if-ne v13, v5, :cond_3

    .line 22
    iget-object v5, v12, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v6, 0x8

    .line 23
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 24
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzqx;->zze(I)I

    move-result v8

    if-nez v8, :cond_2

    .line 25
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v8

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzD()J

    move-result-wide v8

    goto :goto_3

    :cond_3
    :goto_2
    const/16 v6, 0x8

    :goto_3
    add-int/lit8 v10, v10, 0x1

    const/16 v5, 0xc

    goto :goto_1

    :cond_4
    new-instance v4, Lcom/google/android/gms/internal/ads/zzoj;

    .line 26
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzoj;-><init>()V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzrg;

    invoke-direct {v10, v1}, Lcom/google/android/gms/internal/ads/zzrg;-><init>(Lcom/google/android/gms/internal/ads/zzrk;)V

    const/4 v2, 0x0

    const/4 v12, 0x0

    move-wide v5, v8

    move v8, v2

    move v9, v12

    .line 27
    invoke-static/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzre;->zza(Lcom/google/android/gms/internal/ads/zzqv;Lcom/google/android/gms/internal/ads/zzoj;JLcom/google/android/gms/internal/ads/zzn;ZZLcom/google/android/gms/internal/ads/zzfln;)Ljava/util/List;

    move-result-object v2

    .line 28
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzrk;->zze:Landroid/util/SparseArray;

    .line 29
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_5

    .line 30
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzrx;

    .line 31
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzrx;->zza:Lcom/google/android/gms/internal/ads/zzru;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzrj;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzrk;->zzD:Lcom/google/android/gms/internal/ads/zznx;

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzru;->zzb:I

    .line 32
    invoke-interface {v8, v4, v9}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v8

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzru;->zza:I

    .line 33
    invoke-static {v11, v9}, Lcom/google/android/gms/internal/ads/zzrk;->zzj(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzrf;

    move-result-object v9

    invoke-direct {v7, v8, v5, v9}, Lcom/google/android/gms/internal/ads/zzrj;-><init>(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzrx;Lcom/google/android/gms/internal/ads/zzrf;)V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzrk;->zze:Landroid/util/SparseArray;

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzru;->zza:I

    .line 34
    invoke-virtual {v5, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzrk;->zzw:J

    iget-wide v5, v6, Lcom/google/android/gms/internal/ads/zzru;->zze:J

    .line 35
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzrk;->zzw:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzrk;->zzD:Lcom/google/android/gms/internal/ads/zznx;

    .line 36
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zznx;->zzC()V

    goto/16 :goto_0

    :cond_6
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzrk;->zze:Landroid/util/SparseArray;

    .line 37
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v4, v3, :cond_7

    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_0

    .line 38
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzrx;

    .line 39
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzrx;->zza:Lcom/google/android/gms/internal/ads/zzru;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzrk;->zze:Landroid/util/SparseArray;

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzru;->zza:I

    .line 40
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzrj;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzru;->zza:I

    .line 41
    invoke-static {v11, v6}, Lcom/google/android/gms/internal/ads/zzrk;->zzj(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzrf;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzrj;->zzc(Lcom/google/android/gms/internal/ads/zzrx;Lcom/google/android/gms/internal/ads/zzrf;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    const/16 v6, 0x8

    const v4, 0x6d6f6f66

    if-ne v2, v4, :cond_49

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzrk;->zze:Landroid/util/SparseArray;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzrk;->zzi:[B

    .line 42
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzqv;->zzc:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v4, :cond_42

    .line 43
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzqv;->zzc:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzqv;

    .line 44
    iget v8, v7, Lcom/google/android/gms/internal/ads/zzqx;->zzd:I

    const v9, 0x74726166

    if-ne v8, v9, :cond_41

    const v8, 0x74666864

    .line 45
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v8

    .line 46
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 48
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 49
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v9

    const v10, 0xffffff

    and-int/2addr v9, v10

    .line 50
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v10

    .line 51
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzrj;

    if-nez v10, :cond_9

    const/4 v10, 0x0

    goto :goto_c

    :cond_9
    and-int/lit8 v11, v9, 0x1

    if-eqz v11, :cond_a

    .line 52
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzD()J

    move-result-wide v11

    iget-object v13, v10, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    iput-wide v11, v13, Lcom/google/android/gms/internal/ads/zzrw;->zzb:J

    iput-wide v11, v13, Lcom/google/android/gms/internal/ads/zzrw;->zzc:J

    :cond_a
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzrj;->zze:Lcom/google/android/gms/internal/ads/zzrf;

    and-int/lit8 v12, v9, 0x2

    if-eqz v12, :cond_b

    .line 53
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    goto :goto_8

    .line 54
    :cond_b
    iget v12, v11, Lcom/google/android/gms/internal/ads/zzrf;->zza:I

    :goto_8
    and-int/lit8 v13, v9, 0x8

    if-eqz v13, :cond_c

    .line 55
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v13

    goto :goto_9

    .line 56
    :cond_c
    iget v13, v11, Lcom/google/android/gms/internal/ads/zzrf;->zzb:I

    :goto_9
    and-int/lit8 v14, v9, 0x10

    if-eqz v14, :cond_d

    .line 57
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v14

    goto :goto_a

    .line 58
    :cond_d
    iget v14, v11, Lcom/google/android/gms/internal/ads/zzrf;->zzc:I

    :goto_a
    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_e

    .line 59
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v8

    goto :goto_b

    .line 60
    :cond_e
    iget v8, v11, Lcom/google/android/gms/internal/ads/zzrf;->zzd:I

    .line 61
    :goto_b
    iget-object v9, v10, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzrf;

    .line 62
    invoke-direct {v11, v12, v13, v14, v8}, Lcom/google/android/gms/internal/ads/zzrf;-><init>(IIII)V

    iput-object v11, v9, Lcom/google/android/gms/internal/ads/zzrw;->zza:Lcom/google/android/gms/internal/ads/zzrf;

    :goto_c
    if-nez v10, :cond_f

    goto/16 :goto_2a

    .line 63
    :cond_f
    iget-object v8, v10, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    iget-wide v11, v8, Lcom/google/android/gms/internal/ads/zzrw;->zzq:J

    iget-boolean v9, v8, Lcom/google/android/gms/internal/ads/zzrw;->zzr:Z

    .line 64
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzrj;->zzd()V

    const/4 v13, 0x1

    .line 65
    invoke-static {v10, v13}, Lcom/google/android/gms/internal/ads/zzrj;->zza(Lcom/google/android/gms/internal/ads/zzrj;Z)Z

    const v14, 0x74666474

    .line 66
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v14

    if-eqz v14, :cond_11

    iget-object v9, v14, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 67
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 68
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzqx;->zze(I)I

    move-result v6

    if-ne v6, v13, :cond_10

    .line 69
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzD()J

    move-result-wide v11

    goto :goto_d

    :cond_10
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v11

    :goto_d
    iput-wide v11, v8, Lcom/google/android/gms/internal/ads/zzrw;->zzq:J

    iput-boolean v13, v8, Lcom/google/android/gms/internal/ads/zzrw;->zzr:Z

    goto :goto_e

    :cond_11
    iput-wide v11, v8, Lcom/google/android/gms/internal/ads/zzrw;->zzq:J

    iput-boolean v9, v8, Lcom/google/android/gms/internal/ads/zzrw;->zzr:Z

    .line 70
    :goto_e
    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzqv;->zzb:Ljava/util/List;

    .line 71
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_f
    const v14, 0x7472756e

    if-ge v11, v9, :cond_13

    .line 72
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/ads/zzqw;

    move-object/from16 v16, v2

    .line 73
    iget v2, v15, Lcom/google/android/gms/internal/ads/zzqx;->zzd:I

    if-ne v2, v14, :cond_12

    .line 74
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v14, 0xc

    .line 75
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 76
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v2

    if-lez v2, :cond_12

    add-int/2addr v13, v2

    add-int/lit8 v12, v12, 0x1

    :cond_12
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v16

    goto :goto_f

    :cond_13
    move-object/from16 v16, v2

    const/4 v2, 0x0

    iput v2, v10, Lcom/google/android/gms/internal/ads/zzrj;->zzh:I

    iput v2, v10, Lcom/google/android/gms/internal/ads/zzrj;->zzg:I

    iput v2, v10, Lcom/google/android/gms/internal/ads/zzrj;->zzf:I

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    iput v12, v2, Lcom/google/android/gms/internal/ads/zzrw;->zzd:I

    iput v13, v2, Lcom/google/android/gms/internal/ads/zzrw;->zze:I

    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzrw;->zzg:[I

    .line 77
    array-length v11, v11

    if-ge v11, v12, :cond_14

    new-array v11, v12, [J

    iput-object v11, v2, Lcom/google/android/gms/internal/ads/zzrw;->zzf:[J

    new-array v11, v12, [I

    iput-object v11, v2, Lcom/google/android/gms/internal/ads/zzrw;->zzg:[I

    :cond_14
    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzrw;->zzh:[I

    .line 78
    array-length v11, v11

    if-ge v11, v13, :cond_15

    mul-int/lit8 v13, v13, 0x7d

    div-int/lit8 v13, v13, 0x64

    .line 79
    new-array v11, v13, [I

    iput-object v11, v2, Lcom/google/android/gms/internal/ads/zzrw;->zzh:[I

    .line 80
    new-array v11, v13, [I

    iput-object v11, v2, Lcom/google/android/gms/internal/ads/zzrw;->zzi:[I

    .line 81
    new-array v11, v13, [J

    iput-object v11, v2, Lcom/google/android/gms/internal/ads/zzrw;->zzj:[J

    .line 82
    new-array v11, v13, [Z

    iput-object v11, v2, Lcom/google/android/gms/internal/ads/zzrw;->zzk:[Z

    .line 83
    new-array v11, v13, [Z

    iput-object v11, v2, Lcom/google/android/gms/internal/ads/zzrw;->zzm:[Z

    :cond_15
    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_10
    const-wide/16 v17, 0x0

    if-ge v2, v9, :cond_24

    .line 84
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzqw;

    .line 85
    iget v15, v13, Lcom/google/android/gms/internal/ads/zzqx;->zzd:I

    if-ne v15, v14, :cond_23

    add-int/lit8 v14, v12, 0x1

    .line 86
    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v15, 0x8

    .line 87
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 88
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v15

    const v19, 0xffffff

    and-int v15, v15, v19

    move/from16 v19, v4

    iget-object v4, v10, Lcom/google/android/gms/internal/ads/zzrj;->zzd:Lcom/google/android/gms/internal/ads/zzrx;

    .line 89
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzrx;->zza:Lcom/google/android/gms/internal/ads/zzru;

    move-object/from16 v20, v6

    iget-object v6, v10, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    move/from16 v21, v9

    iget-object v9, v6, Lcom/google/android/gms/internal/ads/zzrw;->zza:Lcom/google/android/gms/internal/ads/zzrf;

    .line 90
    sget v22, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    move/from16 v23, v14

    iget-object v14, v6, Lcom/google/android/gms/internal/ads/zzrw;->zzg:[I

    .line 91
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v22

    aput v22, v14, v12

    iget-object v14, v6, Lcom/google/android/gms/internal/ads/zzrw;->zzf:[J

    move-object/from16 v22, v1

    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/zzrw;->zzb:J

    .line 92
    aput-wide v0, v14, v12

    and-int/lit8 v24, v15, 0x1

    if-eqz v24, :cond_16

    move-object/from16 v24, v3

    .line 93
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v3

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    int-to-long v7, v3

    add-long/2addr v0, v7

    aput-wide v0, v14, v12

    goto :goto_11

    :cond_16
    move-object/from16 v24, v3

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    :goto_11
    and-int/lit8 v0, v15, 0x4

    .line 94
    iget v1, v9, Lcom/google/android/gms/internal/ads/zzrf;->zzd:I

    if-eqz v0, :cond_17

    .line 95
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v1

    :cond_17
    and-int/lit16 v3, v15, 0x100

    and-int/lit16 v7, v15, 0x200

    and-int/lit16 v8, v15, 0x400

    and-int/lit16 v14, v15, 0x800

    iget-object v15, v4, Lcom/google/android/gms/internal/ads/zzru;->zzh:[J

    if-eqz v15, :cond_18

    move/from16 v27, v1

    array-length v1, v15

    move/from16 v28, v5

    const/4 v5, 0x1

    if-ne v1, v5, :cond_19

    const/4 v1, 0x0

    .line 96
    aget-wide v29, v15, v1

    cmp-long v5, v29, v17

    if-nez v5, :cond_19

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzru;->zzi:[J

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzamq;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 97
    check-cast v5, [J

    aget-wide v29, v5, v1

    const-wide/32 v31, 0xf4240

    move v5, v2

    iget-wide v1, v4, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    move-wide/from16 v33, v1

    .line 98
    invoke-static/range {v29 .. v34}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v17

    goto :goto_12

    :cond_18
    move/from16 v27, v1

    move/from16 v28, v5

    :cond_19
    move v5, v2

    :goto_12
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzrw;->zzh:[I

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzrw;->zzi:[I

    iget-object v15, v6, Lcom/google/android/gms/internal/ads/zzrw;->zzj:[J

    move/from16 v29, v5

    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzrw;->zzk:[Z

    move-object/from16 v30, v5

    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzrw;->zzg:[I

    .line 99
    aget v5, v5, v12

    add-int/2addr v5, v11

    move/from16 v31, v11

    iget-wide v11, v4, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    move-object v4, v1

    move-object/from16 v37, v2

    iget-wide v1, v6, Lcom/google/android/gms/internal/ads/zzrw;->zzq:J

    move-object/from16 v38, v4

    move/from16 v4, v31

    :goto_13
    if-ge v4, v5, :cond_22

    if-eqz v3, :cond_1a

    .line 100
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v31

    move/from16 v39, v3

    move/from16 v3, v31

    goto :goto_14

    :cond_1a
    move/from16 v39, v3

    iget v3, v9, Lcom/google/android/gms/internal/ads/zzrf;->zzb:I

    :goto_14
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzrk;->zzg(I)I

    if-eqz v7, :cond_1b

    .line 101
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v31

    move/from16 v40, v5

    move/from16 v5, v31

    goto :goto_15

    :cond_1b
    move/from16 v40, v5

    iget v5, v9, Lcom/google/android/gms/internal/ads/zzrf;->zzc:I

    :goto_15
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzrk;->zzg(I)I

    if-eqz v8, :cond_1c

    .line 102
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v31

    move/from16 v41, v0

    move/from16 v0, v31

    goto :goto_16

    :cond_1c
    if-nez v4, :cond_1d

    const/4 v4, 0x0

    move/from16 v41, v0

    if-eqz v0, :cond_1e

    move/from16 v0, v27

    goto :goto_16

    :cond_1d
    move/from16 v41, v0

    .line 103
    :cond_1e
    iget v0, v9, Lcom/google/android/gms/internal/ads/zzrf;->zzd:I

    :goto_16
    if-eqz v14, :cond_1f

    move/from16 v42, v7

    .line 104
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v7

    move/from16 v43, v8

    int-to-long v7, v7

    const-wide/32 v31, 0xf4240

    mul-long v7, v7, v31

    .line 105
    div-long/2addr v7, v11

    long-to-int v7, v7

    aput v7, v37, v4

    goto :goto_17

    :cond_1f
    move/from16 v42, v7

    move/from16 v43, v8

    const/4 v7, 0x0

    .line 106
    aput v7, v37, v4

    :goto_17
    const-wide/32 v33, 0xf4240

    move-wide/from16 v31, v1

    move-wide/from16 v35, v11

    .line 107
    invoke-static/range {v31 .. v36}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v7

    sub-long v7, v7, v17

    aput-wide v7, v15, v4

    move-object/from16 v32, v9

    iget-boolean v9, v6, Lcom/google/android/gms/internal/ads/zzrw;->zzr:Z

    if-nez v9, :cond_20

    iget-object v9, v10, Lcom/google/android/gms/internal/ads/zzrj;->zzd:Lcom/google/android/gms/internal/ads/zzrx;

    move-wide/from16 v33, v11

    .line 108
    iget-wide v11, v9, Lcom/google/android/gms/internal/ads/zzrx;->zzh:J

    add-long/2addr v7, v11

    aput-wide v7, v15, v4

    goto :goto_18

    :cond_20
    move-wide/from16 v33, v11

    .line 109
    :goto_18
    aput v5, v38, v4

    shr-int/lit8 v0, v0, 0x10

    const/4 v5, 0x1

    and-int/2addr v0, v5

    xor-int/2addr v0, v5

    if-eq v5, v0, :cond_21

    const/4 v0, 0x0

    goto :goto_19

    :cond_21
    const/4 v0, 0x1

    .line 110
    :goto_19
    aput-boolean v0, v30, v4

    int-to-long v7, v3

    add-long/2addr v1, v7

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v9, v32

    move-wide/from16 v11, v33

    move/from16 v3, v39

    move/from16 v5, v40

    move/from16 v0, v41

    move/from16 v7, v42

    move/from16 v8, v43

    goto/16 :goto_13

    :cond_22
    move/from16 v40, v5

    .line 111
    iput-wide v1, v6, Lcom/google/android/gms/internal/ads/zzrw;->zzq:J

    move/from16 v12, v23

    move/from16 v11, v40

    goto :goto_1a

    :cond_23
    move-object/from16 v22, v1

    move/from16 v29, v2

    move-object/from16 v24, v3

    move/from16 v19, v4

    move/from16 v28, v5

    move-object/from16 v20, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move/from16 v21, v9

    move/from16 v31, v11

    :goto_1a
    add-int/lit8 v2, v29, 0x1

    const v14, 0x7472756e

    move-object/from16 v0, p0

    move/from16 v4, v19

    move-object/from16 v6, v20

    move/from16 v9, v21

    move-object/from16 v1, v22

    move-object/from16 v3, v24

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    move/from16 v5, v28

    goto/16 :goto_10

    :cond_24
    move-object/from16 v22, v1

    move-object/from16 v24, v3

    move/from16 v19, v4

    move/from16 v28, v5

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzrj;->zzd:Lcom/google/android/gms/internal/ads/zzrx;

    .line 112
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrx;->zza:Lcom/google/android/gms/internal/ads/zzru;

    move-object/from16 v1, v26

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzrw;->zza:Lcom/google/android/gms/internal/ads/zzrf;

    .line 113
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzrf;->zza:I

    .line 115
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzru;->zza(I)Lcom/google/android/gms/internal/ads/zzrv;

    move-result-object v0

    const v2, 0x7361697a

    .line 116
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 117
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzrv;->zzd:I

    const/16 v4, 0x8

    .line 119
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 120
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v5

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_25

    .line 121
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 122
    :cond_25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v4

    .line 123
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v5

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzrw;->zze:I

    if-gt v5, v6, :cond_2a

    if-nez v4, :cond_28

    .line 124
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzrw;->zzm:[Z

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_1b
    if-ge v6, v5, :cond_27

    .line 125
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v9

    add-int/2addr v8, v9

    if-le v9, v3, :cond_26

    const/4 v9, 0x1

    goto :goto_1c

    :cond_26
    const/4 v9, 0x0

    .line 126
    :goto_1c
    aput-boolean v9, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_27
    const/4 v2, 0x0

    goto :goto_1e

    :cond_28
    if-le v4, v3, :cond_29

    const/4 v2, 0x1

    goto :goto_1d

    :cond_29
    const/4 v2, 0x0

    :goto_1d
    mul-int v8, v4, v5

    .line 127
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzrw;->zzm:[Z

    const/4 v4, 0x0

    .line 128
    invoke-static {v3, v4, v5, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    move v2, v4

    .line 129
    :goto_1e
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzrw;->zzm:[Z

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzrw;->zze:I

    .line 130
    invoke-static {v3, v5, v4, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v8, :cond_2b

    .line 131
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzrw;->zza(I)V

    goto :goto_1f

    :cond_2a
    const/16 v0, 0x4e

    const-string v1, "Saiz sample count "

    const-string v2, " is greater than fragment sample count"

    .line 132
    invoke-static {v0, v1, v5, v2, v6}, Le/d/c/a/a;->N1(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 133
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v0

    throw v0

    :cond_2b
    :goto_1f
    const v2, 0x7361696f

    .line 134
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v2

    if-eqz v2, :cond_2f

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v3, 0x8

    .line 135
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 136
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2c

    .line 137
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 138
    :cond_2c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v3

    if-ne v3, v6, :cond_2e

    .line 139
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzrw;->zzc:J

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzqx;->zze(I)I

    move-result v3

    if-nez v3, :cond_2d

    .line 140
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v2

    goto :goto_20

    :cond_2d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzD()J

    move-result-wide v2

    :goto_20
    add-long/2addr v5, v2

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzrw;->zzc:J

    goto :goto_21

    .line 141
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 142
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected saio entry count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v0

    throw v0

    :cond_2f
    :goto_21
    const/4 v2, 0x0

    const v3, 0x73656e63

    .line 143
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v3

    if-eqz v3, :cond_30

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v4, 0x0

    .line 144
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzrk;->zzh(Lcom/google/android/gms/internal/ads/zzamf;ILcom/google/android/gms/internal/ads/zzrw;)V

    :cond_30
    if-eqz v0, :cond_31

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrv;->zzb:Ljava/lang/String;

    move-object v10, v0

    goto :goto_22

    :cond_31
    move-object v10, v2

    :goto_22
    const/4 v0, 0x0

    move-object v3, v2

    move-object v4, v3

    .line 145
    :goto_23
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzqv;->zzb:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_34

    .line 146
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzqv;->zzb:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzqw;

    .line 147
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 148
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzqx;->zzd:I

    const v8, 0x73626770

    const v9, 0x73656967

    if-ne v5, v8, :cond_32

    const/16 v5, 0xc

    .line 149
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 150
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v5

    if-ne v5, v9, :cond_33

    move-object v3, v6

    goto :goto_24

    :cond_32
    const/16 v8, 0xc

    const v11, 0x73677064

    if-ne v5, v11, :cond_33

    .line 151
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 152
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v5

    if-ne v5, v9, :cond_33

    move-object v4, v6

    :cond_33
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_34
    if-eqz v3, :cond_3d

    if-nez v4, :cond_35

    goto/16 :goto_27

    :cond_35
    const/16 v0, 0x8

    .line 153
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 154
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v5

    const/4 v6, 0x4

    .line 155
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzqx;->zze(I)I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_36

    .line 156
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 157
    :cond_36
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v3

    if-ne v3, v8, :cond_3c

    .line 158
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 159
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqx;->zze(I)I

    move-result v0

    .line 160
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    if-ne v0, v8, :cond_38

    .line 161
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v5

    cmp-long v0, v5, v17

    if-eqz v0, :cond_37

    goto :goto_25

    :cond_37
    const-string v0, "Variable length description in sgpd found (unsupported)"

    .line 162
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaha;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v0

    throw v0

    :cond_38
    const/4 v3, 0x2

    if-lt v0, v3, :cond_39

    .line 163
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 164
    :cond_39
    :goto_25
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v5

    const-wide/16 v8, 0x1

    cmp-long v0, v5, v8

    if-nez v0, :cond_3b

    const/4 v0, 0x1

    .line 165
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 166
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v3

    and-int/lit16 v5, v3, 0xf0

    shr-int/lit8 v13, v5, 0x4

    and-int/lit8 v14, v3, 0xf

    .line 167
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v3

    if-ne v3, v0, :cond_3d

    .line 168
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v11

    const/16 v3, 0x10

    new-array v12, v3, [B

    const/4 v5, 0x0

    .line 169
    invoke-virtual {v4, v12, v5, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    if-nez v11, :cond_3a

    .line 170
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    new-array v3, v2, [B

    .line 171
    invoke-virtual {v4, v3, v5, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    move-object v15, v3

    goto :goto_26

    :cond_3a
    move-object v15, v2

    :goto_26
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzrw;->zzl:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzrv;

    const/4 v9, 0x1

    move-object v8, v0

    .line 172
    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/zzrv;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzrw;->zzn:Lcom/google/android/gms/internal/ads/zzrv;

    goto :goto_27

    :cond_3b
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    .line 173
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaha;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v0

    throw v0

    :cond_3c
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    .line 174
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaha;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v0

    throw v0

    .line 175
    :cond_3d
    :goto_27
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzqv;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v0, :cond_40

    .line 176
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzqv;->zzb:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzqw;

    .line 177
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzqx;->zzd:I

    const v5, 0x75756964

    if-ne v4, v5, :cond_3e

    .line 178
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v4, 0x8

    .line 179
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const/4 v4, 0x0

    const/16 v5, 0x10

    move-object/from16 v8, v22

    .line 180
    invoke-virtual {v3, v8, v4, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzrk;->zzb:[B

    .line 181
    invoke-static {v8, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 182
    invoke-static {v3, v5, v1}, Lcom/google/android/gms/internal/ads/zzrk;->zzh(Lcom/google/android/gms/internal/ads/zzamf;ILcom/google/android/gms/internal/ads/zzrw;)V

    goto :goto_29

    :cond_3e
    move-object/from16 v8, v22

    :cond_3f
    :goto_29
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v22, v8

    goto :goto_28

    :cond_40
    move-object/from16 v8, v22

    const/16 v0, 0x8

    move v6, v0

    goto :goto_2b

    :cond_41
    :goto_2a
    move-object v8, v1

    move-object/from16 v16, v2

    move-object/from16 v24, v3

    move/from16 v19, v4

    move/from16 v28, v5

    :goto_2b
    add-int/lit8 v5, v28, 0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, v16

    move/from16 v4, v19

    move-object/from16 v3, v24

    goto/16 :goto_7

    :cond_42
    move-object/from16 v24, v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object/from16 v2, v24

    .line 183
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzqv;->zzb:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzrk;->zzi(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzn;

    move-result-object v2

    move-object/from16 v3, p0

    if-eqz v2, :cond_44

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzrk;->zze:Landroid/util/SparseArray;

    .line 184
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v5, v1

    :goto_2c
    if-ge v5, v4, :cond_44

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzrk;->zze:Landroid/util/SparseArray;

    .line 185
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzrj;

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzrj;->zzd:Lcom/google/android/gms/internal/ads/zzrx;

    .line 186
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzrx;->zza:Lcom/google/android/gms/internal/ads/zzru;

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzrw;->zza:Lcom/google/android/gms/internal/ads/zzrf;

    .line 187
    sget v9, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzrf;->zza:I

    .line 188
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzru;->zza(I)Lcom/google/android/gms/internal/ads/zzrv;

    move-result-object v7

    if-eqz v7, :cond_43

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzrv;->zzb:Ljava/lang/String;

    goto :goto_2d

    :cond_43
    move-object v7, v0

    .line 189
    :goto_2d
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzn;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzn;

    move-result-object v7

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzrj;->zzd:Lcom/google/android/gms/internal/ads/zzrx;

    .line 190
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzrx;->zza:Lcom/google/android/gms/internal/ads/zzru;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzru;->zzf:Lcom/google/android/gms/internal/ads/zzafv;

    .line 191
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzafv;->zza()Lcom/google/android/gms/internal/ads/zzaft;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzaft;->zzQ(Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzaft;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v7

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzrj;->zza:Lcom/google/android/gms/internal/ads/zzox;

    .line 192
    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_44
    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzrk;->zzv:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-eqz v0, :cond_48

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzrk;->zze:Landroid/util/SparseArray;

    .line 193
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_2e
    if-ge v1, v0, :cond_47

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzrk;->zze:Landroid/util/SparseArray;

    .line 194
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzrj;

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzrk;->zzv:J

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzrj;->zzf:I

    :goto_2f
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzrw;->zze:I

    if-ge v6, v8, :cond_46

    .line 195
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzrw;->zzb(I)J

    move-result-wide v7

    cmp-long v7, v7, v4

    if-gez v7, :cond_46

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzrw;->zzk:[Z

    .line 196
    aget-boolean v7, v7, v6

    if-eqz v7, :cond_45

    iput v6, v2, Lcom/google/android/gms/internal/ads/zzrj;->zzi:I

    :cond_45
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_47
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v3, Lcom/google/android/gms/internal/ads/zzrk;->zzv:J

    :cond_48
    move-object v1, v3

    goto :goto_30

    :cond_49
    move-object v2, v3

    move-object v3, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrk;->zzm:Ljava/util/ArrayDeque;

    .line 197
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrk;->zzm:Ljava/util/ArrayDeque;

    .line 198
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqv;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzqv;->zzb(Lcom/google/android/gms/internal/ads/zzqv;)V

    :cond_4a
    :goto_30
    move-object v0, v3

    goto/16 :goto_0

    :cond_4b
    move-object v3, v0

    .line 199
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrk;->zze()V

    return-void
.end method

.method private static zzg(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaha;
        }
    .end annotation

    if-ltz p0, :cond_0

    return p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected negative value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p0

    throw p0
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzamf;ILcom/google/android/gms/internal/ads/zzrw;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaha;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result p1

    const v0, 0xffffff

    and-int/2addr p1, v0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p2, Lcom/google/android/gms/internal/ads/zzrw;->zzm:[Z

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzrw;->zze:I

    .line 4
    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    :cond_1
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzrw;->zze:I

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzrw;->zzm:[Z

    .line 6
    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result p1

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzrw;->zza(I)V

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzrw;->zzo:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object p1

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzrw;->zzo:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v1

    .line 8
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    iget-object p0, p2, Lcom/google/android/gms/internal/ads/zzrw;->zzo:Lcom/google/android/gms/internal/ads/zzamf;

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzrw;->zzp:Z

    return-void

    :cond_2
    const/16 p0, 0x50

    const-string p1, "Senc sample count "

    const-string p2, " is different from fragment sample count"

    .line 10
    invoke-static {p0, p1, v1, p2, v2}, Le/d/c/a/a;->N1(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 11
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p0

    throw p0

    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaha;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p0

    throw p0
.end method

.method private static zzi(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzn;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzqw;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzn;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzqw;

    .line 3
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzqx;->zzd:I

    const v6, 0x70737368    # 3.013775E29f

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v4

    .line 6
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzrr;->zza([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzm;

    const-string v7, "video/mp4"

    .line 8
    invoke-direct {v6, v5, v1, v7, v4}, Lcom/google/android/gms/internal/ads/zzm;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 9
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    return-object v1

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/ads/zzn;

    .line 10
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzn;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static final zzj(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzrf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zzrf;",
            ">;I)",
            "Lcom/google/android/gms/internal/ads/zzrf;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzrf;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzrf;

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zznv;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrt;->zza(Lcom/google/android/gms/internal/ads/zznv;)Z

    move-result p1

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznx;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzD:Lcom/google/android/gms/internal/ads/zznx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrk;->zze()V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzox;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzE:[Lcom/google/android/gms/internal/ads/zzox;

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzamq;->zzf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzox;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzE:[Lcom/google/android/gms/internal/ads/zzox;

    .line 3
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzrk;->zzc:Lcom/google/android/gms/internal/ads/zzafv;

    .line 4
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzd:Ljava/util/List;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzox;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzF:[Lcom/google/android/gms/internal/ads/zzox;

    const/16 p1, 0x64

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzF:[Lcom/google/android/gms/internal/ads/zzox;

    .line 6
    array-length v1, v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzD:Lcom/google/android/gms/internal/ads/zznx;

    const/4 v3, 0x3

    .line 7
    invoke-interface {v2, p1, v3}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzd:Ljava/util/List;

    .line 8
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzafv;

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzF:[Lcom/google/android/gms/internal/ads/zzox;

    .line 9
    aput-object p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzoq;)I
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :goto_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzo:I

    const v3, 0x656d7367

    const v4, 0x73696478

    const/4 v5, 0x2

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_2e

    if-eq v2, v8, :cond_21

    const-wide v3, 0x7fffffffffffffffL

    const/4 v11, 0x3

    if-eq v2, v5, :cond_1c

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzy:Lcom/google/android/gms/internal/ads/zzrj;

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zze:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v12

    move-wide v13, v3

    move-object v3, v7

    move v4, v9

    :goto_1
    if-ge v4, v12, :cond_3

    .line 2
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/ads/zzrj;

    .line 3
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzrj;->zzb(Lcom/google/android/gms/internal/ads/zzrj;)Z

    move-result v16

    if-nez v16, :cond_0

    iget v5, v15, Lcom/google/android/gms/internal/ads/zzrj;->zzf:I

    iget-object v10, v15, Lcom/google/android/gms/internal/ads/zzrj;->zzd:Lcom/google/android/gms/internal/ads/zzrx;

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzrx;->zzb:I

    if-eq v5, v10, :cond_2

    :cond_0
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzrj;->zzb(Lcom/google/android/gms/internal/ads/zzrj;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v15, Lcom/google/android/gms/internal/ads/zzrj;->zzh:I

    iget-object v10, v15, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzrw;->zzd:I

    if-ne v5, v10, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzrj;->zzf()J

    move-result-wide v17

    cmp-long v5, v17, v13

    if-gez v5, :cond_2

    move-object v3, v15

    move-wide/from16 v13, v17

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x2

    goto :goto_1

    :cond_3
    if-nez v3, :cond_5

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzt:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    if-ltz v2, :cond_4

    .line 5
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zznp;

    .line 6
    invoke-virtual {v3, v2, v9}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrk;->zze()V

    goto :goto_0

    :cond_4
    const-string v1, "Offset to end of mdat was negative."

    .line 8
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v1

    throw v1

    .line 9
    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzrj;->zzf()J

    move-result-wide v4

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v12

    sub-long/2addr v4, v12

    long-to-int v2, v4

    if-gez v2, :cond_6

    move v2, v9

    .line 10
    :cond_6
    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zznp;

    .line 11
    invoke-virtual {v4, v2, v9}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzy:Lcom/google/android/gms/internal/ads/zzrj;

    move-object v2, v3

    :cond_7
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzo:I

    const/4 v4, 0x6

    if-ne v3, v11, :cond_f

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzrj;->zzg()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzz:I

    .line 13
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzrj;->zzf:I

    iget v10, v2, Lcom/google/android/gms/internal/ads/zzrj;->zzi:I

    if-ge v5, v10, :cond_c

    check-cast v1, Lcom/google/android/gms/internal/ads/zznp;

    .line 14
    invoke-virtual {v1, v3, v9}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzrj;->zzk()Lcom/google/android/gms/internal/ads/zzrv;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_3

    .line 16
    :cond_8
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzrw;->zzo:Lcom/google/android/gms/internal/ads/zzamf;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzrv;->zzd:I

    if-eqz v1, :cond_9

    .line 17
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    :cond_9
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzrj;->zzf:I

    .line 18
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzrw;->zzc(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 19
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v1

    mul-int/2addr v1, v4

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 20
    :cond_a
    :goto_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzrj;->zzi()Z

    move-result v1

    if-nez v1, :cond_b

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzy:Lcom/google/android/gms/internal/ads/zzrj;

    :cond_b
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzo:I

    move v1, v9

    goto/16 :goto_e

    .line 21
    :cond_c
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzrj;->zzd:Lcom/google/android/gms/internal/ads/zzrx;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzrx;->zza:Lcom/google/android/gms/internal/ads/zzru;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzru;->zzg:I

    if-ne v5, v8, :cond_d

    add-int/lit8 v3, v3, -0x8

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzz:I

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zznp;

    .line 22
    invoke-virtual {v3, v6, v9}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    .line 23
    :cond_d
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzrj;->zzd:Lcom/google/android/gms/internal/ads/zzrx;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzrx;->zza:Lcom/google/android/gms/internal/ads/zzru;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzru;->zzf:Lcom/google/android/gms/internal/ads/zzafv;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    const-string v5, "audio/ac4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzz:I

    const/4 v5, 0x7

    .line 24
    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzrj;->zzj(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzA:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzz:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzj:Lcom/google/android/gms/internal/ads/zzamf;

    .line 25
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zznd;->zzb(ILcom/google/android/gms/internal/ads/zzamf;)V

    .line 26
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzrj;->zza:Lcom/google/android/gms/internal/ads/zzox;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzj:Lcom/google/android/gms/internal/ads/zzamf;

    .line 27
    invoke-static {v3, v6, v5}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzA:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzA:I

    goto :goto_4

    .line 28
    :cond_e
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzz:I

    .line 29
    invoke-virtual {v2, v3, v9}, Lcom/google/android/gms/internal/ads/zzrj;->zzj(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzA:I

    .line 30
    :goto_4
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzz:I

    add-int/2addr v5, v3

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzz:I

    const/4 v3, 0x4

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzo:I

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzB:I

    .line 31
    :cond_f
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzrj;->zzd:Lcom/google/android/gms/internal/ads/zzrx;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzrx;->zza:Lcom/google/android/gms/internal/ads/zzru;

    .line 32
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzrj;->zza:Lcom/google/android/gms/internal/ads/zzox;

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzrj;->zze()J

    move-result-wide v12

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzru;->zzj:I

    if-nez v6, :cond_10

    :goto_5
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzA:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzz:I

    if-ge v3, v4, :cond_17

    sub-int/2addr v4, v3

    .line 34
    invoke-static {v5, v1, v4, v9}, Lcom/google/android/gms/internal/ads/zzov;->zza(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzah;IZ)I

    move-result v3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzA:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzA:I

    goto :goto_5

    .line 35
    :cond_10
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v6

    .line 36
    aput-byte v9, v6, v9

    .line 37
    aput-byte v9, v6, v8

    const/4 v10, 0x2

    .line 38
    aput-byte v9, v6, v10

    iget v10, v3, Lcom/google/android/gms/internal/ads/zzru;->zzj:I

    add-int/lit8 v14, v10, 0x1

    const/4 v15, 0x4

    rsub-int/lit8 v10, v10, 0x4

    :goto_6
    iget v15, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzA:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzz:I

    if-ge v15, v11, :cond_17

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzB:I

    const-string v15, "video/hevc"

    if-nez v11, :cond_15

    move-object v11, v1

    check-cast v11, Lcom/google/android/gms/internal/ads/zznp;

    .line 39
    invoke-virtual {v11, v6, v10, v14, v9}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    .line 40
    invoke-virtual {v11, v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    .line 41
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v11

    if-lez v11, :cond_14

    add-int/lit8 v11, v11, -0x1

    .line 42
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzB:I

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzf:Lcom/google/android/gms/internal/ads/zzamf;

    .line 43
    invoke-virtual {v11, v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzf:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v9, 0x4

    .line 44
    invoke-static {v5, v11, v9}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    .line 45
    invoke-static {v5, v11, v8}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzF:[Lcom/google/android/gms/internal/ads/zzox;

    .line 46
    array-length v11, v11

    if-lez v11, :cond_13

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzru;->zzf:Lcom/google/android/gms/internal/ads/zzafv;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    aget-byte v17, v6, v9

    .line 47
    sget-object v9, Lcom/google/android/gms/internal/ads/zzalw;->zza:[B

    const-string v9, "video/avc"

    .line 48
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    and-int/lit8 v9, v17, 0x1f

    if-eq v9, v4, :cond_11

    goto :goto_8

    :cond_11
    :goto_7
    move v9, v8

    goto :goto_9

    .line 49
    :cond_12
    :goto_8
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    and-int/lit8 v9, v17, 0x7e

    shr-int/2addr v9, v8

    const/16 v11, 0x27

    if-ne v9, v11, :cond_13

    goto :goto_7

    :cond_13
    const/4 v9, 0x0

    :goto_9
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzC:Z

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzA:I

    add-int/lit8 v9, v9, 0x5

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzA:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzz:I

    add-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzz:I

    goto :goto_b

    :cond_14
    const-string v1, "Invalid NAL length"

    .line 50
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v1

    throw v1

    .line 51
    :cond_15
    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzC:Z

    if-eqz v9, :cond_16

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzh:Lcom/google/android/gms/internal/ads/zzamf;

    .line 52
    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzh:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v9

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzB:I

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v8, 0x0

    .line 53
    invoke-virtual {v4, v9, v8, v11, v8}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzh:Lcom/google/android/gms/internal/ads/zzamf;

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzB:I

    .line 54
    invoke-static {v5, v4, v8}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzB:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzh:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzh:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v9

    .line 55
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzalw;->zza([BI)I

    move-result v8

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzh:Lcom/google/android/gms/internal/ads/zzamf;

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzru;->zzf:Lcom/google/android/gms/internal/ads/zzafv;

    .line 56
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzh:Lcom/google/android/gms/internal/ads/zzamf;

    .line 57
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzf(I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzh:Lcom/google/android/gms/internal/ads/zzamf;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzF:[Lcom/google/android/gms/internal/ads/zzox;

    .line 58
    invoke-static {v12, v13, v8, v9}, Lcom/google/android/gms/internal/ads/zznm;->zza(JLcom/google/android/gms/internal/ads/zzamf;[Lcom/google/android/gms/internal/ads/zzox;)V

    goto :goto_a

    :cond_16
    const/4 v4, 0x0

    .line 59
    invoke-static {v5, v1, v11, v4}, Lcom/google/android/gms/internal/ads/zzov;->zza(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzah;IZ)I

    move-result v8

    move v4, v8

    .line 60
    :goto_a
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzA:I

    add-int/2addr v8, v4

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzA:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzB:I

    sub-int/2addr v8, v4

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzB:I

    const/4 v4, 0x6

    const/4 v8, 0x1

    :goto_b
    const/4 v9, 0x0

    const/4 v11, 0x3

    goto/16 :goto_6

    .line 61
    :cond_17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzrj;->zzh()I

    move-result v20

    .line 62
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzrj;->zzk()Lcom/google/android/gms/internal/ads/zzrv;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzrv;->zzc:Lcom/google/android/gms/internal/ads/zzow;

    move-object/from16 v23, v1

    goto :goto_c

    :cond_18
    move-object/from16 v23, v7

    :goto_c
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzz:I

    const/16 v22, 0x0

    move-object/from16 v17, v5

    move-wide/from16 v18, v12

    move/from16 v21, v1

    .line 63
    invoke-interface/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/zzox;->zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V

    :cond_19
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzn:Ljava/util/ArrayDeque;

    .line 64
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzn:Ljava/util/ArrayDeque;

    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzri;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzu:I

    .line 66
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzri;->zzb:I

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzu:I

    .line 67
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzri;->zza:J

    add-long/2addr v3, v12

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzE:[Lcom/google/android/gms/internal/ads/zzox;

    .line 68
    array-length v6, v5

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v6, :cond_19

    aget-object v14, v5, v8

    const/16 v17, 0x1

    .line 69
    iget v9, v1, Lcom/google/android/gms/internal/ads/zzri;->zzb:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzu:I

    const/16 v20, 0x0

    move-wide v15, v3

    move/from16 v18, v9

    move/from16 v19, v10

    invoke-interface/range {v14 .. v20}, Lcom/google/android/gms/internal/ads/zzox;->zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 70
    :cond_1a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzrj;->zzi()Z

    move-result v1

    if-nez v1, :cond_1b

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzy:Lcom/google/android/gms/internal/ads/zzrj;

    :cond_1b
    const/4 v1, 0x3

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzo:I

    const/4 v1, 0x0

    :goto_e
    return v1

    .line 71
    :cond_1c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zze:Landroid/util/SparseArray;

    .line 72
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move-object v6, v7

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v2, :cond_1e

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzrk;->zze:Landroid/util/SparseArray;

    .line 73
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzrj;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    iget-boolean v9, v8, Lcom/google/android/gms/internal/ads/zzrw;->zzp:Z

    if-eqz v9, :cond_1d

    iget-wide v8, v8, Lcom/google/android/gms/internal/ads/zzrw;->zzc:J

    cmp-long v10, v8, v3

    if-gez v10, :cond_1d

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zze:Landroid/util/SparseArray;

    .line 74
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/internal/ads/zzrj;

    move-wide v3, v8

    :cond_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_1e
    if-nez v6, :cond_1f

    const/4 v2, 0x3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzo:I

    goto/16 :goto_0

    :cond_1f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v8

    sub-long/2addr v3, v8

    long-to-int v2, v3

    if-ltz v2, :cond_20

    .line 75
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v4, 0x0

    .line 76
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzrw;->zzo:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzrw;->zzo:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v6

    .line 77
    invoke-virtual {v3, v5, v4, v6, v4}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzrw;->zzo:Lcom/google/android/gms/internal/ads/zzamf;

    .line 78
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iput-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzrw;->zzp:Z

    goto/16 :goto_0

    :cond_20
    const-string v1, "Offset to encryption data was negative."

    .line 79
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v1

    throw v1

    .line 80
    :cond_21
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzq:J

    long-to-int v2, v8

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzr:I

    sub-int/2addr v2, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzs:Lcom/google/android/gms/internal/ads/zzamf;

    if-eqz v5, :cond_2c

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v8

    move-object v9, v1

    check-cast v9, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v10, 0x0

    .line 81
    invoke-virtual {v9, v8, v6, v2, v10}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    new-instance v2, Lcom/google/android/gms/internal/ads/zzqw;

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzp:I

    .line 82
    invoke-direct {v2, v8, v5}, Lcom/google/android/gms/internal/ads/zzqw;-><init>(ILcom/google/android/gms/internal/ads/zzamf;)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v8

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzm:Ljava/util/ArrayDeque;

    .line 83
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_22

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzm:Ljava/util/ArrayDeque;

    .line 84
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzqv;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzqv;->zza(Lcom/google/android/gms/internal/ads/zzqw;)V

    goto/16 :goto_16

    .line 85
    :cond_22
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzqx;->zzd:I

    if-ne v5, v4, :cond_26

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 86
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 87
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v3

    const/4 v4, 0x4

    .line 88
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 89
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzqx;->zze(I)I

    move-result v3

    if-nez v3, :cond_23

    .line 90
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v10

    .line 91
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v12

    goto :goto_10

    .line 92
    :cond_23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzD()J

    move-result-wide v10

    .line 93
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzD()J

    move-result-wide v12

    :goto_10
    add-long/2addr v12, v8

    move-wide v8, v10

    move-wide/from16 v19, v12

    const-wide/32 v12, 0xf4240

    move-wide v10, v8

    move-wide v14, v4

    .line 94
    invoke-static/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v21

    const/4 v3, 0x2

    .line 95
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 96
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v3

    new-array v6, v3, [I

    new-array v14, v3, [J

    new-array v15, v3, [J

    new-array v12, v3, [J

    move-wide/from16 v10, v21

    const/4 v13, 0x0

    :goto_11
    if-ge v13, v3, :cond_25

    .line 97
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v17

    const/high16 v23, -0x80000000

    and-int v23, v17, v23

    if-nez v23, :cond_24

    .line 98
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v23

    const v25, 0x7fffffff

    and-int v17, v17, v25

    .line 99
    aput v17, v6, v13

    .line 100
    aput-wide v19, v14, v13

    .line 101
    aput-wide v10, v12, v13

    add-long v8, v8, v23

    const-wide/32 v23, 0xf4240

    move-wide v10, v8

    move-object v7, v12

    move/from16 v25, v13

    move-wide/from16 v12, v23

    move/from16 p2, v3

    move-wide/from16 v23, v8

    move-object v3, v14

    move-object v8, v15

    move-wide v14, v4

    .line 102
    invoke-static/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v10

    .line 103
    aget-wide v12, v7, v25

    sub-long v12, v10, v12

    aput-wide v12, v8, v25

    const/4 v9, 0x4

    .line 104
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 105
    aget v12, v6, v25

    int-to-long v12, v12

    add-long v19, v19, v12

    add-int/lit8 v13, v25, 0x1

    move-object v14, v3

    move-object v12, v7

    move-object v15, v8

    move-wide/from16 v8, v23

    const/4 v7, 0x0

    move/from16 v3, p2

    goto :goto_11

    :cond_24
    const-string v1, "Unhandled indirect reference"

    const/4 v2, 0x0

    .line 106
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v1

    throw v1

    :cond_25
    move-object v7, v12

    move-object v3, v14

    move-object v8, v15

    .line 107
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/ads/zznn;

    invoke-direct {v4, v6, v3, v8, v7}, Lcom/google/android/gms/internal/ads/zznn;-><init>([I[J[J[J)V

    .line 108
    invoke-static {v2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 109
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzx:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzD:Lcom/google/android/gms/internal/ads/zznx;

    .line 110
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzot;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zznx;->zzD(Lcom/google/android/gms/internal/ads/zzot;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzG:Z

    goto/16 :goto_16

    :cond_26
    if-ne v5, v3, :cond_2d

    .line 111
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzE:[Lcom/google/android/gms/internal/ads/zzox;

    .line 112
    array-length v3, v3

    if-eqz v3, :cond_2d

    .line 113
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzqx;->zze(I)I

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_28

    const/4 v6, 0x1

    if-eq v3, v6, :cond_27

    goto/16 :goto_16

    .line 115
    :cond_27
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v13

    .line 116
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzD()J

    move-result-wide v7

    const-wide/32 v9, 0xf4240

    move-wide v11, v13

    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v15

    .line 117
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v6

    .line 118
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v8

    const/4 v3, 0x0

    .line 119
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzG(C)Ljava/lang/String;

    move-result-object v10

    .line 120
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzG(C)Ljava/lang/String;

    move-result-object v11

    .line 122
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v28, v6

    move-wide/from16 v30, v8

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-wide/from16 v18, v15

    move-wide v8, v4

    goto :goto_13

    :cond_28
    const/4 v3, 0x0

    .line 123
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzG(C)Ljava/lang/String;

    move-result-object v10

    .line 124
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzG(C)Ljava/lang/String;

    move-result-object v11

    .line 126
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v6

    .line 128
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v12

    const-wide/32 v14, 0xf4240

    move-wide/from16 v16, v6

    invoke-static/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v8

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzx:J

    cmp-long v3, v12, v4

    if-eqz v3, :cond_29

    add-long/2addr v12, v8

    move-wide/from16 v18, v12

    goto :goto_12

    :cond_29
    move-wide/from16 v18, v4

    .line 129
    :goto_12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    move-wide/from16 v16, v6

    invoke-static/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v6

    .line 130
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v12

    move-wide/from16 v28, v6

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-wide/from16 v30, v12

    :goto_13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v3

    .line 131
    new-array v3, v3, [B

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v6

    const/4 v7, 0x0

    .line 132
    invoke-virtual {v2, v3, v7, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 133
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaiz;

    move-object/from16 v25, v2

    move-object/from16 v32, v3

    invoke-direct/range {v25 .. v32}, Lcom/google/android/gms/internal/ads/zzaiz;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzamf;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzk:Lcom/google/android/gms/internal/ads/zzaja;

    .line 134
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzaja;->zza(Lcom/google/android/gms/internal/ads/zzaiz;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzamf;-><init>([B)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v2

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzE:[Lcom/google/android/gms/internal/ads/zzox;

    .line 135
    array-length v7, v6

    const/4 v10, 0x0

    :goto_14
    if-ge v10, v7, :cond_2a

    aget-object v11, v6, v10

    const/4 v12, 0x0

    .line 136
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 137
    invoke-interface {v11, v3, v2}, Lcom/google/android/gms/internal/ads/zzox;->zzy(Lcom/google/android/gms/internal/ads/zzamf;I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    :cond_2a
    cmp-long v3, v18, v4

    if-nez v3, :cond_2b

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzn:Ljava/util/ArrayDeque;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzri;

    .line 138
    invoke-direct {v4, v8, v9, v2}, Lcom/google/android/gms/internal/ads/zzri;-><init>(JI)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzu:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzu:I

    goto :goto_16

    :cond_2b
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzE:[Lcom/google/android/gms/internal/ads/zzox;

    .line 139
    array-length v4, v3

    const/4 v9, 0x0

    :goto_15
    if-ge v9, v4, :cond_2d

    aget-object v10, v3, v9

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v11, v18

    move v14, v2

    .line 140
    invoke-interface/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzox;->zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    .line 141
    :cond_2c
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v5, 0x0

    .line 142
    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    .line 143
    :cond_2d
    :goto_16
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v2

    .line 144
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzrk;->zzf(J)V

    goto/16 :goto_0

    :cond_2e
    move v5, v9

    .line 145
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzr:I

    if-nez v2, :cond_30

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzl:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v2

    const/4 v7, 0x1

    .line 146
    invoke-interface {v1, v2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zznv;->zza([BIIZ)Z

    move-result v2

    if-nez v2, :cond_2f

    const/4 v1, -0x1

    return v1

    :cond_2f
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzr:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzl:Lcom/google/android/gms/internal/ads/zzamf;

    .line 147
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzl:Lcom/google/android/gms/internal/ads/zzamf;

    .line 148
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzq:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzl:Lcom/google/android/gms/internal/ads/zzamf;

    .line 149
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzp:I

    :cond_30
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzq:J

    const-wide/16 v9, 0x1

    cmp-long v2, v7, v9

    if-nez v2, :cond_31

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzl:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v2

    move-object v5, v1

    check-cast v5, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v7, 0x0

    .line 150
    invoke-virtual {v5, v2, v6, v6, v7}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzr:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzr:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzl:Lcom/google/android/gms/internal/ads/zzamf;

    .line 151
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzD()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzq:J

    goto :goto_17

    :cond_31
    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-nez v2, :cond_33

    .line 152
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzo()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v2, v7, v9

    if-nez v2, :cond_32

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzm:Ljava/util/ArrayDeque;

    .line 153
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzm:Ljava/util/ArrayDeque;

    .line 154
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzqv;

    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/zzqv;->zza:J

    :cond_32
    cmp-long v2, v7, v9

    if-eqz v2, :cond_33

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v9

    sub-long/2addr v7, v9

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzr:I

    int-to-long v9, v2

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzq:J

    .line 155
    :cond_33
    :goto_17
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzq:J

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzr:I

    int-to-long v9, v2

    cmp-long v2, v7, v9

    if-ltz v2, :cond_40

    .line 156
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v7

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzr:I

    int-to-long v9, v2

    sub-long/2addr v7, v9

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzp:I

    const v5, 0x6d646174

    const v9, 0x6d6f6f66

    if-eq v2, v9, :cond_34

    if-ne v2, v5, :cond_35

    :cond_34
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzG:Z

    if-nez v2, :cond_35

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzD:Lcom/google/android/gms/internal/ads/zznx;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzos;

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzw:J

    .line 157
    invoke-direct {v10, v11, v12, v7, v8}, Lcom/google/android/gms/internal/ads/zzos;-><init>(JJ)V

    invoke-interface {v2, v10}, Lcom/google/android/gms/internal/ads/zznx;->zzD(Lcom/google/android/gms/internal/ads/zzot;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzG:Z

    :cond_35
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzp:I

    if-ne v2, v9, :cond_36

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zze:Landroid/util/SparseArray;

    .line 158
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_18
    if-ge v10, v2, :cond_36

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzrk;->zze:Landroid/util/SparseArray;

    .line 159
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzrj;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    iput-wide v7, v11, Lcom/google/android/gms/internal/ads/zzrw;->zzc:J

    iput-wide v7, v11, Lcom/google/android/gms/internal/ads/zzrw;->zzb:J

    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    :cond_36
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzp:I

    if-ne v2, v5, :cond_37

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzy:Lcom/google/android/gms/internal/ads/zzrj;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzq:J

    add-long/2addr v7, v2

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzt:J

    const/4 v2, 0x2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzo:I

    goto/16 :goto_0

    :cond_37
    const v5, 0x6d6f6f76

    if-eq v2, v5, :cond_3e

    const v5, 0x7472616b

    if-eq v2, v5, :cond_3e

    const v5, 0x6d646961

    if-eq v2, v5, :cond_3e

    const v5, 0x6d696e66

    if-eq v2, v5, :cond_3e

    const v5, 0x7374626c

    if-eq v2, v5, :cond_3e

    if-eq v2, v9, :cond_3e

    const v5, 0x74726166

    if-eq v2, v5, :cond_3e

    const v5, 0x6d766578

    if-eq v2, v5, :cond_3e

    const v5, 0x65647473

    if-ne v2, v5, :cond_38

    goto/16 :goto_1a

    :cond_38
    const v5, 0x68646c72    # 4.3148E24f

    const-wide/32 v7, 0x7fffffff

    if-eq v2, v5, :cond_3b

    const v5, 0x6d646864

    if-eq v2, v5, :cond_3b

    const v5, 0x6d766864

    if-eq v2, v5, :cond_3b

    if-eq v2, v4, :cond_3b

    const v4, 0x73747364

    if-eq v2, v4, :cond_3b

    const v4, 0x73747473

    if-eq v2, v4, :cond_3b

    const v4, 0x63747473

    if-eq v2, v4, :cond_3b

    const v4, 0x73747363

    if-eq v2, v4, :cond_3b

    const v4, 0x7374737a

    if-eq v2, v4, :cond_3b

    const v4, 0x73747a32

    if-eq v2, v4, :cond_3b

    const v4, 0x7374636f

    if-eq v2, v4, :cond_3b

    const v4, 0x636f3634

    if-eq v2, v4, :cond_3b

    const v4, 0x73747373

    if-eq v2, v4, :cond_3b

    const v4, 0x74666474

    if-eq v2, v4, :cond_3b

    const v4, 0x74666864

    if-eq v2, v4, :cond_3b

    const v4, 0x746b6864

    if-eq v2, v4, :cond_3b

    const v4, 0x74726578

    if-eq v2, v4, :cond_3b

    const v4, 0x7472756e

    if-eq v2, v4, :cond_3b

    const v4, 0x70737368    # 3.013775E29f

    if-eq v2, v4, :cond_3b

    const v4, 0x7361697a

    if-eq v2, v4, :cond_3b

    const v4, 0x7361696f

    if-eq v2, v4, :cond_3b

    const v4, 0x73656e63

    if-eq v2, v4, :cond_3b

    const v4, 0x75756964

    if-eq v2, v4, :cond_3b

    const v4, 0x73626770

    if-eq v2, v4, :cond_3b

    const v4, 0x73677064

    if-eq v2, v4, :cond_3b

    const v4, 0x656c7374

    if-eq v2, v4, :cond_3b

    const v4, 0x6d656864

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_39

    goto :goto_19

    .line 160
    :cond_39
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzq:J

    cmp-long v2, v2, v7

    if-gtz v2, :cond_3a

    const/4 v2, 0x0

    .line 161
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzs:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v2, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzo:I

    goto/16 :goto_0

    :cond_3a
    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaha;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v1

    throw v1

    .line 162
    :cond_3b
    :goto_19
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzr:I

    if-ne v2, v6, :cond_3d

    .line 163
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzq:J

    cmp-long v4, v2, v7

    if-gtz v4, :cond_3c

    .line 164
    new-instance v4, Lcom/google/android/gms/internal/ads/zzamf;

    long-to-int v2, v2

    .line 165
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzl:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v3

    const/4 v5, 0x0

    .line 166
    invoke-static {v2, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzs:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v2, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzo:I

    goto/16 :goto_0

    :cond_3c
    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    .line 167
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaha;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v1

    throw v1

    :cond_3d
    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    .line 168
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaha;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v1

    throw v1

    .line 169
    :cond_3e
    :goto_1a
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzq:J

    add-long/2addr v2, v4

    const-wide/16 v4, -0x8

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzm:Ljava/util/ArrayDeque;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzqv;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzp:I

    .line 170
    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/gms/internal/ads/zzqv;-><init>(IJ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzq:J

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzrk;->zzr:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_3f

    .line 171
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzrk;->zzf(J)V

    goto/16 :goto_0

    .line 172
    :cond_3f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrk;->zze()V

    goto/16 :goto_0

    :cond_40
    const-string v1, "Atom size less than header length (unsupported)."

    .line 173
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaha;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v1

    throw v1
.end method

.method public final zzd(JJ)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zze:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zze:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzrj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzrj;->zzd()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzn:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzu:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzv:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzm:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrk;->zze()V

    return-void
.end method
