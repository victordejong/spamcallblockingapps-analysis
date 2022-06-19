.class public final Lcom/google/android/gms/phenotype/zzi;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/phenotype/zzi;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/phenotype/zzi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public final b:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public final c:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public final d:D
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public final f:[B
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public final g:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public final h:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/phenotype/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/zzi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZDLjava/lang/String;[BII)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p5    # D
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p8    # [B
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p9    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p10    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/phenotype/zzi;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/phenotype/zzi;->b:J

    iput-boolean p4, p0, Lcom/google/android/gms/phenotype/zzi;->c:Z

    iput-wide p5, p0, Lcom/google/android/gms/phenotype/zzi;->d:D

    iput-object p7, p0, Lcom/google/android/gms/phenotype/zzi;->e:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/phenotype/zzi;->f:[B

    iput p9, p0, Lcom/google/android/gms/phenotype/zzi;->g:I

    iput p10, p0, Lcom/google/android/gms/phenotype/zzi;->h:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 7

    check-cast p1, Lcom/google/android/gms/phenotype/zzi;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/zzi;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/phenotype/zzi;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/phenotype/zzi;->g:I

    iget v1, p1, Lcom/google/android/gms/phenotype/zzi;->g:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    if-eqz v1, :cond_3

    return v1

    :cond_3
    if-eq v0, v4, :cond_14

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/phenotype/zzi;->f:[B

    iget-object v1, p1, Lcom/google/android/gms/phenotype/zzi;->f:[B

    if-ne v0, v1, :cond_4

    return v3

    :cond_4
    if-nez v0, :cond_5

    return v2

    :cond_5
    if-nez v1, :cond_6

    return v4

    :cond_6
    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/phenotype/zzi;->f:[B

    array-length v1, v1

    iget-object v5, p1, Lcom/google/android/gms/phenotype/zzi;->f:[B

    array-length v5, v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/phenotype/zzi;->f:[B

    aget-byte v1, v1, v0

    iget-object v5, p1, Lcom/google/android/gms/phenotype/zzi;->f:[B

    aget-byte v5, v5, v0

    sub-int/2addr v1, v5

    if-eqz v1, :cond_7

    return v1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/phenotype/zzi;->f:[B

    array-length v0, v0

    iget-object p1, p1, Lcom/google/android/gms/phenotype/zzi;->f:[B

    array-length p1, p1

    if-ge v0, p1, :cond_9

    goto :goto_2

    :cond_9
    if-ne v0, p1, :cond_a

    move v2, v3

    goto :goto_2

    :cond_a
    move v2, v4

    :goto_2
    return v2

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    iget v0, p0, Lcom/google/android/gms/phenotype/zzi;->g:I

    const/16 v1, 0x1f

    const-string v2, "Invalid enum value: "

    invoke-static {v1, v2, v0}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/phenotype/zzi;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/phenotype/zzi;->e:Ljava/lang/String;

    if-ne v0, p1, :cond_d

    return v3

    :cond_d
    if-nez v0, :cond_e

    return v2

    :cond_e
    if-nez p1, :cond_f

    return v4

    :cond_f
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_10
    iget-wide v0, p0, Lcom/google/android/gms/phenotype/zzi;->d:D

    iget-wide v2, p1, Lcom/google/android/gms/phenotype/zzi;->d:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1

    :cond_11
    iget-boolean v0, p0, Lcom/google/android/gms/phenotype/zzi;->c:Z

    iget-boolean p1, p1, Lcom/google/android/gms/phenotype/zzi;->c:Z

    if-ne v0, p1, :cond_12

    return v3

    :cond_12
    if-eqz v0, :cond_13

    return v4

    :cond_13
    return v2

    :cond_14
    iget-wide v0, p0, Lcom/google/android/gms/phenotype/zzi;->b:J

    iget-wide v5, p1, Lcom/google/android/gms/phenotype/zzi;->b:J

    cmp-long p1, v0, v5

    if-gez p1, :cond_15

    return v2

    :cond_15
    if-nez p1, :cond_16

    return v3

    :cond_16
    return v4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Lcom/google/android/gms/phenotype/zzi;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Lcom/google/android/gms/phenotype/zzi;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/zzi;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/phenotype/zzi;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Ln3/g0/y;->R(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/google/android/gms/phenotype/zzi;->g:I

    iget v2, p1, Lcom/google/android/gms/phenotype/zzi;->g:I

    if-ne v0, v2, :cond_8

    iget v2, p0, Lcom/google/android/gms/phenotype/zzi;->h:I

    iget v3, p1, Lcom/google/android/gms/phenotype/zzi;->h:I

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/phenotype/zzi;->f:[B

    iget-object p1, p1, Lcom/google/android/gms/phenotype/zzi;->f:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    iget v0, p0, Lcom/google/android/gms/phenotype/zzi;->g:I

    const/16 v1, 0x1f

    const-string v2, "Invalid enum value: "

    invoke-static {v1, v2, v0}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/phenotype/zzi;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/phenotype/zzi;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Ln3/g0/y;->R(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    iget-wide v3, p0, Lcom/google/android/gms/phenotype/zzi;->d:D

    iget-wide v5, p1, Lcom/google/android/gms/phenotype/zzi;->d:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v1

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/phenotype/zzi;->c:Z

    iget-boolean p1, p1, Lcom/google/android/gms/phenotype/zzi;->c:Z

    if-ne v0, p1, :cond_6

    return v2

    :cond_6
    return v1

    :cond_7
    iget-wide v3, p0, Lcom/google/android/gms/phenotype/zzi;->b:J

    iget-wide v5, p1, Lcom/google/android/gms/phenotype/zzi;->b:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_8

    return v2

    :cond_8
    :goto_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const-string v0, "Flag("

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/phenotype/zzi;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/gms/phenotype/zzi;->g:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v4, 0x4

    const-string v5, "\'"

    if-eq v2, v4, :cond_2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/phenotype/zzi;->f:[B

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/phenotype/zzi;->f:[B

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v2, p0, Lcom/google/android/gms/phenotype/zzi;->a:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/phenotype/zzi;->g:I

    const/16 v4, 0x1b

    invoke-static {v2, v4}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid type: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/phenotype/zzi;->e:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/phenotype/zzi;->d:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-boolean v2, p0, Lcom/google/android/gms/phenotype/zzi;->c:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    iget-wide v2, p0, Lcom/google/android/gms/phenotype/zzi;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/gms/phenotype/zzi;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/phenotype/zzi;->h:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->v(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/phenotype/zzi;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v0, p0, Lcom/google/android/gms/phenotype/zzi;->b:J

    const v3, 0x80003

    .line 3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/phenotype/zzi;->c:Z

    const v1, 0x40004

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-wide v0, p0, Lcom/google/android/gms/phenotype/zzi;->d:D

    const v3, 0x80005

    .line 9
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    const/4 v0, 0x6

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/phenotype/zzi;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/phenotype/zzi;->f:[B

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->d(Landroid/os/Parcel;I[BZ)V

    iget v0, p0, Lcom/google/android/gms/phenotype/zzi;->g:I

    const v1, 0x40008

    .line 12
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget v0, p0, Lcom/google/android/gms/phenotype/zzi;->h:I

    const v1, 0x40009

    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->w(Landroid/os/Parcel;I)V

    return-void
.end method
