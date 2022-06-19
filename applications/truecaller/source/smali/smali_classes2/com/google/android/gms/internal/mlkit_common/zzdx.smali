.class public final Lcom/google/android/gms/internal/mlkit_common/zzdx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_common/zzdx$zza;
    }
.end annotation


# static fields
.field public static final zza:Le/m/d/m/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/m/o<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/mlkit_common/zzds;

.field private final zzd:Le/m/h/a/c/b;

.field private final zze:Le/m/h/a/d/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelDownloadLogger"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzb:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 2
    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzdx$zza;

    .line 3
    invoke-static {v0}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzds;

    .line 4
    new-instance v2, Le/m/d/m/x;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 5
    invoke-virtual {v0, v2}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v1, Le/m/h/a/d/l;

    .line 6
    new-instance v2, Le/m/d/m/x;

    invoke-direct {v2, v1, v3, v4}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 7
    invoke-virtual {v0, v2}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdw;->zza:Le/m/d/m/r;

    .line 8
    invoke-virtual {v0, v1}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 9
    invoke-virtual {v0}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zza:Le/m/d/m/o;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzds;Le/m/h/a/d/l;Le/m/h/a/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzds;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzd:Le/m/h/a/c/b;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zze:Le/m/h/a/d/l;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzds;Le/m/h/a/d/l;Le/m/h/a/c/b;Lcom/google/android/gms/internal/mlkit_common/zzdy;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_common/zzdx;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzds;Le/m/h/a/d/l;Le/m/h/a/c/b;)V

    return-void
.end method

.method public static final synthetic zza(Le/m/d/m/p;)Lcom/google/android/gms/internal/mlkit_common/zzdx$zza;
    .locals 3

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzdx$zza;

    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzds;

    .line 40
    invoke-interface {p0, v1}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_common/zzds;

    const-class v2, Le/m/h/a/d/l;

    invoke-interface {p0, v2}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/m/h/a/d/l;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzdx$zza;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzds;Le/m/h/a/d/l;Lcom/google/android/gms/internal/mlkit_common/zzdy;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/mlkit_common/zzbf;Ljava/lang/String;ZZLe/m/h/a/d/k;Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzd:Le/m/h/a/c/b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p5}, Lcom/google/android/gms/internal/mlkit_common/zzea;->zza(Le/m/h/a/d/k;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zzb;

    move-result-object p5

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzam;->zza()Lcom/google/android/gms/internal/mlkit_common/zzav$zzam$zza;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal;->zza()Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;

    move-result-object v2

    .line 6
    invoke-virtual {v0}, Le/m/h/a/c/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zzc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zzc;

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zzc;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;

    move-result-object v0

    const-string v2, ""

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zzb;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;

    move-result-object p5

    .line 10
    invoke-virtual {v1, p5}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzam$zza;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzam$zza;

    move-result-object p5

    .line 11
    invoke-virtual {p5}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzg()Lcom/google/android/gms/internal/mlkit_common/zzhb;

    move-result-object p5

    check-cast p5, Lcom/google/android/gms/internal/mlkit_common/zzfq;

    check-cast p5, Lcom/google/android/gms/internal/mlkit_common/zzav$zzam;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zza()Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;

    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;->zza(Lcom/google/android/gms/internal/mlkit_common/zzbf;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;

    move-result-object p1

    .line 14
    invoke-virtual {p1, p6}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;

    move-result-object p1

    int-to-long p6, p7

    .line 15
    invoke-virtual {p1, p6, p7}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;->zzc(J)Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzam;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;

    move-result-object p1

    const-string p5, "Model downloaded without its beginning time recorded."

    const-string p6, "ModelDownloadLogger"

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_2

    .line 17
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zze:Le/m/h/a/d/l;

    iget-object p7, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzd:Le/m/h/a/c/b;

    invoke-virtual {p3, p7}, Le/m/h/a/d/l;->e(Le/m/h/a/c/b;)J

    move-result-wide v2

    cmp-long p3, v2, v0

    if-nez p3, :cond_0

    .line 18
    sget-object p3, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzb:Lcom/google/android/gms/common/internal/GmsLogger;

    invoke-virtual {p3, p6, p5}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zze:Le/m/h/a/d/l;

    iget-object p7, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzd:Le/m/h/a/c/b;

    invoke-virtual {p3, p7}, Le/m/h/a/d/l;->f(Le/m/h/a/c/b;)J

    move-result-wide v4

    cmp-long p3, v4, v0

    if-nez p3, :cond_1

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 21
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zze:Le/m/h/a/d/l;

    iget-object p7, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzd:Le/m/h/a/c/b;

    invoke-virtual {p3, p7, v4, v5}, Le/m/h/a/d/l;->h(Le/m/h/a/c/b;J)V

    :cond_1
    sub-long/2addr v4, v2

    .line 22
    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;->zza(J)Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;

    :cond_2
    :goto_0
    if-eqz p4, :cond_4

    .line 23
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zze:Le/m/h/a/d/l;

    iget-object p4, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzd:Le/m/h/a/c/b;

    invoke-virtual {p3, p4}, Le/m/h/a/d/l;->e(Le/m/h/a/c/b;)J

    move-result-wide p3

    cmp-long p7, p3, v0

    if-nez p7, :cond_3

    .line 24
    sget-object p3, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzb:Lcom/google/android/gms/common/internal/GmsLogger;

    invoke-virtual {p3, p6, p5}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p5

    sub-long/2addr p5, p3

    .line 26
    invoke-virtual {p1, p5, p6}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;->zzb(J)Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;

    .line 27
    :cond_4
    :goto_1
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzds;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzad;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;

    move-result-object p4

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;

    move-result-object p5

    invoke-virtual {p5, p2}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;

    move-result-object p2

    .line 30
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_common/zzbg;->zza:Lcom/google/android/gms/internal/mlkit_common/zzbg;

    .line 31
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzds;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;Lcom/google/android/gms/internal/mlkit_common/zzbg;)V

    return-void
.end method


# virtual methods
.method public final zza(ILe/m/h/a/d/k;I)V
    .locals 8

    const/4 p1, 0x0

    .line 35
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzeb;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzbf;

    move-result-object v1

    const/4 p1, 0x6

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;

    move-result-object v6

    const-string v2, "NA"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v5, p2

    .line 37
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zza(Lcom/google/android/gms/internal/mlkit_common/zzbf;Ljava/lang/String;ZZLe/m/h/a/d/k;Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;I)V

    return-void
.end method

.method public final zza(IZLe/m/h/a/d/k;I)V
    .locals 8

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzeb;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzbf;

    move-result-object v1

    .line 33
    invoke-static {p4}, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;

    move-result-object v6

    const-string v2, "NA"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v3, p2

    move-object v5, p3

    .line 34
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zza(Lcom/google/android/gms/internal/mlkit_common/zzbf;Ljava/lang/String;ZZLe/m/h/a/d/k;Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;I)V

    return-void
.end method

.method public final zza(ZLe/m/h/a/d/k;I)V
    .locals 8

    .line 38
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzbf;->zzn:Lcom/google/android/gms/internal/mlkit_common/zzbf;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;->zzh:Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;

    const-string v2, "NA"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zza(Lcom/google/android/gms/internal/mlkit_common/zzbf;Ljava/lang/String;ZZLe/m/h/a/d/k;Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;I)V

    return-void
.end method
