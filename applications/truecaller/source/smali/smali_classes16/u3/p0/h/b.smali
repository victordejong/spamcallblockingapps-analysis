.class public final Lu3/p0/h/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/b0;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lu3/p0/h/b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lu3/b0$a;)Lu3/k0;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "ioe"

    const-string v2, "call"

    const-string v3, "chain"

    invoke-static {v0, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast v0, Lu3/p0/h/g;

    .line 2
    iget-object v3, v0, Lu3/p0/h/g;->e:Lu3/p0/g/c;

    const/4 v4, 0x0

    if-eqz v3, :cond_1a

    .line 3
    iget-object v0, v0, Lu3/p0/h/g;->f:Lu3/g0;

    .line 4
    iget-object v5, v0, Lu3/g0;->e:Lu3/j0;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "request"

    .line 6
    invoke-static {v0, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    :try_start_0
    iget-object v8, v3, Lu3/p0/g/c;->d:Lu3/u;

    iget-object v9, v3, Lu3/p0/g/c;->c:Lu3/p0/g/e;

    invoke-virtual {v8, v9}, Lu3/u;->n(Lu3/f;)V

    .line 8
    iget-object v8, v3, Lu3/p0/g/c;->f:Lu3/p0/h/d;

    invoke-interface {v8, v0}, Lu3/p0/h/d;->g(Lu3/g0;)V

    .line 9
    iget-object v8, v3, Lu3/p0/g/c;->d:Lu3/u;

    iget-object v9, v3, Lu3/p0/g/c;->c:Lu3/p0/g/e;

    invoke-virtual {v8, v9, v0}, Lu3/u;->m(Lu3/f;Lu3/g0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 10
    iget-object v8, v0, Lu3/g0;->c:Ljava/lang/String;

    .line 11
    invoke-static {v8}, Lu3/p0/h/f;->a(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "$this$buffer"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v8, :cond_3

    if-eqz v5, :cond_3

    const-string v8, "Expect"

    .line 12
    invoke-virtual {v0, v8}, Lu3/g0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "100-continue"

    invoke-static {v12, v8, v11}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 13
    invoke-virtual {v3}, Lu3/p0/g/c;->c()V

    .line 14
    invoke-virtual {v3, v11}, Lu3/p0/g/c;->d(Z)Lu3/k0$a;

    move-result-object v8

    .line 15
    invoke-virtual {v3}, Lu3/p0/g/c;->e()V

    move v12, v10

    goto :goto_0

    :cond_0
    move-object v8, v4

    move v12, v11

    :goto_0
    if-nez v8, :cond_1

    .line 16
    invoke-virtual {v3, v0, v10}, Lu3/p0/g/c;->b(Lu3/g0;Z)Lv3/z;

    move-result-object v11

    .line 17
    invoke-static {v11, v9}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v13, Lv3/u;

    invoke-direct {v13, v11}, Lv3/u;-><init>(Lv3/z;)V

    .line 19
    invoke-virtual {v5, v13}, Lu3/j0;->c(Lv3/g;)V

    .line 20
    invoke-virtual {v13}, Lv3/u;->close()V

    goto :goto_1

    .line 21
    :cond_1
    iget-object v5, v3, Lu3/p0/g/c;->c:Lu3/p0/g/e;

    invoke-virtual {v5, v3, v11, v10, v4}, Lu3/p0/g/e;->g(Lu3/p0/g/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 22
    iget-object v5, v3, Lu3/p0/g/c;->b:Lu3/p0/g/i;

    .line 23
    invoke-virtual {v5}, Lu3/p0/g/i;->j()Z

    move-result v5

    if-nez v5, :cond_2

    .line 24
    iget-object v5, v3, Lu3/p0/g/c;->f:Lu3/p0/h/d;

    invoke-interface {v5}, Lu3/p0/h/d;->c()Lu3/p0/g/i;

    move-result-object v5

    invoke-virtual {v5}, Lu3/p0/g/i;->l()V

    :cond_2
    :goto_1
    move v11, v12

    goto :goto_2

    .line 25
    :cond_3
    iget-object v5, v3, Lu3/p0/g/c;->c:Lu3/p0/g/e;

    invoke-virtual {v5, v3, v11, v10, v4}, Lu3/p0/g/e;->g(Lu3/p0/g/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-object v8, v4

    .line 26
    :goto_2
    :try_start_1
    iget-object v5, v3, Lu3/p0/g/c;->f:Lu3/p0/h/d;

    invoke-interface {v5}, Lu3/p0/h/d;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v8, :cond_5

    .line 27
    invoke-virtual {v3, v10}, Lu3/p0/g/c;->d(Z)Lu3/k0$a;

    move-result-object v8

    if-eqz v8, :cond_4

    if-eqz v11, :cond_5

    .line 28
    invoke-virtual {v3}, Lu3/p0/g/c;->e()V

    move v11, v10

    goto :goto_3

    .line 29
    :cond_4
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v4

    .line 30
    :cond_5
    :goto_3
    invoke-virtual {v8, v0}, Lu3/k0$a;->g(Lu3/g0;)Lu3/k0$a;

    .line 31
    iget-object v5, v3, Lu3/p0/g/c;->b:Lu3/p0/g/i;

    .line 32
    iget-object v5, v5, Lu3/p0/g/i;->d:Lu3/y;

    .line 33
    iput-object v5, v8, Lu3/k0$a;->e:Lu3/y;

    .line 34
    iput-wide v6, v8, Lu3/k0$a;->k:J

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 36
    iput-wide v12, v8, Lu3/k0$a;->l:J

    .line 37
    invoke-virtual {v8}, Lu3/k0$a;->a()Lu3/k0;

    move-result-object v5

    .line 38
    iget v8, v5, Lu3/k0;->e:I

    const/16 v12, 0x64

    if-ne v8, v12, :cond_8

    .line 39
    invoke-virtual {v3, v10}, Lu3/p0/g/c;->d(Z)Lu3/k0$a;

    move-result-object v5

    if-eqz v5, :cond_7

    if-eqz v11, :cond_6

    .line 40
    invoke-virtual {v3}, Lu3/p0/g/c;->e()V

    .line 41
    :cond_6
    invoke-virtual {v5, v0}, Lu3/k0$a;->g(Lu3/g0;)Lu3/k0$a;

    .line 42
    iget-object v0, v3, Lu3/p0/g/c;->b:Lu3/p0/g/i;

    .line 43
    iget-object v0, v0, Lu3/p0/g/i;->d:Lu3/y;

    .line 44
    iput-object v0, v5, Lu3/k0$a;->e:Lu3/y;

    .line 45
    iput-wide v6, v5, Lu3/k0$a;->k:J

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 47
    iput-wide v6, v5, Lu3/k0$a;->l:J

    .line 48
    invoke-virtual {v5}, Lu3/k0$a;->a()Lu3/k0;

    move-result-object v5

    .line 49
    iget v8, v5, Lu3/k0;->e:I

    goto :goto_4

    .line 50
    :cond_7
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v4

    :cond_8
    :goto_4
    const-string v0, "response"

    .line 51
    invoke-static {v5, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v4, v3, Lu3/p0/g/c;->d:Lu3/u;

    iget-object v6, v3, Lu3/p0/g/c;->c:Lu3/p0/g/e;

    invoke-virtual {v4, v6, v5}, Lu3/u;->q(Lu3/f;Lu3/k0;)V

    move-object/from16 v4, p0

    .line 53
    iget-boolean v6, v4, Lu3/p0/h/b;->a:Z

    const-string v7, "message == null"

    const-string v10, "protocol == null"

    const-string v11, "request == null"

    const-string v12, "code < 0: "

    if-eqz v6, :cond_e

    const/16 v6, 0x65

    if-ne v8, v6, :cond_e

    .line 54
    invoke-static {v5, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v14, v5, Lu3/k0;->b:Lu3/g0;

    .line 56
    iget-object v15, v5, Lu3/k0;->c:Lu3/f0;

    .line 57
    iget v0, v5, Lu3/k0;->e:I

    .line 58
    iget-object v1, v5, Lu3/k0;->d:Ljava/lang/String;

    .line 59
    iget-object v2, v5, Lu3/k0;->f:Lu3/y;

    .line 60
    iget-object v6, v5, Lu3/k0;->g:Lu3/z;

    .line 61
    invoke-virtual {v6}, Lu3/z;->c()Lu3/z$a;

    move-result-object v6

    .line 62
    iget-object v9, v5, Lu3/k0;->i:Lu3/k0;

    .line 63
    iget-object v13, v5, Lu3/k0;->j:Lu3/k0;

    .line 64
    iget-object v4, v5, Lu3/k0;->k:Lu3/k0;

    move-object/from16 p1, v11

    move-object/from16 v16, v12

    .line 65
    iget-wide v11, v5, Lu3/k0;->l:J

    move-object/from16 v17, v7

    move/from16 v29, v8

    .line 66
    iget-wide v7, v5, Lu3/k0;->m:J

    .line 67
    iget-object v5, v5, Lu3/k0;->n:Lu3/p0/g/c;

    .line 68
    sget-object v20, Lu3/p0/c;->c:Lu3/l0;

    if-ltz v0, :cond_9

    const/16 v18, 0x1

    goto :goto_5

    :cond_9
    const/16 v18, 0x0

    :goto_5
    if-eqz v18, :cond_d

    if-eqz v14, :cond_c

    if-eqz v15, :cond_b

    if-eqz v1, :cond_a

    .line 69
    invoke-virtual {v6}, Lu3/z$a;->d()Lu3/z;

    move-result-object v19

    .line 70
    new-instance v6, Lu3/k0;

    move-object v10, v13

    move-object v13, v6

    move-object/from16 v16, v1

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v4

    move-wide/from16 v24, v11

    move-wide/from16 v26, v7

    move-object/from16 v28, v5

    invoke-direct/range {v13 .. v28}, Lu3/k0;-><init>(Lu3/g0;Lu3/f0;Ljava/lang/String;ILu3/y;Lu3/z;Lu3/l0;Lu3/k0;Lu3/k0;Lu3/k0;JJLu3/p0/g/c;)V

    goto/16 :goto_7

    .line 71
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object/from16 v4, v16

    .line 74
    invoke-static {v4, v0}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    move-object/from16 v17, v7

    move/from16 v29, v8

    move-object/from16 p1, v11

    move-object v4, v12

    .line 75
    invoke-static {v5, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v6, v5, Lu3/k0;->b:Lu3/g0;

    .line 77
    iget-object v7, v5, Lu3/k0;->c:Lu3/f0;

    .line 78
    iget v8, v5, Lu3/k0;->e:I

    .line 79
    iget-object v11, v5, Lu3/k0;->d:Ljava/lang/String;

    .line 80
    iget-object v12, v5, Lu3/k0;->f:Lu3/y;

    .line 81
    iget-object v13, v5, Lu3/k0;->g:Lu3/z;

    .line 82
    invoke-virtual {v13}, Lu3/z;->c()Lu3/z$a;

    move-result-object v13

    .line 83
    iget-object v14, v5, Lu3/k0;->i:Lu3/k0;

    .line 84
    iget-object v15, v5, Lu3/k0;->j:Lu3/k0;

    move-object/from16 v16, v1

    .line 85
    iget-object v1, v5, Lu3/k0;->k:Lu3/k0;

    move-object/from16 v19, v1

    move-object/from16 v18, v2

    .line 86
    iget-wide v1, v5, Lu3/k0;->l:J

    move-wide/from16 v20, v1

    .line 87
    iget-wide v1, v5, Lu3/k0;->m:J

    move-wide/from16 v22, v1

    .line 88
    iget-object v1, v5, Lu3/k0;->n:Lu3/p0/g/c;

    .line 89
    invoke-static {v5, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_2
    const-string v0, "Content-Type"

    const/4 v2, 0x0

    move-object/from16 v24, v4

    const/4 v4, 0x2

    .line 90
    invoke-static {v5, v0, v2, v4}, Lu3/k0;->d(Lu3/k0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v2, v3, Lu3/p0/g/c;->f:Lu3/p0/h/d;

    move-object/from16 v25, v1

    invoke-interface {v2, v5}, Lu3/p0/h/d;->f(Lu3/k0;)J

    move-result-wide v1

    .line 92
    iget-object v4, v3, Lu3/p0/g/c;->f:Lu3/p0/h/d;

    invoke-interface {v4, v5}, Lu3/p0/h/d;->b(Lu3/k0;)Lv3/b0;

    move-result-object v4

    .line 93
    new-instance v5, Lu3/p0/g/c$b;

    invoke-direct {v5, v3, v4, v1, v2}, Lu3/p0/g/c$b;-><init>(Lu3/p0/g/c;Lv3/b0;J)V

    .line 94
    new-instance v4, Lu3/p0/h/h;

    .line 95
    invoke-static {v5, v9}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v9, Lv3/v;

    invoke-direct {v9, v5}, Lv3/v;-><init>(Lv3/b0;)V

    .line 97
    invoke-direct {v4, v0, v1, v2, v9}, Lu3/p0/h/h;-><init>(Ljava/lang/String;JLv3/h;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-ltz v8, :cond_f

    const/4 v0, 0x1

    goto :goto_6

    :cond_f
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_19

    if-eqz v6, :cond_18

    if-eqz v7, :cond_17

    if-eqz v11, :cond_16

    .line 98
    invoke-virtual {v13}, Lu3/z$a;->d()Lu3/z;

    move-result-object v10

    .line 99
    new-instance v0, Lu3/k0;

    move-object v1, v4

    move-object v4, v0

    move-object v5, v6

    move-object v6, v7

    move-object v7, v11

    move-object v9, v12

    move-object v11, v1

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v19

    move-wide/from16 v15, v20

    move-wide/from16 v17, v22

    move-object/from16 v19, v25

    invoke-direct/range {v4 .. v19}, Lu3/k0;-><init>(Lu3/g0;Lu3/f0;Ljava/lang/String;ILu3/y;Lu3/z;Lu3/l0;Lu3/k0;Lu3/k0;Lu3/k0;JJLu3/p0/g/c;)V

    move-object v6, v0

    .line 100
    :goto_7
    iget-object v0, v6, Lu3/k0;->b:Lu3/g0;

    const-string v1, "Connection"

    .line 101
    invoke-virtual {v0, v1}, Lu3/g0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "close"

    const/4 v4, 0x1

    invoke-static {v2, v0, v4}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x2

    const/4 v5, 0x0

    .line 102
    invoke-static {v6, v1, v5, v0}, Lu3/k0;->d(Lu3/k0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 103
    :cond_10
    iget-object v0, v3, Lu3/p0/g/c;->f:Lu3/p0/h/d;

    invoke-interface {v0}, Lu3/p0/h/d;->c()Lu3/p0/g/i;

    move-result-object v0

    invoke-virtual {v0}, Lu3/p0/g/i;->l()V

    :cond_11
    const/16 v0, 0xcc

    move/from16 v8, v29

    if-eq v8, v0, :cond_12

    const/16 v0, 0xcd

    if-ne v8, v0, :cond_15

    .line 104
    :cond_12
    iget-object v0, v6, Lu3/k0;->h:Lu3/l0;

    if-eqz v0, :cond_13

    .line 105
    invoke-virtual {v0}, Lu3/l0;->k()J

    move-result-wide v0

    goto :goto_8

    :cond_13
    const-wide/16 v0, -0x1

    :goto_8
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    .line 106
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "HTTP "

    const-string v2, " had non-zero Content-Length: "

    .line 107
    invoke-static {v1, v8, v2}, Le/d/c/a/a;->E(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    iget-object v2, v6, Lu3/k0;->h:Lu3/l0;

    if-eqz v2, :cond_14

    .line 109
    invoke-virtual {v2}, Lu3/l0;->k()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_9

    :cond_14
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    return-object v6

    .line 111
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-object/from16 v0, v24

    .line 114
    invoke-static {v0, v8}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    .line 115
    iget-object v1, v3, Lu3/p0/g/c;->d:Lu3/u;

    iget-object v2, v3, Lu3/p0/g/c;->c:Lu3/p0/g/e;

    .line 116
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v18

    invoke-static {v2, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v16

    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3, v0}, Lu3/p0/g/c;->f(Ljava/io/IOException;)V

    .line 118
    throw v0

    :catch_1
    move-exception v0

    move-object/from16 v30, v2

    move-object v2, v1

    move-object/from16 v1, v30

    .line 119
    iget-object v4, v3, Lu3/p0/g/c;->d:Lu3/u;

    iget-object v5, v3, Lu3/p0/g/c;->c:Lu3/p0/g/e;

    .line 120
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v3, v0}, Lu3/p0/g/c;->f(Ljava/io/IOException;)V

    .line 122
    throw v0

    :catch_2
    move-exception v0

    move-object/from16 v30, v2

    move-object v2, v1

    move-object/from16 v1, v30

    .line 123
    iget-object v4, v3, Lu3/p0/g/c;->d:Lu3/u;

    iget-object v5, v3, Lu3/p0/g/c;->c:Lu3/p0/g/e;

    .line 124
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v3, v0}, Lu3/p0/g/c;->f(Ljava/io/IOException;)V

    .line 126
    throw v0

    .line 127
    :cond_1a
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v0, 0x0

    throw v0
.end method
