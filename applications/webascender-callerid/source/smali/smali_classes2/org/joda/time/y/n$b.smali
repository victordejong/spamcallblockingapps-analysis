.class final Lorg/joda/time/y/n$b;
.super Lorg/joda/time/y/n$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/y/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic i:Lorg/joda/time/y/n;


# direct methods
.method constructor <init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;J)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p4

    .line 1
    invoke-direct/range {v0 .. v7}, Lorg/joda/time/y/n$b;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;Lorg/joda/time/h;JZ)V

    return-void
.end method

.method constructor <init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;Lorg/joda/time/h;J)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    .line 2
    invoke-direct/range {v0 .. v7}, Lorg/joda/time/y/n$b;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;Lorg/joda/time/h;JZ)V

    return-void
.end method

.method constructor <init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;Lorg/joda/time/h;JZ)V
    .locals 7

    .line 5
    iput-object p1, p0, Lorg/joda/time/y/n$b;->i:Lorg/joda/time/y/n;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p5

    move v6, p7

    .line 6
    invoke-direct/range {v0 .. v6}, Lorg/joda/time/y/n$a;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;JZ)V

    if-nez p4, :cond_0

    .line 7
    new-instance p4, Lorg/joda/time/y/n$c;

    iget-object p1, p0, Lorg/joda/time/y/n$a;->f:Lorg/joda/time/h;

    invoke-direct {p4, p1, p0}, Lorg/joda/time/y/n$c;-><init>(Lorg/joda/time/h;Lorg/joda/time/y/n$b;)V

    .line 8
    :cond_0
    iput-object p4, p0, Lorg/joda/time/y/n$a;->f:Lorg/joda/time/h;

    return-void
.end method

.method constructor <init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;Lorg/joda/time/h;Lorg/joda/time/h;J)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p6

    .line 3
    invoke-direct/range {v0 .. v7}, Lorg/joda/time/y/n$b;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;Lorg/joda/time/h;JZ)V

    .line 4
    iput-object p5, p0, Lorg/joda/time/y/n$a;->g:Lorg/joda/time/h;

    return-void
.end method


# virtual methods
.method public a(JI)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->a(JI)J

    move-result-wide p1

    .line 3
    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long p3, p1, v0

    if-gez p3, :cond_3

    .line 4
    iget-object p3, p0, Lorg/joda/time/y/n$b;->i:Lorg/joda/time/y/n;

    invoke-static {p3}, Lorg/joda/time/y/n;->W(Lorg/joda/time/y/n;)J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-wide v2, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long p3, v0, v2

    if-gez p3, :cond_3

    .line 5
    iget-boolean p3, p0, Lorg/joda/time/y/n$a;->e:Z

    const/4 v0, -0x1

    if-eqz p3, :cond_0

    .line 6
    iget-object p3, p0, Lorg/joda/time/y/n$b;->i:Lorg/joda/time/y/n;

    invoke-static {p3}, Lorg/joda/time/y/n;->X(Lorg/joda/time/y/n;)Lorg/joda/time/y/t;

    move-result-object p3

    invoke-virtual {p3}, Lorg/joda/time/y/a;->J()Lorg/joda/time/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/joda/time/c;->c(J)I

    move-result p3

    if-gtz p3, :cond_1

    .line 7
    iget-object p3, p0, Lorg/joda/time/y/n$b;->i:Lorg/joda/time/y/n;

    invoke-static {p3}, Lorg/joda/time/y/n;->X(Lorg/joda/time/y/n;)Lorg/joda/time/y/t;

    move-result-object p3

    invoke-virtual {p3}, Lorg/joda/time/y/a;->J()Lorg/joda/time/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v0}, Lorg/joda/time/c;->a(JI)J

    move-result-wide p1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p3, p0, Lorg/joda/time/y/n$b;->i:Lorg/joda/time/y/n;

    invoke-static {p3}, Lorg/joda/time/y/n;->X(Lorg/joda/time/y/n;)Lorg/joda/time/y/t;

    move-result-object p3

    invoke-virtual {p3}, Lorg/joda/time/y/a;->O()Lorg/joda/time/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/joda/time/c;->c(J)I

    move-result p3

    if-gtz p3, :cond_1

    .line 9
    iget-object p3, p0, Lorg/joda/time/y/n$b;->i:Lorg/joda/time/y/n;

    invoke-static {p3}, Lorg/joda/time/y/n;->X(Lorg/joda/time/y/n;)Lorg/joda/time/y/t;

    move-result-object p3

    invoke-virtual {p3}, Lorg/joda/time/y/a;->O()Lorg/joda/time/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v0}, Lorg/joda/time/c;->a(JI)J

    move-result-wide p1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/n$a;->M(J)J

    move-result-wide p1

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->a(JI)J

    move-result-wide p1

    .line 12
    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long p3, p1, v0

    if-ltz p3, :cond_3

    .line 13
    iget-object p3, p0, Lorg/joda/time/y/n$b;->i:Lorg/joda/time/y/n;

    invoke-static {p3}, Lorg/joda/time/y/n;->W(Lorg/joda/time/y/n;)J

    move-result-wide v0

    sub-long v0, p1, v0

    iget-wide v2, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long p3, v0, v2

    if-ltz p3, :cond_3

    .line 14
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/n$a;->N(J)J

    move-result-wide p1

    :cond_3
    :goto_1
    return-wide p1
.end method

.method public b(JJ)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->b(JJ)J

    move-result-wide p1

    .line 3
    iget-wide p3, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v0, p1, p3

    if-gez v0, :cond_3

    .line 4
    iget-object p3, p0, Lorg/joda/time/y/n$b;->i:Lorg/joda/time/y/n;

    invoke-static {p3}, Lorg/joda/time/y/n;->W(Lorg/joda/time/y/n;)J

    move-result-wide p3

    add-long/2addr p3, p1

    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v2, p3, v0

    if-gez v2, :cond_3

    .line 5
    iget-boolean p3, p0, Lorg/joda/time/y/n$a;->e:Z

    const/4 p4, -0x1

    if-eqz p3, :cond_0

    .line 6
    iget-object p3, p0, Lorg/joda/time/y/n$b;->i:Lorg/joda/time/y/n;

    invoke-static {p3}, Lorg/joda/time/y/n;->X(Lorg/joda/time/y/n;)Lorg/joda/time/y/t;

    move-result-object p3

    invoke-virtual {p3}, Lorg/joda/time/y/a;->J()Lorg/joda/time/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/joda/time/c;->c(J)I

    move-result p3

    if-gtz p3, :cond_1

    .line 7
    iget-object p3, p0, Lorg/joda/time/y/n$b;->i:Lorg/joda/time/y/n;

    invoke-static {p3}, Lorg/joda/time/y/n;->X(Lorg/joda/time/y/n;)Lorg/joda/time/y/t;

    move-result-object p3

    invoke-virtual {p3}, Lorg/joda/time/y/a;->J()Lorg/joda/time/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4}, Lorg/joda/time/c;->a(JI)J

    move-result-wide p1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p3, p0, Lorg/joda/time/y/n$b;->i:Lorg/joda/time/y/n;

    invoke-static {p3}, Lorg/joda/time/y/n;->X(Lorg/joda/time/y/n;)Lorg/joda/time/y/t;

    move-result-object p3

    invoke-virtual {p3}, Lorg/joda/time/y/a;->O()Lorg/joda/time/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/joda/time/c;->c(J)I

    move-result p3

    if-gtz p3, :cond_1

    .line 9
    iget-object p3, p0, Lorg/joda/time/y/n$b;->i:Lorg/joda/time/y/n;

    invoke-static {p3}, Lorg/joda/time/y/n;->X(Lorg/joda/time/y/n;)Lorg/joda/time/y/t;

    move-result-object p3

    invoke-virtual {p3}, Lorg/joda/time/y/a;->O()Lorg/joda/time/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4}, Lorg/joda/time/c;->a(JI)J

    move-result-wide p1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/n$a;->M(J)J

    move-result-wide p1

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->b(JJ)J

    move-result-wide p1

    .line 12
    iget-wide p3, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v0, p1, p3

    if-ltz v0, :cond_3

    .line 13
    iget-object p3, p0, Lorg/joda/time/y/n$b;->i:Lorg/joda/time/y/n;

    invoke-static {p3}, Lorg/joda/time/y/n;->W(Lorg/joda/time/y/n;)J

    move-result-wide p3

    sub-long p3, p1, p3

    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v2, p3, v0

    if-ltz v2, :cond_3

    .line 14
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/n$a;->N(J)J

    move-result-wide p1

    :cond_3
    :goto_1
    return-wide p1
.end method

.method public j(JJ)I
    .locals 3

    .line 1
    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p3, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->j(JJ)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/n$a;->M(J)J

    move-result-wide p1

    .line 4
    iget-object v0, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->j(JJ)I

    move-result p1

    return p1

    :cond_1
    cmp-long v2, p3, v0

    if-gez v2, :cond_2

    .line 5
    iget-object v0, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->j(JJ)I

    move-result p1

    return p1

    .line 6
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/n$a;->N(J)J

    move-result-wide p1

    .line 7
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->j(JJ)I

    move-result p1

    return p1
.end method

.method public k(JJ)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p3, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->k(JJ)J

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/n$a;->M(J)J

    move-result-wide p1

    .line 4
    iget-object v0, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->k(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_1
    cmp-long v2, p3, v0

    if-gez v2, :cond_2

    .line 5
    iget-object v0, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->k(JJ)J

    move-result-wide p1

    return-wide p1

    .line 6
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/n$a;->N(J)J

    move-result-wide p1

    .line 7
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->k(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public p(J)I
    .locals 3

    .line 1
    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->p(J)I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->p(J)I

    move-result p1

    return p1
.end method
