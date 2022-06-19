.class public final Lp3/a/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/o0$i;,
        Lp3/a/o0$h;,
        Lp3/a/o0$c;,
        Lp3/a/o0$g;,
        Lp3/a/o0$f;,
        Lp3/a/o0$e;,
        Lp3/a/o0$d;
    }
.end annotation


# static fields
.field public static final c:Lp3/a/o0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o0$d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/common/io/BaseEncoding;


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lp3/a/o0$b;

    invoke-direct {v0}, Lp3/a/o0$b;-><init>()V

    sput-object v0, Lp3/a/o0;->c:Lp3/a/o0$d;

    .line 2
    sget-object v0, Lcom/google/common/io/BaseEncoding;->BASE64:Lcom/google/common/io/BaseEncoding;

    .line 3
    check-cast v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    .line 4
    iget-object v1, v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->newInstance(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    .line 5
    :goto_0
    sput-object v0, Lp3/a/o0;->d:Lcom/google/common/io/BaseEncoding;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public varargs constructor <init>([[B)V
    .locals 1

    .line 1
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput v0, p0, Lp3/a/o0;->b:I

    .line 4
    iput-object p1, p0, Lp3/a/o0;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/o0;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Lp3/a/o0$f;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lp3/a/o0$f<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp3/a/o0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget v2, p0, Lp3/a/o0;->b:I

    if-ge v0, v2, :cond_2

    .line 3
    iget-object v2, p1, Lp3/a/o0$f;->c:[B

    .line 4
    invoke-virtual {p0, v0}, Lp3/a/o0;->g(I)[B

    move-result-object v3

    .line 5
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lp3/a/o0;->g(I)[B

    move-result-object v2

    .line 7
    iget-object v3, p0, Lp3/a/o0;->a:[Ljava/lang/Object;

    mul-int/lit8 v4, v1, 0x2

    aput-object v2, v3, v4

    .line 8
    invoke-virtual {p0, v0}, Lp3/a/o0;->i(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lp3/a/o0;->j(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lp3/a/o0;->a:[Ljava/lang/Object;

    mul-int/lit8 v0, v1, 0x2

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 10
    iput v1, p0, Lp3/a/o0;->b:I

    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lp3/a/o0;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lp3/a/o0;->a:[Ljava/lang/Object;

    .line 4
    iget v1, p0, Lp3/a/o0;->b:I

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :cond_0
    iput-object p1, p0, Lp3/a/o0;->a:[Ljava/lang/Object;

    return-void
.end method

.method public d(Lp3/a/o0$f;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lp3/a/o0$f<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lp3/a/o0;->b:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 2
    iget-object v1, p1, Lp3/a/o0$f;->c:[B

    .line 3
    invoke-virtual {p0, v0}, Lp3/a/o0;->g(I)[B

    move-result-object v2

    .line 4
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lp3/a/o0;->a:[Ljava/lang/Object;

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    .line 6
    instance-of v1, v0, [B

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, [B

    invoke-virtual {p1, v0}, Lp3/a/o0$f;->c([B)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_1
    check-cast v0, Lp3/a/o0$g;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v0}, Lp3/a/o0$g;->a()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lp3/a/o0$f;->c([B)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget v0, p0, Lp3/a/o0;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Lp3/a/o0;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lp3/a/o0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lp3/a/o0;->a()I

    move-result v0

    .line 3
    iget v1, p0, Lp3/a/o0;->b:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lp3/a/o0;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget v1, p1, Lp3/a/o0;->b:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_2

    .line 6
    :cond_1
    iget v0, p0, Lp3/a/o0;->b:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p1, Lp3/a/o0;->b:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 7
    invoke-virtual {p0, v0}, Lp3/a/o0;->c(I)V

    .line 8
    :cond_2
    iget-object v0, p1, Lp3/a/o0;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lp3/a/o0;->a:[Ljava/lang/Object;

    .line 9
    iget v3, p0, Lp3/a/o0;->b:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p1, Lp3/a/o0;->b:I

    mul-int/lit8 v4, v4, 0x2

    .line 10
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v0, p0, Lp3/a/o0;->b:I

    iget p1, p1, Lp3/a/o0;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lp3/a/o0;->b:I

    return-void
.end method

.method public final g(I)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/o0;->a:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    aget-object p1, v0, p1

    check-cast p1, [B

    return-object p1
.end method

.method public h(Lp3/a/o0$f;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lp3/a/o0$f<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 2
    invoke-static {p2, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lp3/a/o0;->b:I

    mul-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lp3/a/o0;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5
    :cond_0
    iget v0, p0, Lp3/a/o0;->b:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x8

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lp3/a/o0;->c(I)V

    .line 7
    :cond_1
    iget v0, p0, Lp3/a/o0;->b:I

    .line 8
    iget-object v1, p1, Lp3/a/o0$f;->c:[B

    .line 9
    iget-object v2, p0, Lp3/a/o0;->a:[Ljava/lang/Object;

    mul-int/lit8 v0, v0, 0x2

    aput-object v1, v2, v0

    .line 10
    invoke-virtual {p1, p2}, Lp3/a/o0$f;->d(Ljava/lang/Object;)[B

    move-result-object p1

    .line 11
    iget-object p2, p0, Lp3/a/o0;->a:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    aput-object p1, p2, v0

    .line 12
    iget p1, p0, Lp3/a/o0;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lp3/a/o0;->b:I

    return-void
.end method

.method public final i(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/o0;->a:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final j(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/o0;->a:[Ljava/lang/Object;

    instance-of v0, v0, [[B

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lp3/a/o0;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lp3/a/o0;->c(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lp3/a/o0;->a:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aput-object p2, v0, p1

    return-void
.end method

.method public final k(I)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/o0;->a:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    .line 2
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, [B

    return-object p1

    .line 4
    :cond_0
    check-cast p1, Lp3/a/o0$g;

    invoke-virtual {p1}, Lp3/a/o0$g;->a()[B

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Metadata("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lp3/a/o0;->b:I

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_0

    const/16 v2, 0x2c

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lp3/a/o0;->g(I)[B

    move-result-object v3

    sget-object v4, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "-bin"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    sget-object v2, Lp3/a/o0;->d:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {p0, v1}, Lp3/a/o0;->k(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lp3/a/o0;->k(I)[B

    move-result-object v3

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x29

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
