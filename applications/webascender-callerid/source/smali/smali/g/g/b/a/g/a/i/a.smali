.class public final Lg/g/b/a/g/a/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Lg/g/a/a/i/p/a;)Lg/g/b/c/h;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lg/g/a/a/i/p/a;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "video"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lg/g/b/c/d;->BG_VIDEO:Lg/g/b/c/d;

    goto :goto_1

    :sswitch_1
    const-string v1, "image"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lg/g/b/c/d;->BG_IMAGE:Lg/g/b/c/d;

    goto :goto_1

    :sswitch_2
    const-string v1, "logo"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lg/g/b/c/d;->BG_LOGO:Lg/g/b/c/d;

    goto :goto_1

    :sswitch_3
    const-string v1, "gif"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lg/g/b/c/d;->BG_GIF:Lg/g/b/c/d;

    goto :goto_1

    :sswitch_4
    const-string v1, "preloaded"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lg/g/b/c/d;->BG_PRELOADED:Lg/g/b/c/d;

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    sget-object v0, Lg/g/b/c/d;->BG_FILE:Lg/g/b/c/d;

    .line 8
    :goto_1
    invoke-virtual {p1}, Lg/g/a/a/i/p/a;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lg/g/a/a/i/p/a;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_2
    new-instance p1, Lg/g/b/c/h;

    invoke-direct {p1, v0, v1}, Lg/g/b/c/h;-><init>(Lg/g/b/c/d;Ljava/lang/String;)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x425ee398 -> :sswitch_4
        0x18fc4 -> :sswitch_3
        0x32c5ab -> :sswitch_2
        0x5faa95b -> :sswitch_1
        0x6b0147b -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a(Lg/g/a/a/i/l/b;)Lg/g/b/c/e;
    .locals 5

    const-string v0, ""

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lg/g/b/c/e;

    invoke-direct {p1, v0, v0, v0}, Lg/g/b/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2
    :cond_0
    new-instance v1, Lg/g/b/c/e;

    .line 3
    invoke-virtual {p1}, Lg/g/a/a/i/l/b;->getAttributionImage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lg/g/a/a/i/l/b;->getAttributionImage()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "if (attributionDTO.attri\u2026utionDTO.attributionImage"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lg/g/a/a/i/l/b;->getAttributionUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v3, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lg/g/a/a/i/l/b;->getAttributionUrl()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string v4, "if (attributionDTO.attri\u2026ibutionDTO.attributionUrl"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lg/g/a/a/i/l/b;->getAttributionName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lg/g/a/a/i/l/b;->getAttributionName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string p1, "if (attributionDTO.attri\u2026butionDTO.attributionName"

    invoke-static {v0, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {v1, v2, v3, v0}, Lg/g/b/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    :goto_3
    return-object p1
.end method

.method public final c(Lg/g/b/c/f;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lg/g/b/c/f;->t()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final d([Ljava/lang/String;JLg/g/b/c/r;Ljava/lang/String;)Lg/g/b/c/f;
    .locals 30

    move-object/from16 v0, p1

    const-string v1, "line"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sourceType"

    move-object/from16 v8, p4

    invoke-static {v8, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "languageTag"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v1, v0

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    const/16 v1, 0xd

    .line 2
    aget-object v2, v0, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-string v1, "-1"

    goto :goto_1

    :cond_1
    aget-object v1, v0, v1

    .line 3
    :goto_1
    new-instance v29, Lg/g/b/c/f;

    move-object/from16 v2, v29

    .line 4
    aget-object v17, v0, v4

    .line 5
    aget-object v18, v0, v3

    const/4 v3, 0x2

    .line 6
    aget-object v12, v0, v3

    const/4 v3, 0x3

    .line 7
    aget-object v13, v0, v3

    const/4 v3, 0x4

    .line 8
    aget-object v14, v0, v3

    const/4 v3, 0x5

    .line 9
    aget-object v15, v0, v3

    const/4 v3, 0x6

    .line 10
    aget-object v3, v0, v3

    invoke-static {v3}, Lg/g/b/c/q;->valueOf(Ljava/lang/String;)Lg/g/b/c/q;

    move-result-object v10

    const/4 v3, 0x7

    .line 11
    aget-object v3, v0, v3

    invoke-static {v3}, Lg/g/b/c/o;->valueOf(Ljava/lang/String;)Lg/g/b/c/o;

    move-result-object v11

    const/16 v3, 0x8

    .line 12
    aget-object v3, v0, v3

    invoke-static {v3}, Lg/g/b/c/i;->valueOf(Ljava/lang/String;)Lg/g/b/c/i;

    move-result-object v3

    .line 13
    new-instance v4, Lg/g/b/c/e;

    move-object/from16 v16, v4

    const/16 v5, 0x9

    aget-object v5, v0, v5

    const/16 v6, 0xa

    aget-object v6, v0, v6

    const/16 v9, 0xb

    aget-object v9, v0, v9

    invoke-direct {v4, v5, v6, v9}, Lg/g/b/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc

    .line 14
    aget-object v9, v0, v4

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "Integer.valueOf(repCategoryId)"

    invoke-static {v1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v1, 0xe

    .line 16
    aget-object v5, v0, v1

    const/16 v1, 0xf

    .line 17
    aget-object v6, v0, v1

    const/16 v1, 0x10

    .line 18
    aget-object v1, v0, v1

    move-object v7, v1

    const/16 v1, 0x11

    .line 19
    aget-object v0, v0, v1

    move-object v8, v0

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/high16 v27, 0x300000

    const/16 v28, 0x0

    move-wide/from16 v19, p2

    move-object/from16 v21, p4

    move-object/from16 v24, p5

    .line 21
    invoke-direct/range {v2 .. v28}, Lg/g/b/c/f;-><init>(Lg/g/b/c/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/q;Lg/g/b/c/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/e;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/r;JLjava/lang/String;Lg/g/b/c/h;ZILkotlin/w/c/g;)V

    return-object v29

    .line 22
    :cond_2
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Input line invalid."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Ljava/lang/String;)Lg/g/b/c/f;
    .locals 28

    move-object/from16 v16, p1

    const-string v0, "phoneNumber"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v27, Lg/g/b/c/f;

    move-object/from16 v0, v27

    .line 2
    sget-object v1, Lg/g/b/c/i;->UNKNOWN:Lg/g/b/c/i;

    .line 3
    sget-object v8, Lg/g/b/c/q;->UNCERTAIN:Lg/g/b/c/q;

    .line 4
    sget-object v9, Lg/g/b/c/o;->NONE:Lg/g/b/c/o;

    .line 5
    new-instance v2, Lg/g/b/c/e;

    move-object v14, v2

    const-string v3, ""

    invoke-direct {v2, v3, v3, v3}, Lg/g/b/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v19, Lg/g/b/c/r;->EVENT_PROFILE:Lg/g/b/c/r;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const/4 v2, -0x1

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v15, ""

    const-wide/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v25, 0x380000

    const/16 v26, 0x0

    .line 8
    invoke-direct/range {v0 .. v26}, Lg/g/b/c/f;-><init>(Lg/g/b/c/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/q;Lg/g/b/c/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/e;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/r;JLjava/lang/String;Lg/g/b/c/h;ZILkotlin/w/c/g;)V

    return-object v27
.end method

.method public final f(Lg/g/b/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lg/g/b/c/f;
    .locals 28

    const-string v0, "callerId"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 1
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_2

    :cond_2
    move-object/from16 v11, p2

    :goto_2
    if-eqz p4, :cond_4

    .line 2
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-eqz v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->h()Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    goto :goto_5

    :cond_5
    move-object/from16 v12, p4

    :goto_5
    const/4 v6, 0x0

    if-eqz p3, :cond_7

    .line 3
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v3, 0x1

    :goto_7
    if-eqz v3, :cond_8

    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->g()Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto :goto_8

    :cond_8
    move-object/from16 v13, p3

    :goto_8
    if-eqz p5, :cond_a

    .line 4
    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_9

    goto :goto_9

    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    :cond_a
    :goto_9
    const/4 v3, 0x1

    :goto_a
    if-eqz v3, :cond_b

    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->k()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    goto :goto_b

    :cond_b
    move-object/from16 v8, p5

    :goto_b
    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz p6, :cond_d

    .line 5
    invoke-interface/range {p6 .. p6}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_c

    goto :goto_c

    :cond_c
    const/4 v3, 0x0

    goto :goto_d

    :cond_d
    :goto_c
    const/4 v3, 0x1

    :goto_d
    if-eqz v3, :cond_e

    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->d()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    goto :goto_e

    :cond_e
    move-object/from16 v4, p6

    :goto_e
    if-eqz p7, :cond_10

    .line 6
    invoke-interface/range {p7 .. p7}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_f

    goto :goto_f

    :cond_f
    const/4 v3, 0x0

    goto :goto_10

    :cond_10
    :goto_f
    const/4 v3, 0x1

    :goto_10
    if-eqz v3, :cond_11

    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->f()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_11

    :cond_11
    move-object/from16 v5, p7

    :goto_11
    if-eqz p8, :cond_12

    .line 7
    invoke-interface/range {p8 .. p8}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_13

    :cond_12
    const/4 v0, 0x1

    :cond_13
    if-eqz v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->j()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_12

    :cond_14
    move-object/from16 v7, p8

    :goto_12
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v26, 0x3ff193

    const/16 v27, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    .line 8
    invoke-static/range {v1 .. v27}, Lg/g/b/c/f;->b(Lg/g/b/c/f;Lg/g/b/c/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/q;Lg/g/b/c/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/e;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/r;JLjava/lang/String;Lg/g/b/c/h;ZILjava/lang/Object;)Lg/g/b/c/f;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lg/g/a/a/i/p/c;JLg/g/b/c/r;Ljava/lang/String;Ljava/lang/String;)Lg/g/b/c/f;
    .locals 29

    move-object/from16 v0, p0

    const-string v1, "dto"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sourceType"

    move-object/from16 v12, p4

    invoke-static {v12, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "phoneNumber"

    move-object/from16 v11, p5

    invoke-static {v11, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "languageTag"

    move-object/from16 v10, p6

    invoke-static {v10, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    int-to-long v3, v1

    cmp-long v1, p2, v3

    if-lez v1, :cond_0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long v3, v3, p2

    :goto_0
    move-wide/from16 v20, v3

    goto :goto_3

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/p/c;->getReputationLevel()Lg/g/a/a/i/p/g;

    move-result-object v1

    sget-object v3, Lg/g/a/a/i/p/g;->FRAUD:Lg/g/a/a/i/p/g;

    if-eq v1, v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/p/c;->getReputationLevel()Lg/g/a/a/i/p/g;

    move-result-object v1

    sget-object v3, Lg/g/a/a/i/p/g;->SPAM:Lg/g/a/a/i/p/g;

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x240c8400

    goto :goto_2

    .line 4
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    :goto_2
    add-long/2addr v3, v5

    goto :goto_0

    .line 5
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/p/c;->getProfileDetails()Lg/g/a/a/i/p/e;

    move-result-object v1

    invoke-virtual {v1}, Lg/g/a/a/i/p/e;->getEntityType()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {}, Lg/g/b/c/i;->values()[Lg/g/b/c/i;

    move-result-object v3

    .line 7
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v4, :cond_4

    aget-object v8, v3, v6

    .line 8
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1, v5}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_5

    move-object v4, v8

    goto :goto_6

    .line 9
    :cond_5
    sget-object v1, Lg/g/b/c/i;->UNKNOWN:Lg/g/b/c/i;

    move-object v4, v1

    .line 10
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/p/c;->getProfileDetails()Lg/g/a/a/i/p/e;

    move-result-object v1

    invoke-virtual {v1}, Lg/g/a/a/i/p/e;->getReputationCategoryId()I

    move-result v1

    .line 11
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/p/c;->getProfileDetails()Lg/g/a/a/i/p/e;

    move-result-object v3

    invoke-virtual {v3}, Lg/g/a/a/i/p/e;->getReputationCategoryName()Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/p/c;->getProfileDetails()Lg/g/a/a/i/p/e;

    move-result-object v3

    invoke-virtual {v3}, Lg/g/a/a/i/p/e;->getReputationCategoryReportedName()Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/p/c;->getProfileDetails()Lg/g/a/a/i/p/e;

    move-result-object v3

    invoke-virtual {v3}, Lg/g/a/a/i/p/e;->getLineTypeId()Ljava/lang/String;

    move-result-object v9

    .line 14
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/p/c;->getProfileDetails()Lg/g/a/a/i/p/e;

    move-result-object v3

    invoke-virtual {v3}, Lg/g/a/a/i/p/e;->getLineTypeName()Ljava/lang/String;

    move-result-object v19

    .line 15
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/p/c;->getProfileDetails()Lg/g/a/a/i/p/e;

    move-result-object v3

    invoke-virtual {v3}, Lg/g/a/a/i/p/e;->getLocation()Ljava/lang/String;

    move-result-object v22

    .line 16
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/p/c;->getReputationLevel()Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-static {}, Lg/g/b/c/q;->values()[Lg/g/b/c/q;

    move-result-object v13

    .line 18
    array-length v14, v13

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v14, :cond_7

    aget-object v16, v13, v15

    .line 19
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3, v5}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_8

    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_7
    const/16 v16, 0x0

    :goto_8
    if-eqz v16, :cond_8

    move-object/from16 v25, v16

    goto :goto_9

    .line 20
    :cond_8
    sget-object v3, Lg/g/b/c/q;->UNCERTAIN:Lg/g/b/c/q;

    move-object/from16 v25, v3

    .line 21
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/p/c;->getProfileIcon()Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-static {}, Lg/g/b/c/o;->values()[Lg/g/b/c/o;

    move-result-object v7

    .line 23
    array-length v13, v7

    const/4 v14, 0x0

    :goto_a
    if-ge v14, v13, :cond_a

    aget-object v15, v7, v14

    .line 24
    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v5}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v7, v15

    goto :goto_b

    :cond_9
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p1

    goto :goto_a

    :cond_a
    const/4 v7, 0x0

    :goto_b
    if-eqz v7, :cond_b

    move-object v2, v7

    goto :goto_c

    .line 25
    :cond_b
    sget-object v2, Lg/g/b/c/o;->NONE:Lg/g/b/c/o;

    .line 26
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/p/c;->getAttributionDTO()Lg/g/a/a/i/l/b;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/g/b/a/g/a/i/a;->a(Lg/g/a/a/i/l/b;)Lg/g/b/c/e;

    move-result-object v17

    .line 27
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/p/c;->getDisplayImageUrl()Ljava/lang/String;

    move-result-object v16

    .line 28
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/p/c;->getDisplayDetail()Ljava/lang/String;

    move-result-object v14

    .line 29
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/p/c;->getDisplayDescription()Ljava/lang/String;

    move-result-object v15

    .line 30
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/p/c;->getDisplayName()Ljava/lang/String;

    move-result-object v13

    .line 31
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/p/c;->getProfileTag()Ljava/lang/String;

    move-result-object v18

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 33
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/p/c;->getDisplayBackgroundDTO()Lg/g/a/a/i/p/a;

    move-result-object v3

    invoke-direct {v0, v3}, Lg/g/b/a/g/a/i/a;->b(Lg/g/a/a/i/p/a;)Lg/g/b/c/h;

    move-result-object v26

    .line 34
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/p/c;->getVerified()Z

    move-result v27

    .line 35
    new-instance v28, Lg/g/b/c/f;

    move-object/from16 v3, v28

    move v5, v1

    move-object v7, v8

    move-object v8, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v22

    move-object/from16 v11, v25

    move-object v12, v2

    move-object/from16 v19, p5

    move-object/from16 v22, p4

    move-object/from16 v25, p6

    invoke-direct/range {v3 .. v27}, Lg/g/b/c/f;-><init>(Lg/g/b/c/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/q;Lg/g/b/c/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/e;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/r;JLjava/lang/String;Lg/g/b/c/h;Z)V

    return-object v28
.end method

.method public final h(Lg/g/a/a/i/h;Lg/g/b/c/f;)Lg/g/a/a/i/k/c;
    .locals 2

    const-string v0, "phoneWithMetaDTO"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/a/a/i/k/c$b;

    invoke-direct {v0}, Lg/g/a/a/i/k/c$b;-><init>()V

    .line 2
    sget-object v1, Lg/g/b/c/k;->OUTGOING:Lg/g/b/c/k;

    invoke-virtual {v1}, Lg/g/b/c/k;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/g/a/a/i/k/c$b;->setDirection(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lg/g/a/a/i/k/c$b;->setPhone(Lg/g/a/a/i/h;)Lg/g/a/a/i/k/c$b;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Lg/g/b/c/f;->q()J

    move-result-wide v0

    invoke-static {v0, v1}, Lg/g/a/e/b;->a(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/g/a/a/i/k/c$b;->setTimestamp(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;

    move-result-object p1

    .line 5
    sget-object p2, Lg/g/b/c/l;->TEXT_MESSAGE:Lg/g/b/c/l;

    invoke-virtual {p2}, Lg/g/b/c/l;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/g/a/a/i/k/c$b;->setType(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;

    move-result-object p1

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lg/g/a/a/i/k/c$b;->setTokensDTOList(Ljava/util/List;)Lg/g/a/a/i/k/c$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lg/g/a/a/i/k/c$b;->build()Lg/g/a/a/i/k/c;

    move-result-object p1

    return-object p1
.end method
