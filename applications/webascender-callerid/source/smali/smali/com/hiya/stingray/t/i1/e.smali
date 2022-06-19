.class public Lcom/hiya/stingray/t/i1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/t/i1/t0;

.field private final b:Lcom/hiya/stingray/t/i1/z;

.field private final c:Lcom/hiya/stingray/q/d/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/t/i1/t0;Lcom/hiya/stingray/t/i1/z;Lcom/hiya/stingray/manager/l2;Lcom/hiya/stingray/q/d/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/hiya/stingray/t/i1/e;->a:Lcom/hiya/stingray/t/i1/t0;

    .line 3
    iput-object p3, p0, Lcom/hiya/stingray/t/i1/e;->b:Lcom/hiya/stingray/t/i1/z;

    .line 4
    iput-object p5, p0, Lcom/hiya/stingray/t/i1/e;->c:Lcom/hiya/stingray/q/d/f;

    return-void
.end method

.method private b(Lcom/hiya/stingray/t/d0;)Lcom/hiya/stingray/t/d0$a;
    .locals 3

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/d0;->c()Lcom/hiya/stingray/t/d0$a;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/d0$a;->g(Ljava/lang/String;)Lcom/hiya/stingray/t/d0$a;

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->j()Lcom/hiya/stingray/t/f0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/d0$a;->c(Lcom/hiya/stingray/t/f0;)Lcom/hiya/stingray/t/d0$a;

    .line 4
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/d0$a;->f(Lcom/hiya/stingray/t/n0;)Lcom/hiya/stingray/t/d0$a;

    .line 5
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/d0$a;->d(I)Lcom/hiya/stingray/t/d0$a;

    .line 6
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/d0$a;->i(Z)Lcom/hiya/stingray/t/d0$a;

    .line 7
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/d0$a;->h(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/d0$a;

    .line 8
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->s()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/t/d0$a;->j(J)Lcom/hiya/stingray/t/d0$a;

    .line 9
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->h()Lcom/hiya/stingray/t/b0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/d0$a;->b(Lcom/hiya/stingray/t/b0;)Lcom/hiya/stingray/t/d0$a;

    .line 10
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->m()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/d0$a;->e(Ljava/lang/Integer;)Lcom/hiya/stingray/t/d0$a;

    return-object v0
.end method

.method public static e(I)Lcom/hiya/stingray/t/f0;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x65

    if-eq p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/hiya/stingray/t/f0;->INCOMING:Lcom/hiya/stingray/t/f0;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/hiya/stingray/t/f0;->BLOCKED:Lcom/hiya/stingray/t/f0;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/hiya/stingray/t/f0;->DECLINED:Lcom/hiya/stingray/t/f0;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/hiya/stingray/t/f0;->MISSED:Lcom/hiya/stingray/t/f0;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lcom/hiya/stingray/t/f0;->OUTGOING:Lcom/hiya/stingray/t/f0;

    return-object p0
.end method

.method private static f(I)Lcom/hiya/stingray/t/f0;
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "Unhandled smsType - %d. Should never be here."

    invoke-static {v1, p0, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object p0, Lcom/hiya/stingray/t/f0;->INCOMING:Lcom/hiya/stingray/t/f0;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcom/hiya/stingray/t/f0;->OUTGOING:Lcom/hiya/stingray/t/f0;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lcom/hiya/stingray/t/f0;->INCOMING:Lcom/hiya/stingray/t/f0;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/hiya/stingray/t/z0;ZZZZZZZZZ)Lcom/hiya/stingray/t/b0;
    .locals 0

    if-eqz p8, :cond_0

    .line 1
    invoke-static {p1}, Lcom/hiya/stingray/util/p;->w(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/hiya/stingray/t/b0;->AUTO_BLOCKED:Lcom/hiya/stingray/t/b0;

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    .line 3
    sget-object p1, Lcom/hiya/stingray/t/b0;->WHITE_LISTED:Lcom/hiya/stingray/t/b0;

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_3

    if-eqz p11, :cond_2

    if-eqz p3, :cond_2

    if-eqz p10, :cond_2

    .line 4
    sget-object p1, Lcom/hiya/stingray/t/b0;->NOT_BLOCKED:Lcom/hiya/stingray/t/b0;

    goto :goto_0

    .line 5
    :cond_2
    sget-object p1, Lcom/hiya/stingray/t/b0;->MANUAL_BLOCKED:Lcom/hiya/stingray/t/b0;

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 6
    sget-object p1, Lcom/hiya/stingray/t/b0;->NOT_BLOCKED:Lcom/hiya/stingray/t/b0;

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-eqz p6, :cond_5

    .line 7
    sget-object p3, Lcom/hiya/stingray/t/z0;->FRAUD:Lcom/hiya/stingray/t/z0;

    if-eq p2, p3, :cond_6

    :cond_5
    if-eqz p7, :cond_8

    sget-object p3, Lcom/hiya/stingray/t/z0;->SPAM:Lcom/hiya/stingray/t/z0;

    if-ne p2, p3, :cond_8

    .line 8
    :cond_6
    sget-object p2, Lcom/hiya/stingray/t/b0;->MANUAL_BLOCKED:Lcom/hiya/stingray/t/b0;

    if-ne p1, p2, :cond_7

    .line 9
    sget-object p1, Lcom/hiya/stingray/t/b0;->AUTO_AND_MANUAL_BLOCKED:Lcom/hiya/stingray/t/b0;

    goto :goto_1

    :cond_7
    if-nez p1, :cond_9

    .line 10
    sget-object p1, Lcom/hiya/stingray/t/b0;->AUTO_BLOCKED:Lcom/hiya/stingray/t/b0;

    goto :goto_1

    :cond_8
    if-nez p1, :cond_9

    .line 11
    sget-object p1, Lcom/hiya/stingray/t/b0;->NOT_BLOCKED:Lcom/hiya/stingray/t/b0;

    .line 12
    :cond_9
    :goto_1
    sget-object p2, Lcom/hiya/stingray/t/b0;->NOT_BLOCKED:Lcom/hiya/stingray/t/b0;

    if-ne p1, p2, :cond_a

    if-nez p9, :cond_a

    .line 13
    sget-object p1, Lcom/hiya/stingray/t/b0;->CALL_SCREENER_BLOCKED:Lcom/hiya/stingray/t/b0;

    :cond_a
    return-object p1
.end method

.method public c(Lcom/hiya/stingray/t/d0;ZZZZZZZZ)Lcom/hiya/stingray/t/d0;
    .locals 14

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/t/i1/e;->b(Lcom/hiya/stingray/t/d0;)Lcom/hiya/stingray/t/d0$a;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v2

    move-object v13, p0

    iget-object v1, v13, Lcom/hiya/stingray/t/i1/e;->a:Lcom/hiya/stingray/t/i1/t0;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hiya/stingray/t/i1/t0;->a(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/z0;

    move-result-object v3

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hiya/stingray/t/n0;->e()Lcom/hiya/stingray/t/o0;

    move-result-object v1

    sget-object v4, Lcom/hiya/stingray/t/o0;->CONTACT:Lcom/hiya/stingray/t/o0;

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    move-object v1, p0

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Lcom/hiya/stingray/t/i1/e;->a(Ljava/lang/String;Lcom/hiya/stingray/t/z0;ZZZZZZZZZ)Lcom/hiya/stingray/t/b0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/d0$a;->b(Lcom/hiya/stingray/t/b0;)Lcom/hiya/stingray/t/d0$a;

    .line 3
    invoke-virtual {v0}, Lcom/hiya/stingray/t/d0$a;->a()Lcom/hiya/stingray/t/d0;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/hiya/stingray/t/h0;Lcom/hiya/stingray/t/b0;)Lcom/hiya/stingray/t/d0;
    .locals 3

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/d0;->c()Lcom/hiya/stingray/t/d0$a;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/h0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/d0$a;->g(Ljava/lang/String;)Lcom/hiya/stingray/t/d0$a;

    .line 3
    invoke-virtual {v0, p2}, Lcom/hiya/stingray/t/d0$a;->b(Lcom/hiya/stingray/t/b0;)Lcom/hiya/stingray/t/d0$a;

    sget-object p2, Lcom/hiya/stingray/t/f0;->INCOMING:Lcom/hiya/stingray/t/f0;

    .line 4
    invoke-virtual {v0, p2}, Lcom/hiya/stingray/t/d0$a;->c(Lcom/hiya/stingray/t/f0;)Lcom/hiya/stingray/t/d0$a;

    .line 5
    invoke-virtual {p1}, Lcom/hiya/stingray/t/h0;->e()Lcom/hiya/stingray/t/y0;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/hiya/stingray/t/d0$a;->h(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/d0$a;

    .line 6
    invoke-virtual {p1}, Lcom/hiya/stingray/t/h0;->b()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/d0$a;->f(Lcom/hiya/stingray/t/n0;)Lcom/hiya/stingray/t/d0$a;

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/d0$a;->i(Z)Lcom/hiya/stingray/t/d0$a;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/t/d0$a;->j(J)Lcom/hiya/stingray/t/d0$a;

    .line 9
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/d0$a;->d(I)Lcom/hiya/stingray/t/d0$a;

    .line 10
    invoke-virtual {v0}, Lcom/hiya/stingray/t/d0$a;->a()Lcom/hiya/stingray/t/d0;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/hiya/stingray/q/c/d;Lcom/hiya/stingray/q/c/i/c;Lcom/hiya/stingray/t/y0;ZZZZZLcom/hiya/stingray/q/c/i/b;Lcom/hiya/stingray/t/w0;Z)Lcom/hiya/stingray/t/d0;
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v13, p3

    move-object/from16 v0, p9

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/d0;->c()Lcom/hiya/stingray/t/d0$a;

    move-result-object v14

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/hiya/stingray/util/p;->v(Lcom/hiya/stingray/q/c/d;)Z

    move-result v3

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual/range {p9 .. p9}, Lcom/hiya/stingray/q/c/i/b;->Q0()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p9 .. p9}, Lcom/hiya/stingray/q/c/i/b;->O0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    const/4 v9, 0x1

    .line 4
    :goto_1
    iget-object v1, v12, Lcom/hiya/stingray/t/i1/e;->b:Lcom/hiya/stingray/t/i1/z;

    move-object/from16 v15, p1

    move-object/from16 v2, p2

    invoke-virtual {v1, v15, v2, v0}, Lcom/hiya/stingray/t/i1/z;->d(Lcom/hiya/stingray/q/c/d;Lcom/hiya/stingray/q/c/i/c;Lcom/hiya/stingray/q/c/i/b;)Lcom/hiya/stingray/t/n0;

    move-result-object v11

    .line 5
    iget-object v0, v12, Lcom/hiya/stingray/t/i1/e;->a:Lcom/hiya/stingray/t/i1/t0;

    invoke-virtual {v0, v13}, Lcom/hiya/stingray/t/i1/t0;->a(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/z0;

    move-result-object v2

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/q/c/d;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/q/c/d;->h()I

    move-result v0

    invoke-static {v0}, Lcom/hiya/stingray/t/i1/e;->f(I)Lcom/hiya/stingray/t/f0;

    move-result-object v0

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/q/c/d;->i()I

    move-result v0

    invoke-static {v0}, Lcom/hiya/stingray/t/i1/e;->e(I)Lcom/hiya/stingray/t/f0;

    move-result-object v0

    .line 8
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/q/c/d;->j()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/hiya/stingray/t/f0;->BLOCKED:Lcom/hiya/stingray/t/f0;

    if-eq v0, v1, :cond_3

    if-eqz p10, :cond_3

    .line 9
    invoke-virtual/range {p10 .. p10}, Lcom/hiya/stingray/t/w0;->O0()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, v1

    .line 10
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/q/c/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/hiya/stingray/t/d0$a;->g(Ljava/lang/String;)Lcom/hiya/stingray/t/d0$a;

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/q/c/d;->a()J

    move-result-wide v4

    invoke-virtual {v14, v4, v5}, Lcom/hiya/stingray/t/d0$a;->j(J)Lcom/hiya/stingray/t/d0$a;

    .line 12
    invoke-virtual {v14, v0}, Lcom/hiya/stingray/t/d0$a;->c(Lcom/hiya/stingray/t/f0;)Lcom/hiya/stingray/t/d0$a;

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/q/c/d;->j()Z

    move-result v0

    invoke-virtual {v14, v0}, Lcom/hiya/stingray/t/d0$a;->i(Z)Lcom/hiya/stingray/t/d0$a;

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/q/c/d;->b()I

    move-result v0

    invoke-virtual {v14, v0}, Lcom/hiya/stingray/t/d0$a;->d(I)Lcom/hiya/stingray/t/d0$a;

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/q/c/d;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v12, Lcom/hiya/stingray/t/i1/e;->c:Lcom/hiya/stingray/q/d/f;

    .line 16
    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->s()Z

    move-result v10

    move-object/from16 v0, p0

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v12, v11

    move/from16 v11, p11

    .line 17
    invoke-virtual/range {v0 .. v11}, Lcom/hiya/stingray/t/i1/e;->a(Ljava/lang/String;Lcom/hiya/stingray/t/z0;ZZZZZZZZZ)Lcom/hiya/stingray/t/b0;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/hiya/stingray/t/d0$a;->b(Lcom/hiya/stingray/t/b0;)Lcom/hiya/stingray/t/d0$a;

    .line 18
    invoke-virtual {v14, v13}, Lcom/hiya/stingray/t/d0$a;->h(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/d0$a;

    .line 19
    invoke-virtual {v14, v12}, Lcom/hiya/stingray/t/d0$a;->f(Lcom/hiya/stingray/t/n0;)Lcom/hiya/stingray/t/d0$a;

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/q/c/d;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/hiya/stingray/t/d0$a;->e(Ljava/lang/Integer;)Lcom/hiya/stingray/t/d0$a;

    .line 21
    invoke-virtual {v14}, Lcom/hiya/stingray/t/d0$a;->a()Lcom/hiya/stingray/t/d0;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;Z)Lcom/hiya/stingray/t/d0;
    .locals 3

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/d0;->c()Lcom/hiya/stingray/t/d0$a;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 2
    sget-object p2, Lcom/hiya/stingray/t/b0;->AUTO_BLOCKED:Lcom/hiya/stingray/t/b0;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/hiya/stingray/t/b0;->NOT_BLOCKED:Lcom/hiya/stingray/t/b0;

    .line 3
    :goto_0
    invoke-virtual {v0, p2}, Lcom/hiya/stingray/t/d0$a;->b(Lcom/hiya/stingray/t/b0;)Lcom/hiya/stingray/t/d0$a;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/t/d0$a;->j(J)Lcom/hiya/stingray/t/d0$a;

    const/4 p2, 0x0

    .line 5
    invoke-virtual {v0, p2}, Lcom/hiya/stingray/t/d0$a;->d(I)Lcom/hiya/stingray/t/d0$a;

    .line 6
    invoke-virtual {v0, p2}, Lcom/hiya/stingray/t/d0$a;->i(Z)Lcom/hiya/stingray/t/d0$a;

    .line 7
    invoke-static {}, Lcom/hiya/stingray/t/y0;->b()Lcom/hiya/stingray/t/y0$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hiya/stingray/t/y0$a;->a()Lcom/hiya/stingray/t/y0;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/hiya/stingray/t/d0$a;->h(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/d0$a;

    sget-object p2, Lcom/hiya/stingray/t/f0;->INCOMING:Lcom/hiya/stingray/t/f0;

    .line 8
    invoke-virtual {v0, p2}, Lcom/hiya/stingray/t/d0$a;->c(Lcom/hiya/stingray/t/f0;)Lcom/hiya/stingray/t/d0$a;

    iget-object p2, p0, Lcom/hiya/stingray/t/i1/e;->b:Lcom/hiya/stingray/t/i1/z;

    .line 9
    invoke-virtual {p2}, Lcom/hiya/stingray/t/i1/z;->l()Lcom/hiya/stingray/t/n0$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hiya/stingray/t/n0$a;->a()Lcom/hiya/stingray/t/n0;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/hiya/stingray/t/d0$a;->f(Lcom/hiya/stingray/t/n0;)Lcom/hiya/stingray/t/d0$a;

    .line 10
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/d0$a;->g(Ljava/lang/String;)Lcom/hiya/stingray/t/d0$a;

    .line 11
    invoke-virtual {v0}, Lcom/hiya/stingray/t/d0$a;->a()Lcom/hiya/stingray/t/d0;

    move-result-object p1

    return-object p1
.end method
