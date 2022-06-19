.class public final Lw3/b/a/f0/m$b;
.super Lw3/b/a/f0/m$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/f0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic i:Lw3/b/a/f0/m;


# direct methods
.method public constructor <init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;Lw3/b/a/j;JZ)V
    .locals 8

    .line 3
    iput-object p1, p0, Lw3/b/a/f0/m$b;->i:Lw3/b/a/f0/m;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p5

    move v7, p7

    .line 4
    invoke-direct/range {v0 .. v7}, Lw3/b/a/f0/m$a;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;Lw3/b/a/j;JZ)V

    if-nez p4, :cond_0

    .line 5
    new-instance p4, Lw3/b/a/f0/m$c;

    iget-object p1, p0, Lw3/b/a/f0/m$a;->f:Lw3/b/a/j;

    invoke-direct {p4, p1, p0}, Lw3/b/a/f0/m$c;-><init>(Lw3/b/a/j;Lw3/b/a/f0/m$b;)V

    .line 6
    :cond_0
    iput-object p4, p0, Lw3/b/a/f0/m$a;->f:Lw3/b/a/j;

    return-void
.end method

.method public constructor <init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;Lw3/b/a/j;Lw3/b/a/j;J)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lw3/b/a/f0/m$b;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;Lw3/b/a/j;JZ)V

    .line 2
    iput-object p5, p0, Lw3/b/a/f0/m$a;->g:Lw3/b/a/j;

    return-void
.end method


# virtual methods
.method public a(JI)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->a(JI)J

    move-result-wide p1

    .line 3
    iget-wide v0, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long p3, p1, v0

    if-gez p3, :cond_3

    .line 4
    iget-object p3, p0, Lw3/b/a/f0/m$b;->i:Lw3/b/a/f0/m;

    .line 5
    iget-wide v2, p3, Lw3/b/a/f0/m;->U:J

    add-long/2addr v2, p1

    cmp-long v0, v2, v0

    if-gez v0, :cond_3

    .line 6
    iget-boolean v0, p0, Lw3/b/a/f0/m$a;->e:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 7
    iget-object p3, p3, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    .line 8
    iget-object p3, p3, Lw3/b/a/f0/a;->D:Lw3/b/a/c;

    .line 9
    invoke-virtual {p3, p1, p2}, Lw3/b/a/c;->c(J)I

    move-result p3

    if-gtz p3, :cond_1

    .line 10
    iget-object p3, p0, Lw3/b/a/f0/m$b;->i:Lw3/b/a/f0/m;

    .line 11
    iget-object p3, p3, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    .line 12
    iget-object p3, p3, Lw3/b/a/f0/a;->D:Lw3/b/a/c;

    .line 13
    invoke-virtual {p3, p1, p2, v1}, Lw3/b/a/c;->a(JI)J

    move-result-wide p1

    goto :goto_0

    .line 14
    :cond_0
    iget-object p3, p3, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    .line 15
    iget-object p3, p3, Lw3/b/a/f0/a;->K:Lw3/b/a/c;

    .line 16
    invoke-virtual {p3, p1, p2}, Lw3/b/a/c;->c(J)I

    move-result p3

    if-gtz p3, :cond_1

    .line 17
    iget-object p3, p0, Lw3/b/a/f0/m$b;->i:Lw3/b/a/f0/m;

    .line 18
    iget-object p3, p3, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    .line 19
    iget-object p3, p3, Lw3/b/a/f0/a;->K:Lw3/b/a/c;

    .line 20
    invoke-virtual {p3, p1, p2, v1}, Lw3/b/a/c;->a(JI)J

    move-result-wide p1

    .line 21
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/m$a;->G(J)J

    move-result-wide p1

    goto :goto_1

    .line 22
    :cond_2
    iget-object v0, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->a(JI)J

    move-result-wide p1

    .line 23
    iget-wide v0, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long p3, p1, v0

    if-ltz p3, :cond_3

    .line 24
    iget-object p3, p0, Lw3/b/a/f0/m$b;->i:Lw3/b/a/f0/m;

    .line 25
    iget-wide v2, p3, Lw3/b/a/f0/m;->U:J

    sub-long v2, p1, v2

    cmp-long p3, v2, v0

    if-ltz p3, :cond_3

    .line 26
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/m$a;->H(J)J

    move-result-wide p1

    :cond_3
    :goto_1
    return-wide p1
.end method

.method public b(JJ)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->b(JJ)J

    move-result-wide p1

    .line 3
    iget-wide p3, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v0, p1, p3

    if-gez v0, :cond_3

    .line 4
    iget-object v0, p0, Lw3/b/a/f0/m$b;->i:Lw3/b/a/f0/m;

    .line 5
    iget-wide v1, v0, Lw3/b/a/f0/m;->U:J

    add-long/2addr v1, p1

    cmp-long p3, v1, p3

    if-gez p3, :cond_3

    .line 6
    iget-boolean p3, p0, Lw3/b/a/f0/m$a;->e:Z

    const/4 p4, -0x1

    if-eqz p3, :cond_0

    .line 7
    iget-object p3, v0, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    .line 8
    iget-object p3, p3, Lw3/b/a/f0/a;->D:Lw3/b/a/c;

    .line 9
    invoke-virtual {p3, p1, p2}, Lw3/b/a/c;->c(J)I

    move-result p3

    if-gtz p3, :cond_1

    .line 10
    iget-object p3, p0, Lw3/b/a/f0/m$b;->i:Lw3/b/a/f0/m;

    .line 11
    iget-object p3, p3, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    .line 12
    iget-object p3, p3, Lw3/b/a/f0/a;->D:Lw3/b/a/c;

    .line 13
    invoke-virtual {p3, p1, p2, p4}, Lw3/b/a/c;->a(JI)J

    move-result-wide p1

    goto :goto_0

    .line 14
    :cond_0
    iget-object p3, v0, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    .line 15
    iget-object p3, p3, Lw3/b/a/f0/a;->K:Lw3/b/a/c;

    .line 16
    invoke-virtual {p3, p1, p2}, Lw3/b/a/c;->c(J)I

    move-result p3

    if-gtz p3, :cond_1

    .line 17
    iget-object p3, p0, Lw3/b/a/f0/m$b;->i:Lw3/b/a/f0/m;

    .line 18
    iget-object p3, p3, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    .line 19
    iget-object p3, p3, Lw3/b/a/f0/a;->K:Lw3/b/a/c;

    .line 20
    invoke-virtual {p3, p1, p2, p4}, Lw3/b/a/c;->a(JI)J

    move-result-wide p1

    .line 21
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/m$a;->G(J)J

    move-result-wide p1

    goto :goto_1

    .line 22
    :cond_2
    iget-object v0, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->b(JJ)J

    move-result-wide p1

    .line 23
    iget-wide p3, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v0, p1, p3

    if-ltz v0, :cond_3

    .line 24
    iget-object v0, p0, Lw3/b/a/f0/m$b;->i:Lw3/b/a/f0/m;

    .line 25
    iget-wide v0, v0, Lw3/b/a/f0/m;->U:J

    sub-long v0, p1, v0

    cmp-long p3, v0, p3

    if-ltz p3, :cond_3

    .line 26
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/m$a;->H(J)J

    move-result-wide p1

    :cond_3
    :goto_1
    return-wide p1
.end method

.method public j(JJ)I
    .locals 3

    .line 1
    iget-wide v0, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->j(JJ)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/m$a;->G(J)J

    move-result-wide p1

    .line 4
    iget-object v0, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->j(JJ)I

    move-result p1

    return p1

    :cond_1
    cmp-long v0, p3, v0

    if-gez v0, :cond_2

    .line 5
    iget-object v0, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->j(JJ)I

    move-result p1

    return p1

    .line 6
    :cond_2
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/m$a;->H(J)J

    move-result-wide p1

    .line 7
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->j(JJ)I

    move-result p1

    return p1
.end method

.method public k(JJ)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->k(JJ)J

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/m$a;->G(J)J

    move-result-wide p1

    .line 4
    iget-object v0, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->k(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_1
    cmp-long v0, p3, v0

    if-gez v0, :cond_2

    .line 5
    iget-object v0, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->k(JJ)J

    move-result-wide p1

    return-wide p1

    .line 6
    :cond_2
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/m$a;->H(J)J

    move-result-wide p1

    .line 7
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->k(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public p(J)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->p(J)I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->p(J)I

    move-result p1

    return p1
.end method
