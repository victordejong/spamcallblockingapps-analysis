.class public final Le/m/a/c/g1/e0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/h;


# instance fields
.field public final a:Le/m/a/c/g1/e0/f;

.field public final b:Le/m/a/c/q1/t;

.field public final c:Le/m/a/c/q1/t;

.field public final d:Le/m/a/c/q1/s;

.field public e:Le/m/a/c/g1/i;

.field public f:J

.field public g:J

.field public h:I

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Le/m/a/c/g1/e0/f;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-direct {p1, v0, v1}, Le/m/a/c/g1/e0/f;-><init>(ZLjava/lang/String;)V

    .line 4
    iput-object p1, p0, Le/m/a/c/g1/e0/e;->a:Le/m/a/c/g1/e0/f;

    .line 5
    new-instance p1, Le/m/a/c/q1/t;

    const/16 v0, 0x800

    invoke-direct {p1, v0}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object p1, p0, Le/m/a/c/g1/e0/e;->b:Le/m/a/c/q1/t;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Le/m/a/c/g1/e0/e;->h:I

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Le/m/a/c/g1/e0/e;->g:J

    .line 8
    new-instance p1, Le/m/a/c/q1/t;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object p1, p0, Le/m/a/c/g1/e0/e;->c:Le/m/a/c/q1/t;

    .line 9
    new-instance v0, Le/m/a/c/q1/s;

    iget-object p1, p1, Le/m/a/c/q1/t;->a:[B

    invoke-direct {v0, p1}, Le/m/a/c/q1/s;-><init>([B)V

    iput-object v0, p0, Le/m/a/c/g1/e0/e;->d:Le/m/a/c/q1/s;

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Le/m/a/c/g1/e0/e;->i:Z

    .line 2
    iget-object p1, p0, Le/m/a/c/g1/e0/e;->a:Le/m/a/c/g1/e0/f;

    invoke-virtual {p1}, Le/m/a/c/g1/e0/f;->a()V

    .line 3
    iput-wide p3, p0, Le/m/a/c/g1/e0/e;->f:J

    return-void
.end method

.method public final b(Le/m/a/c/g1/e;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Le/m/a/c/g1/e0/e;->c:Le/m/a/c/q1/t;

    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    const/16 v3, 0xa

    .line 2
    invoke-virtual {p1, v2, v0, v3, v0}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 3
    iget-object v2, p0, Le/m/a/c/g1/e0/e;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2, v0}, Le/m/a/c/q1/t;->C(I)V

    .line 4
    iget-object v2, p0, Le/m/a/c/g1/e0/e;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2}, Le/m/a/c/q1/t;->s()I

    move-result v2

    const v3, 0x494433

    if-eq v2, v3, :cond_1

    .line 5
    iput v0, p1, Le/m/a/c/g1/e;->f:I

    .line 6
    invoke-virtual {p1, v1, v0}, Le/m/a/c/g1/e;->a(IZ)Z

    .line 7
    iget-wide v2, p0, Le/m/a/c/g1/e0/e;->g:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    int-to-long v2, v1

    .line 8
    iput-wide v2, p0, Le/m/a/c/g1/e0/e;->g:J

    :cond_0
    return v1

    .line 9
    :cond_1
    iget-object v2, p0, Le/m/a/c/g1/e0/e;->c:Le/m/a/c/q1/t;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Le/m/a/c/q1/t;->D(I)V

    .line 10
    iget-object v2, p0, Le/m/a/c/g1/e0/e;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2}, Le/m/a/c/q1/t;->p()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    .line 11
    invoke-virtual {p1, v2, v0}, Le/m/a/c/g1/e;->a(IZ)Z

    goto :goto_0
.end method

.method public d(Le/m/a/c/g1/e;Le/m/a/c/g1/p;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Le/m/a/c/g1/e;->c:J

    .line 2
    iget-object p2, p0, Le/m/a/c/g1/e0/e;->b:Le/m/a/c/q1/t;

    iget-object p2, p2, Le/m/a/c/q1/t;->a:[B

    const/16 v0, 0x800

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Le/m/a/c/g1/e;->f([BII)I

    move-result p1

    const/4 p2, -0x1

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 3
    :goto_0
    iget-boolean v3, p0, Le/m/a/c/g1/e0/e;->j:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iget-object v5, p0, Le/m/a/c/g1/e0/e;->e:Le/m/a/c/g1/i;

    .line 5
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v6, Le/m/a/c/g1/q$b;

    const-wide/16 v7, 0x0

    .line 7
    invoke-direct {v6, v3, v4, v7, v8}, Le/m/a/c/g1/q$b;-><init>(JJ)V

    .line 8
    invoke-interface {v5, v6}, Le/m/a/c/g1/i;->s(Le/m/a/c/g1/q;)V

    .line 9
    iput-boolean v0, p0, Le/m/a/c/g1/e0/e;->j:Z

    :goto_1
    if-eqz v2, :cond_2

    return p2

    .line 10
    :cond_2
    iget-object p2, p0, Le/m/a/c/g1/e0/e;->b:Le/m/a/c/q1/t;

    invoke-virtual {p2, v1}, Le/m/a/c/q1/t;->C(I)V

    .line 11
    iget-object p2, p0, Le/m/a/c/g1/e0/e;->b:Le/m/a/c/q1/t;

    invoke-virtual {p2, p1}, Le/m/a/c/q1/t;->B(I)V

    .line 12
    iget-boolean p1, p0, Le/m/a/c/g1/e0/e;->i:Z

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Le/m/a/c/g1/e0/e;->a:Le/m/a/c/g1/e0/f;

    iget-wide v2, p0, Le/m/a/c/g1/e0/e;->f:J

    .line 14
    iput-wide v2, p1, Le/m/a/c/g1/e0/f;->s:J

    .line 15
    iput-boolean v0, p0, Le/m/a/c/g1/e0/e;->i:Z

    .line 16
    :cond_3
    iget-object p1, p0, Le/m/a/c/g1/e0/e;->a:Le/m/a/c/g1/e0/f;

    iget-object p2, p0, Le/m/a/c/g1/e0/e;->b:Le/m/a/c/q1/t;

    invoke-virtual {p1, p2}, Le/m/a/c/g1/e0/f;->d(Le/m/a/c/q1/t;)V

    return v1
.end method

.method public h(Le/m/a/c/g1/i;)V
    .locals 5

    .line 1
    iput-object p1, p0, Le/m/a/c/g1/e0/e;->e:Le/m/a/c/g1/i;

    .line 2
    iget-object v0, p0, Le/m/a/c/g1/e0/e;->a:Le/m/a/c/g1/e0/f;

    new-instance v1, Le/m/a/c/g1/e0/c0$d;

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3
    invoke-direct {v1, v2, v3, v4}, Le/m/a/c/g1/e0/c0$d;-><init>(III)V

    .line 4
    invoke-virtual {v0, p1, v1}, Le/m/a/c/g1/e0/f;->e(Le/m/a/c/g1/i;Le/m/a/c/g1/e0/c0$d;)V

    .line 5
    invoke-interface {p1}, Le/m/a/c/g1/i;->g()V

    return-void
.end method

.method public i(Le/m/a/c/g1/e;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/m/a/c/g1/e0/e;->b(Le/m/a/c/g1/e;)I

    move-result v0

    const/4 v1, 0x0

    move v3, v0

    :goto_0
    move v2, v1

    move v4, v2

    .line 2
    :goto_1
    iget-object v5, p0, Le/m/a/c/g1/e0/e;->c:Le/m/a/c/q1/t;

    iget-object v5, v5, Le/m/a/c/q1/t;->a:[B

    const/4 v6, 0x2

    .line 3
    invoke-virtual {p1, v5, v1, v6, v1}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 4
    iget-object v5, p0, Le/m/a/c/g1/e0/e;->c:Le/m/a/c/q1/t;

    invoke-virtual {v5, v1}, Le/m/a/c/q1/t;->C(I)V

    .line 5
    iget-object v5, p0, Le/m/a/c/g1/e0/e;->c:Le/m/a/c/q1/t;

    invoke-virtual {v5}, Le/m/a/c/q1/t;->v()I

    move-result v5

    .line 6
    invoke-static {v5}, Le/m/a/c/g1/e0/f;->g(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 7
    iput v1, p1, Le/m/a/c/g1/e;->f:I

    add-int/lit8 v3, v3, 0x1

    sub-int v2, v3, v0

    const/16 v4, 0x2000

    if-lt v2, v4, :cond_0

    return v1

    .line 8
    :cond_0
    invoke-virtual {p1, v3, v1}, Le/m/a/c/g1/e;->a(IZ)Z

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v2, v5

    const/4 v6, 0x4

    if-lt v2, v6, :cond_2

    const/16 v7, 0xbc

    if-le v4, v7, :cond_2

    return v5

    .line 9
    :cond_2
    iget-object v5, p0, Le/m/a/c/g1/e0/e;->c:Le/m/a/c/q1/t;

    iget-object v5, v5, Le/m/a/c/q1/t;->a:[B

    .line 10
    invoke-virtual {p1, v5, v1, v6, v1}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 11
    iget-object v5, p0, Le/m/a/c/g1/e0/e;->d:Le/m/a/c/q1/s;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Le/m/a/c/q1/s;->j(I)V

    .line 12
    iget-object v5, p0, Le/m/a/c/g1/e0/e;->d:Le/m/a/c/q1/s;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Le/m/a/c/q1/s;->f(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_3

    return v1

    :cond_3
    add-int/lit8 v6, v5, -0x6

    .line 13
    invoke-virtual {p1, v6, v1}, Le/m/a/c/g1/e;->a(IZ)Z

    add-int/2addr v4, v5

    goto :goto_1
.end method

.method public release()V
    .locals 0

    return-void
.end method
