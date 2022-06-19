.class public final Lcom/google/android/gms/internal/vision/zzfo;
.super Lcom/google/android/gms/internal/vision/zzfr;
.source "SourceFile"


# instance fields
.field private final zzsb:I

.field private final zzsc:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzfr;-><init>([B)V

    add-int v0, p2, p3

    .line 2
    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/vision/zzfh;->zzc(III)I

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/vision/zzfo;->zzsb:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/vision/zzfo;->zzsc:I

    return-void
.end method


# virtual methods
.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfo;->zzsc:I

    return v0
.end method

.method public final zza([BIII)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/vision/zzfr;->zzse:[B

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfo;->zzeu()I

    move-result p3

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final zzan(I)B
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfo;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int v1, v0, v1

    or-int/2addr v1, p1

    if-gez v1, :cond_1

    if-gez p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x16

    const-string v2, "Index < 0: "

    invoke-static {v1, v2, p1}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v2, 0x28

    const-string v3, "Index > length: "

    const-string v4, ", "

    invoke-static {v2, v3, p1, v4, v0}, Le/d/c/a/a;->N1(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfr;->zzse:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfo;->zzsb:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final zzao(I)B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfr;->zzse:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfo;->zzsb:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final zzeu()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfo;->zzsb:I

    return v0
.end method
