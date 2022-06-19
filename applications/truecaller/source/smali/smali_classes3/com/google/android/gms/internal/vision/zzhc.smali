.class public Lcom/google/android/gms/internal/vision/zzhc;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field private zzxh:Lcom/google/android/gms/internal/vision/zzic;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzhc;->zzxh:Lcom/google/android/gms/internal/vision/zzic;

    return-void
.end method

.method public static zzgm()Lcom/google/android/gms/internal/vision/zzhc;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzhc;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzhc;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzgn()Lcom/google/android/gms/internal/vision/zzhc;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzhc;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzhc;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzgo()Lcom/google/android/gms/internal/vision/zzhc;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzhc;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzhc;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzgp()Lcom/google/android/gms/internal/vision/zzhc;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzhc;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzhc;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzgq()Lcom/google/android/gms/internal/vision/zzhc;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzhc;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzhc;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzgr()Lcom/google/android/gms/internal/vision/zzhb;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzhb;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzhb;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzgs()Lcom/google/android/gms/internal/vision/zzhc;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzhc;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzhc;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzgt()Lcom/google/android/gms/internal/vision/zzhc;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzhc;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzhc;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final zzg(Lcom/google/android/gms/internal/vision/zzic;)Lcom/google/android/gms/internal/vision/zzhc;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzhc;->zzxh:Lcom/google/android/gms/internal/vision/zzic;

    return-object p0
.end method
