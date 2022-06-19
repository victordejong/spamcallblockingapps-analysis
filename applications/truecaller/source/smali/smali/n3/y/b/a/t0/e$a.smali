.class public final Ln3/y/b/a/t0/e$a;
.super Ln3/y/b/a/t0/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/t0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Z


# direct methods
.method public constructor <init>(Ln3/y/b/a/l0;JJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/t0/e$b;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ln3/y/b/a/t0/o;-><init>(Ln3/y/b/a/l0;)V

    .line 2
    invoke-virtual {p1}, Ln3/y/b/a/l0;->i()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 3
    new-instance v0, Ln3/y/b/a/l0$c;

    invoke-direct {v0}, Ln3/y/b/a/l0$c;-><init>()V

    invoke-virtual {p1, v1, v0}, Ln3/y/b/a/l0;->m(ILn3/y/b/a/l0$c;)Ln3/y/b/a/l0$c;

    move-result-object p1

    const-wide/16 v3, 0x0

    .line 4
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, p4, v5

    if-nez v0, :cond_0

    .line 5
    iget-wide p4, p1, Ln3/y/b/a/l0$c;->j:J

    goto :goto_0

    :cond_0
    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    .line 6
    :goto_0
    iget-wide v5, p1, Ln3/y/b/a/l0$c;->j:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v7

    if-eqz v0, :cond_5

    cmp-long v9, p4, v5

    if-lez v9, :cond_1

    move-wide p4, v5

    :cond_1
    cmp-long v3, p2, v3

    if-eqz v3, :cond_3

    .line 7
    iget-boolean v3, p1, Ln3/y/b/a/l0$c;->e:Z

    if-eqz v3, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance p1, Ln3/y/b/a/t0/e$b;

    invoke-direct {p1, v2}, Ln3/y/b/a/t0/e$b;-><init>(I)V

    throw p1

    :cond_3
    :goto_1
    cmp-long v3, p2, p4

    if-gtz v3, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    new-instance p1, Ln3/y/b/a/t0/e$b;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ln3/y/b/a/t0/e$b;-><init>(I)V

    throw p1

    .line 10
    :cond_5
    :goto_2
    iput-wide p2, p0, Ln3/y/b/a/t0/e$a;->c:J

    .line 11
    iput-wide p4, p0, Ln3/y/b/a/t0/e$a;->d:J

    cmp-long v3, p4, v7

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    sub-long v7, p4, p2

    .line 12
    :goto_3
    iput-wide v7, p0, Ln3/y/b/a/t0/e$a;->e:J

    .line 13
    iget-boolean p1, p1, Ln3/y/b/a/l0$c;->f:Z

    if-eqz p1, :cond_8

    if-eqz v3, :cond_7

    if-eqz v0, :cond_8

    cmp-long p1, p4, v5

    if-nez p1, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    iput-boolean v1, p0, Ln3/y/b/a/t0/e$a;->f:Z

    return-void

    .line 14
    :cond_9
    new-instance p1, Ln3/y/b/a/t0/e$b;

    invoke-direct {p1, v1}, Ln3/y/b/a/t0/e$b;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public g(ILn3/y/b/a/l0$b;Z)Ln3/y/b/a/l0$b;
    .locals 12

    .line 1
    iget-object p1, p0, Ln3/y/b/a/t0/o;->b:Ln3/y/b/a/l0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Ln3/y/b/a/l0;->g(ILn3/y/b/a/l0$b;Z)Ln3/y/b/a/l0$b;

    .line 2
    iget-wide v0, p2, Ln3/y/b/a/l0$b;->e:J

    .line 3
    iget-wide v2, p0, Ln3/y/b/a/t0/e$a;->c:J

    sub-long v10, v0, v2

    .line 4
    iget-wide v0, p0, Ln3/y/b/a/t0/e$a;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    move-wide v8, v2

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v10

    move-wide v8, v0

    .line 5
    :goto_0
    iget-object v5, p2, Ln3/y/b/a/l0$b;->a:Ljava/lang/Object;

    iget-object v6, p2, Ln3/y/b/a/l0$b;->b:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v4, p2

    invoke-virtual/range {v4 .. v11}, Ln3/y/b/a/l0$b;->f(Ljava/lang/Object;Ljava/lang/Object;IJJ)Ln3/y/b/a/l0$b;

    return-object p2
.end method

.method public n(ILn3/y/b/a/l0$c;J)Ln3/y/b/a/l0$c;
    .locals 4

    .line 1
    iget-object p1, p0, Ln3/y/b/a/t0/o;->b:Ln3/y/b/a/l0;

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, p2, v0, v1}, Ln3/y/b/a/l0;->n(ILn3/y/b/a/l0$c;J)Ln3/y/b/a/l0$c;

    .line 2
    iget-wide p3, p2, Ln3/y/b/a/l0$c;->k:J

    iget-wide v0, p0, Ln3/y/b/a/t0/e$a;->c:J

    add-long/2addr p3, v0

    iput-wide p3, p2, Ln3/y/b/a/l0$c;->k:J

    .line 3
    iget-wide p3, p0, Ln3/y/b/a/t0/e$a;->e:J

    iput-wide p3, p2, Ln3/y/b/a/l0$c;->j:J

    .line 4
    iget-boolean p1, p0, Ln3/y/b/a/t0/e$a;->f:Z

    iput-boolean p1, p2, Ln3/y/b/a/l0$c;->f:Z

    .line 5
    iget-wide p3, p2, Ln3/y/b/a/l0$c;->i:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v2

    if-eqz p1, :cond_1

    .line 6
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p2, Ln3/y/b/a/l0$c;->i:J

    .line 7
    iget-wide v0, p0, Ln3/y/b/a/t0/e$a;->d:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :goto_0
    iput-wide p3, p2, Ln3/y/b/a/l0$c;->i:J

    .line 9
    iget-wide v0, p0, Ln3/y/b/a/t0/e$a;->c:J

    sub-long/2addr p3, v0

    iput-wide p3, p2, Ln3/y/b/a/l0$c;->i:J

    .line 10
    :cond_1
    iget-wide p3, p0, Ln3/y/b/a/t0/e$a;->c:J

    invoke-static {p3, p4}, Ln3/y/b/a/c;->b(J)J

    move-result-wide p3

    .line 11
    iget-wide v0, p2, Ln3/y/b/a/l0$c;->c:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    add-long/2addr v0, p3

    .line 12
    iput-wide v0, p2, Ln3/y/b/a/l0$c;->c:J

    .line 13
    :cond_2
    iget-wide v0, p2, Ln3/y/b/a/l0$c;->d:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    add-long/2addr v0, p3

    .line 14
    iput-wide v0, p2, Ln3/y/b/a/l0$c;->d:J

    :cond_3
    return-object p2
.end method
