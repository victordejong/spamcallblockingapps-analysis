.class public Lcom/google/android/gms/internal/ads/zzget;
.super Lcom/google/android/gms/internal/ads/zzges;
.source "SourceFile"


# instance fields
.field public final zza:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzges;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzgex;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzc()I

    move-result v1

    .line 2
    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgex;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgex;->zzc()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzc()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 3
    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzget;

    if-eqz v0, :cond_5

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzget;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgex;->zzC()I

    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzC()I

    move-result v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzc()I

    move-result v0

    .line 6
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzget;->zzh(Lcom/google/android/gms/internal/ads/zzgex;II)Z

    move-result p1

    return p1

    .line 7
    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public zza(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public zzb(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public zzc()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:[B

    array-length v0, v0

    return v0
.end method

.method public zzd()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zze([BIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzgex;II)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzc()I

    move-result v0

    if-gt p3, v0, :cond_4

    add-int v0, p2, p3

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzc()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 3
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzget;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzget;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:[B

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzget;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzd()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzd()I

    move-result p3

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzget;->zzd()I

    move-result p1

    add-int/2addr p1, p2

    :goto_0
    if-ge p3, v3, :cond_1

    .line 7
    aget-byte p2, v0, p3

    aget-byte v4, v1, p1

    if-eq p2, v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 8
    :cond_2
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgex;->zzi(II)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {p0, v2, p3}, Lcom/google/android/gms/internal/ads/zzget;->zzi(II)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgex;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzc()I

    move-result p1

    const/16 v1, 0x3b

    const-string v2, "Ran off end of other: "

    const-string v3, ", "

    invoke-static {v1, v2, p2, v3, p3}, Le/d/c/a/a;->z(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzc()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Length too large: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzi(II)Lcom/google/android/gms/internal/ads/zzgex;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzc()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgex;->zzE(III)I

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgex;->zzb:Lcom/google/android/gms/internal/ads/zzgex;

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgeq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzd()I

    move-result v2

    add-int/2addr v2, p1

    .line 2
    invoke-direct {v0, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzgeq;-><init>([BII)V

    return-object v0
.end method

.method public final zzj()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzd()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzc()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzgem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzd()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzc()I

    move-result v2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgfe;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgfe;->zzp([BII)V

    return-void
.end method

.method public final zzl(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzd()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzc()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final zzm()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzd()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzc()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb([BII)Z

    move-result v0

    return v0
.end method

.method public final zzn(III)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzd()I

    move-result v0

    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:[B

    add-int/2addr p3, v0

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzgjd;->zzc(I[BII)I

    move-result p1

    return p1
.end method

.method public final zzo(III)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzd()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzggk;->zzh(I[BII)I

    move-result p1

    return p1
.end method

.method public final zzp()Lcom/google/android/gms/internal/ads/zzgfc;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzd()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzc()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgfc;->zzF([BIIZ)Lcom/google/android/gms/internal/ads/zzgfc;

    move-result-object v0

    return-object v0
.end method
