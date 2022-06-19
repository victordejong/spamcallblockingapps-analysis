.class public Le/m/a/c/r1/t/b;
.super Le/m/a/c/u;
.source "SourceFile"


# instance fields
.field public final l:Le/m/a/c/e1/e;

.field public final m:Le/m/a/c/q1/t;

.field public n:J

.field public o:Le/m/a/c/r1/t/a;

.field public p:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Le/m/a/c/u;-><init>(I)V

    .line 2
    new-instance v0, Le/m/a/c/e1/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le/m/a/c/e1/e;-><init>(I)V

    iput-object v0, p0, Le/m/a/c/r1/t/b;->l:Le/m/a/c/e1/e;

    .line 3
    new-instance v0, Le/m/a/c/q1/t;

    invoke-direct {v0}, Le/m/a/c/q1/t;-><init>()V

    iput-object v0, p0, Le/m/a/c/r1/t/b;->m:Le/m/a/c/q1/t;

    return-void
.end method


# virtual methods
.method public D([Lcom/google/android/exoplayer2/Format;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iput-wide p2, p0, Le/m/a/c/r1/t/b;->n:J

    return-void
.end method

.method public F(Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    const-string v0, "application/x-camera-motion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/u;->e()Z

    move-result v0

    return v0
.end method

.method public f(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 1
    check-cast p2, Le/m/a/c/r1/t/a;

    iput-object p2, p0, Le/m/a/c/r1/t/b;->o:Le/m/a/c/r1/t/a;

    :cond_0
    return-void
.end method

.method public i(JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Le/m/a/c/u;->e()Z

    move-result p3

    if-nez p3, :cond_4

    iget-wide p3, p0, Le/m/a/c/r1/t/b;->p:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long p3, p3, v0

    if-gez p3, :cond_4

    .line 2
    iget-object p3, p0, Le/m/a/c/r1/t/b;->l:Le/m/a/c/e1/e;

    invoke-virtual {p3}, Le/m/a/c/e1/e;->clear()V

    .line 3
    invoke-virtual {p0}, Le/m/a/c/u;->w()Le/m/a/c/g0;

    move-result-object p3

    .line 4
    iget-object p4, p0, Le/m/a/c/r1/t/b;->l:Le/m/a/c/e1/e;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Le/m/a/c/u;->E(Le/m/a/c/g0;Le/m/a/c/e1/e;Z)I

    move-result p3

    const/4 p4, -0x4

    if-ne p3, p4, :cond_4

    .line 5
    iget-object p3, p0, Le/m/a/c/r1/t/b;->l:Le/m/a/c/e1/e;

    invoke-virtual {p3}, Le/m/a/c/e1/a;->isEndOfStream()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_3

    .line 6
    :cond_1
    iget-object p3, p0, Le/m/a/c/r1/t/b;->l:Le/m/a/c/e1/e;

    invoke-virtual {p3}, Le/m/a/c/e1/e;->h()V

    .line 7
    iget-object p3, p0, Le/m/a/c/r1/t/b;->l:Le/m/a/c/e1/e;

    iget-wide v1, p3, Le/m/a/c/e1/e;->d:J

    iput-wide v1, p0, Le/m/a/c/r1/t/b;->p:J

    .line 8
    iget-object p4, p0, Le/m/a/c/r1/t/b;->o:Le/m/a/c/r1/t/a;

    if-eqz p4, :cond_0

    .line 9
    iget-object p3, p3, Le/m/a/c/e1/e;->b:Ljava/nio/ByteBuffer;

    .line 10
    sget p4, Le/m/a/c/q1/d0;->a:I

    .line 11
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    const/16 v1, 0x10

    if-eq p4, v1, :cond_2

    const/4 p3, 0x0

    goto :goto_2

    .line 12
    :cond_2
    iget-object p4, p0, Le/m/a/c/r1/t/b;->m:Le/m/a/c/q1/t;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p4, v1, v2}, Le/m/a/c/q1/t;->A([BI)V

    .line 13
    iget-object p4, p0, Le/m/a/c/r1/t/b;->m:Le/m/a/c/q1/t;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p3

    add-int/lit8 p3, p3, 0x4

    invoke-virtual {p4, p3}, Le/m/a/c/q1/t;->C(I)V

    const/4 p3, 0x3

    new-array p4, p3, [F

    :goto_1
    if-ge v0, p3, :cond_3

    .line 14
    iget-object v1, p0, Le/m/a/c/r1/t/b;->m:Le/m/a/c/q1/t;

    invoke-virtual {v1}, Le/m/a/c/q1/t;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    aput v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object p3, p4

    :goto_2
    if-eqz p3, :cond_0

    .line 15
    iget-object p4, p0, Le/m/a/c/r1/t/b;->o:Le/m/a/c/r1/t/a;

    iget-wide v0, p0, Le/m/a/c/r1/t/b;->p:J

    iget-wide v2, p0, Le/m/a/c/r1/t/b;->n:J

    sub-long/2addr v0, v2

    invoke-interface {p4, v0, v1, p3}, Le/m/a/c/r1/t/a;->b(J[F)V

    goto/16 :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public x()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Le/m/a/c/r1/t/b;->p:J

    .line 2
    iget-object v0, p0, Le/m/a/c/r1/t/b;->o:Le/m/a/c/r1/t/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Le/m/a/c/r1/t/a;->c()V

    :cond_0
    return-void
.end method

.method public z(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    const-wide/16 p1, 0x0

    .line 1
    iput-wide p1, p0, Le/m/a/c/r1/t/b;->p:J

    .line 2
    iget-object p1, p0, Le/m/a/c/r1/t/b;->o:Le/m/a/c/r1/t/a;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Le/m/a/c/r1/t/a;->c()V

    :cond_0
    return-void
.end method
