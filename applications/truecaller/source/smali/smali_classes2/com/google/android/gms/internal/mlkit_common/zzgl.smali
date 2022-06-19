.class public abstract Lcom/google/android/gms/internal/mlkit_common/zzgl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_common/zzgl;

.field private static final zzb:Lcom/google/android/gms/internal/mlkit_common/zzgl;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzgn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzgn;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzgk;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgl;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgl;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzgm;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzgm;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzgk;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgl;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzgl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzgk;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzgl;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_common/zzgl;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgl;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgl;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/mlkit_common/zzgl;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgl;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzgl;

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
