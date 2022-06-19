.class public final Lcom/google/android/gms/internal/mlkit_translate/zzfc;
.super Lcom/google/android/gms/internal/mlkit_translate/zzea;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_translate/zzea<",
        "Ljava/net/URL;",
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


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzfy;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzga;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzga;->zzi:Lcom/google/android/gms/internal/mlkit_translate/zzga;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzk()V

    return-object v2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v2

    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzgd;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    check-cast p2, Ljava/net/URL;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    return-void
.end method
