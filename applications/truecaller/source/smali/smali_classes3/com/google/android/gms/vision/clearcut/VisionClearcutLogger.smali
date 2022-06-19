.class public Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final zzbv:Lcom/google/android/gms/clearcut/ClearcutLogger;

.field private zzbw:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zzbw:Z

    .line 3
    new-instance v0, Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/zze;->zzb(Landroid/content/Context;)Lcom/google/android/gms/clearcut/zzb;

    move-result-object v6

    .line 5
    sget-object v7, Lcom/google/android/gms/common/util/DefaultClock;->a:Lcom/google/android/gms/common/util/DefaultClock;

    .line 6
    new-instance v8, Lcom/google/android/gms/internal/clearcut/zzp;

    invoke-direct {v8, p1}, Lcom/google/android/gms/internal/clearcut/zzp;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    const-string v3, "VISION"

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/clearcut/ClearcutLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/clearcut/zzb;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/clearcut/ClearcutLogger$zza;)V

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zzbv:Lcom/google/android/gms/clearcut/ClearcutLogger;

    return-void
.end method


# virtual methods
.method public final zzb(ILcom/google/android/gms/internal/vision/zzea$zzo;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/vision/zzet;->toByteArray()[B

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_2

    const/4 v2, 0x3

    if-le p1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zzbw:Z

    if-eqz v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zzbv:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/clearcut/ClearcutLogger;->b([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object p2

    .line 4
    iget-object v0, p2, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->f:Lcom/google/android/gms/internal/clearcut/zzha;

    iput p1, v0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbji:I

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->a()V

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzea$zzo;->zzdi()Lcom/google/android/gms/internal/vision/zzea$zzo$zza;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgd;->zzfm()Lcom/google/android/gms/internal/vision/zzgd;

    move-result-object v2

    .line 8
    array-length v3, p2

    invoke-virtual {p1, p2, v1, v3, v2}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zza([BIILcom/google/android/gms/internal/vision/zzgd;)Lcom/google/android/gms/internal/vision/zzew;

    const-string p2, "Would have logged:\n%s"

    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/google/android/gms/vision/L;->e(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Parsing error"

    new-array v0, v1, [Ljava/lang/Object;

    .line 10
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/vision/L;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzds;->zza(Ljava/lang/Throwable;)V

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Failed to log"

    .line 12
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/vision/L;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_2
    :goto_0
    new-array p2, v0, [Ljava/lang/Object;

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "Illegal event code: %d"

    invoke-static {p1, p2}, Lcom/google/android/gms/vision/L;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
