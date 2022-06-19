.class public final Lcom/google/android/gms/internal/mlkit_translate/zzey;
.super Lcom/google/android/gms/internal/mlkit_translate/zzea;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_translate/zzea<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzea;-><init>()V

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/mlkit_translate/zzfy;)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzga;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzga;->zzi:Lcom/google/android/gms/internal/mlkit_translate/zzga;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzk()V

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzeb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_translate/zzeb;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzfy;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzey;->zzb(Lcom/google/android/gms/internal/mlkit_translate/zzfy;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzgd;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    check-cast p2, Ljava/math/BigInteger;

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    return-void
.end method
