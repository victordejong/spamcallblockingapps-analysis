.class public final Le/m/a/c/g1/c0/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/g1/c0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Le/m/a/c/g1/s;

.field public final b:Le/m/a/c/g1/c0/k;

.field public final c:Le/m/a/c/q1/t;

.field public d:Le/m/a/c/g1/c0/i;

.field public e:Le/m/a/c/g1/c0/c;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public final j:Le/m/a/c/q1/t;

.field public final k:Le/m/a/c/q1/t;


# direct methods
.method public constructor <init>(Le/m/a/c/g1/s;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/g1/c0/d$b;->a:Le/m/a/c/g1/s;

    .line 3
    new-instance p1, Le/m/a/c/g1/c0/k;

    invoke-direct {p1}, Le/m/a/c/g1/c0/k;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    .line 4
    new-instance p1, Le/m/a/c/q1/t;

    invoke-direct {p1}, Le/m/a/c/q1/t;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/c0/d$b;->c:Le/m/a/c/q1/t;

    .line 5
    new-instance p1, Le/m/a/c/q1/t;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object p1, p0, Le/m/a/c/g1/c0/d$b;->j:Le/m/a/c/q1/t;

    .line 6
    new-instance p1, Le/m/a/c/q1/t;

    invoke-direct {p1}, Le/m/a/c/q1/t;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/c0/d$b;->k:Le/m/a/c/q1/t;

    return-void
.end method


# virtual methods
.method public final a()Le/m/a/c/g1/c0/j;
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    iget-object v1, v0, Le/m/a/c/g1/c0/k;->a:Le/m/a/c/g1/c0/c;

    iget v1, v1, Le/m/a/c/g1/c0/c;->a:I

    .line 2
    iget-object v0, v0, Le/m/a/c/g1/c0/k;->n:Le/m/a/c/g1/c0/j;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/m/a/c/g1/c0/d$b;->d:Le/m/a/c/g1/c0/i;

    .line 3
    invoke-virtual {v0, v1}, Le/m/a/c/g1/c0/i;->a(I)Le/m/a/c/g1/c0/j;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-boolean v1, v0, Le/m/a/c/g1/c0/j;->a:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public b(Le/m/a/c/g1/c0/i;Le/m/a/c/g1/c0/c;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Le/m/a/c/g1/c0/d$b;->d:Le/m/a/c/g1/c0/i;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Le/m/a/c/g1/c0/d$b;->e:Le/m/a/c/g1/c0/c;

    .line 5
    iget-object p2, p0, Le/m/a/c/g1/c0/d$b;->a:Le/m/a/c/g1/s;

    iget-object p1, p1, Le/m/a/c/g1/c0/i;->f:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p2, p1}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 6
    invoke-virtual {p0}, Le/m/a/c/g1/c0/d$b;->e()V

    return-void
.end method

.method public c()Z
    .locals 4

    .line 1
    iget v0, p0, Le/m/a/c/g1/c0/d$b;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Le/m/a/c/g1/c0/d$b;->f:I

    .line 2
    iget v0, p0, Le/m/a/c/g1/c0/d$b;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Le/m/a/c/g1/c0/d$b;->g:I

    .line 3
    iget-object v2, p0, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    iget-object v2, v2, Le/m/a/c/g1/c0/k;->g:[I

    iget v3, p0, Le/m/a/c/g1/c0/d$b;->h:I

    aget v2, v2, v3

    if-ne v0, v2, :cond_0

    add-int/2addr v3, v1

    .line 4
    iput v3, p0, Le/m/a/c/g1/c0/d$b;->h:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Le/m/a/c/g1/c0/d$b;->g:I

    return v0

    :cond_0
    return v1
.end method

.method public d(II)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Le/m/a/c/g1/c0/d$b;->a()Le/m/a/c/g1/c0/j;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v2, v0, Le/m/a/c/g1/c0/j;->d:I

    if-eqz v2, :cond_1

    .line 3
    iget-object v0, p0, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    iget-object v0, v0, Le/m/a/c/g1/c0/k;->p:Le/m/a/c/q1/t;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, v0, Le/m/a/c/g1/c0/j;->e:[B

    .line 5
    iget-object v2, p0, Le/m/a/c/g1/c0/d$b;->k:Le/m/a/c/q1/t;

    array-length v3, v0

    .line 6
    iput-object v0, v2, Le/m/a/c/q1/t;->a:[B

    .line 7
    iput v3, v2, Le/m/a/c/q1/t;->c:I

    .line 8
    iput v1, v2, Le/m/a/c/q1/t;->b:I

    .line 9
    array-length v0, v0

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    .line 10
    :goto_0
    iget-object v3, p0, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    iget v4, p0, Le/m/a/c/g1/c0/d$b;->f:I

    .line 11
    iget-boolean v5, v3, Le/m/a/c/g1/c0/k;->l:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-object v3, v3, Le/m/a/c/g1/c0/k;->m:[Z

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-nez v3, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v4, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v6

    .line 12
    :goto_3
    iget-object v5, p0, Le/m/a/c/g1/c0/d$b;->j:Le/m/a/c/q1/t;

    iget-object v7, v5, Le/m/a/c/q1/t;->a:[B

    if-eqz v4, :cond_5

    const/16 v8, 0x80

    goto :goto_4

    :cond_5
    move v8, v1

    :goto_4
    or-int/2addr v8, v2

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    .line 13
    invoke-virtual {v5, v1}, Le/m/a/c/q1/t;->C(I)V

    .line 14
    iget-object v5, p0, Le/m/a/c/g1/c0/d$b;->a:Le/m/a/c/g1/s;

    iget-object v7, p0, Le/m/a/c/g1/c0/d$b;->j:Le/m/a/c/q1/t;

    invoke-interface {v5, v7, v6}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 15
    iget-object v5, p0, Le/m/a/c/g1/c0/d$b;->a:Le/m/a/c/g1/s;

    invoke-interface {v5, v0, v2}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    if-nez v4, :cond_6

    add-int/2addr v2, v6

    return v2

    :cond_6
    const/4 v0, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/16 v7, 0x8

    if-nez v3, :cond_7

    .line 16
    iget-object v3, p0, Le/m/a/c/g1/c0/d$b;->c:Le/m/a/c/q1/t;

    invoke-virtual {v3, v7}, Le/m/a/c/q1/t;->y(I)V

    .line 17
    iget-object v3, p0, Le/m/a/c/g1/c0/d$b;->c:Le/m/a/c/q1/t;

    iget-object v8, v3, Le/m/a/c/q1/t;->a:[B

    aput-byte v1, v8, v1

    .line 18
    aput-byte v6, v8, v6

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 19
    aput-byte v1, v8, v5

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 20
    aput-byte p2, v8, v4

    const/4 p2, 0x4

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 21
    aput-byte v1, v8, p2

    const/4 p2, 0x5

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 22
    aput-byte v1, v8, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 23
    aput-byte p2, v8, v0

    const/4 p2, 0x7

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 24
    aput-byte p1, v8, p2

    .line 25
    iget-object p1, p0, Le/m/a/c/g1/c0/d$b;->a:Le/m/a/c/g1/s;

    invoke-interface {p1, v3, v7}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    add-int/2addr v2, v6

    add-int/2addr v2, v7

    return v2

    .line 26
    :cond_7
    iget-object p1, p0, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    iget-object p1, p1, Le/m/a/c/g1/c0/k;->p:Le/m/a/c/q1/t;

    .line 27
    invoke-virtual {p1}, Le/m/a/c/q1/t;->v()I

    move-result v3

    const/4 v8, -0x2

    .line 28
    invoke-virtual {p1, v8}, Le/m/a/c/q1/t;->D(I)V

    mul-int/2addr v3, v0

    add-int/2addr v3, v5

    if-eqz p2, :cond_8

    .line 29
    iget-object v0, p0, Le/m/a/c/g1/c0/d$b;->c:Le/m/a/c/q1/t;

    invoke-virtual {v0, v3}, Le/m/a/c/q1/t;->y(I)V

    .line 30
    iget-object v0, p0, Le/m/a/c/g1/c0/d$b;->c:Le/m/a/c/q1/t;

    iget-object v8, p1, Le/m/a/c/q1/t;->a:[B

    invoke-virtual {v0, v8, v1, v3}, Le/m/a/c/q1/t;->d([BII)V

    .line 31
    invoke-virtual {p1, v3}, Le/m/a/c/q1/t;->D(I)V

    .line 32
    iget-object p1, p0, Le/m/a/c/g1/c0/d$b;->c:Le/m/a/c/q1/t;

    iget-object v0, p1, Le/m/a/c/q1/t;->a:[B

    aget-byte v1, v0, v5

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v7

    aget-byte v7, v0, v4

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v1, v7

    add-int/2addr v1, p2

    shr-int/lit8 p2, v1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 33
    aput-byte p2, v0, v5

    and-int/lit16 p2, v1, 0xff

    int-to-byte p2, p2

    .line 34
    aput-byte p2, v0, v4

    .line 35
    :cond_8
    iget-object p2, p0, Le/m/a/c/g1/c0/d$b;->a:Le/m/a/c/g1/s;

    invoke-interface {p2, p1, v3}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    add-int/2addr v2, v6

    add-int/2addr v2, v3

    return v2
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Le/m/a/c/g1/c0/k;->d:I

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, v0, Le/m/a/c/g1/c0/k;->r:J

    .line 4
    iput-boolean v1, v0, Le/m/a/c/g1/c0/k;->l:Z

    .line 5
    iput-boolean v1, v0, Le/m/a/c/g1/c0/k;->q:Z

    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Le/m/a/c/g1/c0/k;->n:Le/m/a/c/g1/c0/j;

    .line 7
    iput v1, p0, Le/m/a/c/g1/c0/d$b;->f:I

    .line 8
    iput v1, p0, Le/m/a/c/g1/c0/d$b;->h:I

    .line 9
    iput v1, p0, Le/m/a/c/g1/c0/d$b;->g:I

    .line 10
    iput v1, p0, Le/m/a/c/g1/c0/d$b;->i:I

    return-void
.end method
