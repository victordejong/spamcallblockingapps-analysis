.class public final Ln3/y/b/a/q0/v/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/v/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/q0/v/a$b;
    }
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/q0/v/e;

.field public final b:J

.field public final c:J

.field public final d:Ln3/y/b/a/q0/v/h;

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J


# direct methods
.method public constructor <init>(Ln3/y/b/a/q0/v/h;JJJJZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/y/b/a/q0/v/e;

    invoke-direct {v0}, Ln3/y/b/a/q0/v/e;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/q0/v/a;->a:Ln3/y/b/a/q0/v/e;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    cmp-long v0, p4, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    .line 4
    iput-object p1, p0, Ln3/y/b/a/q0/v/a;->d:Ln3/y/b/a/q0/v/h;

    .line 5
    iput-wide p2, p0, Ln3/y/b/a/q0/v/a;->b:J

    .line 6
    iput-wide p4, p0, Ln3/y/b/a/q0/v/a;->c:J

    sub-long/2addr p4, p2

    cmp-long p1, p6, p4

    if-eqz p1, :cond_2

    if-eqz p10, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iput v1, p0, Ln3/y/b/a/q0/v/a;->e:I

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    iput-wide p8, p0, Ln3/y/b/a/q0/v/a;->f:J

    const/4 p1, 0x4

    .line 9
    iput p1, p0, Ln3/y/b/a/q0/v/a;->e:I

    :goto_2
    return-void
.end method


# virtual methods
.method public a()Ln3/y/b/a/q0/n;
    .locals 4

    .line 1
    iget-wide v0, p0, Ln3/y/b/a/q0/v/a;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ln3/y/b/a/q0/v/a$b;

    invoke-direct {v0, p0, v1}, Ln3/y/b/a/q0/v/a$b;-><init>(Ln3/y/b/a/q0/v/a;Ln3/y/b/a/q0/v/a$a;)V

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public final b(Ln3/y/b/a/q0/d;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v0, 0x3

    add-long/2addr p2, v0

    .line 1
    iget-wide v0, p0, Ln3/y/b/a/q0/v/a;->c:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    const/16 v0, 0x800

    new-array v1, v0, [B

    .line 2
    :goto_0
    iget-wide v2, p1, Ln3/y/b/a/q0/d;->d:J

    int-to-long v4, v0

    add-long/2addr v4, v2

    cmp-long v4, v4, p2

    const/4 v5, 0x0

    if-lez v4, :cond_0

    sub-long v2, p2, v2

    long-to-int v0, v2

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v5

    .line 3
    :cond_0
    invoke-virtual {p1, v1, v5, v0, v5}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    :goto_1
    add-int/lit8 v2, v0, -0x3

    if-ge v5, v2, :cond_2

    .line 4
    aget-byte v2, v1, v5

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v5, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x67

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v5, 0x2

    aget-byte v2, v1, v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v5, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0x53

    if-ne v2, v3, :cond_1

    .line 5
    invoke-virtual {p1, v5}, Ln3/y/b/a/q0/d;->h(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p1, v2}, Ln3/y/b/a/q0/d;->h(I)V

    goto :goto_0
.end method

.method public d(J)V
    .locals 10

    .line 1
    iget-wide v0, p0, Ln3/y/b/a/q0/v/a;->f:J

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    const-wide/16 v6, 0x0

    move-wide v4, p1

    invoke-static/range {v4 .. v9}, Ln3/y/b/a/x0/x;->h(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Ln3/y/b/a/q0/v/a;->h:J

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Ln3/y/b/a/q0/v/a;->e:I

    .line 3
    iget-wide p1, p0, Ln3/y/b/a/q0/v/a;->b:J

    iput-wide p1, p0, Ln3/y/b/a/q0/v/a;->i:J

    .line 4
    iget-wide p1, p0, Ln3/y/b/a/q0/v/a;->c:J

    iput-wide p1, p0, Ln3/y/b/a/q0/v/a;->j:J

    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Ln3/y/b/a/q0/v/a;->k:J

    .line 6
    iget-wide p1, p0, Ln3/y/b/a/q0/v/a;->f:J

    iput-wide p1, p0, Ln3/y/b/a/q0/v/a;->l:J

    return-void
.end method

.method public h(Ln3/y/b/a/q0/d;)J
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Ln3/y/b/a/q0/v/a;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz v2, :cond_c

    if-eq v2, v3, :cond_d

    const/4 v3, 0x2

    const/4 v8, 0x3

    const-wide/16 v9, -0x1

    if-eq v2, v3, :cond_1

    if-eq v2, v8, :cond_a

    if-ne v2, v5, :cond_0

    return-wide v9

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 3
    :cond_1
    iget-wide v2, v0, Ln3/y/b/a/q0/v/a;->i:J

    iget-wide v11, v0, Ln3/y/b/a/q0/v/a;->j:J

    cmp-long v2, v2, v11

    if-nez v2, :cond_2

    :goto_0
    move-wide v11, v9

    goto/16 :goto_3

    .line 4
    :cond_2
    iget-wide v2, v1, Ln3/y/b/a/q0/d;->d:J

    .line 5
    invoke-virtual {v0, v1, v11, v12}, Ln3/y/b/a/q0/v/a;->b(Ln3/y/b/a/q0/d;J)Z

    move-result v11

    if-nez v11, :cond_4

    .line 6
    iget-wide v11, v0, Ln3/y/b/a/q0/v/a;->i:J

    cmp-long v2, v11, v2

    if-eqz v2, :cond_3

    goto/16 :goto_3

    .line 7
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No ogg page can be found."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_4
    iget-object v11, v0, Ln3/y/b/a/q0/v/a;->a:Ln3/y/b/a/q0/v/e;

    invoke-virtual {v11, v1, v4}, Ln3/y/b/a/q0/v/e;->a(Ln3/y/b/a/q0/d;Z)Z

    .line 9
    iput v4, v1, Ln3/y/b/a/q0/d;->f:I

    .line 10
    iget-wide v11, v0, Ln3/y/b/a/q0/v/a;->h:J

    iget-object v13, v0, Ln3/y/b/a/q0/v/a;->a:Ln3/y/b/a/q0/v/e;

    iget-wide v14, v13, Ln3/y/b/a/q0/v/e;->c:J

    sub-long/2addr v11, v14

    .line 11
    iget v6, v13, Ln3/y/b/a/q0/v/e;->e:I

    iget v7, v13, Ln3/y/b/a/q0/v/e;->f:I

    add-int/2addr v6, v7

    const-wide/16 v16, 0x0

    cmp-long v7, v16, v11

    if-gtz v7, :cond_5

    const-wide/32 v18, 0x11940

    cmp-long v7, v11, v18

    if-gez v7, :cond_5

    goto :goto_0

    :cond_5
    cmp-long v7, v11, v16

    if-gez v7, :cond_6

    .line 12
    iput-wide v2, v0, Ln3/y/b/a/q0/v/a;->j:J

    .line 13
    iput-wide v14, v0, Ln3/y/b/a/q0/v/a;->l:J

    goto :goto_1

    .line 14
    :cond_6
    iget-wide v2, v1, Ln3/y/b/a/q0/d;->d:J

    int-to-long v4, v6

    add-long/2addr v2, v4

    .line 15
    iput-wide v2, v0, Ln3/y/b/a/q0/v/a;->i:J

    .line 16
    iput-wide v14, v0, Ln3/y/b/a/q0/v/a;->k:J

    .line 17
    :goto_1
    iget-wide v2, v0, Ln3/y/b/a/q0/v/a;->j:J

    iget-wide v4, v0, Ln3/y/b/a/q0/v/a;->i:J

    sub-long v14, v2, v4

    const-wide/32 v17, 0x186a0

    cmp-long v17, v14, v17

    if-gez v17, :cond_7

    .line 18
    iput-wide v4, v0, Ln3/y/b/a/q0/v/a;->j:J

    move-wide v11, v4

    goto :goto_3

    :cond_7
    int-to-long v8, v6

    const-wide/16 v17, 0x1

    if-gtz v7, :cond_8

    const-wide/16 v6, 0x2

    goto :goto_2

    :cond_8
    move-wide/from16 v6, v17

    :goto_2
    mul-long/2addr v8, v6

    .line 19
    iget-wide v6, v1, Ln3/y/b/a/q0/d;->d:J

    sub-long/2addr v6, v8

    mul-long/2addr v14, v11

    .line 20
    iget-wide v8, v0, Ln3/y/b/a/q0/v/a;->l:J

    iget-wide v10, v0, Ln3/y/b/a/q0/v/a;->k:J

    sub-long/2addr v8, v10

    div-long/2addr v14, v8

    add-long/2addr v6, v14

    sub-long v21, v2, v17

    move-wide/from16 v17, v6

    move-wide/from16 v19, v4

    .line 21
    invoke-static/range {v17 .. v22}, Ln3/y/b/a/x0/x;->h(JJJ)J

    move-result-wide v11

    :goto_3
    const-wide/16 v2, -0x1

    cmp-long v2, v11, v2

    if-eqz v2, :cond_9

    return-wide v11

    :cond_9
    const/4 v2, 0x3

    .line 22
    iput v2, v0, Ln3/y/b/a/q0/v/a;->e:I

    .line 23
    :cond_a
    iget-object v2, v0, Ln3/y/b/a/q0/v/a;->a:Ln3/y/b/a/q0/v/e;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ln3/y/b/a/q0/v/e;->a(Ln3/y/b/a/q0/d;Z)Z

    .line 24
    :goto_4
    iget-object v2, v0, Ln3/y/b/a/q0/v/a;->a:Ln3/y/b/a/q0/v/e;

    iget-wide v3, v2, Ln3/y/b/a/q0/v/e;->c:J

    iget-wide v5, v0, Ln3/y/b/a/q0/v/a;->h:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_b

    .line 25
    iget v3, v2, Ln3/y/b/a/q0/v/e;->e:I

    iget v2, v2, Ln3/y/b/a/q0/v/e;->f:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ln3/y/b/a/q0/d;->h(I)V

    .line 26
    iget-wide v2, v1, Ln3/y/b/a/q0/d;->d:J

    .line 27
    iput-wide v2, v0, Ln3/y/b/a/q0/v/a;->i:J

    .line 28
    iget-object v2, v0, Ln3/y/b/a/q0/v/a;->a:Ln3/y/b/a/q0/v/e;

    iget-wide v3, v2, Ln3/y/b/a/q0/v/e;->c:J

    iput-wide v3, v0, Ln3/y/b/a/q0/v/a;->k:J

    const/4 v3, 0x0

    .line 29
    invoke-virtual {v2, v1, v3}, Ln3/y/b/a/q0/v/e;->a(Ln3/y/b/a/q0/d;Z)Z

    goto :goto_4

    :cond_b
    const/4 v3, 0x0

    .line 30
    iput v3, v1, Ln3/y/b/a/q0/d;->f:I

    const/4 v1, 0x4

    .line 31
    iput v1, v0, Ln3/y/b/a/q0/v/a;->e:I

    .line 32
    iget-wide v1, v0, Ln3/y/b/a/q0/v/a;->k:J

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    neg-long v1, v1

    return-wide v1

    .line 33
    :cond_c
    iget-wide v4, v1, Ln3/y/b/a/q0/d;->d:J

    .line 34
    iput-wide v4, v0, Ln3/y/b/a/q0/v/a;->g:J

    .line 35
    iput v3, v0, Ln3/y/b/a/q0/v/a;->e:I

    .line 36
    iget-wide v2, v0, Ln3/y/b/a/q0/v/a;->c:J

    const-wide/32 v6, 0xff1b

    sub-long/2addr v2, v6

    cmp-long v4, v2, v4

    if-lez v4, :cond_d

    return-wide v2

    .line 37
    :cond_d
    iget-wide v2, v0, Ln3/y/b/a/q0/v/a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Ln3/y/b/a/q0/v/a;->b(Ln3/y/b/a/q0/d;J)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 38
    iget-object v2, v0, Ln3/y/b/a/q0/v/a;->a:Ln3/y/b/a/q0/v/e;

    invoke-virtual {v2}, Ln3/y/b/a/q0/v/e;->b()V

    .line 39
    :goto_5
    iget-object v2, v0, Ln3/y/b/a/q0/v/a;->a:Ln3/y/b/a/q0/v/e;

    iget v3, v2, Ln3/y/b/a/q0/v/e;->b:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_e

    .line 40
    iget-wide v3, v1, Ln3/y/b/a/q0/d;->d:J

    .line 41
    iget-wide v5, v0, Ln3/y/b/a/q0/v/a;->c:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_e

    const/4 v3, 0x0

    .line 42
    invoke-virtual {v2, v1, v3}, Ln3/y/b/a/q0/v/e;->a(Ln3/y/b/a/q0/d;Z)Z

    .line 43
    iget-object v2, v0, Ln3/y/b/a/q0/v/a;->a:Ln3/y/b/a/q0/v/e;

    iget v4, v2, Ln3/y/b/a/q0/v/e;->e:I

    iget v2, v2, Ln3/y/b/a/q0/v/e;->f:I

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Ln3/y/b/a/q0/d;->h(I)V

    goto :goto_5

    .line 44
    :cond_e
    iget-wide v1, v2, Ln3/y/b/a/q0/v/e;->c:J

    .line 45
    iput-wide v1, v0, Ln3/y/b/a/q0/v/a;->f:J

    const/4 v1, 0x4

    .line 46
    iput v1, v0, Ln3/y/b/a/q0/v/a;->e:I

    .line 47
    iget-wide v1, v0, Ln3/y/b/a/q0/v/a;->g:J

    return-wide v1

    .line 48
    :cond_f
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method
