.class public Lcom/google/android/gms/internal/ads/zzggm;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzghi;

.field private zzb:Z


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggm;->zza:Lcom/google/android/gms/internal/ads/zzghi;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggm;->zza:Lcom/google/android/gms/internal/ads/zzghi;

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzggm;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzggm;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzggm;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzggm;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzggm;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzggm;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzf()Lcom/google/android/gms/internal/ads/zzggm;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzggm;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzggm;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzg()Lcom/google/android/gms/internal/ads/zzggm;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzggm;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzggm;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzh()Lcom/google/android/gms/internal/ads/zzggm;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzggm;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzggm;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzi()Lcom/google/android/gms/internal/ads/zzggl;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzggl;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzggl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzj()Lcom/google/android/gms/internal/ads/zzggm;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzggm;

    const-string v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzggm;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzk()Lcom/google/android/gms/internal/ads/zzggm;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzggm;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzggm;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzl()Lcom/google/android/gms/internal/ads/zzggm;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzggm;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzggm;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzghi;)Lcom/google/android/gms/internal/ads/zzggm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggm;->zza:Lcom/google/android/gms/internal/ads/zzghi;

    return-object p0
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzggm;->zzb:Z

    return-void
.end method

.method public final zzc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzggm;->zzb:Z

    return v0
.end method
