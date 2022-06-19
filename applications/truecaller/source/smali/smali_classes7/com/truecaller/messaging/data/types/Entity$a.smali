.class public final Lcom/truecaller/messaging/data/types/Entity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/messaging/data/types/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p23

    and-int/lit8 v3, v2, 0x1

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_0

    move-wide v6, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v6, p1

    :goto_0
    and-int/lit8 v3, v2, 0x4

    const/4 v8, 0x0

    if-eqz v3, :cond_1

    move v3, v8

    goto :goto_1

    :cond_1
    move/from16 v3, p4

    :goto_1
    and-int/lit8 v9, v2, 0x10

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v8, p6

    :goto_2
    and-int/lit8 v9, v2, 0x20

    if-eqz v9, :cond_3

    const/4 v9, -0x1

    goto :goto_3

    :cond_3
    move/from16 v9, p7

    :goto_3
    and-int/lit8 v11, v2, 0x40

    if-eqz v11, :cond_4

    const/4 v11, -0x1

    goto :goto_4

    :cond_4
    move/from16 v11, p8

    :goto_4
    and-int/lit16 v12, v2, 0x80

    if-eqz v12, :cond_5

    const/4 v12, -0x1

    goto :goto_5

    :cond_5
    move/from16 v12, p9

    :goto_5
    and-int/lit16 v13, v2, 0x100

    if-eqz v13, :cond_6

    goto :goto_6

    :cond_6
    move-wide/from16 v4, p10

    :goto_6
    and-int/lit16 v13, v2, 0x200

    const-string v14, ""

    if-eqz v13, :cond_7

    move-object v13, v14

    goto :goto_7

    :cond_7
    move-object/from16 v13, p12

    :goto_7
    and-int/lit16 v15, v2, 0x400

    if-eqz v15, :cond_8

    move-object v15, v14

    goto :goto_8

    :cond_8
    move-object/from16 v15, p13

    :goto_8
    and-int/lit16 v10, v2, 0x800

    if-eqz v10, :cond_9

    move-object v10, v14

    goto :goto_9

    :cond_9
    move-object/from16 v10, p14

    :goto_9
    move-object/from16 p2, v14

    and-int/lit16 v14, v2, 0x1000

    if-eqz v14, :cond_a

    move-object/from16 v14, p2

    goto :goto_a

    :cond_a
    move-object/from16 v14, p15

    :goto_a
    move/from16 v16, v12

    and-int/lit16 v12, v2, 0x2000

    if-eqz v12, :cond_b

    const/4 v12, -0x1

    goto :goto_b

    :cond_b
    move/from16 v12, p16

    :goto_b
    move/from16 p1, v12

    and-int/lit16 v12, v2, 0x4000

    if-eqz v12, :cond_c

    move-object/from16 v12, p2

    goto :goto_c

    :cond_c
    move-object/from16 v12, p17

    :goto_c
    const v17, 0x8000

    and-int v17, v2, v17

    if-eqz v17, :cond_d

    const/16 v17, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v17, p18

    :goto_d
    const/high16 v18, 0x10000

    and-int v18, v2, v18

    const-wide/16 v19, 0x0

    if-eqz v18, :cond_e

    move-wide/from16 v21, v19

    goto :goto_e

    :cond_e
    move-wide/from16 v21, p19

    :goto_e
    const/high16 v18, 0x20000

    and-int v2, v2, v18

    if-eqz v2, :cond_f

    goto :goto_f

    :cond_f
    move-wide/from16 v19, p21

    :goto_f
    const-string v2, "type"

    .line 1
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "content"

    move-wide/from16 v23, v4

    move-object/from16 v4, p5

    invoke-static {v4, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "thumbnail"

    invoke-static {v13, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "source"

    invoke-static {v15, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "fileName"

    invoke-static {v10, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "vCardName"

    invoke-static {v14, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "description"

    invoke-static {v12, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/data/types/Entity$a;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v0, Lcom/truecaller/messaging/data/types/TextEntity;

    move-object/from16 p6, v0

    move-wide/from16 p7, v6

    move-object/from16 p9, p3

    move/from16 p10, v3

    move-object/from16 p11, p5

    move/from16 p12, v8

    invoke-direct/range {p6 .. p12}, Lcom/truecaller/messaging/data/types/TextEntity;-><init>(JLjava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_10

    .line 3
    :cond_10
    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/data/types/Entity$a;->e(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "Uri.parse(thumbnail)"

    if-eqz v2, :cond_11

    new-instance v0, Lcom/truecaller/messaging/data/types/GifEntity;

    const/4 v2, 0x0

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p6, v0

    move-wide/from16 p7, v6

    move-object/from16 p9, p3

    move/from16 p10, v3

    move-object/from16 p11, p5

    move/from16 p12, v9

    move/from16 p13, v11

    move/from16 p14, v2

    move-wide/from16 p15, v23

    move-object/from16 p17, v8

    move-object/from16 p18, v15

    invoke-direct/range {p6 .. p18}, Lcom/truecaller/messaging/data/types/GifEntity;-><init>(JLjava/lang/String;ILjava/lang/String;IIZJLandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 4
    :cond_11
    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/data/types/Entity$a;->f(Ljava/lang/String;)Z

    move-result v2

    const-string v8, "Uri.parse(content)"

    if-eqz v2, :cond_12

    new-instance v0, Lcom/truecaller/messaging/data/types/ImageEntity;

    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p4, v0

    move-wide/from16 p5, v6

    move-object/from16 p7, p3

    move/from16 p8, v3

    move-object/from16 p9, v2

    move/from16 p10, v9

    move/from16 p11, v11

    move-wide/from16 p12, v23

    move/from16 p14, v4

    move-object/from16 p15, v8

    invoke-direct/range {p4 .. p15}, Lcom/truecaller/messaging/data/types/ImageEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;IIJZLandroid/net/Uri;)V

    goto/16 :goto_10

    .line 5
    :cond_12
    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/data/types/Entity$a;->l(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v0, Lcom/truecaller/messaging/data/types/VideoEntity;

    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p4, v0

    move-wide/from16 p5, v6

    move-object/from16 p7, p3

    move/from16 p8, v3

    move-object/from16 p9, v2

    move/from16 p10, v4

    move-wide/from16 p11, v23

    move/from16 p13, v9

    move/from16 p14, v11

    move/from16 p15, v16

    move-object/from16 p16, v8

    invoke-direct/range {p4 .. p16}, Lcom/truecaller/messaging/data/types/VideoEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;ZJIIILandroid/net/Uri;)V

    goto/16 :goto_10

    .line 6
    :cond_13
    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/data/types/Entity$a;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v0, Lcom/truecaller/messaging/data/types/AudioEntity;

    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 p4, v0

    move-wide/from16 p5, v6

    move-object/from16 p7, p3

    move/from16 p8, v3

    move-object/from16 p9, v2

    move/from16 p10, v4

    move-wide/from16 p11, v23

    move/from16 p13, v16

    invoke-direct/range {p4 .. p13}, Lcom/truecaller/messaging/data/types/AudioEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;ZJI)V

    goto/16 :goto_10

    :cond_14
    const-string v2, "contentType"

    .line 7
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "history"

    .line 8
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 9
    new-instance v0, Lcom/truecaller/messaging/data/types/HistoryEntity;

    invoke-direct {v0}, Lcom/truecaller/messaging/data/types/HistoryEntity;-><init>()V

    goto/16 :goto_10

    .line 10
    :cond_15
    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/data/types/Entity$a;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    new-instance v0, Lcom/truecaller/messaging/data/types/DocumentEntity;

    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 p4, v0

    move-wide/from16 p5, v6

    move-object/from16 p7, p3

    move/from16 p8, v3

    move-object/from16 p9, v2

    move/from16 p10, v4

    move-wide/from16 p11, v23

    move-object/from16 p13, v10

    invoke-direct/range {p4 .. p13}, Lcom/truecaller/messaging/data/types/DocumentEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;ZJLjava/lang/String;)V

    goto/16 :goto_10

    .line 11
    :cond_16
    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/data/types/Entity$a;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    new-instance v0, Lcom/truecaller/messaging/data/types/VCardEntity;

    const/4 v2, 0x0

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 p6, v0

    move-wide/from16 p7, v6

    move-object/from16 p9, p3

    move/from16 p10, v3

    move-object/from16 p11, p5

    move/from16 p12, v2

    move-wide/from16 p13, v23

    move-object/from16 p15, v14

    move/from16 p16, p1

    move-object/from16 p17, v5

    invoke-direct/range {p6 .. p17}, Lcom/truecaller/messaging/data/types/VCardEntity;-><init>(JLjava/lang/String;ILjava/lang/String;ZJLjava/lang/String;ILandroid/net/Uri;)V

    goto/16 :goto_10

    .line 12
    :cond_17
    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/data/types/Entity$a;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    new-instance v0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 p4, v0

    move-wide/from16 p5, v6

    move-object/from16 p7, p3

    move/from16 p8, v3

    move/from16 p9, v9

    move/from16 p10, v11

    move-wide/from16 p11, v23

    move-object/from16 p13, v2

    move-object/from16 p14, v10

    move-object/from16 p15, v12

    move-object/from16 p16, v15

    invoke-direct/range {p4 .. p16}, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;-><init>(JLjava/lang/String;IIIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 13
    :cond_18
    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/data/types/Entity$a;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Lcom/truecaller/messaging/data/types/LocationEntity;

    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p4, v0

    move-wide/from16 p5, v6

    move-object/from16 p7, p3

    move/from16 p8, v3

    move-object/from16 p9, v2

    move-wide/from16 p10, v23

    move-object/from16 p12, v17

    move-wide/from16 p13, v21

    move-wide/from16 p15, v19

    invoke-direct/range {p4 .. p16}, Lcom/truecaller/messaging/data/types/LocationEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;JLjava/lang/String;DD)V

    goto :goto_10

    .line 14
    :cond_19
    new-instance v0, Lcom/truecaller/messaging/data/types/BinaryEntity;

    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x40

    move-object/from16 p4, v0

    move-wide/from16 p5, v6

    move-object/from16 p7, p3

    move/from16 p8, v3

    move-object/from16 p9, v2

    move-wide/from16 p10, v23

    move/from16 p12, v4

    move/from16 p13, v5

    move/from16 p14, v8

    invoke-direct/range {p4 .. p14}, Lcom/truecaller/messaging/data/types/BinaryEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;JZII)V

    :goto_10
    return-object v0
.end method

.method public static b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p23

    and-int/lit8 v3, v2, 0x1

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_0

    move-wide v6, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v6, p1

    :goto_0
    and-int/lit8 v3, v2, 0x4

    const/4 v8, 0x0

    if-eqz v3, :cond_1

    move v3, v8

    goto :goto_1

    :cond_1
    move/from16 v3, p4

    :goto_1
    and-int/lit8 v9, v2, 0x10

    if-eqz v9, :cond_2

    const/4 v9, -0x1

    goto :goto_2

    :cond_2
    move/from16 v9, p6

    :goto_2
    and-int/lit8 v11, v2, 0x20

    if-eqz v11, :cond_3

    const/4 v11, -0x1

    goto :goto_3

    :cond_3
    move/from16 v11, p7

    :goto_3
    and-int/lit8 v12, v2, 0x40

    if-eqz v12, :cond_4

    const/4 v12, -0x1

    goto :goto_4

    :cond_4
    move/from16 v12, p8

    :goto_4
    and-int/lit16 v13, v2, 0x80

    if-eqz v13, :cond_5

    goto :goto_5

    :cond_5
    move-wide/from16 v4, p9

    :goto_5
    and-int/lit16 v13, v2, 0x100

    if-eqz v13, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v8, p11

    :goto_6
    and-int/lit16 v13, v2, 0x200

    if-eqz v13, :cond_7

    .line 1
    sget-object v13, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v14, "Uri.EMPTY"

    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    move-object/from16 v13, p12

    :goto_7
    and-int/lit16 v14, v2, 0x400

    const-string v15, ""

    if-eqz v14, :cond_8

    move-object v14, v15

    goto :goto_8

    :cond_8
    move-object/from16 v14, p13

    :goto_8
    and-int/lit16 v10, v2, 0x800

    if-eqz v10, :cond_9

    move-object v10, v15

    goto :goto_9

    :cond_9
    move-object/from16 v10, p14

    :goto_9
    move-object/from16 p2, v15

    and-int/lit16 v15, v2, 0x1000

    if-eqz v15, :cond_a

    move-object/from16 v15, p2

    goto :goto_a

    :cond_a
    move-object/from16 v15, p15

    :goto_a
    move/from16 p4, v12

    and-int/lit16 v12, v2, 0x2000

    if-eqz v12, :cond_b

    const/4 v12, -0x1

    goto :goto_b

    :cond_b
    move/from16 v12, p16

    :goto_b
    move/from16 p1, v12

    and-int/lit16 v12, v2, 0x4000

    const/16 v16, 0x0

    if-eqz v12, :cond_c

    move-object/from16 v12, p2

    goto :goto_c

    :cond_c
    move-object/from16 v12, v16

    :goto_c
    const v17, 0x8000

    and-int v17, v2, v17

    if-eqz v17, :cond_d

    goto :goto_d

    :cond_d
    move-object/from16 v16, p18

    :goto_d
    const/high16 v17, 0x10000

    and-int v17, v2, v17

    const-wide/16 v18, 0x0

    if-eqz v17, :cond_e

    move-wide/from16 v20, v18

    goto :goto_e

    :cond_e
    move-wide/from16 v20, p19

    :goto_e
    const/high16 v17, 0x20000

    and-int v2, v2, v17

    if-eqz v2, :cond_f

    goto :goto_f

    :cond_f
    move-wide/from16 v18, p21

    .line 2
    :goto_f
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "content"

    move-wide/from16 v22, v4

    move-object/from16 v4, p5

    invoke-static {v4, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "thumbnail"

    invoke-static {v13, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "source"

    invoke-static {v14, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "fileName"

    invoke-static {v10, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "vCardName"

    invoke-static {v15, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "description"

    invoke-static {v12, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/data/types/Entity$a;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "Creating a BinaryEntity with type text, should never happen"

    .line 4
    invoke-static {v2}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 5
    :cond_10
    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/data/types/Entity$a;->e(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "content.toString()"

    if-eqz v2, :cond_11

    new-instance v0, Lcom/truecaller/messaging/data/types/GifEntity;

    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p4, v0

    move-wide/from16 p5, v6

    move-object/from16 p7, p3

    move/from16 p8, v3

    move-object/from16 p9, v2

    move/from16 p10, v9

    move/from16 p11, v11

    move/from16 p12, v8

    move-wide/from16 p13, v22

    move-object/from16 p15, v13

    move-object/from16 p16, v14

    invoke-direct/range {p4 .. p16}, Lcom/truecaller/messaging/data/types/GifEntity;-><init>(JLjava/lang/String;ILjava/lang/String;IIZJLandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 6
    :cond_11
    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/data/types/Entity$a;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v0, Lcom/truecaller/messaging/data/types/ImageEntity;

    move-object/from16 p6, v0

    move-wide/from16 p7, v6

    move-object/from16 p9, p3

    move/from16 p10, v3

    move-object/from16 p11, p5

    move/from16 p12, v9

    move/from16 p13, v11

    move-wide/from16 p14, v22

    move/from16 p16, v8

    move-object/from16 p17, v13

    invoke-direct/range {p6 .. p17}, Lcom/truecaller/messaging/data/types/ImageEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;IIJZLandroid/net/Uri;)V

    goto/16 :goto_10

    .line 7
    :cond_12
    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/data/types/Entity$a;->l(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v0, Lcom/truecaller/messaging/data/types/VideoEntity;

    move-object/from16 p6, v0

    move-wide/from16 p7, v6

    move-object/from16 p9, p3

    move/from16 p10, v3

    move-object/from16 p11, p5

    move/from16 p12, v8

    move-wide/from16 p13, v22

    move/from16 p15, v9

    move/from16 p16, v11

    move/from16 p17, p4

    move-object/from16 p18, v13

    invoke-direct/range {p6 .. p18}, Lcom/truecaller/messaging/data/types/VideoEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;ZJIIILandroid/net/Uri;)V

    goto/16 :goto_10

    .line 8
    :cond_13
    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/data/types/Entity$a;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v0, Lcom/truecaller/messaging/data/types/AudioEntity;

    const/4 v2, 0x0

    move-object/from16 p6, v0

    move-wide/from16 p7, v6

    move-object/from16 p9, p3

    move/from16 p10, v3

    move-object/from16 p11, p5

    move/from16 p12, v2

    move-wide/from16 p13, v22

    move/from16 p15, p4

    invoke-direct/range {p6 .. p15}, Lcom/truecaller/messaging/data/types/AudioEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;ZJI)V

    goto/16 :goto_10

    .line 9
    :cond_14
    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/data/types/Entity$a;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance v0, Lcom/truecaller/messaging/data/types/DocumentEntity;

    const/4 v2, 0x0

    move-object/from16 p6, v0

    move-wide/from16 p7, v6

    move-object/from16 p9, p3

    move/from16 p10, v3

    move-object/from16 p11, p5

    move/from16 p12, v2

    move-wide/from16 p13, v22

    move-object/from16 p15, v10

    invoke-direct/range {p6 .. p15}, Lcom/truecaller/messaging/data/types/DocumentEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;ZJLjava/lang/String;)V

    goto/16 :goto_10

    .line 10
    :cond_15
    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/data/types/Entity$a;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    new-instance v0, Lcom/truecaller/messaging/data/types/VCardEntity;

    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 p4, v0

    move-wide/from16 p5, v6

    move-object/from16 p7, p3

    move/from16 p8, v3

    move-object/from16 p9, v2

    move/from16 p10, v4

    move-wide/from16 p11, v22

    move-object/from16 p13, v15

    move/from16 p14, p1

    move-object/from16 p15, v13

    invoke-direct/range {p4 .. p15}, Lcom/truecaller/messaging/data/types/VCardEntity;-><init>(JLjava/lang/String;ILjava/lang/String;ZJLjava/lang/String;ILandroid/net/Uri;)V

    goto/16 :goto_10

    .line 11
    :cond_16
    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/data/types/Entity$a;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    new-instance v0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;

    move-object/from16 p4, v0

    move-wide/from16 p5, v6

    move-object/from16 p7, p3

    move/from16 p8, v3

    move/from16 p9, v9

    move/from16 p10, v11

    move-wide/from16 p11, v22

    move-object/from16 p13, v13

    move-object/from16 p14, v10

    move-object/from16 p15, v12

    move-object/from16 p16, v14

    invoke-direct/range {p4 .. p16}, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;-><init>(JLjava/lang/String;IIIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 12
    :cond_17
    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/data/types/Entity$a;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/truecaller/messaging/data/types/LocationEntity;

    move-object/from16 p6, v0

    move-wide/from16 p7, v6

    move-object/from16 p9, p3

    move/from16 p10, v3

    move-object/from16 p11, p5

    move-wide/from16 p12, v22

    move-object/from16 p14, v16

    move-wide/from16 p15, v20

    move-wide/from16 p17, v18

    invoke-direct/range {p6 .. p18}, Lcom/truecaller/messaging/data/types/LocationEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;JLjava/lang/String;DD)V

    goto :goto_10

    .line 13
    :cond_18
    new-instance v0, Lcom/truecaller/messaging/data/types/BinaryEntity;

    const/4 v2, 0x0

    const/16 v5, 0x40

    move-object/from16 p6, v0

    move-wide/from16 p7, v6

    move-object/from16 p9, p3

    move/from16 p10, v3

    move-object/from16 p11, p5

    move-wide/from16 p12, v22

    move/from16 p14, v8

    move/from16 p15, v2

    move/from16 p16, v5

    invoke-direct/range {p6 .. p16}, Lcom/truecaller/messaging/data/types/BinaryEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;JZII)V

    :goto_10
    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "contentType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audio/"

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "contentType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "application/"

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const-string v3, "application/vnd.truecaller"

    invoke-static {p1, v3, v2, v0}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "text/vnd.plain-file"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "contentType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tenor/gif"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, p1, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "image/gif"

    invoke-static {v0, p1, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "contentType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "image/"

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "contentType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/messaging/data/types/Entity;->g:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const/4 v5, 0x1

    .line 2
    invoke-static {p1, v4, v5}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "contentType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "application/vnd.truecaller.location"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, p1, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "contentType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tenor/gif"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, p1, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final j(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "contentType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text/plain"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, p1, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "text/html"

    invoke-static {v0, p1, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "contentType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/messaging/data/types/Entity;->d:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const/4 v5, 0x1

    .line 2
    invoke-static {p1, v4, v5}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final l(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "contentType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "video/"

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
