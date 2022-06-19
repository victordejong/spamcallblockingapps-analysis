.class public final Lcom/google/android/gms/internal/vision/zzbi;
.super Lcom/google/android/gms/internal/vision/zzbe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzbe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzgg:Lcom/google/android/gms/internal/vision/zzbh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/zzbk;Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzbh;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lcom/google/android/gms/internal/vision/zzbi;->zzgg:Lcom/google/android/gms/internal/vision/zzbh;

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/vision/zzbe;-><init>(Lcom/google/android/gms/internal/vision/zzbk;Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzbg;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzbi;->zzgg:Lcom/google/android/gms/internal/vision/zzbh;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x3

    .line 3
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/zzbh;->zzb([B)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 5
    :catch_0
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/vision/zzbe;->zzac()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    const/4 p1, 0x0

    return-object p1
.end method
