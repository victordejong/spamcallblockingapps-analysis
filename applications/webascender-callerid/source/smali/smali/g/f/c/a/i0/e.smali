.class public final Lg/f/c/a/i0/e;
.super Lg/f/c/a/i0/i0;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>([BLjava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lg/f/c/a/i0/i0;-><init>()V

    .line 2
    array-length p2, p1

    const/16 v0, 0x10

    if-lt p2, v0, :cond_1

    array-length p2, p1

    if-lt p2, p3, :cond_1

    .line 3
    invoke-static {p3}, Lg/f/c/a/i0/q0;->a(I)V

    .line 4
    invoke-virtual {p0}, Lg/f/c/a/i0/e;->a()I

    move-result p2

    add-int/2addr p5, p2

    add-int/2addr p5, v0

    if-le p4, p5, :cond_0

    .line 5
    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 6
    iput p3, p0, Lg/f/c/a/i0/e;->a:I

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "ciphertextSegmentSize too small"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ikm too short, must be >= "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lg/f/c/a/i0/e;->a:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x7

    return v0
.end method
