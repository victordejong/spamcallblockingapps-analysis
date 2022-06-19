.class public final Lcom/google/android/gms/internal/vision/zzfb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zzcm:Lcom/google/android/gms/internal/vision/zzgd;

.field public zzro:I

.field public zzrp:J

.field public zzrq:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgd;->zzfl()Lcom/google/android/gms/internal/vision/zzgd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzfb;->zzcm:Lcom/google/android/gms/internal/vision/zzgd;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/vision/zzgd;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzfb;->zzcm:Lcom/google/android/gms/internal/vision/zzgd;

    return-void
.end method
