.class public final Lv3/d0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "0123456789abcdef"

    const-string v1, "$this$asUtf8ToByteArray"

    .line 1
    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sput-object v0, Lv3/d0/a;->a:[B

    return-void
.end method

.method public static final a(Lv3/f;J)Ljava/lang/String;
    .locals 6

    const-string v0, "$this$readUtf8Line"

    invoke-static {p0, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-lez v0, :cond_0

    sub-long v3, p1, v1

    .line 1
    invoke-virtual {p0, v3, v4}, Lv3/f;->l(J)B

    move-result v0

    const/16 v5, 0xd

    int-to-byte v5, v5

    if-ne v0, v5, :cond_0

    .line 2
    invoke-virtual {p0, v3, v4}, Lv3/f;->S(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    .line 3
    invoke-virtual {p0, v0, v1}, Lv3/f;->skip(J)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lv3/f;->S(J)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, v1, v2}, Lv3/f;->skip(J)V

    :goto_0
    return-object p1
.end method

.method public static final b(Lv3/f;Lv3/r;Z)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "$this$selectPrefix"

    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "options"

    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, v0, Lv3/f;->a:Lv3/w;

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eqz v0, :cond_11

    .line 2
    iget-object v4, v0, Lv3/w;->a:[B

    .line 3
    iget v5, v0, Lv3/w;->b:I

    .line 4
    iget v6, v0, Lv3/w;->c:I

    .line 5
    iget-object v1, v1, Lv3/r;->b:[I

    const/4 v7, 0x0

    move-object v9, v0

    move v10, v3

    move v8, v7

    :goto_0
    add-int/lit8 v11, v8, 0x1

    .line 6
    aget v8, v1, v8

    add-int/lit8 v12, v11, 0x1

    .line 7
    aget v11, v1, v11

    if-eq v11, v3, :cond_0

    move v10, v11

    :cond_0
    if-nez v9, :cond_1

    goto :goto_3

    :cond_1
    const/4 v11, 0x0

    if-gez v8, :cond_b

    mul-int/lit8 v8, v8, -0x1

    add-int v13, v8, v12

    :goto_1
    add-int/lit8 v8, v5, 0x1

    .line 8
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v14, v12, 0x1

    .line 9
    aget v12, v1, v12

    if-eq v5, v12, :cond_2

    return v10

    :cond_2
    if-ne v14, v13, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v7

    :goto_2
    if-ne v8, v6, :cond_9

    if-eqz v9, :cond_8

    .line 10
    iget-object v4, v9, Lv3/w;->f:Lv3/w;

    if-eqz v4, :cond_7

    .line 11
    iget v6, v4, Lv3/w;->b:I

    .line 12
    iget-object v8, v4, Lv3/w;->a:[B

    .line 13
    iget v9, v4, Lv3/w;->c:I

    if-ne v4, v0, :cond_6

    if-nez v5, :cond_5

    :goto_3
    if-eqz p2, :cond_4

    return v2

    :cond_4
    return v10

    :cond_5
    move-object v4, v8

    move-object v8, v11

    goto :goto_4

    :cond_6
    move-object/from16 v16, v8

    move-object v8, v4

    move-object/from16 v4, v16

    goto :goto_4

    .line 14
    :cond_7
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v11

    :cond_8
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v11

    :cond_9
    move-object/from16 v16, v9

    move v9, v6

    move v6, v8

    move-object/from16 v8, v16

    :goto_4
    if-eqz v5, :cond_a

    .line 15
    aget v5, v1, v14

    move v13, v6

    move v6, v9

    move-object v9, v8

    goto :goto_6

    :cond_a
    move v5, v6

    move v6, v9

    move v12, v14

    move-object v9, v8

    goto :goto_1

    :cond_b
    add-int/lit8 v13, v5, 0x1

    .line 16
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int v14, v12, v8

    :goto_5
    if-ne v12, v14, :cond_c

    return v10

    .line 17
    :cond_c
    aget v15, v1, v12

    if-ne v5, v15, :cond_10

    add-int/2addr v12, v8

    .line 18
    aget v5, v1, v12

    if-ne v13, v6, :cond_e

    .line 19
    iget-object v9, v9, Lv3/w;->f:Lv3/w;

    if-eqz v9, :cond_d

    .line 20
    iget v4, v9, Lv3/w;->b:I

    .line 21
    iget-object v6, v9, Lv3/w;->a:[B

    .line 22
    iget v8, v9, Lv3/w;->c:I

    move v13, v4

    move-object v4, v6

    move v6, v8

    if-ne v9, v0, :cond_e

    move-object v9, v11

    goto :goto_6

    .line 23
    :cond_d
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v11

    :cond_e
    :goto_6
    if-ltz v5, :cond_f

    return v5

    :cond_f
    neg-int v8, v5

    move v5, v13

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_11
    if-eqz p2, :cond_12

    goto :goto_7

    :cond_12
    move v2, v3

    :goto_7
    return v2
.end method
