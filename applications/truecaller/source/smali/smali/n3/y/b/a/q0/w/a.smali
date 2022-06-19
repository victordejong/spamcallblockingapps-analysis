.class public final Ln3/y/b/a/q0/w/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/g;


# instance fields
.field public final a:Ln3/y/b/a/q0/w/b;

.field public final b:Ln3/y/b/a/x0/m;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/y/b/a/q0/w/b;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, v1}, Ln3/y/b/a/q0/w/b;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object v0, p0, Ln3/y/b/a/q0/w/a;->a:Ln3/y/b/a/q0/w/b;

    .line 5
    new-instance v0, Ln3/y/b/a/x0/m;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, Ln3/y/b/a/x0/m;-><init>(I)V

    iput-object v0, p0, Ln3/y/b/a/q0/w/a;->b:Ln3/y/b/a/x0/m;

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Ln3/y/b/a/q0/w/a;->c:Z

    .line 2
    iget-object p1, p0, Ln3/y/b/a/q0/w/a;->a:Ln3/y/b/a/q0/w/b;

    invoke-virtual {p1}, Ln3/y/b/a/q0/w/b;->a()V

    return-void
.end method

.method public d(Ln3/y/b/a/q0/h;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/w/a;->a:Ln3/y/b/a/q0/w/b;

    new-instance v1, Ln3/y/b/a/q0/w/c0$d;

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v4}, Ln3/y/b/a/q0/w/c0$d;-><init>(III)V

    .line 3
    invoke-virtual {v0, p1, v1}, Ln3/y/b/a/q0/w/b;->e(Ln3/y/b/a/q0/h;Ln3/y/b/a/q0/w/c0$d;)V

    .line 4
    invoke-interface {p1}, Ln3/y/b/a/q0/h;->g()V

    .line 5
    new-instance v0, Ln3/y/b/a/q0/n$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v3, v4}, Ln3/y/b/a/q0/n$b;-><init>(JJ)V

    .line 7
    invoke-interface {p1, v0}, Ln3/y/b/a/q0/h;->q(Ln3/y/b/a/q0/n;)V

    return-void
.end method

.method public h(Ln3/y/b/a/q0/d;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/y/b/a/x0/m;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ln3/y/b/a/x0/m;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 2
    :goto_0
    iget-object v4, v0, Ln3/y/b/a/x0/m;->a:[B

    .line 3
    invoke-virtual {p1, v4, v2, v1, v2}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 4
    invoke-virtual {v0, v2}, Ln3/y/b/a/x0/m;->z(I)V

    .line 5
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->q()I

    move-result v4

    const v5, 0x494433

    const/4 v6, 0x3

    if-eq v4, v5, :cond_7

    .line 6
    iput v2, p1, Ln3/y/b/a/q0/d;->f:I

    .line 7
    invoke-virtual {p1, v3, v2}, Ln3/y/b/a/q0/d;->a(IZ)Z

    move v1, v2

    move v4, v3

    .line 8
    :goto_1
    iget-object v5, v0, Ln3/y/b/a/x0/m;->a:[B

    const/4 v7, 0x6

    .line 9
    invoke-virtual {p1, v5, v2, v7, v2}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 10
    invoke-virtual {v0, v2}, Ln3/y/b/a/x0/m;->z(I)V

    .line 11
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->t()I

    move-result v5

    const/16 v8, 0xb77

    if-eq v5, v8, :cond_1

    .line 12
    iput v2, p1, Ln3/y/b/a/q0/d;->f:I

    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_0

    return v2

    .line 13
    :cond_0
    invoke-virtual {p1, v4, v2}, Ln3/y/b/a/q0/d;->a(IZ)Z

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v1, v5

    const/4 v8, 0x4

    if-lt v1, v8, :cond_2

    return v5

    .line 14
    :cond_2
    iget-object v9, v0, Ln3/y/b/a/x0/m;->a:[B

    .line 15
    array-length v10, v9

    const/4 v11, -0x1

    if-ge v10, v7, :cond_3

    move v8, v11

    goto :goto_3

    :cond_3
    const/4 v10, 0x5

    .line 16
    aget-byte v10, v9, v10

    and-int/lit16 v10, v10, 0xff

    shr-int/2addr v10, v6

    const/16 v12, 0x10

    if-ne v10, v12, :cond_4

    move v10, v5

    goto :goto_2

    :cond_4
    move v10, v2

    :goto_2
    if-eqz v10, :cond_5

    const/4 v7, 0x2

    .line 17
    aget-byte v8, v9, v7

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x8

    .line 18
    aget-byte v9, v9, v6

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    add-int/2addr v8, v5

    mul-int/2addr v8, v7

    goto :goto_3

    .line 19
    :cond_5
    aget-byte v5, v9, v8

    and-int/lit16 v5, v5, 0xc0

    shr-int/2addr v5, v7

    .line 20
    aget-byte v7, v9, v8

    and-int/lit8 v7, v7, 0x3f

    .line 21
    invoke-static {v5, v7}, Ln3/y/b/a/n0/a;->a(II)I

    move-result v8

    :goto_3
    if-ne v8, v11, :cond_6

    return v2

    :cond_6
    add-int/lit8 v8, v8, -0x6

    .line 22
    invoke-virtual {p1, v8, v2}, Ln3/y/b/a/q0/d;->a(IZ)Z

    goto :goto_1

    .line 23
    :cond_7
    invoke-virtual {v0, v6}, Ln3/y/b/a/x0/m;->A(I)V

    .line 24
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->n()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    .line 25
    invoke-virtual {p1, v4, v2}, Ln3/y/b/a/q0/d;->a(IZ)Z

    goto/16 :goto_0
.end method

.method public i(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/m;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Ln3/y/b/a/q0/w/a;->b:Ln3/y/b/a/x0/m;

    iget-object p2, p2, Ln3/y/b/a/x0/m;->a:[B

    const/4 v0, 0x0

    const/16 v1, 0xae2

    invoke-virtual {p1, p2, v0, v1}, Ln3/y/b/a/q0/d;->e([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 2
    :cond_0
    iget-object p2, p0, Ln3/y/b/a/q0/w/a;->b:Ln3/y/b/a/x0/m;

    invoke-virtual {p2, v0}, Ln3/y/b/a/x0/m;->z(I)V

    .line 3
    iget-object p2, p0, Ln3/y/b/a/q0/w/a;->b:Ln3/y/b/a/x0/m;

    invoke-virtual {p2, p1}, Ln3/y/b/a/x0/m;->y(I)V

    .line 4
    iget-boolean p1, p0, Ln3/y/b/a/q0/w/a;->c:Z

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Ln3/y/b/a/q0/w/a;->a:Ln3/y/b/a/q0/w/b;

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p1, Ln3/y/b/a/q0/w/b;->l:J

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Ln3/y/b/a/q0/w/a;->c:Z

    .line 8
    :cond_1
    iget-object p1, p0, Ln3/y/b/a/q0/w/a;->a:Ln3/y/b/a/q0/w/b;

    iget-object p2, p0, Ln3/y/b/a/q0/w/a;->b:Ln3/y/b/a/x0/m;

    invoke-virtual {p1, p2}, Ln3/y/b/a/q0/w/b;->d(Ln3/y/b/a/x0/m;)V

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
