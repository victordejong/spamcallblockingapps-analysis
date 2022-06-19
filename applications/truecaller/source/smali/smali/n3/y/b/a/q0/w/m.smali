.class public final Ln3/y/b/a/q0/w/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/w/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/q0/w/m$a;
    }
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/q0/w/x;

.field public b:Ljava/lang/String;

.field public c:Ln3/y/b/a/q0/p;

.field public d:Ln3/y/b/a/q0/w/m$a;

.field public e:Z

.field public final f:[Z

.field public final g:Ln3/y/b/a/q0/w/q;

.field public final h:Ln3/y/b/a/q0/w/q;

.field public final i:Ln3/y/b/a/q0/w/q;

.field public final j:Ln3/y/b/a/q0/w/q;

.field public final k:Ln3/y/b/a/q0/w/q;

.field public l:J

.field public m:J

.field public final n:Ln3/y/b/a/x0/m;


# direct methods
.method public constructor <init>(Ln3/y/b/a/q0/w/x;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/q0/w/m;->a:Ln3/y/b/a/q0/w/x;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 3
    iput-object p1, p0, Ln3/y/b/a/q0/w/m;->f:[Z

    .line 4
    new-instance p1, Ln3/y/b/a/q0/w/q;

    const/16 v0, 0x20

    const/16 v1, 0x80

    invoke-direct {p1, v0, v1}, Ln3/y/b/a/q0/w/q;-><init>(II)V

    iput-object p1, p0, Ln3/y/b/a/q0/w/m;->g:Ln3/y/b/a/q0/w/q;

    .line 5
    new-instance p1, Ln3/y/b/a/q0/w/q;

    const/16 v0, 0x21

    invoke-direct {p1, v0, v1}, Ln3/y/b/a/q0/w/q;-><init>(II)V

    iput-object p1, p0, Ln3/y/b/a/q0/w/m;->h:Ln3/y/b/a/q0/w/q;

    .line 6
    new-instance p1, Ln3/y/b/a/q0/w/q;

    const/16 v0, 0x22

    invoke-direct {p1, v0, v1}, Ln3/y/b/a/q0/w/q;-><init>(II)V

    iput-object p1, p0, Ln3/y/b/a/q0/w/m;->i:Ln3/y/b/a/q0/w/q;

    .line 7
    new-instance p1, Ln3/y/b/a/q0/w/q;

    const/16 v0, 0x27

    invoke-direct {p1, v0, v1}, Ln3/y/b/a/q0/w/q;-><init>(II)V

    iput-object p1, p0, Ln3/y/b/a/q0/w/m;->j:Ln3/y/b/a/q0/w/q;

    .line 8
    new-instance p1, Ln3/y/b/a/q0/w/q;

    const/16 v0, 0x28

    invoke-direct {p1, v0, v1}, Ln3/y/b/a/q0/w/q;-><init>(II)V

    iput-object p1, p0, Ln3/y/b/a/q0/w/m;->k:Ln3/y/b/a/q0/w/q;

    .line 9
    new-instance p1, Ln3/y/b/a/x0/m;

    invoke-direct {p1}, Ln3/y/b/a/x0/m;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/w/m;->n:Ln3/y/b/a/x0/m;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/w/m;->f:[Z

    invoke-static {v0}, Ln3/y/b/a/x0/k;->a([Z)V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/q0/w/m;->g:Ln3/y/b/a/q0/w/q;

    invoke-virtual {v0}, Ln3/y/b/a/q0/w/q;->c()V

    .line 3
    iget-object v0, p0, Ln3/y/b/a/q0/w/m;->h:Ln3/y/b/a/q0/w/q;

    invoke-virtual {v0}, Ln3/y/b/a/q0/w/q;->c()V

    .line 4
    iget-object v0, p0, Ln3/y/b/a/q0/w/m;->i:Ln3/y/b/a/q0/w/q;

    invoke-virtual {v0}, Ln3/y/b/a/q0/w/q;->c()V

    .line 5
    iget-object v0, p0, Ln3/y/b/a/q0/w/m;->j:Ln3/y/b/a/q0/w/q;

    invoke-virtual {v0}, Ln3/y/b/a/q0/w/q;->c()V

    .line 6
    iget-object v0, p0, Ln3/y/b/a/q0/w/m;->k:Ln3/y/b/a/q0/w/q;

    invoke-virtual {v0}, Ln3/y/b/a/q0/w/q;->c()V

    .line 7
    iget-object v0, p0, Ln3/y/b/a/q0/w/m;->d:Ln3/y/b/a/q0/w/m$a;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Ln3/y/b/a/q0/w/m$a;->f:Z

    .line 9
    iput-boolean v1, v0, Ln3/y/b/a/q0/w/m$a;->g:Z

    .line 10
    iput-boolean v1, v0, Ln3/y/b/a/q0/w/m$a;->h:Z

    .line 11
    iput-boolean v1, v0, Ln3/y/b/a/q0/w/m$a;->i:Z

    .line 12
    iput-boolean v1, v0, Ln3/y/b/a/q0/w/m$a;->j:Z

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Ln3/y/b/a/q0/w/m;->l:J

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ln3/y/b/a/q0/w/m;->m:J

    return-void
.end method

.method public d(Ln3/y/b/a/x0/m;)V
    .locals 37

    move-object/from16 v0, p0

    :cond_0
    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v2

    if-lez v2, :cond_2f

    .line 2
    iget v2, v1, Ln3/y/b/a/x0/m;->b:I

    .line 3
    iget v3, v1, Ln3/y/b/a/x0/m;->c:I

    .line 4
    iget-object v4, v1, Ln3/y/b/a/x0/m;->a:[B

    .line 5
    iget-wide v5, v0, Ln3/y/b/a/q0/w/m;->l:J

    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Ln3/y/b/a/q0/w/m;->l:J

    .line 6
    iget-object v5, v0, Ln3/y/b/a/q0/w/m;->c:Ln3/y/b/a/q0/p;

    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v6

    invoke-interface {v5, v1, v6}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    :goto_0
    if-ge v2, v3, :cond_0

    .line 7
    iget-object v5, v0, Ln3/y/b/a/q0/w/m;->f:[Z

    invoke-static {v4, v2, v3, v5}, Ln3/y/b/a/x0/k;->b([BII[Z)I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 8
    invoke-virtual {v0, v4, v2, v3}, Ln3/y/b/a/q0/w/m;->f([BII)V

    return-void

    :cond_1
    add-int/lit8 v6, v5, 0x3

    .line 9
    aget-byte v7, v4, v6

    and-int/lit8 v7, v7, 0x7e

    const/4 v8, 0x1

    shr-int/2addr v7, v8

    sub-int v9, v5, v2

    if-lez v9, :cond_2

    .line 10
    invoke-virtual {v0, v4, v2, v5}, Ln3/y/b/a/q0/w/m;->f([BII)V

    :cond_2
    sub-int v2, v3, v5

    .line 11
    iget-wide v10, v0, Ln3/y/b/a/q0/w/m;->l:J

    int-to-long v12, v2

    sub-long/2addr v10, v12

    const/4 v5, 0x0

    if-gez v9, :cond_3

    neg-int v9, v9

    goto :goto_1

    :cond_3
    move v9, v5

    .line 12
    :goto_1
    iget-wide v12, v0, Ln3/y/b/a/q0/w/m;->m:J

    .line 13
    iget-boolean v14, v0, Ln3/y/b/a/q0/w/m;->e:Z

    if-eqz v14, :cond_8

    .line 14
    iget-object v14, v0, Ln3/y/b/a/q0/w/m;->d:Ln3/y/b/a/q0/w/m$a;

    .line 15
    iget-boolean v15, v14, Ln3/y/b/a/q0/w/m$a;->j:Z

    if-eqz v15, :cond_4

    iget-boolean v15, v14, Ln3/y/b/a/q0/w/m$a;->g:Z

    if-eqz v15, :cond_4

    .line 16
    iget-boolean v8, v14, Ln3/y/b/a/q0/w/m$a;->c:Z

    iput-boolean v8, v14, Ln3/y/b/a/q0/w/m$a;->m:Z

    .line 17
    iput-boolean v5, v14, Ln3/y/b/a/q0/w/m$a;->j:Z

    goto :goto_2

    .line 18
    :cond_4
    iget-boolean v5, v14, Ln3/y/b/a/q0/w/m$a;->h:Z

    if-nez v5, :cond_6

    iget-boolean v5, v14, Ln3/y/b/a/q0/w/m$a;->g:Z

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    :goto_2
    move/from16 v31, v2

    move/from16 v28, v3

    move-object/from16 v29, v4

    move/from16 v30, v6

    move/from16 v32, v7

    move v5, v9

    :goto_3
    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    goto/16 :goto_17

    .line 19
    :cond_6
    :goto_4
    iget-boolean v5, v14, Ln3/y/b/a/q0/w/m$a;->i:Z

    if-eqz v5, :cond_7

    move v5, v9

    .line 20
    iget-wide v8, v14, Ln3/y/b/a/q0/w/m$a;->b:J

    sub-long v8, v10, v8

    long-to-int v8, v8

    add-int/2addr v8, v2

    .line 21
    invoke-virtual {v14, v8}, Ln3/y/b/a/q0/w/m$a;->a(I)V

    goto :goto_5

    :cond_7
    move v5, v9

    .line 22
    :goto_5
    iget-wide v8, v14, Ln3/y/b/a/q0/w/m$a;->b:J

    iput-wide v8, v14, Ln3/y/b/a/q0/w/m$a;->k:J

    .line 23
    iget-wide v8, v14, Ln3/y/b/a/q0/w/m$a;->e:J

    iput-wide v8, v14, Ln3/y/b/a/q0/w/m$a;->l:J

    const/4 v8, 0x1

    .line 24
    iput-boolean v8, v14, Ln3/y/b/a/q0/w/m$a;->i:Z

    .line 25
    iget-boolean v8, v14, Ln3/y/b/a/q0/w/m$a;->c:Z

    iput-boolean v8, v14, Ln3/y/b/a/q0/w/m$a;->m:Z

    goto/16 :goto_16

    :cond_8
    move v5, v9

    .line 26
    iget-object v8, v0, Ln3/y/b/a/q0/w/m;->g:Ln3/y/b/a/q0/w/q;

    invoke-virtual {v8, v5}, Ln3/y/b/a/q0/w/q;->b(I)Z

    .line 27
    iget-object v8, v0, Ln3/y/b/a/q0/w/m;->h:Ln3/y/b/a/q0/w/q;

    invoke-virtual {v8, v5}, Ln3/y/b/a/q0/w/q;->b(I)Z

    .line 28
    iget-object v8, v0, Ln3/y/b/a/q0/w/m;->i:Ln3/y/b/a/q0/w/q;

    invoke-virtual {v8, v5}, Ln3/y/b/a/q0/w/q;->b(I)Z

    .line 29
    iget-object v8, v0, Ln3/y/b/a/q0/w/m;->g:Ln3/y/b/a/q0/w/q;

    .line 30
    iget-boolean v9, v8, Ln3/y/b/a/q0/w/q;->c:Z

    if-eqz v9, :cond_26

    .line 31
    iget-object v9, v0, Ln3/y/b/a/q0/w/m;->h:Ln3/y/b/a/q0/w/q;

    .line 32
    iget-boolean v14, v9, Ln3/y/b/a/q0/w/q;->c:Z

    if-eqz v14, :cond_26

    .line 33
    iget-object v14, v0, Ln3/y/b/a/q0/w/m;->i:Ln3/y/b/a/q0/w/q;

    .line 34
    iget-boolean v15, v14, Ln3/y/b/a/q0/w/q;->c:Z

    if-eqz v15, :cond_26

    .line 35
    iget-object v15, v0, Ln3/y/b/a/q0/w/m;->c:Ln3/y/b/a/q0/p;

    iget-object v1, v0, Ln3/y/b/a/q0/w/m;->b:Ljava/lang/String;

    move/from16 v28, v3

    .line 36
    iget v3, v8, Ln3/y/b/a/q0/w/q;->e:I

    move-object/from16 v29, v4

    iget v4, v9, Ln3/y/b/a/q0/w/q;->e:I

    add-int/2addr v4, v3

    move/from16 v30, v6

    iget v6, v14, Ln3/y/b/a/q0/w/q;->e:I

    add-int/2addr v4, v6

    new-array v4, v4, [B

    .line 37
    iget-object v6, v8, Ln3/y/b/a/q0/w/q;->d:[B

    move/from16 v31, v2

    const/4 v2, 0x0

    invoke-static {v6, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget-object v3, v9, Ln3/y/b/a/q0/w/q;->d:[B

    iget v6, v8, Ln3/y/b/a/q0/w/q;->e:I

    move/from16 v32, v7

    iget v7, v9, Ln3/y/b/a/q0/w/q;->e:I

    invoke-static {v3, v2, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget-object v3, v14, Ln3/y/b/a/q0/w/q;->d:[B

    iget v6, v8, Ln3/y/b/a/q0/w/q;->e:I

    iget v7, v9, Ln3/y/b/a/q0/w/q;->e:I

    add-int/2addr v6, v7

    iget v7, v14, Ln3/y/b/a/q0/w/q;->e:I

    invoke-static {v3, v2, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    new-instance v3, Ln3/y/b/a/x0/n;

    iget-object v6, v9, Ln3/y/b/a/q0/w/q;->d:[B

    iget v7, v9, Ln3/y/b/a/q0/w/q;->e:I

    invoke-direct {v3, v6, v2, v7}, Ln3/y/b/a/x0/n;-><init>([BII)V

    const/16 v2, 0x2c

    .line 41
    invoke-virtual {v3, v2}, Ln3/y/b/a/x0/n;->j(I)V

    const/4 v2, 0x3

    .line 42
    invoke-virtual {v3, v2}, Ln3/y/b/a/x0/n;->e(I)I

    move-result v6

    .line 43
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->i()V

    const/16 v7, 0x58

    .line 44
    invoke-virtual {v3, v7}, Ln3/y/b/a/x0/n;->j(I)V

    const/16 v7, 0x8

    .line 45
    invoke-virtual {v3, v7}, Ln3/y/b/a/x0/n;->j(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_6
    if-ge v7, v6, :cond_b

    .line 46
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->d()Z

    move-result v9

    if-eqz v9, :cond_9

    add-int/lit8 v8, v8, 0x59

    .line 47
    :cond_9
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->d()Z

    move-result v9

    if-eqz v9, :cond_a

    add-int/lit8 v8, v8, 0x8

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 48
    :cond_b
    invoke-virtual {v3, v8}, Ln3/y/b/a/x0/n;->j(I)V

    const/4 v7, 0x2

    if-lez v6, :cond_c

    rsub-int/lit8 v8, v6, 0x8

    mul-int/2addr v8, v7

    .line 49
    invoke-virtual {v3, v8}, Ln3/y/b/a/x0/n;->j(I)V

    .line 50
    :cond_c
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    .line 51
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    move-result v8

    if-ne v8, v2, :cond_d

    .line 52
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->i()V

    .line 53
    :cond_d
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    move-result v2

    .line 54
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    move-result v9

    .line 55
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->d()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 56
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    move-result v14

    .line 57
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    move-result v7

    move-wide/from16 v33, v10

    .line 58
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    move-result v10

    .line 59
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    move-result v11

    move-wide/from16 v35, v12

    const/4 v12, 0x1

    const/4 v13, 0x2

    if-eq v8, v12, :cond_f

    if-ne v8, v13, :cond_e

    goto :goto_7

    :cond_e
    move v13, v12

    :cond_f
    :goto_7
    if-ne v8, v12, :cond_10

    const/4 v8, 0x2

    goto :goto_8

    :cond_10
    const/4 v8, 0x1

    :goto_8
    invoke-static {v14, v7, v13, v2}, Le/d/c/a/a;->n1(IIII)I

    move-result v2

    invoke-static {v10, v11, v8, v9}, Le/d/c/a/a;->n1(IIII)I

    move-result v7

    move/from16 v21, v2

    move/from16 v22, v7

    goto :goto_9

    :cond_11
    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move/from16 v21, v2

    move/from16 v22, v9

    .line 60
    :goto_9
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    .line 61
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    .line 62
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    move-result v2

    .line 63
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->d()Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v7, 0x0

    goto :goto_a

    :cond_12
    move v7, v6

    :goto_a
    if-gt v7, v6, :cond_13

    .line 64
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    .line 65
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    .line 66
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 67
    :cond_13
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    .line 68
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    .line 69
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    .line 70
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    .line 71
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    .line 72
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    .line 73
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->d()Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_19

    .line 74
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->d()Z

    move-result v6

    if-eqz v6, :cond_19

    const/4 v6, 0x0

    const/16 v16, 0x2

    :goto_b
    if-ge v6, v7, :cond_1a

    const/4 v7, 0x0

    :goto_c
    const/4 v8, 0x6

    if-ge v7, v8, :cond_18

    .line 75
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->d()Z

    move-result v8

    if-nez v8, :cond_14

    .line 76
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    goto :goto_e

    :cond_14
    const/16 v8, 0x40

    shl-int/lit8 v9, v6, 0x1

    add-int/lit8 v9, v9, 0x4

    const/4 v10, 0x1

    shl-int v9, v10, v9

    .line 77
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-le v6, v10, :cond_15

    .line 78
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->g()I

    :cond_15
    const/4 v9, 0x0

    :goto_d
    if-ge v9, v8, :cond_16

    .line 79
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->g()I

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_16
    :goto_e
    const/4 v8, 0x3

    if-ne v6, v8, :cond_17

    goto :goto_f

    :cond_17
    const/4 v8, 0x1

    :goto_f
    add-int/2addr v7, v8

    goto :goto_c

    :cond_18
    add-int/lit8 v6, v6, 0x1

    const/16 v16, 0x2

    const/4 v7, 0x4

    goto :goto_b

    :cond_19
    const/16 v16, 0x2

    :cond_1a
    move/from16 v6, v16

    .line 80
    invoke-virtual {v3, v6}, Ln3/y/b/a/x0/n;->j(I)V

    .line 81
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->d()Z

    move-result v6

    if-eqz v6, :cond_1b

    const/16 v6, 0x8

    .line 82
    invoke-virtual {v3, v6}, Ln3/y/b/a/x0/n;->j(I)V

    .line 83
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    .line 84
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    .line 85
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->i()V

    .line 86
    :cond_1b
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_10
    if-ge v7, v6, :cond_22

    if-eqz v7, :cond_1c

    .line 87
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->d()Z

    move-result v8

    :cond_1c
    if-eqz v8, :cond_1e

    .line 88
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->i()V

    .line 89
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    const/4 v10, 0x0

    :goto_11
    if-gt v10, v9, :cond_21

    .line 90
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->d()Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 91
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->i()V

    :cond_1d
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 92
    :cond_1e
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    move-result v9

    .line 93
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    move-result v10

    add-int v11, v9, v10

    const/4 v12, 0x0

    :goto_12
    if-ge v12, v9, :cond_1f

    .line 94
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    .line 95
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->i()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    :cond_1f
    const/4 v9, 0x0

    :goto_13
    if-ge v9, v10, :cond_20

    .line 96
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    .line 97
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->i()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_20
    move v9, v11

    :cond_21
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 98
    :cond_22
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->d()Z

    move-result v6

    if-eqz v6, :cond_23

    const/4 v6, 0x0

    .line 99
    :goto_14
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->f()I

    move-result v7

    if-ge v6, v7, :cond_23

    add-int/lit8 v7, v2, 0x4

    add-int/lit8 v7, v7, 0x1

    .line 100
    invoke-virtual {v3, v7}, Ln3/y/b/a/x0/n;->j(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_23
    const/4 v2, 0x2

    .line 101
    invoke-virtual {v3, v2}, Ln3/y/b/a/x0/n;->j(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 102
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->d()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 103
    invoke-virtual {v3}, Ln3/y/b/a/x0/n;->d()Z

    move-result v6

    if-eqz v6, :cond_25

    const/16 v6, 0x8

    .line 104
    invoke-virtual {v3, v6}, Ln3/y/b/a/x0/n;->e(I)I

    move-result v6

    const/16 v7, 0xff

    if-ne v6, v7, :cond_24

    const/16 v6, 0x10

    .line 105
    invoke-virtual {v3, v6}, Ln3/y/b/a/x0/n;->e(I)I

    move-result v7

    .line 106
    invoke-virtual {v3, v6}, Ln3/y/b/a/x0/n;->e(I)I

    move-result v3

    if-eqz v7, :cond_25

    if-eqz v3, :cond_25

    int-to-float v2, v7

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_15

    .line 107
    :cond_24
    sget-object v3, Ln3/y/b/a/x0/k;->b:[F

    array-length v7, v3

    if-ge v6, v7, :cond_25

    .line 108
    aget v2, v3, v6

    :cond_25
    :goto_15
    move/from16 v26, v2

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/high16 v23, -0x40800000    # -1.0f

    .line 109
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    const/16 v25, -0x1

    const/16 v27, 0x0

    const-string v17, "video/hevc"

    move-object/from16 v16, v1

    .line 110
    invoke-static/range {v16 .. v27}, Landroidx/media2/exoplayer/external/Format;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 111
    invoke-interface {v15, v1}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    const/4 v1, 0x1

    .line 112
    iput-boolean v1, v0, Ln3/y/b/a/q0/w/m;->e:Z

    goto :goto_17

    :cond_26
    :goto_16
    move/from16 v31, v2

    move/from16 v28, v3

    move-object/from16 v29, v4

    move/from16 v30, v6

    move/from16 v32, v7

    goto/16 :goto_3

    .line 113
    :goto_17
    iget-object v1, v0, Ln3/y/b/a/q0/w/m;->j:Ln3/y/b/a/q0/w/q;

    invoke-virtual {v1, v5}, Ln3/y/b/a/q0/w/q;->b(I)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_27

    .line 114
    iget-object v1, v0, Ln3/y/b/a/q0/w/m;->j:Ln3/y/b/a/q0/w/q;

    iget-object v3, v1, Ln3/y/b/a/q0/w/q;->d:[B

    iget v1, v1, Ln3/y/b/a/q0/w/q;->e:I

    invoke-static {v3, v1}, Ln3/y/b/a/x0/k;->e([BI)I

    move-result v1

    .line 115
    iget-object v3, v0, Ln3/y/b/a/q0/w/m;->n:Ln3/y/b/a/x0/m;

    iget-object v4, v0, Ln3/y/b/a/q0/w/m;->j:Ln3/y/b/a/q0/w/q;

    iget-object v4, v4, Ln3/y/b/a/q0/w/q;->d:[B

    invoke-virtual {v3, v4, v1}, Ln3/y/b/a/x0/m;->x([BI)V

    .line 116
    iget-object v1, v0, Ln3/y/b/a/q0/w/m;->n:Ln3/y/b/a/x0/m;

    invoke-virtual {v1, v2}, Ln3/y/b/a/x0/m;->A(I)V

    .line 117
    iget-object v1, v0, Ln3/y/b/a/q0/w/m;->a:Ln3/y/b/a/q0/w/x;

    iget-object v3, v0, Ln3/y/b/a/q0/w/m;->n:Ln3/y/b/a/x0/m;

    .line 118
    iget-object v1, v1, Ln3/y/b/a/q0/w/x;->b:[Ln3/y/b/a/q0/p;

    move-wide/from16 v6, v35

    invoke-static {v6, v7, v3, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->G(JLn3/y/b/a/x0/m;[Ln3/y/b/a/q0/p;)V

    goto :goto_18

    :cond_27
    move-wide/from16 v6, v35

    .line 119
    :goto_18
    iget-object v1, v0, Ln3/y/b/a/q0/w/m;->k:Ln3/y/b/a/q0/w/q;

    invoke-virtual {v1, v5}, Ln3/y/b/a/q0/w/q;->b(I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 120
    iget-object v1, v0, Ln3/y/b/a/q0/w/m;->k:Ln3/y/b/a/q0/w/q;

    iget-object v3, v1, Ln3/y/b/a/q0/w/q;->d:[B

    iget v1, v1, Ln3/y/b/a/q0/w/q;->e:I

    invoke-static {v3, v1}, Ln3/y/b/a/x0/k;->e([BI)I

    move-result v1

    .line 121
    iget-object v3, v0, Ln3/y/b/a/q0/w/m;->n:Ln3/y/b/a/x0/m;

    iget-object v4, v0, Ln3/y/b/a/q0/w/m;->k:Ln3/y/b/a/q0/w/q;

    iget-object v4, v4, Ln3/y/b/a/q0/w/q;->d:[B

    invoke-virtual {v3, v4, v1}, Ln3/y/b/a/x0/m;->x([BI)V

    .line 122
    iget-object v1, v0, Ln3/y/b/a/q0/w/m;->n:Ln3/y/b/a/x0/m;

    invoke-virtual {v1, v2}, Ln3/y/b/a/x0/m;->A(I)V

    .line 123
    iget-object v1, v0, Ln3/y/b/a/q0/w/m;->a:Ln3/y/b/a/q0/w/x;

    iget-object v2, v0, Ln3/y/b/a/q0/w/m;->n:Ln3/y/b/a/x0/m;

    .line 124
    iget-object v1, v1, Ln3/y/b/a/q0/w/x;->b:[Ln3/y/b/a/q0/p;

    invoke-static {v6, v7, v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->G(JLn3/y/b/a/x0/m;[Ln3/y/b/a/q0/p;)V

    .line 125
    :cond_28
    iget-wide v1, v0, Ln3/y/b/a/q0/w/m;->m:J

    .line 126
    iget-boolean v3, v0, Ln3/y/b/a/q0/w/m;->e:Z

    if-eqz v3, :cond_2e

    .line 127
    iget-object v3, v0, Ln3/y/b/a/q0/w/m;->d:Ln3/y/b/a/q0/w/m$a;

    const/4 v4, 0x0

    .line 128
    iput-boolean v4, v3, Ln3/y/b/a/q0/w/m$a;->g:Z

    .line 129
    iput-boolean v4, v3, Ln3/y/b/a/q0/w/m$a;->h:Z

    .line 130
    iput-wide v1, v3, Ln3/y/b/a/q0/w/m$a;->e:J

    .line 131
    iput v4, v3, Ln3/y/b/a/q0/w/m$a;->d:I

    move-wide/from16 v10, v33

    .line 132
    iput-wide v10, v3, Ln3/y/b/a/q0/w/m$a;->b:J

    const/16 v1, 0x20

    move/from16 v2, v32

    if-lt v2, v1, :cond_2a

    .line 133
    iget-boolean v1, v3, Ln3/y/b/a/q0/w/m$a;->j:Z

    if-nez v1, :cond_29

    iget-boolean v1, v3, Ln3/y/b/a/q0/w/m$a;->i:Z

    if-eqz v1, :cond_29

    move/from16 v1, v31

    .line 134
    invoke-virtual {v3, v1}, Ln3/y/b/a/q0/w/m$a;->a(I)V

    .line 135
    iput-boolean v4, v3, Ln3/y/b/a/q0/w/m$a;->i:Z

    :cond_29
    const/16 v1, 0x22

    if-gt v2, v1, :cond_2a

    .line 136
    iget-boolean v1, v3, Ln3/y/b/a/q0/w/m$a;->j:Z

    const/4 v5, 0x1

    xor-int/2addr v1, v5

    iput-boolean v1, v3, Ln3/y/b/a/q0/w/m$a;->h:Z

    .line 137
    iput-boolean v5, v3, Ln3/y/b/a/q0/w/m$a;->j:Z

    goto :goto_19

    :cond_2a
    const/4 v5, 0x1

    :goto_19
    const/16 v1, 0x10

    if-lt v2, v1, :cond_2b

    const/16 v1, 0x15

    if-gt v2, v1, :cond_2b

    move v1, v5

    goto :goto_1a

    :cond_2b
    move v1, v4

    .line 138
    :goto_1a
    iput-boolean v1, v3, Ln3/y/b/a/q0/w/m$a;->c:Z

    if-nez v1, :cond_2c

    const/16 v1, 0x9

    if-gt v2, v1, :cond_2d

    :cond_2c
    move v4, v5

    .line 139
    :cond_2d
    iput-boolean v4, v3, Ln3/y/b/a/q0/w/m$a;->f:Z

    goto :goto_1b

    :cond_2e
    move/from16 v2, v32

    .line 140
    iget-object v1, v0, Ln3/y/b/a/q0/w/m;->g:Ln3/y/b/a/q0/w/q;

    invoke-virtual {v1, v2}, Ln3/y/b/a/q0/w/q;->d(I)V

    .line 141
    iget-object v1, v0, Ln3/y/b/a/q0/w/m;->h:Ln3/y/b/a/q0/w/q;

    invoke-virtual {v1, v2}, Ln3/y/b/a/q0/w/q;->d(I)V

    .line 142
    iget-object v1, v0, Ln3/y/b/a/q0/w/m;->i:Ln3/y/b/a/q0/w/q;

    invoke-virtual {v1, v2}, Ln3/y/b/a/q0/w/q;->d(I)V

    .line 143
    :goto_1b
    iget-object v1, v0, Ln3/y/b/a/q0/w/m;->j:Ln3/y/b/a/q0/w/q;

    invoke-virtual {v1, v2}, Ln3/y/b/a/q0/w/q;->d(I)V

    .line 144
    iget-object v1, v0, Ln3/y/b/a/q0/w/m;->k:Ln3/y/b/a/q0/w/q;

    invoke-virtual {v1, v2}, Ln3/y/b/a/q0/w/q;->d(I)V

    move-object/from16 v1, p1

    move/from16 v3, v28

    move-object/from16 v4, v29

    move/from16 v2, v30

    goto/16 :goto_0

    :cond_2f
    return-void
.end method

.method public e(Ln3/y/b/a/q0/h;Ln3/y/b/a/q0/w/c0$d;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ln3/y/b/a/q0/w/c0$d;->a()V

    .line 2
    invoke-virtual {p2}, Ln3/y/b/a/q0/w/c0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln3/y/b/a/q0/w/m;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Ln3/y/b/a/q0/w/c0$d;->c()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Ln3/y/b/a/q0/h;->i(II)Ln3/y/b/a/q0/p;

    move-result-object v0

    iput-object v0, p0, Ln3/y/b/a/q0/w/m;->c:Ln3/y/b/a/q0/p;

    .line 4
    new-instance v1, Ln3/y/b/a/q0/w/m$a;

    invoke-direct {v1, v0}, Ln3/y/b/a/q0/w/m$a;-><init>(Ln3/y/b/a/q0/p;)V

    iput-object v1, p0, Ln3/y/b/a/q0/w/m;->d:Ln3/y/b/a/q0/w/m$a;

    .line 5
    iget-object v0, p0, Ln3/y/b/a/q0/w/m;->a:Ln3/y/b/a/q0/w/x;

    invoke-virtual {v0, p1, p2}, Ln3/y/b/a/q0/w/x;->a(Ln3/y/b/a/q0/h;Ln3/y/b/a/q0/w/c0$d;)V

    return-void
.end method

.method public final f([BII)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/q0/w/m;->e:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Ln3/y/b/a/q0/w/m;->d:Ln3/y/b/a/q0/w/m$a;

    .line 3
    iget-boolean v1, v0, Ln3/y/b/a/q0/w/m$a;->f:Z

    if-eqz v1, :cond_3

    add-int/lit8 v1, p2, 0x2

    .line 4
    iget v2, v0, Ln3/y/b/a/q0/w/m$a;->d:I

    sub-int/2addr v1, v2

    if-ge v1, p3, :cond_1

    .line 5
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Ln3/y/b/a/q0/w/m$a;->g:Z

    .line 6
    iput-boolean v2, v0, Ln3/y/b/a/q0/w/m$a;->f:Z

    goto :goto_1

    :cond_1
    sub-int v1, p3, p2

    add-int/2addr v1, v2

    .line 7
    iput v1, v0, Ln3/y/b/a/q0/w/m$a;->d:I

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Ln3/y/b/a/q0/w/m;->g:Ln3/y/b/a/q0/w/q;

    invoke-virtual {v0, p1, p2, p3}, Ln3/y/b/a/q0/w/q;->a([BII)V

    .line 9
    iget-object v0, p0, Ln3/y/b/a/q0/w/m;->h:Ln3/y/b/a/q0/w/q;

    invoke-virtual {v0, p1, p2, p3}, Ln3/y/b/a/q0/w/q;->a([BII)V

    .line 10
    iget-object v0, p0, Ln3/y/b/a/q0/w/m;->i:Ln3/y/b/a/q0/w/q;

    invoke-virtual {v0, p1, p2, p3}, Ln3/y/b/a/q0/w/q;->a([BII)V

    .line 11
    :cond_3
    :goto_1
    iget-object v0, p0, Ln3/y/b/a/q0/w/m;->j:Ln3/y/b/a/q0/w/q;

    invoke-virtual {v0, p1, p2, p3}, Ln3/y/b/a/q0/w/q;->a([BII)V

    .line 12
    iget-object v0, p0, Ln3/y/b/a/q0/w/m;->k:Ln3/y/b/a/q0/w/q;

    invoke-virtual {v0, p1, p2, p3}, Ln3/y/b/a/q0/w/q;->a([BII)V

    return-void
.end method
