.class public Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/clearcut/ClearcutLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogEventBuilder"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/google/android/gms/internal/clearcut/zzge$zzv$zzb;

.field public e:Z

.field public final f:Lcom/google/android/gms/internal/clearcut/zzha;

.field public g:Z

.field public final synthetic h:Lcom/google/android/gms/clearcut/ClearcutLogger;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[BLe/m/a/f/c/a;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->h:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget p3, p1, Lcom/google/android/gms/clearcut/ClearcutLogger;->e:I

    .line 3
    iput p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->a:I

    .line 4
    iget-object p3, p1, Lcom/google/android/gms/clearcut/ClearcutLogger;->d:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->b:Ljava/lang/String;

    .line 6
    iget-object p3, p1, Lcom/google/android/gms/clearcut/ClearcutLogger;->f:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->c:Ljava/lang/String;

    .line 8
    iget-object p3, p1, Lcom/google/android/gms/clearcut/ClearcutLogger;->h:Lcom/google/android/gms/internal/clearcut/zzge$zzv$zzb;

    .line 9
    iput-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->d:Lcom/google/android/gms/internal/clearcut/zzge$zzv$zzb;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->e:Z

    new-instance p3, Lcom/google/android/gms/internal/clearcut/zzha;

    invoke-direct {p3}, Lcom/google/android/gms/internal/clearcut/zzha;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->f:Lcom/google/android/gms/internal/clearcut/zzha;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->g:Z

    .line 10
    iget-object v0, p1, Lcom/google/android/gms/clearcut/ClearcutLogger;->f:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->c:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/google/android/gms/clearcut/ClearcutLogger;->a:Landroid/content/Context;

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/zzaa;->zze(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p3, Lcom/google/android/gms/internal/clearcut/zzha;->zzbkc:Z

    .line 14
    iget-object v0, p1, Lcom/google/android/gms/clearcut/ClearcutLogger;->j:Lcom/google/android/gms/common/util/Clock;

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v0

    iput-wide v0, p3, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjf:J

    .line 16
    iget-object p1, p1, Lcom/google/android/gms/clearcut/ClearcutLogger;->j:Lcom/google/android/gms/common/util/Clock;

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p3, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjg:J

    iget-wide v0, p3, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjf:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    iput-wide v0, p3, Lcom/google/android/gms/internal/clearcut/zzha;->zzbju:J

    if-eqz p2, :cond_0

    iput-object p2, p3, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjp:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 11
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->g:Z

    new-instance v0, Lcom/google/android/gms/clearcut/zze;

    new-instance v10, Lcom/google/android/gms/internal/clearcut/zzr;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->h:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/clearcut/ClearcutLogger;->b:Ljava/lang/String;

    .line 2
    iget v3, v1, Lcom/google/android/gms/clearcut/ClearcutLogger;->c:I

    .line 3
    iget v4, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->a:I

    iget-object v5, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->c:Ljava/lang/String;

    const/4 v7, 0x0

    .line 4
    iget-boolean v8, v1, Lcom/google/android/gms/clearcut/ClearcutLogger;->g:Z

    .line 5
    iget-object v9, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->d:Lcom/google/android/gms/internal/clearcut/zzge$zzv$zzb;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/clearcut/zzr;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/clearcut/zzge$zzv$zzb;)V

    iget-object v3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->f:Lcom/google/android/gms/internal/clearcut/zzha;

    const/4 v4, 0x0

    sget-object v1, Lcom/google/android/gms/clearcut/ClearcutLogger;->m:Lcom/google/android/gms/common/api/Api$ClientKey;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->e:Z

    move-object v1, v0

    move-object v2, v10

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/clearcut/zze;-><init>(Lcom/google/android/gms/internal/clearcut/zzr;Lcom/google/android/gms/internal/clearcut/zzha;Lcom/google/android/gms/clearcut/ClearcutLogger$zzb;[I[IZ)V

    iget-object v1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->h:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/clearcut/ClearcutLogger;->l:Lcom/google/android/gms/clearcut/ClearcutLogger$zza;

    .line 7
    invoke-interface {v1, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger$zza;->zza(Lcom/google/android/gms/clearcut/zze;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->h:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/clearcut/ClearcutLogger;->i:Lcom/google/android/gms/clearcut/zzb;

    .line 9
    invoke-interface {v1, v0}, Lcom/google/android/gms/clearcut/zzb;->zzb(Lcom/google/android/gms/clearcut/zze;)Lcom/google/android/gms/common/api/PendingResult;

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->f:Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    const-string v2, "Result must not be null"

    .line 10
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v2, Lcom/google/android/gms/common/api/internal/StatusPendingResult;

    invoke-direct {v2, v1}, Lcom/google/android/gms/common/api/internal/StatusPendingResult;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 12
    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
