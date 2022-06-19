.class public final Lcom/google/android/gms/internal/mlkit_language_id/zzgk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_language_id/zzgk;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzgo;

.field private final zzc:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/mlkit_language_id/zzgp<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgk;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzgk;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgk;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzfm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzfm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgk;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzgo;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_language_id/zzgk;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgk;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzgk;

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/mlkit_language_id/zzgp<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeq;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgk;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgk;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzgo;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgo;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v1

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeq;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeq;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgk;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    if-eqz p1, :cond_0

    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/mlkit_language_id/zzgp<",
            "TT;>;"
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgk;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object p1

    return-object p1
.end method
