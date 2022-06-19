.class public final Lcom/google/android/gms/internal/mlkit_language_id/zzgg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_language_id/zzge;

.field private static final zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzge;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzgg;->zzc()Lcom/google/android/gms/internal/mlkit_language_id/zzge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgg;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzge;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgg;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzge;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_language_id/zzge;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgg;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzge;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzge;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgg;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzge;

    return-object v0
.end method

.method private static zzc()Lcom/google/android/gms/internal/mlkit_language_id/zzge;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.NewInstanceSchemaFull"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzge;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
