.class public final Lcom/google/android/libraries/places/internal/zzrj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzrs;

.field private final zzb:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzrj;->zzb:[B

    .line 3
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzrs;->zza([B)Lcom/google/android/libraries/places/internal/zzrs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzrj;->zza:Lcom/google/android/libraries/places/internal/zzrs;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/android/libraries/places/internal/zzre;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzrj;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/libraries/places/internal/zzrb;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzrj;->zza:Lcom/google/android/libraries/places/internal/zzrs;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzrs;->zzb()V

    .line 2
    new-instance v0, Lcom/google/android/libraries/places/internal/zzrl;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzrj;->zzb:[B

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzrl;-><init>([B)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zzrs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzrj;->zza:Lcom/google/android/libraries/places/internal/zzrs;

    return-object v0
.end method
