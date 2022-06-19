.class public final Le/m/a/c/g1/e0/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/e0/c0;


# instance fields
.field public final a:Le/m/a/c/g1/e0/v;

.field public final b:Le/m/a/c/q1/t;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Le/m/a/c/g1/e0/v;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/g1/e0/w;->a:Le/m/a/c/g1/e0/v;

    .line 3
    new-instance p1, Le/m/a/c/q1/t;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object p1, p0, Le/m/a/c/g1/e0/w;->b:Le/m/a/c/q1/t;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/m/a/c/g1/e0/w;->f:Z

    return-void
.end method

.method public b(Le/m/a/c/q1/c0;Le/m/a/c/g1/i;Le/m/a/c/g1/e0/c0$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/e0/w;->a:Le/m/a/c/g1/e0/v;

    invoke-interface {v0, p1, p2, p3}, Le/m/a/c/g1/e0/v;->b(Le/m/a/c/q1/c0;Le/m/a/c/g1/i;Le/m/a/c/g1/e0/c0$d;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/m/a/c/g1/e0/w;->f:Z

    return-void
.end method

.method public c(Le/m/a/c/q1/t;I)V
    .locals 10

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    const/4 v2, -0x1

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p1}, Le/m/a/c/q1/t;->q()I

    move-result v3

    .line 2
    iget v4, p1, Le/m/a/c/q1/t;->b:I

    add-int/2addr v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 3
    :goto_1
    iget-boolean v3, p0, Le/m/a/c/g1/e0/w;->f:Z

    if-eqz v3, :cond_3

    if-nez p2, :cond_2

    return-void

    .line 4
    :cond_2
    iput-boolean v1, p0, Le/m/a/c/g1/e0/w;->f:Z

    .line 5
    invoke-virtual {p1, v4}, Le/m/a/c/q1/t;->C(I)V

    .line 6
    iput v1, p0, Le/m/a/c/g1/e0/w;->d:I

    .line 7
    :cond_3
    :goto_2
    invoke-virtual {p1}, Le/m/a/c/q1/t;->a()I

    move-result p2

    if-lez p2, :cond_a

    .line 8
    iget p2, p0, Le/m/a/c/g1/e0/w;->d:I

    const/16 v3, 0xff

    const/4 v4, 0x3

    if-ge p2, v4, :cond_6

    if-nez p2, :cond_4

    .line 9
    invoke-virtual {p1}, Le/m/a/c/q1/t;->q()I

    move-result p2

    .line 10
    iget v5, p1, Le/m/a/c/q1/t;->b:I

    sub-int/2addr v5, v0

    .line 11
    invoke-virtual {p1, v5}, Le/m/a/c/q1/t;->C(I)V

    if-ne p2, v3, :cond_4

    .line 12
    iput-boolean v0, p0, Le/m/a/c/g1/e0/w;->f:Z

    return-void

    .line 13
    :cond_4
    invoke-virtual {p1}, Le/m/a/c/q1/t;->a()I

    move-result p2

    iget v3, p0, Le/m/a/c/g1/e0/w;->d:I

    rsub-int/lit8 v3, v3, 0x3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 14
    iget-object v3, p0, Le/m/a/c/g1/e0/w;->b:Le/m/a/c/q1/t;

    iget-object v3, v3, Le/m/a/c/q1/t;->a:[B

    iget v5, p0, Le/m/a/c/g1/e0/w;->d:I

    invoke-virtual {p1, v3, v5, p2}, Le/m/a/c/q1/t;->d([BII)V

    .line 15
    iget v3, p0, Le/m/a/c/g1/e0/w;->d:I

    add-int/2addr v3, p2

    iput v3, p0, Le/m/a/c/g1/e0/w;->d:I

    if-ne v3, v4, :cond_3

    .line 16
    iget-object p2, p0, Le/m/a/c/g1/e0/w;->b:Le/m/a/c/q1/t;

    invoke-virtual {p2, v4}, Le/m/a/c/q1/t;->y(I)V

    .line 17
    iget-object p2, p0, Le/m/a/c/g1/e0/w;->b:Le/m/a/c/q1/t;

    invoke-virtual {p2, v0}, Le/m/a/c/q1/t;->D(I)V

    .line 18
    iget-object p2, p0, Le/m/a/c/g1/e0/w;->b:Le/m/a/c/q1/t;

    invoke-virtual {p2}, Le/m/a/c/q1/t;->q()I

    move-result p2

    .line 19
    iget-object v3, p0, Le/m/a/c/g1/e0/w;->b:Le/m/a/c/q1/t;

    invoke-virtual {v3}, Le/m/a/c/q1/t;->q()I

    move-result v3

    and-int/lit16 v5, p2, 0x80

    if-eqz v5, :cond_5

    move v5, v0

    goto :goto_3

    :cond_5
    move v5, v1

    .line 20
    :goto_3
    iput-boolean v5, p0, Le/m/a/c/g1/e0/w;->e:Z

    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v3

    add-int/2addr p2, v4

    .line 21
    iput p2, p0, Le/m/a/c/g1/e0/w;->c:I

    .line 22
    iget-object v3, p0, Le/m/a/c/g1/e0/w;->b:Le/m/a/c/q1/t;

    .line 23
    iget-object v5, v3, Le/m/a/c/q1/t;->a:[B

    array-length v6, v5

    if-ge v6, p2, :cond_3

    const/16 v6, 0x1002

    .line 24
    array-length v7, v5

    mul-int/lit8 v7, v7, 0x2

    .line 25
    invoke-static {p2, v7}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 26
    invoke-virtual {v3, p2}, Le/m/a/c/q1/t;->y(I)V

    .line 27
    iget-object p2, p0, Le/m/a/c/g1/e0/w;->b:Le/m/a/c/q1/t;

    iget-object p2, p2, Le/m/a/c/q1/t;->a:[B

    invoke-static {v5, v1, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 28
    :cond_6
    invoke-virtual {p1}, Le/m/a/c/q1/t;->a()I

    move-result p2

    iget v4, p0, Le/m/a/c/g1/e0/w;->c:I

    iget v5, p0, Le/m/a/c/g1/e0/w;->d:I

    sub-int/2addr v4, v5

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 29
    iget-object v4, p0, Le/m/a/c/g1/e0/w;->b:Le/m/a/c/q1/t;

    iget-object v4, v4, Le/m/a/c/q1/t;->a:[B

    iget v5, p0, Le/m/a/c/g1/e0/w;->d:I

    invoke-virtual {p1, v4, v5, p2}, Le/m/a/c/q1/t;->d([BII)V

    .line 30
    iget v4, p0, Le/m/a/c/g1/e0/w;->d:I

    add-int/2addr v4, p2

    iput v4, p0, Le/m/a/c/g1/e0/w;->d:I

    .line 31
    iget p2, p0, Le/m/a/c/g1/e0/w;->c:I

    if-ne v4, p2, :cond_3

    .line 32
    iget-boolean v4, p0, Le/m/a/c/g1/e0/w;->e:Z

    if-eqz v4, :cond_9

    .line 33
    iget-object v4, p0, Le/m/a/c/g1/e0/w;->b:Le/m/a/c/q1/t;

    iget-object v4, v4, Le/m/a/c/q1/t;->a:[B

    .line 34
    sget v5, Le/m/a/c/q1/d0;->a:I

    move v5, v1

    move v6, v2

    :goto_4
    if-ge v5, p2, :cond_7

    shl-int/lit8 v7, v6, 0x8

    .line 35
    sget-object v8, Le/m/a/c/q1/d0;->k:[I

    ushr-int/lit8 v6, v6, 0x18

    aget-byte v9, v4, v5

    and-int/2addr v9, v3

    xor-int/2addr v6, v9

    and-int/2addr v6, v3

    aget v6, v8, v6

    xor-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    if-eqz v6, :cond_8

    .line 36
    iput-boolean v0, p0, Le/m/a/c/g1/e0/w;->f:Z

    return-void

    .line 37
    :cond_8
    iget-object p2, p0, Le/m/a/c/g1/e0/w;->b:Le/m/a/c/q1/t;

    iget v3, p0, Le/m/a/c/g1/e0/w;->c:I

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p2, v3}, Le/m/a/c/q1/t;->y(I)V

    goto :goto_5

    .line 38
    :cond_9
    iget-object v3, p0, Le/m/a/c/g1/e0/w;->b:Le/m/a/c/q1/t;

    invoke-virtual {v3, p2}, Le/m/a/c/q1/t;->y(I)V

    .line 39
    :goto_5
    iget-object p2, p0, Le/m/a/c/g1/e0/w;->a:Le/m/a/c/g1/e0/v;

    iget-object v3, p0, Le/m/a/c/g1/e0/w;->b:Le/m/a/c/q1/t;

    invoke-interface {p2, v3}, Le/m/a/c/g1/e0/v;->d(Le/m/a/c/q1/t;)V

    .line 40
    iput v1, p0, Le/m/a/c/g1/e0/w;->d:I

    goto/16 :goto_2

    :cond_a
    return-void
.end method
