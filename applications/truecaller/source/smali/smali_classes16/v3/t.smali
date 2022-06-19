.class public final Lv3/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/b0;


# instance fields
.field public final a:Lv3/f;

.field public b:Lv3/w;

.field public c:I

.field public d:Z

.field public e:J

.field public final f:Lv3/h;


# direct methods
.method public constructor <init>(Lv3/h;)V
    .locals 1

    const-string v0, "upstream"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/t;->f:Lv3/h;

    .line 2
    invoke-interface {p1}, Lv3/h;->getBuffer()Lv3/f;

    move-result-object p1

    iput-object p1, p0, Lv3/t;->a:Lv3/f;

    .line 3
    iget-object p1, p1, Lv3/f;->a:Lv3/w;

    iput-object p1, p0, Lv3/t;->b:Lv3/w;

    if-eqz p1, :cond_0

    .line 4
    iget p1, p1, Lv3/w;->b:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lv3/t;->c:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lv3/t;->d:Z

    return-void
.end method

.method public d2(Lv3/f;J)J
    .locals 8

    const-string v0, "sink"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eqz v5, :cond_a

    .line 1
    iget-boolean v5, p0, Lv3/t;->d:Z

    xor-int/2addr v5, v4

    if-eqz v5, :cond_9

    .line 2
    iget-object v5, p0, Lv3/t;->b:Lv3/w;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v7, p0, Lv3/t;->a:Lv3/f;

    iget-object v7, v7, Lv3/f;->a:Lv3/w;

    if-ne v5, v7, :cond_3

    iget v5, p0, Lv3/t;->c:I

    if-eqz v7, :cond_1

    iget v7, v7, Lv3/w;->b:I

    if-ne v5, v7, :cond_3

    goto :goto_1

    :cond_1
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v6

    :cond_2
    :goto_1
    move v3, v4

    :cond_3
    if-eqz v3, :cond_8

    if-nez v2, :cond_4

    return-wide v0

    .line 3
    :cond_4
    iget-object v0, p0, Lv3/t;->f:Lv3/h;

    iget-wide v1, p0, Lv3/t;->e:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lv3/h;->U(J)Z

    move-result v0

    if-nez v0, :cond_5

    const-wide/16 p1, -0x1

    return-wide p1

    .line 4
    :cond_5
    iget-object v0, p0, Lv3/t;->b:Lv3/w;

    if-nez v0, :cond_7

    iget-object v0, p0, Lv3/t;->a:Lv3/f;

    iget-object v0, v0, Lv3/f;->a:Lv3/w;

    if-eqz v0, :cond_7

    .line 5
    iput-object v0, p0, Lv3/t;->b:Lv3/w;

    if-eqz v0, :cond_6

    .line 6
    iget v0, v0, Lv3/w;->b:I

    iput v0, p0, Lv3/t;->c:I

    goto :goto_2

    :cond_6
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v6

    .line 7
    :cond_7
    :goto_2
    iget-object v0, p0, Lv3/t;->a:Lv3/f;

    .line 8
    iget-wide v0, v0, Lv3/f;->b:J

    .line 9
    iget-wide v2, p0, Lv3/t;->e:J

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 10
    iget-object v2, p0, Lv3/t;->a:Lv3/f;

    iget-wide v4, p0, Lv3/t;->e:J

    move-object v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lv3/f;->k(Lv3/f;JJ)Lv3/f;

    .line 11
    iget-wide v0, p0, Lv3/t;->e:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lv3/t;->e:J

    return-wide p2

    .line 12
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Peek source is invalid because upstream source was used"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const-string p1, "byteCount < 0: "

    .line 14
    invoke-static {p1, p2, p3}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public i()Lv3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/t;->f:Lv3/h;

    invoke-interface {v0}, Lv3/b0;->i()Lv3/c0;

    move-result-object v0

    return-object v0
.end method
