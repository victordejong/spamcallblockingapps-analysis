.class public final Lw3/b/a/j0/d;
.super Lw3/b/a/g;
.source "SourceFile"


# instance fields
.field public final f:[J

.field public final g:[I

.field public final h:[I

.field public final i:[Ljava/lang/String;

.field public final j:Lw3/b/a/j0/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;[J[I[I[Ljava/lang/String;Lw3/b/a/j0/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lw3/b/a/g;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lw3/b/a/j0/d;->f:[J

    .line 3
    iput-object p3, p0, Lw3/b/a/j0/d;->g:[I

    .line 4
    iput-object p4, p0, Lw3/b/a/j0/d;->h:[I

    .line 5
    iput-object p5, p0, Lw3/b/a/j0/d;->i:[Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lw3/b/a/j0/d;->j:Lw3/b/a/j0/b;

    return-void
.end method

.method public static v(Ljava/io/DataInput;Ljava/lang/String;)Lw3/b/a/j0/d;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    .line 5
    new-array v6, v3, [J

    .line 6
    new-array v7, v3, [I

    .line 7
    new-array v8, v3, [I

    .line 8
    new-array v9, v3, [Ljava/lang/String;

    :goto_1
    if-ge v2, v3, :cond_2

    .line 9
    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->N2(Ljava/io/DataInput;)J

    move-result-wide v4

    aput-wide v4, v6, v2

    .line 10
    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->N2(Ljava/io/DataInput;)J

    move-result-wide v4

    long-to-int v4, v4

    aput v4, v7, v2

    .line 11
    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->N2(Ljava/io/DataInput;)J

    move-result-wide v4

    long-to-int v4, v4

    aput v4, v8, v2

    const/16 v4, 0x100

    if-ge v0, v4, :cond_1

    .line 12
    :try_start_0
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    goto :goto_2

    .line 13
    :cond_1
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v4

    .line 14
    :goto_2
    aget-object v4, v1, v4

    aput-object v4, v9, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15
    :catch_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid encoding"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 v0, 0x0

    .line 16
    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    new-instance v0, Lw3/b/a/j0/b;

    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->N2(Ljava/io/DataInput;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {p0}, Lw3/b/a/j0/e;->c(Ljava/io/DataInput;)Lw3/b/a/j0/e;

    move-result-object v2

    invoke-static {p0}, Lw3/b/a/j0/e;->c(Ljava/io/DataInput;)Lw3/b/a/j0/e;

    move-result-object p0

    invoke-direct {v0, p1, v1, v2, p0}, Lw3/b/a/j0/b;-><init>(Ljava/lang/String;ILw3/b/a/j0/e;Lw3/b/a/j0/e;)V

    :cond_3
    move-object v10, v0

    .line 18
    new-instance p0, Lw3/b/a/j0/d;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lw3/b/a/j0/d;-><init>(Ljava/lang/String;[J[I[I[Ljava/lang/String;Lw3/b/a/j0/b;)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lw3/b/a/j0/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    check-cast p1, Lw3/b/a/j0/d;

    .line 3
    iget-object v1, p0, Lw3/b/a/g;->a:Ljava/lang/String;

    iget-object v3, p1, Lw3/b/a/g;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lw3/b/a/j0/d;->f:[J

    iget-object v3, p1, Lw3/b/a/j0/d;->f:[J

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lw3/b/a/j0/d;->i:[Ljava/lang/String;

    iget-object v3, p1, Lw3/b/a/j0/d;->i:[Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lw3/b/a/j0/d;->g:[I

    iget-object v3, p1, Lw3/b/a/j0/d;->g:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lw3/b/a/j0/d;->h:[I

    iget-object v3, p1, Lw3/b/a/j0/d;->h:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lw3/b/a/j0/d;->j:Lw3/b/a/j0/b;

    iget-object p1, p1, Lw3/b/a/j0/d;->j:Lw3/b/a/j0/b;

    if-nez v1, :cond_1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Lw3/b/a/j0/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public k(J)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/j0/d;->f:[J

    .line 2
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    if-ltz v1, :cond_0

    .line 3
    iget-object p1, p0, Lw3/b/a/j0/d;->i:[Ljava/lang/String;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    not-int v1, v1

    .line 4
    array-length v0, v0

    if-ge v1, v0, :cond_2

    if-lez v1, :cond_1

    .line 5
    iget-object p1, p0, Lw3/b/a/j0/d;->i:[Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    return-object p1

    :cond_1
    const-string p1, "UTC"

    return-object p1

    .line 6
    :cond_2
    iget-object v0, p0, Lw3/b/a/j0/d;->j:Lw3/b/a/j0/b;

    if-nez v0, :cond_3

    .line 7
    iget-object p1, p0, Lw3/b/a/j0/d;->i:[Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    return-object p1

    .line 8
    :cond_3
    invoke-virtual {v0, p1, p2}, Lw3/b/a/j0/b;->v(J)Lw3/b/a/j0/e;

    move-result-object p1

    .line 9
    iget-object p1, p1, Lw3/b/a/j0/e;->b:Ljava/lang/String;

    return-object p1
.end method

.method public m(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/j0/d;->f:[J

    .line 2
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    if-ltz v1, :cond_0

    .line 3
    iget-object p1, p0, Lw3/b/a/j0/d;->g:[I

    aget p1, p1, v1

    return p1

    :cond_0
    not-int v1, v1

    .line 4
    array-length v0, v0

    if-ge v1, v0, :cond_2

    if-lez v1, :cond_1

    .line 5
    iget-object p1, p0, Lw3/b/a/j0/d;->g:[I

    add-int/lit8 v1, v1, -0x1

    aget p1, p1, v1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 6
    :cond_2
    iget-object v0, p0, Lw3/b/a/j0/d;->j:Lw3/b/a/j0/b;

    if-nez v0, :cond_3

    .line 7
    iget-object p1, p0, Lw3/b/a/j0/d;->g:[I

    add-int/lit8 v1, v1, -0x1

    aget p1, p1, v1

    return p1

    .line 8
    :cond_3
    invoke-virtual {v0, p1, p2}, Lw3/b/a/j0/b;->m(J)I

    move-result p1

    return p1
.end method

.method public p(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/j0/d;->f:[J

    .line 2
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-ltz p1, :cond_0

    .line 3
    iget-object p2, p0, Lw3/b/a/j0/d;->h:[I

    aget p1, p2, p1

    return p1

    :cond_0
    not-int p1, p1

    .line 4
    array-length p2, v0

    if-ge p1, p2, :cond_2

    if-lez p1, :cond_1

    .line 5
    iget-object p2, p0, Lw3/b/a/j0/d;->h:[I

    add-int/lit8 p1, p1, -0x1

    aget p1, p2, p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 6
    :cond_2
    iget-object p2, p0, Lw3/b/a/j0/d;->j:Lw3/b/a/j0/b;

    if-nez p2, :cond_3

    .line 7
    iget-object p2, p0, Lw3/b/a/j0/d;->h:[I

    add-int/lit8 p1, p1, -0x1

    aget p1, p2, p1

    return p1

    .line 8
    :cond_3
    iget p1, p2, Lw3/b/a/j0/b;->f:I

    return p1
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lw3/b/a/j0/d;->f:[J

    .line 2
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    not-int v1, v1

    .line 3
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 4
    aget-wide p1, v0, v1

    return-wide p1

    .line 5
    :cond_1
    iget-object v1, p0, Lw3/b/a/j0/d;->j:Lw3/b/a/j0/b;

    if-nez v1, :cond_2

    return-wide p1

    .line 6
    :cond_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v0, v2

    cmp-long v0, p1, v2

    if-gez v0, :cond_3

    move-wide p1, v2

    .line 7
    :cond_3
    invoke-virtual {v1, p1, p2}, Lw3/b/a/j0/b;->r(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public s(J)J
    .locals 9

    .line 1
    iget-object v0, p0, Lw3/b/a/j0/d;->f:[J

    .line 2
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    const-wide/16 v2, 0x1

    const-wide/high16 v4, -0x8000000000000000L

    if-ltz v1, :cond_1

    cmp-long v0, p1, v4

    if-lez v0, :cond_0

    sub-long/2addr p1, v2

    :cond_0
    return-wide p1

    :cond_1
    not-int v1, v1

    .line 3
    array-length v6, v0

    if-ge v1, v6, :cond_3

    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 4
    aget-wide v6, v0, v1

    cmp-long v0, v6, v4

    if-lez v0, :cond_2

    sub-long/2addr v6, v2

    return-wide v6

    :cond_2
    return-wide p1

    .line 5
    :cond_3
    iget-object v6, p0, Lw3/b/a/j0/d;->j:Lw3/b/a/j0/b;

    if-eqz v6, :cond_4

    .line 6
    invoke-virtual {v6, p1, p2}, Lw3/b/a/j0/b;->s(J)J

    move-result-wide v6

    cmp-long v8, v6, p1

    if-gez v8, :cond_4

    return-wide v6

    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 7
    aget-wide v6, v0, v1

    cmp-long v0, v6, v4

    if-lez v0, :cond_5

    sub-long/2addr v6, v2

    return-wide v6

    :cond_5
    return-wide p1
.end method
