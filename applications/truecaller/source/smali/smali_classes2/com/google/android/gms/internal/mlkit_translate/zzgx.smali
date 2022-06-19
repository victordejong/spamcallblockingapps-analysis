.class public final Lcom/google/android/gms/internal/mlkit_translate/zzgx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_translate/zzgx$zza;
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
.field private final zzc:Lcom/google/android/gms/internal/mlkit_translate/zzgs;

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzgx;->zzb:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 2
    const-class v0, Lcom/google/android/gms/internal/mlkit_translate/zzgx$zza;

    .line 3
    invoke-static {v0}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/mlkit_translate/zzgs;

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

    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzgw;->zza:Le/m/d/m/r;

    .line 8
    invoke-virtual {v0, v1}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 9
    invoke-virtual {v0}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzgx;->zza:Le/m/d/m/o;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzgs;Le/m/h/a/d/l;Le/m/h/a/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzgx;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzgs;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzgx;->zzd:Le/m/h/a/c/b;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzgx;->zze:Le/m/h/a/d/l;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzgs;Le/m/h/a/d/l;Le/m/h/a/c/b;Lcom/google/android/gms/internal/mlkit_translate/zzgy;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_translate/zzgx;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzgs;Le/m/h/a/d/l;Le/m/h/a/c/b;)V

    return-void
.end method

.method public static final synthetic zza(Le/m/d/m/p;)Lcom/google/android/gms/internal/mlkit_translate/zzgx$zza;
    .locals 3

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzgx$zza;

    const-class v1, Lcom/google/android/gms/internal/mlkit_translate/zzgs;

    .line 33
    invoke-interface {p0, v1}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_translate/zzgs;

    const-class v2, Le/m/h/a/d/l;

    invoke-interface {p0, v2}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/m/h/a/d/l;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzgx$zza;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzgs;Le/m/h/a/d/l;Lcom/google/android/gms/internal/mlkit_translate/zzgy;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/mlkit_translate/zzbt;Ljava/lang/String;ZZLe/m/h/a/d/k;Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzak$zza;I)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzgx;->zzd:Le/m/h/a/c/b;

    .line 2
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p5}, Lcom/google/android/gms/internal/mlkit_translate/zzha;->zza(Le/m/h/a/d/k;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zzb;

    move-result-object p4

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzam;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzam$zza;

    move-result-object p5

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zza;

    move-result-object v0

    .line 6
    invoke-virtual {p3}, Le/m/h/a/c/b;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zza;

    move-result-object p3

    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zzc;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zzc;

    .line 7
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zza;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zzc;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zza;

    move-result-object p3

    const-string v0, ""

    .line 8
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zza;

    move-result-object p3

    .line 9
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zza;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zzb;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zza;

    move-result-object p3

    .line 10
    invoke-virtual {p5, p3}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzam$zza;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zza;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzam$zza;

    move-result-object p3

    .line 11
    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;->zzh()Lcom/google/android/gms/internal/mlkit_translate/zzlk;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/mlkit_translate/zzkc;

    check-cast p3, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzam;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzak;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzak$zzb;

    move-result-object p4

    .line 13
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzak$zzb;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbt;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzak$zzb;

    move-result-object p1

    .line 14
    invoke-virtual {p1, p6}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzak$zzb;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzak$zza;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzak$zzb;

    move-result-object p1

    int-to-long p4, p7

    .line 15
    invoke-virtual {p1, p4, p5}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzak$zzb;->zzb(J)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzak$zzb;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzak$zzb;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzam;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzak$zzb;

    move-result-object p1

    .line 17
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzgx;->zze:Le/m/h/a/d/l;

    iget-object p4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzgx;->zzd:Le/m/h/a/c/b;

    invoke-virtual {p3, p4}, Le/m/h/a/d/l;->e(Le/m/h/a/c/b;)J

    move-result-wide p3

    const-wide/16 p5, 0x0

    cmp-long p7, p3, p5

    if-nez p7, :cond_0

    .line 18
    sget-object p3, Lcom/google/android/gms/internal/mlkit_translate/zzgx;->zzb:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p4, "ModelDownloadLogger"

    const-string p5, "Model downloaded without its beginning time recorded."

    invoke-virtual {p3, p4, p5}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object p7, p0, Lcom/google/android/gms/internal/mlkit_translate/zzgx;->zze:Le/m/h/a/d/l;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzgx;->zzd:Le/m/h/a/c/b;

    invoke-virtual {p7, v0}, Le/m/h/a/d/l;->f(Le/m/h/a/c/b;)J

    move-result-wide v0

    cmp-long p5, v0, p5

    if-nez p5, :cond_1

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 21
    iget-object p5, p0, Lcom/google/android/gms/internal/mlkit_translate/zzgx;->zze:Le/m/h/a/d/l;

    iget-object p6, p0, Lcom/google/android/gms/internal/mlkit_translate/zzgx;->zzd:Le/m/h/a/c/b;

    invoke-virtual {p5, p6, v0, v1}, Le/m/h/a/d/l;->h(Le/m/h/a/c/b;J)V

    :cond_1
    sub-long/2addr v0, p3

    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzak$zzb;->zza(J)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzak$zzb;

    .line 23
    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzgx;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzgs;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad;->zzb()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;

    move-result-object p4

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbh;->zzb()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbh$zza;

    move-result-object p5

    invoke-virtual {p5, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbh$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbh$zza;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbh$zza;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;

    move-result-object p2

    .line 26
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzak$zzb;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    .line 27
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzgs;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    return-void
.end method


# virtual methods
.method public final zza(IZLe/m/h/a/d/k;I)V
    .locals 8

    .line 28
    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzbt;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzbt;

    .line 29
    sget-object v6, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzak$zza;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzak$zza;

    const-string v2, "NA"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v5, p3

    .line 30
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/mlkit_translate/zzgx;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbt;Ljava/lang/String;ZZLe/m/h/a/d/k;Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzak$zza;I)V

    return-void
.end method

.method public final zza(ZLe/m/h/a/d/k;I)V
    .locals 8

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzbt;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzbt;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzak$zza;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzak$zza;

    const-string v2, "NA"

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/mlkit_translate/zzgx;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbt;Ljava/lang/String;ZZLe/m/h/a/d/k;Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzak$zza;I)V

    return-void
.end method
