.class public final Lu3/p0/h/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lv3/i;

.field public static final b:Lv3/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lv3/i;->e:Lv3/i$a;

    const-string v1, "\"\\"

    invoke-virtual {v0, v1}, Lv3/i$a;->c(Ljava/lang/String;)Lv3/i;

    move-result-object v1

    sput-object v1, Lu3/p0/h/e;->a:Lv3/i;

    const-string v1, "\t ,="

    .line 2
    invoke-virtual {v0, v1}, Lv3/i$a;->c(Ljava/lang/String;)Lv3/i;

    move-result-object v0

    sput-object v0, Lu3/p0/h/e;->b:Lv3/i;

    return-void
.end method

.method public static final a(Lu3/k0;)Z
    .locals 8

    const-string v0, "$this$promisesBody"

    invoke-static {p0, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lu3/k0;->b:Lu3/g0;

    .line 2
    iget-object v0, v0, Lu3/g0;->c:Ljava/lang/String;

    const-string v1, "HEAD"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget v0, p0, Lu3/k0;->e:I

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    :cond_1
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-static {p0}, Lu3/p0/c;->k(Lu3/k0;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x2

    const-string v4, "Transfer-Encoding"

    .line 6
    invoke-static {p0, v4, v0, v2}, Lu3/k0;->d(Lu3/k0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-static {v0, p0, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v3
.end method

.method public static final b(Lv3/f;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/f;",
            "Ljava/util/List<",
            "Lu3/j;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_0
    const/4 v2, 0x0

    move-object v3, v2

    :goto_1
    if-nez v3, :cond_0

    .line 1
    invoke-static/range {p0 .. p0}, Lu3/p0/h/e;->e(Lv3/f;)Z

    .line 2
    invoke-static/range {p0 .. p0}, Lu3/p0/h/e;->c(Lv3/f;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static/range {p0 .. p0}, Lu3/p0/h/e;->e(Lv3/f;)Z

    move-result v4

    .line 4
    invoke-static/range {p0 .. p0}, Lu3/p0/h/e;->c(Lv3/f;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 5
    invoke-virtual/range {p0 .. p0}, Lv3/f;->N1()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance v0, Lu3/j;

    sget-object v2, Ls1/u/t;->a:Ls1/u/t;

    invoke-direct {v0, v3, v2}, Lu3/j;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    const/16 v6, 0x3d

    int-to-byte v6, v6

    .line 7
    invoke-static {v0, v6}, Lu3/p0/c;->t(Lv3/f;B)I

    move-result v7

    .line 8
    invoke-static/range {p0 .. p0}, Lu3/p0/h/e;->e(Lv3/f;)Z

    move-result v8

    if-nez v4, :cond_4

    if-nez v8, :cond_3

    .line 9
    invoke-virtual/range {p0 .. p0}, Lv3/f;->N1()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 10
    :cond_3
    new-instance v4, Lu3/j;

    .line 11
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-static {v6, v7}, Ls1/f0/r;->r(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    const-string v5, "Collections.singletonMap\u2026ek + \"=\".repeat(eqCount))"

    invoke-static {v2, v5}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {v4, v3, v2}, Lu3/j;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_4
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    invoke-static {v0, v6}, Lu3/p0/c;->t(Lv3/f;B)I

    move-result v8

    add-int/2addr v8, v7

    :goto_2
    if-nez v5, :cond_6

    .line 15
    invoke-static/range {p0 .. p0}, Lu3/p0/h/e;->c(Lv3/f;)Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-static/range {p0 .. p0}, Lu3/p0/h/e;->e(Lv3/f;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    .line 17
    :cond_5
    invoke-static {v0, v6}, Lu3/p0/c;->t(Lv3/f;B)I

    move-result v7

    move v8, v7

    :cond_6
    if-nez v8, :cond_7

    .line 18
    :goto_3
    new-instance v6, Lu3/j;

    invoke-direct {v6, v3, v4}, Lu3/j;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    goto/16 :goto_1

    :cond_7
    const/4 v7, 0x1

    if-le v8, v7, :cond_8

    return-void

    .line 19
    :cond_8
    invoke-static/range {p0 .. p0}, Lu3/p0/h/e;->e(Lv3/f;)Z

    move-result v9

    if-eqz v9, :cond_9

    return-void

    :cond_9
    const/16 v9, 0x22

    int-to-byte v9, v9

    .line 20
    invoke-virtual/range {p0 .. p0}, Lv3/f;->N1()Z

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_a

    const-wide/16 v12, 0x0

    invoke-virtual {v0, v12, v13}, Lv3/f;->l(J)B

    move-result v10

    if-ne v10, v9, :cond_a

    move v10, v7

    goto :goto_4

    :cond_a
    move v10, v11

    :goto_4
    if-eqz v10, :cond_10

    .line 21
    invoke-virtual/range {p0 .. p0}, Lv3/f;->readByte()B

    move-result v10

    if-ne v10, v9, :cond_b

    goto :goto_5

    :cond_b
    move v7, v11

    :goto_5
    if-eqz v7, :cond_f

    .line 22
    new-instance v7, Lv3/f;

    invoke-direct {v7}, Lv3/f;-><init>()V

    .line 23
    :goto_6
    sget-object v10, Lu3/p0/h/e;->a:Lv3/i;

    invoke-virtual {v0, v10}, Lv3/f;->s(Lv3/i;)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v12, v10, v12

    if-nez v12, :cond_c

    goto :goto_7

    .line 24
    :cond_c
    invoke-virtual {v0, v10, v11}, Lv3/f;->l(J)B

    move-result v12

    if-ne v12, v9, :cond_d

    .line 25
    invoke-virtual {v7, v0, v10, v11}, Lv3/f;->h1(Lv3/f;J)V

    .line 26
    invoke-virtual/range {p0 .. p0}, Lv3/f;->readByte()B

    .line 27
    invoke-virtual {v7}, Lv3/f;->Q()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    .line 28
    :cond_d
    iget-wide v12, v0, Lv3/f;->b:J

    const-wide/16 v14, 0x1

    add-long v16, v10, v14

    cmp-long v12, v12, v16

    if-nez v12, :cond_e

    :goto_7
    move-object v7, v2

    goto :goto_8

    .line 29
    :cond_e
    invoke-virtual {v7, v0, v10, v11}, Lv3/f;->h1(Lv3/f;J)V

    .line 30
    invoke-virtual/range {p0 .. p0}, Lv3/f;->readByte()B

    .line 31
    invoke-virtual {v7, v0, v14, v15}, Lv3/f;->h1(Lv3/f;J)V

    goto :goto_6

    .line 32
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_10
    invoke-static/range {p0 .. p0}, Lu3/p0/h/e;->c(Lv3/f;)Ljava/lang/String;

    move-result-object v7

    :goto_8
    if-eqz v7, :cond_13

    .line 34
    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_11

    return-void

    .line 35
    :cond_11
    invoke-static/range {p0 .. p0}, Lu3/p0/h/e;->e(Lv3/f;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual/range {p0 .. p0}, Lv3/f;->N1()Z

    move-result v5

    if-nez v5, :cond_12

    return-void

    :cond_12
    move-object v5, v2

    goto/16 :goto_2

    :cond_13
    return-void
.end method

.method public static final c(Lv3/f;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lu3/p0/h/e;->b:Lv3/i;

    invoke-virtual {p0, v0}, Lv3/f;->s(Lv3/i;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2
    iget-wide v0, p0, Lv3/f;->b:J

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p0, v0, v1}, Lv3/f;->S(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final d(Lu3/q;Lu3/a0;Lu3/z;)V
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "$this$receiveHeaders"

    invoke-static {v1, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "url"

    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "headers"

    invoke-static {v0, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v5, Lu3/q;->a:Lu3/q;

    if-ne v1, v5, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v5, Lu3/o;->n:Lu3/o;

    .line 3
    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Set-Cookie"

    .line 4
    invoke-virtual {v0, v4}, Lu3/z;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v0, 0x0

    const/4 v6, 0x0

    move-object v7, v6

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_22

    .line 6
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 7
    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "setCookie"

    invoke-static {v8, v9}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 9
    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v9}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v9, Lu3/p0/c;->a:[B

    .line 11
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v12, 0x3b

    invoke-static {v8, v12, v0, v9}, Lu3/p0/c;->f(Ljava/lang/String;CII)I

    move-result v9

    const/16 v13, 0x3d

    .line 12
    invoke-static {v8, v13, v0, v9}, Lu3/p0/c;->f(Ljava/lang/String;CII)I

    move-result v13

    if-ne v13, v9, :cond_1

    goto :goto_2

    .line 13
    :cond_1
    invoke-static {v8, v0, v13}, Lu3/p0/c;->A(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v15

    .line 14
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1f

    invoke-static {v15}, Lu3/p0/c;->m(Ljava/lang/String;)I

    move-result v0

    const/4 v14, -0x1

    if-eq v0, v14, :cond_3

    goto/16 :goto_e

    :cond_3
    add-int/lit8 v13, v13, 0x1

    .line 15
    invoke-static {v8, v13, v9}, Lu3/p0/c;->A(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v16

    .line 16
    invoke-static/range {v16 .. v16}, Lu3/p0/c;->m(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v14, :cond_4

    :goto_2
    const/4 v0, 0x0

    const/4 v8, 0x0

    move-object/from16 v33, v3

    move-object/from16 p2, v4

    move/from16 v34, v5

    move v4, v8

    goto/16 :goto_10

    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 17
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    const-wide/16 v17, -0x1

    const-wide v19, 0xe677d21fdbffL

    const/4 v0, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-wide/from16 v25, v17

    move-wide/from16 v27, v19

    move/from16 v35, v9

    move-object v9, v0

    move/from16 v0, v35

    move/from16 v36, v21

    move/from16 v21, v14

    move-object/from16 v14, v24

    move/from16 v24, v23

    move/from16 v23, v22

    move/from16 v22, v36

    :goto_3
    const-wide v29, 0x7fffffffffffffffL

    const-wide/high16 v31, -0x8000000000000000L

    if-ge v0, v13, :cond_11

    .line 18
    invoke-static {v8, v12, v0, v13}, Lu3/p0/c;->f(Ljava/lang/String;CII)I

    move-result v12

    move-object/from16 v33, v3

    const/16 v3, 0x3d

    .line 19
    invoke-static {v8, v3, v0, v12}, Lu3/p0/c;->f(Ljava/lang/String;CII)I

    move-result v3

    .line 20
    invoke-static {v8, v0, v3}, Lu3/p0/c;->A(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-ge v3, v12, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 21
    invoke-static {v8, v3, v12}, Lu3/p0/c;->A(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    const-string v3, ""

    :goto_4
    move-object/from16 p2, v4

    const-string v4, "expires"

    move/from16 v34, v5

    const/4 v5, 0x1

    .line 22
    invoke-static {v0, v4, v5}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 23
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lu3/o;->b(Ljava/lang/String;II)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-wide/from16 v27, v3

    goto :goto_6

    :cond_6
    const-string v4, "max-age"

    const/4 v5, 0x1

    .line 24
    invoke-static {v0, v4, v5}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 25
    :try_start_1
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v25, 0x0

    cmp-long v0, v3, v25

    if-gtz v0, :cond_7

    goto :goto_5

    :cond_7
    move-wide/from16 v31, v3

    :goto_5
    move-wide/from16 v25, v31

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 26
    :try_start_2
    new-instance v0, Ls1/f0/h;

    const-string v5, "-?\\d+"

    invoke-direct {v0, v5}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ls1/f0/h;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "-"

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 27
    invoke-static {v3, v0, v5, v4}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_8

    move-wide/from16 v29, v31

    :cond_8
    move-wide/from16 v25, v29

    :goto_6
    const/16 v23, 0x1

    goto :goto_7

    .line 28
    :cond_9
    throw v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_a
    const-string v4, "domain"

    const/4 v5, 0x1

    .line 29
    invoke-static {v0, v4, v5}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_d

    :try_start_3
    const-string v0, "."

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 30
    invoke-static {v3, v0, v5, v4}, Ls1/f0/r;->m(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_c

    .line 31
    invoke-static {v3, v0}, Ls1/f0/v;->P(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->J3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/16 v24, 0x0

    move-object v9, v0

    goto :goto_7

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 32
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Failed requirement."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_d
    const-string v4, "path"

    const/4 v5, 0x1

    .line 33
    invoke-static {v0, v4, v5}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object v14, v3

    goto :goto_7

    :cond_e
    const-string v3, "secure"

    .line 34
    invoke-static {v0, v3, v5}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_f

    move/from16 v21, v5

    goto :goto_7

    :cond_f
    const-string v3, "httponly"

    .line 35
    invoke-static {v0, v3, v5}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v22, 0x1

    :catch_1
    :cond_10
    :goto_7
    add-int/lit8 v0, v12, 0x1

    const/16 v12, 0x3b

    move-object/from16 v4, p2

    move-object/from16 v3, v33

    move/from16 v5, v34

    goto/16 :goto_3

    :cond_11
    move-object/from16 v33, v3

    move-object/from16 p2, v4

    move/from16 v34, v5

    cmp-long v0, v25, v31

    if-nez v0, :cond_12

    move-wide/from16 v17, v31

    goto :goto_9

    :cond_12
    cmp-long v0, v25, v17

    if-eqz v0, :cond_16

    const-wide v3, 0x20c49ba5e353f7L

    cmp-long v0, v25, v3

    if-gtz v0, :cond_13

    const/16 v0, 0x3e8

    int-to-long v3, v0

    mul-long v29, v25, v3

    :cond_13
    add-long v29, v10, v29

    cmp-long v0, v29, v10

    if-ltz v0, :cond_15

    cmp-long v0, v29, v19

    if-lez v0, :cond_14

    goto :goto_8

    :cond_14
    move-wide/from16 v17, v29

    goto :goto_9

    :cond_15
    :goto_8
    move-wide/from16 v17, v19

    goto :goto_9

    :cond_16
    move-wide/from16 v17, v27

    .line 36
    :goto_9
    iget-object v0, v2, Lu3/a0;->e:Ljava/lang/String;

    if-nez v9, :cond_17

    move-object v9, v0

    goto :goto_b

    .line 37
    :cond_17
    invoke-static {v0, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    goto :goto_a

    :cond_18
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 38
    invoke-static {v0, v9, v4, v3}, Ls1/f0/r;->m(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2e

    if-ne v3, v5, :cond_19

    .line 40
    sget-object v3, Lu3/p0/c;->a:[B

    const-string v3, "$this$canParseAsIpAddress"

    invoke-static {v0, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v3, Lu3/p0/c;->f:Ls1/f0/h;

    invoke-virtual {v3, v0}, Ls1/f0/h;->d(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    move v3, v4

    goto :goto_a

    :cond_19
    const/4 v3, 0x0

    :goto_a
    if-nez v3, :cond_1a

    goto :goto_f

    .line 42
    :cond_1a
    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_1b

    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->h:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;

    .line 43
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 44
    invoke-virtual {v0, v9}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    goto :goto_f

    :cond_1b
    const-string v0, "/"

    if-eqz v14, :cond_1d

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 45
    invoke-static {v14, v0, v4, v3}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_c

    :cond_1c
    move-object/from16 v20, v14

    goto :goto_d

    :cond_1d
    const/4 v4, 0x0

    .line 46
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lu3/a0;->b()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x2f

    const/4 v8, 0x6

    .line 47
    invoke-static {v3, v5, v4, v4, v8}, Ls1/f0/v;->J(Ljava/lang/CharSequence;CIZI)I

    move-result v5

    if-eqz v5, :cond_1e

    .line 48
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v3}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1e
    move-object/from16 v20, v0

    .line 49
    :goto_d
    new-instance v0, Lu3/o;

    const/16 v25, 0x0

    move-object v14, v0

    move-object/from16 v19, v9

    invoke-direct/range {v14 .. v25}, Lu3/o;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLs1/z/c/f;)V

    goto :goto_10

    :cond_1f
    :goto_e
    move-object/from16 v33, v3

    move-object/from16 p2, v4

    move/from16 v34, v5

    :goto_f
    const/4 v0, 0x0

    const/4 v3, 0x0

    move v4, v0

    move-object v0, v3

    :goto_10
    if-eqz v0, :cond_21

    if-nez v7, :cond_20

    .line 50
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 51
    :cond_20
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v6, v6, 0x1

    move v0, v4

    move-object/from16 v3, v33

    move/from16 v5, v34

    move-object/from16 v4, p2

    goto/16 :goto_0

    :cond_22
    if-eqz v7, :cond_23

    .line 52
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v3, "Collections.unmodifiableList(cookies)"

    invoke-static {v0, v3}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_11

    .line 53
    :cond_23
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    .line 54
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_24

    return-void

    .line 55
    :cond_24
    invoke-interface {v1, v2, v0}, Lu3/q;->b(Lu3/a0;Ljava/util/List;)V

    return-void
.end method

.method public static final e(Lv3/f;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lv3/f;->N1()Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v2}, Lv3/f;->l(J)B

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lv3/f;->readByte()B

    const/4 v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lv3/f;->readByte()B

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method
