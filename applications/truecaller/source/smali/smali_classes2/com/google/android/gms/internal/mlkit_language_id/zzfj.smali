.class public abstract Lcom/google/android/gms/internal/mlkit_language_id/zzfj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_language_id/zzfj;

.field private static final zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzfj;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzfl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzfl;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzfi;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzfj;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzfj;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzfk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzfk;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzfi;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzfj;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzfj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzfi;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzfj;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_language_id/zzfj;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzfj;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzfj;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzfj;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzfj;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzfj;

    return-object v0
.end method


# virtual methods
.method public abstract zza(Ljava/lang/Object;J)V
.end method

.method public abstract zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
