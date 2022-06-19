.class public abstract Ln3/y/b/a/q0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/q0/a$a;,
        Ln3/y/b/a/q0/a$f;,
        Ln3/y/b/a/q0/a$d;,
        Ln3/y/b/a/q0/a$e;,
        Ln3/y/b/a/q0/a$b;,
        Ln3/y/b/a/q0/a$c;,
        Ln3/y/b/a/q0/a$g;
    }
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/q0/a$a;

.field public final b:Ln3/y/b/a/q0/a$g;

.field public c:Ln3/y/b/a/q0/a$d;

.field public final d:I


# direct methods
.method public constructor <init>(Ln3/y/b/a/q0/a$e;Ln3/y/b/a/q0/a$g;JJJJJJI)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    .line 2
    iput-object v1, v0, Ln3/y/b/a/q0/a;->b:Ln3/y/b/a/q0/a$g;

    move/from16 v1, p15

    .line 3
    iput v1, v0, Ln3/y/b/a/q0/a;->d:I

    .line 4
    new-instance v15, Ln3/y/b/a/q0/a$a;

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v1 .. v14}, Ln3/y/b/a/q0/a$a;-><init>(Ln3/y/b/a/q0/a$e;JJJJJJ)V

    iput-object v15, v0, Ln3/y/b/a/q0/a;->a:Ln3/y/b/a/q0/a$a;

    return-void
.end method


# virtual methods
.method public a(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/m;Ln3/y/b/a/q0/a$c;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Ln3/y/b/a/q0/a;->b:Ln3/y/b/a/q0/a$g;

    .line 2
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :goto_0
    iget-object v4, v0, Ln3/y/b/a/q0/a;->c:Ln3/y/b/a/q0/a$d;

    .line 4
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-wide v5, v4, Ln3/y/b/a/q0/a$d;->f:J

    .line 6
    iget-wide v7, v4, Ln3/y/b/a/q0/a$d;->g:J

    .line 7
    iget-wide v9, v4, Ln3/y/b/a/q0/a$d;->h:J

    sub-long/2addr v7, v5

    .line 8
    iget v11, v0, Ln3/y/b/a/q0/a;->d:I

    int-to-long v11, v11

    cmp-long v7, v7, v11

    const/4 v8, 0x0

    if-gtz v7, :cond_0

    .line 9
    invoke-virtual {v0, v8, v5, v6}, Ln3/y/b/a/q0/a;->b(ZJ)V

    .line 10
    invoke-virtual {v0, v1, v5, v6, v2}, Ln3/y/b/a/q0/a;->c(Ln3/y/b/a/q0/d;JLn3/y/b/a/q0/m;)I

    move-result v1

    return v1

    .line 11
    :cond_0
    invoke-virtual {v0, v1, v9, v10}, Ln3/y/b/a/q0/a;->e(Ln3/y/b/a/q0/d;J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 12
    invoke-virtual {v0, v1, v9, v10, v2}, Ln3/y/b/a/q0/a;->c(Ln3/y/b/a/q0/d;JLn3/y/b/a/q0/m;)I

    move-result v1

    return v1

    .line 13
    :cond_1
    iput v8, v1, Ln3/y/b/a/q0/d;->f:I

    .line 14
    iget-wide v5, v4, Ln3/y/b/a/q0/a$d;->b:J

    const/4 v7, 0x0

    .line 15
    invoke-interface {v3, v1, v5, v6, v7}, Ln3/y/b/a/q0/a$g;->b(Ln3/y/b/a/q0/d;JLn3/y/b/a/q0/a$c;)Ln3/y/b/a/q0/a$f;

    move-result-object v5

    .line 16
    iget v6, v5, Ln3/y/b/a/q0/a$f;->a:I

    const/4 v7, -0x3

    if-eq v6, v7, :cond_5

    const/4 v7, -0x2

    if-eq v6, v7, :cond_4

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    if-nez v6, :cond_2

    const/4 v3, 0x1

    .line 17
    iget-wide v6, v5, Ln3/y/b/a/q0/a$f;->c:J

    .line 18
    invoke-virtual {v0, v3, v6, v7}, Ln3/y/b/a/q0/a;->b(ZJ)V

    .line 19
    iget-wide v3, v5, Ln3/y/b/a/q0/a$f;->c:J

    .line 20
    invoke-virtual {v0, v1, v3, v4}, Ln3/y/b/a/q0/a;->e(Ln3/y/b/a/q0/d;J)Z

    .line 21
    iget-wide v3, v5, Ln3/y/b/a/q0/a$f;->c:J

    .line 22
    invoke-virtual {v0, v1, v3, v4, v2}, Ln3/y/b/a/q0/a;->c(Ln3/y/b/a/q0/d;JLn3/y/b/a/q0/m;)I

    move-result v1

    return v1

    .line 23
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid case"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_3
    iget-wide v9, v5, Ln3/y/b/a/q0/a$f;->b:J

    .line 25
    iget-wide v13, v5, Ln3/y/b/a/q0/a$f;->c:J

    .line 26
    iput-wide v9, v4, Ln3/y/b/a/q0/a$d;->e:J

    .line 27
    iput-wide v13, v4, Ln3/y/b/a/q0/a$d;->g:J

    .line 28
    iget-wide v5, v4, Ln3/y/b/a/q0/a$d;->b:J

    iget-wide v7, v4, Ln3/y/b/a/q0/a$d;->d:J

    iget-wide v11, v4, Ln3/y/b/a/q0/a$d;->f:J

    iget-wide v1, v4, Ln3/y/b/a/q0/a$d;->c:J

    move-wide v15, v1

    .line 29
    invoke-static/range {v5 .. v16}, Ln3/y/b/a/q0/a$d;->a(JJJJJJ)J

    move-result-wide v1

    iput-wide v1, v4, Ln3/y/b/a/q0/a$d;->h:J

    goto :goto_1

    .line 30
    :cond_4
    iget-wide v7, v5, Ln3/y/b/a/q0/a$f;->b:J

    .line 31
    iget-wide v11, v5, Ln3/y/b/a/q0/a$f;->c:J

    .line 32
    iput-wide v7, v4, Ln3/y/b/a/q0/a$d;->d:J

    .line 33
    iput-wide v11, v4, Ln3/y/b/a/q0/a$d;->f:J

    .line 34
    iget-wide v5, v4, Ln3/y/b/a/q0/a$d;->b:J

    iget-wide v9, v4, Ln3/y/b/a/q0/a$d;->e:J

    iget-wide v13, v4, Ln3/y/b/a/q0/a$d;->g:J

    iget-wide v1, v4, Ln3/y/b/a/q0/a$d;->c:J

    move-wide v15, v1

    .line 35
    invoke-static/range {v5 .. v16}, Ln3/y/b/a/q0/a$d;->a(JJJJJJ)J

    move-result-wide v1

    iput-wide v1, v4, Ln3/y/b/a/q0/a$d;->h:J

    :goto_1
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto/16 :goto_0

    .line 36
    :cond_5
    invoke-virtual {v0, v8, v9, v10}, Ln3/y/b/a/q0/a;->b(ZJ)V

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 37
    invoke-virtual {v0, v1, v9, v10, v2}, Ln3/y/b/a/q0/a;->c(Ln3/y/b/a/q0/d;JLn3/y/b/a/q0/m;)I

    move-result v1

    return v1
.end method

.method public final b(ZJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Ln3/y/b/a/q0/a;->c:Ln3/y/b/a/q0/a$d;

    .line 2
    iget-object p1, p0, Ln3/y/b/a/q0/a;->b:Ln3/y/b/a/q0/a$g;

    invoke-interface {p1}, Ln3/y/b/a/q0/a$g;->a()V

    return-void
.end method

.method public final c(Ln3/y/b/a/q0/d;JLn3/y/b/a/q0/m;)I
    .locals 2

    .line 1
    iget-wide v0, p1, Ln3/y/b/a/q0/d;->d:J

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iput-wide p2, p4, Ln3/y/b/a/q0/m;->a:J

    const/4 p1, 0x1

    return p1
.end method

.method public final d(J)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ln3/y/b/a/q0/a;->c:Ln3/y/b/a/q0/a$d;

    if-eqz v1, :cond_0

    .line 2
    iget-wide v1, v1, Ln3/y/b/a/q0/a$d;->a:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Ln3/y/b/a/q0/a$d;

    iget-object v2, v0, Ln3/y/b/a/q0/a;->a:Ln3/y/b/a/q0/a$a;

    .line 4
    iget-object v2, v2, Ln3/y/b/a/q0/a$a;->a:Ln3/y/b/a/q0/a$e;

    check-cast v2, Ln3/y/b/a/q0/a$b;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, v0, Ln3/y/b/a/q0/a;->a:Ln3/y/b/a/q0/a$a;

    .line 7
    iget-wide v8, v2, Ln3/y/b/a/q0/a$a;->c:J

    .line 8
    iget-wide v10, v2, Ln3/y/b/a/q0/a$a;->d:J

    .line 9
    iget-wide v12, v2, Ln3/y/b/a/q0/a$a;->e:J

    .line 10
    iget-wide v14, v2, Ln3/y/b/a/q0/a$a;->f:J

    .line 11
    iget-wide v6, v2, Ln3/y/b/a/q0/a$a;->g:J

    move-object v3, v1

    move-wide/from16 v4, p1

    move-wide/from16 v16, v6

    move-wide/from16 v6, p1

    .line 12
    invoke-direct/range {v3 .. v17}, Ln3/y/b/a/q0/a$d;-><init>(JJJJJJJ)V

    .line 13
    iput-object v1, v0, Ln3/y/b/a/q0/a;->c:Ln3/y/b/a/q0/a$d;

    return-void
.end method

.method public final e(Ln3/y/b/a/q0/d;J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Ln3/y/b/a/q0/d;->d:J

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x40000

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    long-to-int p2, p2

    .line 2
    invoke-virtual {p1, p2}, Ln3/y/b/a/q0/d;->h(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
