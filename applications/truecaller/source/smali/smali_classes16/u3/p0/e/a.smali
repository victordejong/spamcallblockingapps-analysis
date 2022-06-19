.class public final Lu3/p0/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/p0/e/a$a;
    }
.end annotation


# static fields
.field public static final b:Lu3/p0/e/a$a;


# instance fields
.field public final a:Lu3/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu3/p0/e/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu3/p0/e/a$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lu3/p0/e/a;->b:Lu3/p0/e/a$a;

    return-void
.end method

.method public constructor <init>(Lu3/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/p0/e/a;->a:Lu3/d;

    return-void
.end method


# virtual methods
.method public a(Lu3/b0$a;)Lu3/k0;
    .locals 45
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    sget-object v2, Lu3/p0/e/a;->b:Lu3/p0/e/a$a;

    const-string v3, "chain"

    invoke-static {v0, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p1 .. p1}, Lu3/b0$a;->call()Lu3/f;

    move-result-object v3

    .line 2
    iget-object v4, v1, Lu3/p0/e/a;->a:Lu3/d;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    invoke-interface/range {p1 .. p1}, Lu3/b0$a;->request()Lu3/g0;

    move-result-object v7

    const-string v8, "$this$closeQuietly"

    const-string v9, "request"

    .line 3
    invoke-static {v7, v9}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v10, v7, Lu3/g0;->b:Lu3/a0;

    .line 5
    invoke-static {v10}, Lu3/d;->b(Lu3/a0;)Ljava/lang/String;

    move-result-object v10

    .line 6
    :try_start_0
    iget-object v4, v4, Lu3/d;->a:Lu3/p0/e/e;

    invoke-virtual {v4, v10}, Lu3/p0/e/e;->k(Ljava/lang/String;)Lu3/p0/e/e$c;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v4, :cond_5

    .line 7
    :try_start_1
    new-instance v10, Lu3/d$b;

    .line 8
    iget-object v11, v4, Lu3/p0/e/e$c;->c:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv3/b0;

    .line 9
    invoke-direct {v10, v5}, Lu3/d$b;-><init>(Lv3/b0;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v5, "snapshot"

    .line 10
    invoke-static {v4, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v5, v10, Lu3/d$b;->g:Lu3/z;

    const-string v11, "Content-Type"

    invoke-virtual {v5, v11}, Lu3/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 12
    iget-object v11, v10, Lu3/d$b;->g:Lu3/z;

    const-string v12, "Content-Length"

    invoke-virtual {v11, v12}, Lu3/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 13
    new-instance v12, Lu3/g0$a;

    invoke-direct {v12}, Lu3/g0$a;-><init>()V

    .line 14
    iget-object v13, v10, Lu3/d$b;->a:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lu3/g0$a;->i(Ljava/lang/String;)Lu3/g0$a;

    .line 15
    iget-object v13, v10, Lu3/d$b;->c:Ljava/lang/String;

    invoke-virtual {v12, v13, v6}, Lu3/g0$a;->e(Ljava/lang/String;Lu3/j0;)Lu3/g0$a;

    .line 16
    iget-object v13, v10, Lu3/d$b;->b:Lu3/z;

    invoke-virtual {v12, v13}, Lu3/g0$a;->d(Lu3/z;)Lu3/g0$a;

    .line 17
    invoke-virtual {v12}, Lu3/g0$a;->b()Lu3/g0;

    move-result-object v12

    .line 18
    new-instance v13, Lu3/k0$a;

    invoke-direct {v13}, Lu3/k0$a;-><init>()V

    .line 19
    invoke-virtual {v13, v12}, Lu3/k0$a;->g(Lu3/g0;)Lu3/k0$a;

    .line 20
    iget-object v12, v10, Lu3/d$b;->d:Lu3/f0;

    invoke-virtual {v13, v12}, Lu3/k0$a;->f(Lu3/f0;)Lu3/k0$a;

    .line 21
    iget v12, v10, Lu3/d$b;->e:I

    .line 22
    iput v12, v13, Lu3/k0$a;->c:I

    .line 23
    iget-object v12, v10, Lu3/d$b;->f:Ljava/lang/String;

    invoke-virtual {v13, v12}, Lu3/k0$a;->e(Ljava/lang/String;)Lu3/k0$a;

    .line 24
    iget-object v12, v10, Lu3/d$b;->g:Lu3/z;

    invoke-virtual {v13, v12}, Lu3/k0$a;->d(Lu3/z;)Lu3/k0$a;

    .line 25
    new-instance v12, Lu3/d$a;

    invoke-direct {v12, v4, v5, v11}, Lu3/d$a;-><init>(Lu3/p0/e/e$c;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iput-object v12, v13, Lu3/k0$a;->g:Lu3/l0;

    .line 27
    iget-object v4, v10, Lu3/d$b;->h:Lu3/y;

    .line 28
    iput-object v4, v13, Lu3/k0$a;->e:Lu3/y;

    .line 29
    iget-wide v4, v10, Lu3/d$b;->i:J

    .line 30
    iput-wide v4, v13, Lu3/k0$a;->k:J

    .line 31
    iget-wide v4, v10, Lu3/d$b;->j:J

    .line 32
    iput-wide v4, v13, Lu3/k0$a;->l:J

    .line 33
    invoke-virtual {v13}, Lu3/k0$a;->a()Lu3/k0;

    move-result-object v4

    .line 34
    invoke-static {v7, v9}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "response"

    invoke-static {v4, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v5, v10, Lu3/d$b;->a:Ljava/lang/String;

    .line 36
    iget-object v9, v7, Lu3/g0;->b:Lu3/a0;

    .line 37
    iget-object v9, v9, Lu3/a0;->j:Ljava/lang/String;

    .line 38
    invoke-static {v5, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v10, Lu3/d$b;->c:Ljava/lang/String;

    .line 39
    iget-object v9, v7, Lu3/g0;->c:Ljava/lang/String;

    .line 40
    invoke-static {v5, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 41
    iget-object v5, v10, Lu3/d$b;->b:Lu3/z;

    const-string v9, "cachedResponse"

    .line 42
    invoke-static {v4, v9}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "cachedRequest"

    invoke-static {v5, v9}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "newRequest"

    invoke-static {v7, v9}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v9, v4, Lu3/k0;->g:Lu3/z;

    .line 44
    invoke-static {v9}, Lu3/d;->j(Lu3/z;)Ljava/util/Set;

    move-result-object v9

    .line 45
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 47
    invoke-virtual {v5, v10}, Lu3/z;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    const-string v12, "name"

    .line 48
    invoke-static {v10, v12}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v12, v7, Lu3/g0;->d:Lu3/z;

    invoke-virtual {v12, v10}, Lu3/z;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 50
    invoke-static {v11, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_4

    .line 51
    iget-object v4, v4, Lu3/k0;->h:Lu3/l0;

    if-eqz v4, :cond_5

    .line 52
    invoke-static {v4, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    :try_start_2
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 54
    throw v2

    :cond_4
    move-object v6, v4

    goto :goto_3

    .line 55
    :catch_1
    sget-object v5, Lu3/p0/c;->a:[B

    invoke-static {v4, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    :try_start_3
    invoke-virtual {v4}, Lu3/p0/e/e$c;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 57
    throw v2

    .line 58
    :catch_3
    :cond_5
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 59
    invoke-interface/range {p1 .. p1}, Lu3/b0$a;->request()Lu3/g0;

    move-result-object v7

    const-string v8, "request"

    .line 60
    invoke-static {v7, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_c

    .line 61
    iget-wide v8, v6, Lu3/k0;->l:J

    .line 62
    iget-wide v10, v6, Lu3/k0;->m:J

    .line 63
    iget-object v12, v6, Lu3/k0;->g:Lu3/z;

    .line 64
    invoke-virtual {v12}, Lu3/z;->size()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    :goto_4
    if-ge v14, v13, :cond_b

    move-wide/from16 v22, v8

    .line 65
    invoke-virtual {v12, v14}, Lu3/z;->b(I)Ljava/lang/String;

    move-result-object v8

    .line 66
    invoke-virtual {v12, v14}, Lu3/z;->d(I)Ljava/lang/String;

    move-result-object v9

    move-wide/from16 v24, v10

    const-string v10, "Date"

    const/4 v11, 0x1

    .line 67
    invoke-static {v8, v10, v11}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 68
    invoke-static {v9}, Lu3/p0/h/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    move-object v15, v8

    move-object/from16 v20, v9

    goto :goto_5

    :cond_6
    const-string v10, "Expires"

    .line 69
    invoke-static {v8, v10, v11}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 70
    invoke-static {v9}, Lu3/p0/h/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    move-object/from16 v16, v8

    goto :goto_5

    :cond_7
    const-string v10, "Last-Modified"

    .line 71
    invoke-static {v8, v10, v11}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 72
    invoke-static {v9}, Lu3/p0/h/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    goto :goto_5

    :cond_8
    const-string v10, "ETag"

    .line 73
    invoke-static {v8, v10, v11}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_9

    move-object/from16 v18, v9

    goto :goto_5

    :cond_9
    const-string v10, "Age"

    .line 74
    invoke-static {v8, v10, v11}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, -0x1

    .line 75
    invoke-static {v9, v8}, Lu3/p0/c;->z(Ljava/lang/String;I)I

    move-result v8

    move/from16 v21, v8

    :cond_a
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v8, v22

    move-wide/from16 v10, v24

    goto :goto_4

    :cond_b
    move-wide/from16 v22, v8

    move-wide/from16 v24, v10

    goto :goto_6

    :cond_c
    const/16 v21, -0x1

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v15, 0x0

    :goto_6
    move/from16 v12, v21

    if-nez v6, :cond_d

    .line 76
    new-instance v4, Lu3/p0/e/d;

    const/4 v5, 0x0

    invoke-direct {v4, v7, v5}, Lu3/p0/e/d;-><init>(Lu3/g0;Lu3/k0;)V

    goto :goto_7

    :cond_d
    const/4 v13, 0x0

    .line 77
    iget-object v14, v7, Lu3/g0;->b:Lu3/a0;

    .line 78
    iget-boolean v14, v14, Lu3/a0;->a:Z

    if-eqz v14, :cond_e

    .line 79
    iget-object v14, v6, Lu3/k0;->f:Lu3/y;

    if-nez v14, :cond_e

    .line 80
    new-instance v4, Lu3/p0/e/d;

    invoke-direct {v4, v7, v13}, Lu3/p0/e/d;-><init>(Lu3/g0;Lu3/k0;)V

    goto :goto_7

    .line 81
    :cond_e
    invoke-static {v6, v7}, Lu3/p0/e/d;->a(Lu3/k0;Lu3/g0;)Z

    move-result v14

    if-nez v14, :cond_f

    .line 82
    new-instance v4, Lu3/p0/e/d;

    invoke-direct {v4, v7, v13}, Lu3/p0/e/d;-><init>(Lu3/g0;Lu3/k0;)V

    :goto_7
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object v1, v7

    goto/16 :goto_16

    .line 83
    :cond_f
    invoke-virtual {v7}, Lu3/g0;->a()Lu3/e;

    move-result-object v13

    .line 84
    iget-boolean v14, v13, Lu3/e;->a:Z

    if-nez v14, :cond_32

    const-string v14, "If-Modified-Since"

    .line 85
    invoke-virtual {v7, v14}, Lu3/g0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v22, v14

    const-string v14, "If-None-Match"

    if-nez v21, :cond_11

    invoke-virtual {v7, v14}, Lu3/g0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_10

    goto :goto_8

    :cond_10
    const/16 v21, 0x0

    goto :goto_9

    :cond_11
    :goto_8
    const/16 v21, 0x1

    :goto_9
    if-eqz v21, :cond_12

    goto/16 :goto_17

    :cond_12
    move-object/from16 v21, v14

    .line 86
    invoke-virtual {v6}, Lu3/k0;->b()Lu3/e;

    move-result-object v14

    if-eqz v15, :cond_13

    .line 87
    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v23

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    sub-long v2, v10, v23

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_a

    :cond_13
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    const-wide/16 v0, 0x0

    :goto_a
    const/4 v2, -0x1

    if-eq v12, v2, :cond_14

    .line 88
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v3, v13

    int-to-long v12, v12

    invoke-virtual {v2, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_b

    :cond_14
    move-object v3, v13

    :goto_b
    sub-long v12, v10, v8

    sub-long/2addr v4, v10

    add-long/2addr v0, v12

    add-long/2addr v0, v4

    .line 89
    invoke-virtual {v6}, Lu3/k0;->b()Lu3/e;

    move-result-object v2

    .line 90
    iget v2, v2, Lu3/e;->c:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_15

    .line 91
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, v2

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    goto :goto_c

    :cond_15
    if-eqz v16, :cond_17

    if-eqz v15, :cond_16

    .line 92
    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 93
    :cond_16
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, v10

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-lez v2, :cond_1e

    :goto_c
    const-wide/16 v8, 0x0

    goto/16 :goto_f

    :cond_17
    if-eqz v17, :cond_1e

    .line 94
    iget-object v2, v6, Lu3/k0;->b:Lu3/g0;

    .line 95
    iget-object v2, v2, Lu3/g0;->b:Lu3/a0;

    .line 96
    iget-object v4, v2, Lu3/a0;->h:Ljava/util/List;

    if-nez v4, :cond_18

    const/4 v2, 0x0

    goto :goto_e

    .line 97
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    iget-object v2, v2, Lu3/a0;->h:Ljava/util/List;

    const-string v5, "$this$toQueryString"

    .line 99
    invoke-static {v2, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "out"

    invoke-static {v4, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v10, 0x0

    invoke-static {v10, v5}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object v5

    const/4 v10, 0x2

    invoke-static {v5, v10}, Ls1/d0/j;->i(Ls1/d0/g;I)Ls1/d0/g;

    move-result-object v5

    .line 101
    iget v10, v5, Ls1/d0/g;->a:I

    .line 102
    iget v11, v5, Ls1/d0/g;->b:I

    .line 103
    iget v5, v5, Ls1/d0/g;->c:I

    if-ltz v5, :cond_19

    if-gt v10, v11, :cond_1c

    goto :goto_d

    :cond_19
    if-lt v10, v11, :cond_1c

    .line 104
    :goto_d
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    add-int/lit8 v13, v10, 0x1

    .line 105
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v23, v2

    if-lez v10, :cond_1a

    const/16 v2, 0x26

    .line 106
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    :cond_1a
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_1b

    const/16 v2, 0x3d

    .line 108
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    if-eq v10, v11, :cond_1c

    add-int/2addr v10, v5

    move-object/from16 v2, v23

    goto :goto_d

    .line 110
    :cond_1c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_e
    if-nez v2, :cond_1e

    if-eqz v15, :cond_1d

    .line 111
    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 112
    :cond_1d
    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v8, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v8, v4

    if-lez v2, :cond_1f

    const/16 v2, 0xa

    int-to-long v10, v2

    .line 113
    div-long/2addr v8, v10

    move-wide/from16 v43, v4

    move-wide v4, v8

    move-wide/from16 v8, v43

    goto :goto_f

    :cond_1e
    const-wide/16 v4, 0x0

    :cond_1f
    move-wide v8, v4

    .line 114
    :goto_f
    iget v2, v3, Lu3/e;->c:I

    const/4 v10, -0x1

    if-eq v2, v10, :cond_20

    .line 115
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v12, v2

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 116
    :cond_20
    iget v2, v3, Lu3/e;->i:I

    if-eq v2, v10, :cond_21

    .line 117
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v12, v2

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    goto :goto_10

    :cond_21
    move-wide v11, v8

    .line 118
    :goto_10
    iget-boolean v2, v14, Lu3/e;->g:Z

    if-nez v2, :cond_22

    .line 119
    iget v2, v3, Lu3/e;->h:I

    if-eq v2, v10, :cond_22

    .line 120
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, v2

    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    .line 121
    :cond_22
    iget-boolean v2, v14, Lu3/e;->a:Z

    if-nez v2, :cond_2b

    add-long/2addr v11, v0

    add-long/2addr v8, v4

    cmp-long v2, v11, v8

    if-gez v2, :cond_2b

    const-string v2, "response"

    .line 122
    invoke-static {v6, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v2, v6, Lu3/k0;->b:Lu3/g0;

    .line 124
    iget-object v3, v6, Lu3/k0;->c:Lu3/f0;

    .line 125
    iget v8, v6, Lu3/k0;->e:I

    .line 126
    iget-object v9, v6, Lu3/k0;->d:Ljava/lang/String;

    .line 127
    iget-object v10, v6, Lu3/k0;->f:Lu3/y;

    .line 128
    iget-object v13, v6, Lu3/k0;->g:Lu3/z;

    .line 129
    invoke-virtual {v13}, Lu3/z;->c()Lu3/z$a;

    move-result-object v13

    .line 130
    iget-object v14, v6, Lu3/k0;->h:Lu3/l0;

    .line 131
    iget-object v15, v6, Lu3/k0;->i:Lu3/k0;

    move-object/from16 v23, v7

    .line 132
    iget-object v7, v6, Lu3/k0;->j:Lu3/k0;

    move-object/from16 v17, v7

    .line 133
    iget-object v7, v6, Lu3/k0;->k:Lu3/k0;

    move-object/from16 v18, v14

    move-object/from16 v19, v15

    .line 134
    iget-wide v14, v6, Lu3/k0;->l:J

    move-wide/from16 v20, v14

    .line 135
    iget-wide v14, v6, Lu3/k0;->m:J

    move-wide/from16 v40, v14

    .line 136
    iget-object v14, v6, Lu3/k0;->n:Lu3/p0/g/c;

    cmp-long v4, v11, v4

    const-string v5, "value"

    const-string v11, "name"

    const-string v12, "Warning"

    if-ltz v4, :cond_23

    const-string v4, "110 HttpURLConnection \"Response is stale\""

    .line 137
    invoke-static {v12, v11}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v13, v12, v4}, Lu3/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    :cond_23
    const-wide/32 v27, 0x5265c00

    cmp-long v0, v0, v27

    if-lez v0, :cond_25

    .line 139
    invoke-virtual {v6}, Lu3/k0;->b()Lu3/e;

    move-result-object v0

    .line 140
    iget v0, v0, Lu3/e;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    if-nez v16, :cond_24

    const/4 v0, 0x1

    goto :goto_11

    :cond_24
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_25

    const-string v0, "113 HttpURLConnection \"Heuristic expiration\""

    .line 141
    invoke-static {v12, v11}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v13, v12, v0}, Lu3/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    .line 143
    :cond_25
    new-instance v0, Lu3/p0/e/d;

    if-ltz v8, :cond_26

    const/4 v1, 0x1

    goto :goto_12

    :cond_26
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_2a

    if-eqz v2, :cond_29

    if-eqz v3, :cond_28

    if-eqz v9, :cond_27

    .line 144
    invoke-virtual {v13}, Lu3/z$a;->d()Lu3/z;

    move-result-object v33

    .line 145
    new-instance v1, Lu3/k0;

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v30, v9

    move/from16 v31, v8

    move-object/from16 v32, v10

    move-object/from16 v34, v18

    move-object/from16 v35, v19

    move-object/from16 v36, v17

    move-object/from16 v37, v7

    move-wide/from16 v38, v20

    move-object/from16 v42, v14

    invoke-direct/range {v27 .. v42}, Lu3/k0;-><init>(Lu3/g0;Lu3/f0;Ljava/lang/String;ILu3/y;Lu3/z;Lu3/l0;Lu3/k0;Lu3/k0;Lu3/k0;JJLu3/p0/g/c;)V

    const/4 v2, 0x0

    .line 146
    invoke-direct {v0, v2, v1}, Lu3/p0/e/d;-><init>(Lu3/g0;Lu3/k0;)V

    move-object/from16 v1, v23

    goto/16 :goto_19

    .line 147
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    const-string v0, "code < 0: "

    .line 150
    invoke-static {v0, v8}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    move-object/from16 v23, v7

    if-eqz v18, :cond_2c

    move-object/from16 v0, v18

    move-object/from16 v14, v21

    goto :goto_14

    :cond_2c
    if-eqz v17, :cond_2d

    move-object/from16 v18, v19

    goto :goto_13

    :cond_2d
    if-eqz v15, :cond_31

    move-object/from16 v18, v20

    :goto_13
    move-object/from16 v0, v18

    move-object/from16 v14, v22

    :goto_14
    move-object/from16 v1, v23

    .line 151
    iget-object v2, v1, Lu3/g0;->d:Lu3/z;

    .line 152
    invoke-virtual {v2}, Lu3/z;->c()Lu3/z$a;

    move-result-object v2

    if-eqz v0, :cond_30

    .line 153
    invoke-virtual {v2, v14, v0}, Lu3/z$a;->c(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    const-string v0, "request"

    .line 154
    invoke-static {v1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 156
    iget-object v8, v1, Lu3/g0;->b:Lu3/a0;

    .line 157
    iget-object v9, v1, Lu3/g0;->c:Ljava/lang/String;

    .line 158
    iget-object v11, v1, Lu3/g0;->e:Lu3/j0;

    .line 159
    iget-object v0, v1, Lu3/g0;->f:Ljava/util/Map;

    .line 160
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 161
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_15

    .line 162
    :cond_2e
    iget-object v0, v1, Lu3/g0;->f:Ljava/util/Map;

    .line 163
    invoke-static {v0}, Ls1/u/i;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 164
    :goto_15
    iget-object v3, v1, Lu3/g0;->d:Lu3/z;

    .line 165
    invoke-virtual {v3}, Lu3/z;->c()Lu3/z$a;

    .line 166
    invoke-virtual {v2}, Lu3/z$a;->d()Lu3/z;

    move-result-object v2

    const-string v3, "headers"

    .line 167
    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v2}, Lu3/z;->c()Lu3/z$a;

    move-result-object v2

    if-eqz v8, :cond_2f

    .line 169
    invoke-virtual {v2}, Lu3/z$a;->d()Lu3/z;

    move-result-object v10

    .line 170
    invoke-static {v0}, Lu3/p0/c;->y(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    .line 171
    new-instance v0, Lu3/g0;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lu3/g0;-><init>(Lu3/a0;Ljava/lang/String;Lu3/z;Lu3/j0;Ljava/util/Map;)V

    .line 172
    new-instance v4, Lu3/p0/e/d;

    invoke-direct {v4, v0, v6}, Lu3/p0/e/d;-><init>(Lu3/g0;Lu3/k0;)V

    :goto_16
    const/4 v2, 0x0

    move-object v0, v4

    goto :goto_19

    .line 173
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_30
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v0, 0x0

    throw v0

    :cond_31
    move-object/from16 v1, v23

    const/4 v0, 0x0

    .line 175
    new-instance v2, Lu3/p0/e/d;

    invoke-direct {v2, v1, v0}, Lu3/p0/e/d;-><init>(Lu3/g0;Lu3/k0;)V

    goto :goto_18

    :cond_32
    :goto_17
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object v1, v7

    const/4 v0, 0x0

    .line 176
    new-instance v2, Lu3/p0/e/d;

    invoke-direct {v2, v1, v0}, Lu3/p0/e/d;-><init>(Lu3/g0;Lu3/k0;)V

    :goto_18
    move-object/from16 v43, v2

    move-object v2, v0

    move-object/from16 v0, v43

    .line 177
    :goto_19
    iget-object v3, v0, Lu3/p0/e/d;->a:Lu3/g0;

    if-eqz v3, :cond_33

    .line 178
    invoke-virtual {v1}, Lu3/g0;->a()Lu3/e;

    move-result-object v1

    .line 179
    iget-boolean v1, v1, Lu3/e;->j:Z

    if-eqz v1, :cond_33

    .line 180
    new-instance v0, Lu3/p0/e/d;

    invoke-direct {v0, v2, v2}, Lu3/p0/e/d;-><init>(Lu3/g0;Lu3/k0;)V

    .line 181
    :cond_33
    iget-object v1, v0, Lu3/p0/e/d;->a:Lu3/g0;

    .line 182
    iget-object v2, v0, Lu3/p0/e/d;->b:Lu3/k0;

    move-object/from16 v3, p0

    .line 183
    iget-object v4, v3, Lu3/p0/e/a;->a:Lu3/d;

    if-eqz v4, :cond_36

    .line 184
    monitor-enter v4

    :try_start_4
    const-string v5, "cacheStrategy"

    invoke-static {v0, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget v5, v4, Lu3/d;->f:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lu3/d;->f:I

    .line 186
    iget-object v5, v0, Lu3/p0/e/d;->a:Lu3/g0;

    if-eqz v5, :cond_34

    .line 187
    iget v0, v4, Lu3/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v4, Lu3/d;->d:I

    goto :goto_1a

    .line 188
    :cond_34
    iget-object v0, v0, Lu3/p0/e/d;->b:Lu3/k0;

    if-eqz v0, :cond_35

    .line 189
    iget v0, v4, Lu3/d;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v4, Lu3/d;->e:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 190
    :cond_35
    :goto_1a
    monitor-exit v4

    goto :goto_1b

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_36
    :goto_1b
    move-object/from16 v0, v26

    .line 191
    instance-of v4, v0, Lu3/p0/g/e;

    if-nez v4, :cond_37

    const/4 v4, 0x0

    goto :goto_1c

    :cond_37
    move-object v4, v0

    :goto_1c
    check-cast v4, Lu3/p0/g/e;

    if-eqz v6, :cond_38

    if-nez v2, :cond_38

    .line 192
    iget-object v4, v6, Lu3/k0;->h:Lu3/l0;

    if-eqz v4, :cond_38

    .line 193
    sget-object v5, Lu3/p0/c;->a:[B

    const-string v5, "$this$closeQuietly"

    invoke-static {v4, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    :try_start_5
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_1d

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 195
    throw v1

    :catch_5
    :cond_38
    :goto_1d
    const-wide/16 v4, -0x1

    if-nez v1, :cond_39

    if-nez v2, :cond_39

    .line 196
    new-instance v1, Lu3/k0$a;

    invoke-direct {v1}, Lu3/k0$a;-><init>()V

    .line 197
    invoke-interface/range {p1 .. p1}, Lu3/b0$a;->request()Lu3/g0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lu3/k0$a;->g(Lu3/g0;)Lu3/k0$a;

    .line 198
    sget-object v2, Lu3/f0;->c:Lu3/f0;

    invoke-virtual {v1, v2}, Lu3/k0$a;->f(Lu3/f0;)Lu3/k0$a;

    const/16 v2, 0x1f8

    .line 199
    iput v2, v1, Lu3/k0$a;->c:I

    const-string v2, "Unsatisfiable Request (only-if-cached)"

    .line 200
    invoke-virtual {v1, v2}, Lu3/k0$a;->e(Ljava/lang/String;)Lu3/k0$a;

    .line 201
    sget-object v2, Lu3/p0/c;->c:Lu3/l0;

    .line 202
    iput-object v2, v1, Lu3/k0$a;->g:Lu3/l0;

    .line 203
    iput-wide v4, v1, Lu3/k0$a;->k:J

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 205
    iput-wide v4, v1, Lu3/k0$a;->l:J

    .line 206
    invoke-virtual {v1}, Lu3/k0$a;->a()Lu3/k0;

    move-result-object v1

    const-string v2, "call"

    .line 207
    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {v1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_39
    if-nez v1, :cond_3b

    if-eqz v2, :cond_3a

    .line 208
    new-instance v1, Lu3/k0$a;

    invoke-direct {v1, v2}, Lu3/k0$a;-><init>(Lu3/k0;)V

    move-object/from16 v7, v25

    .line 209
    invoke-static {v7, v2}, Lu3/p0/e/a$a;->a(Lu3/p0/e/a$a;Lu3/k0;)Lu3/k0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lu3/k0$a;->b(Lu3/k0;)Lu3/k0$a;

    .line 210
    invoke-virtual {v1}, Lu3/k0$a;->a()Lu3/k0;

    move-result-object v1

    const-string v2, "call"

    .line 211
    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {v1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 212
    :cond_3a
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v0, 0x0

    throw v0

    :cond_3b
    move-object/from16 v7, v25

    if-eqz v2, :cond_3c

    const-string v8, "call"

    .line 213
    invoke-static {v0, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "cachedResponse"

    invoke-static {v2, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1e

    .line 214
    :cond_3c
    iget-object v8, v3, Lu3/p0/e/a;->a:Lu3/d;

    if-eqz v8, :cond_3d

    const-string v8, "call"

    .line 215
    invoke-static {v0, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3d
    :goto_1e
    move-object/from16 v8, p1

    .line 216
    :try_start_6
    invoke-interface {v8, v1}, Lu3/b0$a;->a(Lu3/g0;)Lu3/k0;

    move-result-object v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v8, :cond_3e

    if-eqz v6, :cond_3e

    .line 217
    iget-object v6, v6, Lu3/k0;->h:Lu3/l0;

    if-eqz v6, :cond_3e

    .line 218
    sget-object v9, Lu3/p0/c;->a:[B

    const-string v9, "$this$closeQuietly"

    invoke-static {v6, v9}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    :try_start_7
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_1f

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 220
    throw v1

    :catch_7
    :cond_3e
    :goto_1f
    if-eqz v2, :cond_4c

    if-eqz v8, :cond_4b

    .line 221
    iget v6, v8, Lu3/k0;->e:I

    const/16 v9, 0x130

    if-ne v6, v9, :cond_4b

    .line 222
    new-instance v1, Lu3/k0$a;

    invoke-direct {v1, v2}, Lu3/k0$a;-><init>(Lu3/k0;)V

    .line 223
    iget-object v4, v2, Lu3/k0;->g:Lu3/z;

    iget-object v5, v8, Lu3/k0;->g:Lu3/z;

    .line 224
    new-instance v6, Ljava/util/ArrayList;

    const/16 v9, 0x14

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    invoke-virtual {v4}, Lu3/z;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_20
    const-string v11, "value"

    const-string v12, "name"

    if-ge v10, v9, :cond_43

    .line 226
    invoke-virtual {v4, v10}, Lu3/z;->b(I)Ljava/lang/String;

    move-result-object v13

    .line 227
    invoke-virtual {v4, v10}, Lu3/z;->d(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Warning"

    move-object/from16 v16, v4

    const/4 v4, 0x1

    .line 228
    invoke-static {v15, v13, v4}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3f

    const-string v4, "1"

    const/4 v15, 0x0

    move/from16 p1, v9

    const/4 v9, 0x2

    invoke-static {v14, v4, v15, v9}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    if-eqz v4, :cond_40

    goto :goto_21

    :cond_3f
    move/from16 p1, v9

    .line 229
    :cond_40
    invoke-virtual {v7, v13}, Lu3/p0/e/a$a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 230
    invoke-virtual {v7, v13}, Lu3/p0/e/a$a;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 231
    invoke-virtual {v5, v13}, Lu3/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_42

    .line 232
    :cond_41
    invoke-static {v13, v12}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v11}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-static {v14}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    :goto_21
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, p1

    move-object/from16 v4, v16

    goto :goto_20

    .line 235
    :cond_43
    invoke-virtual {v5}, Lu3/z;->size()I

    move-result v4

    const/4 v9, 0x0

    :goto_22
    if-ge v9, v4, :cond_45

    .line 236
    invoke-virtual {v5, v9}, Lu3/z;->b(I)Ljava/lang/String;

    move-result-object v10

    .line 237
    invoke-virtual {v7, v10}, Lu3/p0/e/a$a;->b(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_44

    invoke-virtual {v7, v10}, Lu3/p0/e/a$a;->c(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_44

    .line 238
    invoke-virtual {v5, v9}, Lu3/z;->d(I)Ljava/lang/String;

    move-result-object v13

    .line 239
    invoke-static {v10, v12}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v11}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-static {v13}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    :cond_45
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 242
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4a

    check-cast v4, [Ljava/lang/String;

    .line 243
    new-instance v5, Lu3/z;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lu3/z;-><init>([Ljava/lang/String;Ls1/z/c/f;)V

    .line 244
    invoke-virtual {v1, v5}, Lu3/k0$a;->d(Lu3/z;)Lu3/k0$a;

    .line 245
    iget-wide v4, v8, Lu3/k0;->l:J

    .line 246
    iput-wide v4, v1, Lu3/k0$a;->k:J

    .line 247
    iget-wide v4, v8, Lu3/k0;->m:J

    .line 248
    iput-wide v4, v1, Lu3/k0$a;->l:J

    .line 249
    invoke-static {v7, v2}, Lu3/p0/e/a$a;->a(Lu3/p0/e/a$a;Lu3/k0;)Lu3/k0;

    move-result-object v4

    invoke-virtual {v1, v4}, Lu3/k0$a;->b(Lu3/k0;)Lu3/k0$a;

    .line 250
    invoke-static {v7, v8}, Lu3/p0/e/a$a;->a(Lu3/p0/e/a$a;Lu3/k0;)Lu3/k0;

    move-result-object v4

    const-string v5, "networkResponse"

    .line 251
    invoke-virtual {v1, v5, v4}, Lu3/k0$a;->c(Ljava/lang/String;Lu3/k0;)V

    .line 252
    iput-object v4, v1, Lu3/k0$a;->h:Lu3/k0;

    .line 253
    invoke-virtual {v1}, Lu3/k0$a;->a()Lu3/k0;

    move-result-object v1

    .line 254
    iget-object v4, v8, Lu3/k0;->h:Lu3/l0;

    if-eqz v4, :cond_49

    .line 255
    invoke-virtual {v4}, Lu3/l0;->close()V

    .line 256
    iget-object v4, v3, Lu3/p0/e/a;->a:Lu3/d;

    if-eqz v4, :cond_48

    .line 257
    monitor-enter v4

    .line 258
    :try_start_8
    iget v5, v4, Lu3/d;->e:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lu3/d;->e:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 259
    monitor-exit v4

    .line 260
    iget-object v4, v3, Lu3/p0/e/a;->a:Lu3/d;

    .line 261
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "cached"

    invoke-static {v2, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "network"

    invoke-static {v1, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    new-instance v4, Lu3/d$b;

    invoke-direct {v4, v1}, Lu3/d$b;-><init>(Lu3/k0;)V

    .line 263
    iget-object v2, v2, Lu3/k0;->h:Lu3/l0;

    if-eqz v2, :cond_47

    .line 264
    check-cast v2, Lu3/d$a;

    .line 265
    iget-object v2, v2, Lu3/d$a;->d:Lu3/p0/e/e$c;

    .line 266
    :try_start_9
    iget-object v5, v2, Lu3/p0/e/e$c;->d:Lu3/p0/e/e;

    iget-object v6, v2, Lu3/p0/e/e$c;->a:Ljava/lang/String;

    iget-wide v7, v2, Lu3/p0/e/e$c;->b:J

    invoke-virtual {v5, v6, v7, v8}, Lu3/p0/e/e;->j(Ljava/lang/String;J)Lu3/p0/e/e$a;

    move-result-object v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    if-eqz v2, :cond_46

    .line 267
    :try_start_a
    invoke-virtual {v4, v2}, Lu3/d$b;->c(Lu3/p0/e/e$a;)V

    .line 268
    invoke-virtual {v2}, Lu3/p0/e/e$a;->b()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_23

    :catch_8
    const/4 v2, 0x0

    :catch_9
    if-eqz v2, :cond_46

    .line 269
    :try_start_b
    invoke-virtual {v2}, Lu3/p0/e/e$a;->a()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    :catch_a
    :cond_46
    :goto_23
    const-string v2, "call"

    .line 270
    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {v1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 271
    :cond_47
    new-instance v0, Ls1/p;

    const-string v1, "null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody"

    invoke-direct {v0, v1}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 272
    monitor-exit v4

    throw v0

    .line 273
    :cond_48
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v0, 0x0

    throw v0

    :cond_49
    const/4 v0, 0x0

    .line 274
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v0

    .line 275
    :cond_4a
    new-instance v0, Ls1/p;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    const/4 v6, 0x0

    .line 276
    iget-object v9, v2, Lu3/k0;->h:Lu3/l0;

    if-eqz v9, :cond_4d

    .line 277
    sget-object v10, Lu3/p0/c;->a:[B

    const-string v10, "$this$closeQuietly"

    invoke-static {v9, v10}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    :try_start_c
    invoke-interface {v9}, Ljava/io/Closeable;->close()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_24

    :catch_b
    move-exception v0

    move-object v1, v0

    .line 279
    throw v1

    :cond_4c
    const/4 v6, 0x0

    :catch_c
    :cond_4d
    :goto_24
    if-eqz v8, :cond_61

    .line 280
    new-instance v9, Lu3/k0$a;

    invoke-direct {v9, v8}, Lu3/k0$a;-><init>(Lu3/k0;)V

    .line 281
    invoke-static {v7, v2}, Lu3/p0/e/a$a;->a(Lu3/p0/e/a$a;Lu3/k0;)Lu3/k0;

    move-result-object v10

    invoke-virtual {v9, v10}, Lu3/k0$a;->b(Lu3/k0;)Lu3/k0$a;

    .line 282
    invoke-static {v7, v8}, Lu3/p0/e/a$a;->a(Lu3/p0/e/a$a;Lu3/k0;)Lu3/k0;

    move-result-object v7

    const-string v8, "networkResponse"

    .line 283
    invoke-virtual {v9, v8, v7}, Lu3/k0$a;->c(Ljava/lang/String;Lu3/k0;)V

    .line 284
    iput-object v7, v9, Lu3/k0$a;->h:Lu3/k0;

    .line 285
    invoke-virtual {v9}, Lu3/k0$a;->a()Lu3/k0;

    move-result-object v7

    .line 286
    iget-object v8, v3, Lu3/p0/e/a;->a:Lu3/d;

    if-eqz v8, :cond_60

    .line 287
    invoke-static {v7}, Lu3/p0/h/e;->a(Lu3/k0;)Z

    move-result v8

    if-eqz v8, :cond_5c

    invoke-static {v7, v1}, Lu3/p0/e/d;->a(Lu3/k0;Lu3/g0;)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 288
    iget-object v1, v3, Lu3/p0/e/a;->a:Lu3/d;

    .line 289
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "response"

    invoke-static {v7, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    iget-object v8, v7, Lu3/k0;->b:Lu3/g0;

    .line 291
    iget-object v8, v8, Lu3/g0;->c:Ljava/lang/String;

    const-string v9, "method"

    .line 292
    invoke-static {v8, v9}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "POST"

    .line 293
    invoke-static {v8, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4e

    const-string v9, "PATCH"

    invoke-static {v8, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4e

    const-string v9, "PUT"

    invoke-static {v8, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4e

    const-string v9, "DELETE"

    invoke-static {v8, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4e

    const-string v9, "MOVE"

    invoke-static {v8, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4f

    :cond_4e
    const/4 v6, 0x1

    :cond_4f
    if-eqz v6, :cond_50

    .line 294
    :try_start_d
    iget-object v4, v7, Lu3/k0;->b:Lu3/g0;

    .line 295
    invoke-virtual {v1, v4}, Lu3/d;->d(Lu3/g0;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_f

    goto :goto_25

    :cond_50
    const-string v6, "GET"

    .line 296
    invoke-static {v8, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_51

    goto :goto_25

    :cond_51
    const-string v6, "$this$hasVaryAll"

    .line 297
    invoke-static {v7, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iget-object v6, v7, Lu3/k0;->g:Lu3/z;

    .line 299
    invoke-static {v6}, Lu3/d;->j(Lu3/z;)Ljava/util/Set;

    move-result-object v6

    const-string v8, "*"

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    goto :goto_25

    .line 300
    :cond_52
    new-instance v6, Lu3/d$b;

    invoke-direct {v6, v7}, Lu3/d$b;-><init>(Lu3/k0;)V

    .line 301
    :try_start_e
    iget-object v8, v1, Lu3/d;->a:Lu3/p0/e/e;

    .line 302
    iget-object v9, v7, Lu3/k0;->b:Lu3/g0;

    .line 303
    iget-object v9, v9, Lu3/g0;->b:Lu3/a0;

    .line 304
    invoke-static {v9}, Lu3/d;->b(Lu3/a0;)Ljava/lang/String;

    move-result-object v9

    .line 305
    sget-object v10, Lu3/p0/e/e;->v:Ls1/f0/h;

    .line 306
    invoke-virtual {v8, v9, v4, v5}, Lu3/p0/e/e;->j(Ljava/lang/String;J)Lu3/p0/e/e$a;

    move-result-object v4
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    if-eqz v4, :cond_53

    .line 307
    :try_start_f
    invoke-virtual {v6, v4}, Lu3/d$b;->c(Lu3/p0/e/e$a;)V

    .line 308
    new-instance v5, Lu3/d$c;

    invoke-direct {v5, v1, v4}, Lu3/d$c;-><init>(Lu3/d;Lu3/p0/e/e$a;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    goto :goto_26

    :catch_d
    const/4 v4, 0x0

    :catch_e
    if-eqz v4, :cond_53

    .line 309
    :try_start_10
    invoke-virtual {v4}, Lu3/p0/e/e$a;->a()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    :catch_f
    :cond_53
    :goto_25
    const/4 v5, 0x0

    :goto_26
    if-nez v5, :cond_54

    move-object/from16 v26, v0

    move-object/from16 v25, v2

    goto/16 :goto_28

    .line 310
    :cond_54
    iget-object v1, v5, Lu3/d$c;->b:Lv3/z;

    .line 311
    iget-object v4, v7, Lu3/k0;->h:Lu3/l0;

    if-eqz v4, :cond_5b

    .line 312
    invoke-virtual {v4}, Lu3/l0;->q()Lv3/h;

    move-result-object v4

    .line 313
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->J(Lv3/z;)Lv3/g;

    move-result-object v1

    .line 314
    new-instance v6, Lu3/p0/e/b;

    invoke-direct {v6, v4, v5, v1}, Lu3/p0/e/b;-><init>(Lv3/h;Lu3/p0/e/c;Lv3/g;)V

    const-string v1, "Content-Type"

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 315
    invoke-static {v7, v1, v5, v4}, Lu3/k0;->d(Lu3/k0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 316
    iget-object v4, v7, Lu3/k0;->h:Lu3/l0;

    .line 317
    invoke-virtual {v4}, Lu3/l0;->k()J

    move-result-wide v4

    const-string v8, "response"

    .line 318
    invoke-static {v7, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    iget-object v10, v7, Lu3/k0;->b:Lu3/g0;

    .line 320
    iget-object v11, v7, Lu3/k0;->c:Lu3/f0;

    .line 321
    iget v13, v7, Lu3/k0;->e:I

    .line 322
    iget-object v12, v7, Lu3/k0;->d:Ljava/lang/String;

    .line 323
    iget-object v14, v7, Lu3/k0;->f:Lu3/y;

    .line 324
    iget-object v8, v7, Lu3/k0;->g:Lu3/z;

    .line 325
    invoke-virtual {v8}, Lu3/z;->c()Lu3/z$a;

    move-result-object v8

    .line 326
    iget-object v15, v7, Lu3/k0;->i:Lu3/k0;

    .line 327
    iget-object v9, v7, Lu3/k0;->j:Lu3/k0;

    .line 328
    iget-object v3, v7, Lu3/k0;->k:Lu3/k0;

    move-object/from16 v25, v2

    move-object/from16 v19, v3

    .line 329
    iget-wide v2, v7, Lu3/k0;->l:J

    move-wide/from16 v20, v2

    .line 330
    iget-wide v2, v7, Lu3/k0;->m:J

    .line 331
    iget-object v7, v7, Lu3/k0;->n:Lu3/p0/g/c;

    move-object/from16 v26, v0

    .line 332
    new-instance v0, Lu3/p0/h/h;

    move-object/from16 v16, v9

    const-string v9, "$this$buffer"

    .line 333
    invoke-static {v6, v9}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    new-instance v9, Lv3/v;

    invoke-direct {v9, v6}, Lv3/v;-><init>(Lv3/b0;)V

    .line 335
    invoke-direct {v0, v1, v4, v5, v9}, Lu3/p0/h/h;-><init>(Ljava/lang/String;JLv3/h;)V

    if-ltz v13, :cond_55

    const/4 v1, 0x1

    goto :goto_27

    :cond_55
    const/4 v1, 0x0

    :goto_27
    if-eqz v1, :cond_5a

    if-eqz v10, :cond_59

    if-eqz v11, :cond_58

    if-eqz v12, :cond_57

    .line 336
    invoke-virtual {v8}, Lu3/z$a;->d()Lu3/z;

    move-result-object v1

    .line 337
    new-instance v4, Lu3/k0;

    move-object/from16 v5, v16

    move-object v9, v4

    move-object v6, v15

    move-object v15, v1

    move-object/from16 v16, v0

    move-object/from16 v17, v6

    move-object/from16 v18, v5

    move-wide/from16 v22, v2

    move-object/from16 v24, v7

    invoke-direct/range {v9 .. v24}, Lu3/k0;-><init>(Lu3/g0;Lu3/f0;Ljava/lang/String;ILu3/y;Lu3/z;Lu3/l0;Lu3/k0;Lu3/k0;Lu3/k0;JJLu3/p0/g/c;)V

    move-object v7, v4

    :goto_28
    if-eqz v25, :cond_56

    const-string v0, "call"

    move-object/from16 v1, v26

    .line 338
    invoke-static {v1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_56
    return-object v7

    .line 339
    :cond_57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    const-string v0, "code < 0: "

    .line 342
    invoke-static {v0, v13}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    :cond_5b
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v0, 0x0

    throw v0

    .line 344
    :cond_5c
    iget-object v0, v1, Lu3/g0;->c:Ljava/lang/String;

    const-string v2, "method"

    .line 345
    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "POST"

    .line 346
    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "PATCH"

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "PUT"

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "DELETE"

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "MOVE"

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    goto :goto_29

    :cond_5d
    const/4 v0, 0x0

    goto :goto_2a

    :cond_5e
    :goto_29
    const/4 v0, 0x1

    :goto_2a
    if-eqz v0, :cond_5f

    move-object/from16 v2, p0

    .line 347
    :try_start_11
    iget-object v0, v2, Lu3/p0/e/a;->a:Lu3/d;

    invoke-virtual {v0, v1}, Lu3/d;->d(Lu3/g0;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_10

    goto :goto_2b

    :cond_5f
    move-object/from16 v2, p0

    goto :goto_2b

    :cond_60
    move-object v2, v3

    :catch_10
    :goto_2b
    return-object v7

    :cond_61
    move-object v2, v3

    .line 348
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v0, 0x0

    throw v0

    :catchall_2
    move-exception v0

    move-object v2, v3

    move-object v1, v0

    if-eqz v6, :cond_62

    .line 349
    iget-object v0, v6, Lu3/k0;->h:Lu3/l0;

    if-eqz v0, :cond_62

    .line 350
    sget-object v3, Lu3/p0/c;->a:[B

    const-string v3, "$this$closeQuietly"

    invoke-static {v0, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    :try_start_12
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_11
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_2c

    :catch_11
    move-exception v0

    move-object v1, v0

    .line 352
    throw v1

    .line 353
    :catch_12
    :cond_62
    :goto_2c
    throw v1
.end method
