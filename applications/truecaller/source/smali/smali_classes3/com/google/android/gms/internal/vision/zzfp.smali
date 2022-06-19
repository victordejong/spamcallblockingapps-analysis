.class public final Lcom/google/android/gms/internal/vision/zzfp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final buffer:[B

.field private final zzsd:Lcom/google/android/gms/internal/vision/zzga;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzfp;->buffer:[B

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzga;->zze([B)Lcom/google/android/gms/internal/vision/zzga;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzfp;->zzsd:Lcom/google/android/gms/internal/vision/zzga;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/android/gms/internal/vision/zzfk;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzfp;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzev()Lcom/google/android/gms/internal/vision/zzfh;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfp;->zzsd:Lcom/google/android/gms/internal/vision/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzga;->zzfh()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/vision/zzfr;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfp;->buffer:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzfr;-><init>([B)V

    return-object v0
.end method

.method public final zzew()Lcom/google/android/gms/internal/vision/zzga;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfp;->zzsd:Lcom/google/android/gms/internal/vision/zzga;

    return-object v0
.end method
