.class public Lcom/google/android/gms/internal/vision/zzgd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzgd$zza;
    }
.end annotation


# static fields
.field private static volatile zzsv:Z = false

.field private static zzsw:Z = true

.field private static volatile zzsx:Lcom/google/android/gms/internal/vision/zzgd;

.field private static volatile zzsy:Lcom/google/android/gms/internal/vision/zzgd;

.field private static final zzsz:Lcom/google/android/gms/internal/vision/zzgd;


# instance fields
.field private final zzta:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/vision/zzgd$zza;",
            "Lcom/google/android/gms/internal/vision/zzgs$zzg<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgd;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzgd;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgd;->zzsz:Lcom/google/android/gms/internal/vision/zzgd;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzgd;->zzta:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzgd;->zzta:Ljava/util/Map;

    return-void
.end method

.method public static zzfk()Lcom/google/android/gms/internal/vision/zzgd;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzgd;-><init>()V

    return-object v0
.end method

.method public static zzfl()Lcom/google/android/gms/internal/vision/zzgd;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzgd;->zzsx:Lcom/google/android/gms/internal/vision/zzgd;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lcom/google/android/gms/internal/vision/zzgd;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/vision/zzgd;->zzsx:Lcom/google/android/gms/internal/vision/zzgd;

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/vision/zzgd;->zzsz:Lcom/google/android/gms/internal/vision/zzgd;

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgd;->zzsx:Lcom/google/android/gms/internal/vision/zzgd;

    .line 5
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static zzfm()Lcom/google/android/gms/internal/vision/zzgd;
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/vision/zzgd;

    sget-object v1, Lcom/google/android/gms/internal/vision/zzgd;->zzsy:Lcom/google/android/gms/internal/vision/zzgd;

    if-nez v1, :cond_1

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/vision/zzgd;->zzsy:Lcom/google/android/gms/internal/vision/zzgd;

    if-nez v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzgr;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzgd;

    move-result-object v1

    .line 5
    sput-object v1, Lcom/google/android/gms/internal/vision/zzgd;->zzsy:Lcom/google/android/gms/internal/vision/zzgd;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/vision/zzic;I)Lcom/google/android/gms/internal/vision/zzgs$zzg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/vision/zzic;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/vision/zzgs$zzg<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgd;->zzta:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/vision/zzgd$zza;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/vision/zzgd$zza;-><init>(Ljava/lang/Object;I)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzgs$zzg;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzgs$zzg;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzgs$zzg<",
            "**>;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgd;->zzta:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/vision/zzgd$zza;

    .line 4
    iget-object v2, p1, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzwz:Lcom/google/android/gms/internal/vision/zzic;

    .line 5
    iget-object v3, p1, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 6
    iget v3, v3, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 7
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgd$zza;-><init>(Ljava/lang/Object;I)V

    .line 8
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
