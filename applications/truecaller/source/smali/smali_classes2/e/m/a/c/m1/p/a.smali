.class public final Le/m/a/c/m1/p/a;
.super Le/m/a/c/m1/c;
.source "SourceFile"


# static fields
.field public static final s:Ljava/util/regex/Pattern;


# instance fields
.field public final n:Z

.field public final o:Le/m/a/c/m1/p/b;

.field public p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/m/a/c/m1/p/c;",
            ">;"
        }
    .end annotation
.end field

.field public q:F

.field public r:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/m/a/c/m1/p/a;->s:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "SsaDecoder"

    .line 1
    invoke-direct {p0, v0}, Le/m/a/c/m1/c;-><init>(Ljava/lang/String;)V

    const v0, -0x800001

    .line 2
    iput v0, p0, Le/m/a/c/m1/p/a;->q:F

    .line 3
    iput v0, p0, Le/m/a/c/m1/p/a;->r:F

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Le/m/a/c/m1/p/a;->n:Z

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 7
    sget v2, Le/m/a/c/q1/d0;->a:I

    .line 8
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v0, "Format:"

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ln3/g0/y;->r(Z)V

    .line 10
    invoke-static {v2}, Le/m/a/c/m1/p/b;->a(Ljava/lang/String;)Le/m/a/c/m1/p/b;

    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Le/m/a/c/m1/p/a;->o:Le/m/a/c/m1/p/b;

    .line 13
    new-instance v0, Le/m/a/c/q1/t;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Le/m/a/c/q1/t;-><init>([B)V

    invoke-virtual {p0, v0}, Le/m/a/c/m1/p/a;->m(Le/m/a/c/q1/t;)V

    goto :goto_0

    .line 14
    :cond_0
    iput-boolean v0, p0, Le/m/a/c/m1/p/a;->n:Z

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Le/m/a/c/m1/p/a;->o:Le/m/a/c/m1/p/b;

    :goto_0
    return-void
.end method

.method public static k(JLjava/util/List;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Le/m/a/c/m1/b;",
            ">;>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-nez v1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-gez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    new-instance p0, Ljava/util/ArrayList;

    if-nez v0, :cond_3

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_3
    add-int/lit8 p1, v0, -0x1

    .line 6
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    :goto_2
    invoke-interface {p3, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v0
.end method

.method public static l(I)F
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, -0x800001

    return p0

    :cond_0
    const p0, 0x3f733333    # 0.95f

    return p0

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_2
    const p0, 0x3d4ccccd    # 0.05f

    return p0
.end method

.method public static n(Ljava/lang/String;)J
    .locals 8

    .line 1
    sget-object v0, Le/m/a/c/m1/p/a;->s:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget v1, Le/m/a/c/q1/d0;->a:I

    .line 5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v0, v4

    const/4 v6, 0x2

    .line 6
    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    mul-long/2addr v6, v2

    mul-long/2addr v6, v4

    add-long/2addr v6, v0

    const/4 v0, 0x3

    .line 7
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v4

    add-long/2addr v0, v6

    const/4 v2, 0x4

    .line 8
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public j([BIZ)Le/m/a/c/m1/e;
    .locals 24

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v3, Le/m/a/c/q1/t;

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct {v3, v4, v5}, Le/m/a/c/q1/t;-><init>([BI)V

    .line 4
    iget-boolean v4, v0, Le/m/a/c/m1/p/a;->n:Z

    if-nez v4, :cond_0

    .line 5
    invoke-virtual {v0, v3}, Le/m/a/c/m1/p/a;->m(Le/m/a/c/q1/t;)V

    .line 6
    :cond_0
    iget-boolean v4, v0, Le/m/a/c/m1/p/a;->n:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Le/m/a/c/m1/p/a;->o:Le/m/a/c/m1/p/b;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {v3}, Le/m/a/c/q1/t;->f()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    const-string v7, "Format:"

    .line 8
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 9
    invoke-static {v6}, Le/m/a/c/m1/p/b;->a(Ljava/lang/String;)Le/m/a/c/m1/p/b;

    move-result-object v4

    goto :goto_0

    :cond_3
    const-string v7, "Dialogue:"

    .line 10
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v4, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ln3/g0/y;->r(Z)V

    const/16 v7, 0x9

    .line 12
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iget v7, v4, Le/m/a/c/m1/p/b;->e:I

    const-string v8, ","

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 13
    array-length v7, v6

    iget v8, v4, Le/m/a/c/m1/p/b;->e:I

    if-eq v7, v8, :cond_5

    goto :goto_0

    .line 14
    :cond_5
    iget v7, v4, Le/m/a/c/m1/p/b;->a:I

    aget-object v7, v6, v7

    invoke-static {v7}, Le/m/a/c/m1/p/a;->n(Ljava/lang/String;)J

    move-result-wide v7

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v7, v9

    if-nez v11, :cond_6

    goto :goto_0

    .line 15
    :cond_6
    iget v11, v4, Le/m/a/c/m1/p/b;->b:I

    aget-object v11, v6, v11

    invoke-static {v11}, Le/m/a/c/m1/p/a;->n(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v9, v11, v9

    if-nez v9, :cond_7

    goto :goto_0

    .line 16
    :cond_7
    iget-object v9, v0, Le/m/a/c/m1/p/a;->p:Ljava/util/Map;

    const/4 v10, -0x1

    if-eqz v9, :cond_8

    iget v13, v4, Le/m/a/c/m1/p/b;->c:I

    if-eq v13, v10, :cond_8

    aget-object v13, v6, v13

    .line 17
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/m/a/c/m1/p/c;

    goto :goto_1

    :cond_8
    const/4 v9, 0x0

    .line 18
    :goto_1
    iget v13, v4, Le/m/a/c/m1/p/b;->d:I

    aget-object v6, v6, v13

    .line 19
    sget-object v13, Le/m/a/c/m1/p/c$b;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    move v14, v10

    const/4 v15, 0x0

    .line 20
    :goto_2
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    const/4 v5, 0x1

    if-eqz v16, :cond_c

    .line 21
    invoke-virtual {v13, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 22
    :try_start_0
    invoke-static {v10}, Le/m/a/c/m1/p/c$b;->a(Ljava/lang/String;)Landroid/graphics/PointF;

    move-result-object v16
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v16, :cond_9

    move-object/from16 v15, v16

    .line 23
    :catch_0
    :cond_9
    :try_start_1
    sget-object v5, Le/m/a/c/m1/p/c$b;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 24
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-static {v5}, Le/m/a/c/m1/p/c;->a(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_a
    const/4 v5, -0x1

    :goto_3
    const/4 v10, -0x1

    if-eq v5, v10, :cond_b

    move v14, v5

    goto :goto_2

    :catch_1
    :cond_b
    const/4 v10, -0x1

    goto :goto_2

    :cond_c
    move v10, v5

    .line 26
    new-instance v5, Le/m/a/c/m1/p/c$b;

    invoke-direct {v5, v14, v15}, Le/m/a/c/m1/p/c$b;-><init>(ILandroid/graphics/PointF;)V

    .line 27
    sget-object v13, Le/m/a/c/m1/p/c$b;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    const-string v13, ""

    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v13, "\n"

    const-string v14, "\\\\N"

    .line 28
    invoke-virtual {v6, v14, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v14, "\\\\n"

    .line 29
    invoke-virtual {v6, v14, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 30
    iget v6, v0, Le/m/a/c/m1/p/a;->q:F

    iget v13, v0, Le/m/a/c/m1/p/a;->r:F

    .line 31
    iget v14, v5, Le/m/a/c/m1/p/c$b;->a:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_d

    goto :goto_4

    :cond_d
    if-eqz v9, :cond_e

    .line 32
    iget v9, v9, Le/m/a/c/m1/p/c;->b:I

    move v14, v9

    goto :goto_4

    :cond_e
    move v14, v15

    :goto_4
    const/high16 v9, -0x80000000

    const/4 v15, 0x2

    const/16 v17, 0x0

    packed-switch v14, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    move/from16 v22, v15

    goto :goto_6

    :pswitch_1
    move/from16 v22, v10

    goto :goto_6

    :pswitch_2
    move/from16 v22, v17

    goto :goto_6

    :goto_5
    move/from16 v22, v9

    :goto_6
    packed-switch v14, :pswitch_data_1

    goto :goto_7

    :pswitch_3
    move/from16 v20, v17

    goto :goto_8

    :pswitch_4
    move/from16 v20, v10

    goto :goto_8

    :pswitch_5
    move/from16 v20, v15

    goto :goto_8

    :goto_7
    move/from16 v20, v9

    .line 33
    :goto_8
    iget-object v5, v5, Le/m/a/c/m1/p/c$b;->b:Landroid/graphics/PointF;

    if-eqz v5, :cond_f

    const v9, -0x800001

    cmpl-float v10, v13, v9

    if-eqz v10, :cond_f

    cmpl-float v9, v6, v9

    if-eqz v9, :cond_f

    .line 34
    iget v9, v5, Landroid/graphics/PointF;->x:F

    div-float/2addr v9, v6

    .line 35
    iget v5, v5, Landroid/graphics/PointF;->y:F

    div-float/2addr v5, v13

    move/from16 v18, v5

    move/from16 v21, v9

    goto :goto_9

    .line 36
    :cond_f
    invoke-static/range {v22 .. v22}, Le/m/a/c/m1/p/a;->l(I)F

    move-result v5

    .line 37
    invoke-static/range {v20 .. v20}, Le/m/a/c/m1/p/a;->l(I)F

    move-result v6

    move/from16 v21, v5

    move/from16 v18, v6

    .line 38
    :goto_9
    new-instance v5, Le/m/a/c/m1/b;

    packed-switch v14, :pswitch_data_2

    goto :goto_b

    .line 39
    :pswitch_6
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_a

    .line 40
    :pswitch_7
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_a

    .line 41
    :pswitch_8
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_a
    move-object/from16 v17, v6

    goto :goto_c

    :goto_b
    const/16 v17, 0x0

    :goto_c
    const/16 v19, 0x0

    const v23, -0x800001

    move-object v15, v5

    .line 42
    invoke-direct/range {v15 .. v23}, Le/m/a/c/m1/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    .line 43
    invoke-static {v7, v8, v2, v1}, Le/m/a/c/m1/p/a;->k(JLjava/util/List;Ljava/util/List;)I

    move-result v6

    .line 44
    invoke-static {v11, v12, v2, v1}, Le/m/a/c/m1/p/a;->k(JLjava/util/List;Ljava/util/List;)I

    move-result v7

    :goto_d
    if-ge v6, v7, :cond_2

    .line 45
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 46
    :cond_10
    new-instance v3, Le/m/a/c/m1/p/d;

    invoke-direct {v3, v1, v2}, Le/m/a/c/m1/p/d;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final m(Le/m/a/c/q1/t;)V
    .locals 13

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Le/m/a/c/q1/t;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "[Script Info]"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x5b

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    .line 3
    :catch_0
    :goto_1
    invoke-virtual {p1}, Le/m/a/c/q1/t;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Le/m/a/c/q1/t;->a()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Le/m/a/c/q1/t;->b()I

    move-result v1

    if-eq v1, v3, :cond_0

    :cond_1
    const-string v1, ":"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6
    array-length v1, v0

    if-eq v1, v4, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/m/a/c/q1/d0;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v6, "playresx"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "playresy"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    :try_start_0
    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Le/m/a/c/m1/p/a;->r:F

    goto :goto_1

    .line 9
    :cond_4
    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Le/m/a/c/m1/p/a;->q:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    const-string v1, "[V4+ Styles]"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    :cond_6
    move-object v6, v1

    .line 12
    :cond_7
    :goto_2
    invoke-virtual {p1}, Le/m/a/c/q1/t;->f()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 13
    invoke-virtual {p1}, Le/m/a/c/q1/t;->a()I

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {p1}, Le/m/a/c/q1/t;->b()I

    move-result v8

    if-eq v8, v3, :cond_f

    :cond_8
    const-string v8, "Format:"

    .line 14
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-string v9, ","

    if-eqz v8, :cond_c

    const/4 v6, 0x7

    .line 15
    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    move v8, v2

    move v9, v7

    move v10, v9

    .line 16
    :goto_3
    array-length v11, v6

    if-ge v8, v11, :cond_b

    .line 17
    aget-object v11, v6, v8

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Le/m/a/c/q1/d0;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    const-string v12, "name"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    const-string v12, "alignment"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_4

    :cond_9
    move v10, v8

    goto :goto_4

    :cond_a
    move v9, v8

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_b
    if-eq v9, v7, :cond_6

    .line 18
    new-instance v7, Le/m/a/c/m1/p/c$a;

    array-length v6, v6

    invoke-direct {v7, v9, v10, v6}, Le/m/a/c/m1/p/c$a;-><init>(III)V

    move-object v6, v7

    goto :goto_2

    :cond_c
    const-string v8, "Style:"

    .line 19
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-nez v6, :cond_d

    goto :goto_2

    .line 20
    :cond_d
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ln3/g0/y;->r(Z)V

    const/4 v8, 0x6

    .line 21
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 22
    array-length v9, v8

    iget v10, v6, Le/m/a/c/m1/p/c$a;->c:I

    if-eq v9, v10, :cond_e

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 23
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v5

    aput-object v7, v9, v4

    const-string v7, "Skipping malformed \'Style:\' line (expected %s values, found %s): \'%s\'"

    .line 24
    invoke-static {v7, v9}, Le/m/a/c/q1/d0;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_5

    .line 25
    :cond_e
    :try_start_1
    new-instance v9, Le/m/a/c/m1/p/c;

    iget v10, v6, Le/m/a/c/m1/p/c$a;->a:I

    aget-object v10, v8, v10

    .line 26
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iget v11, v6, Le/m/a/c/m1/p/c$a;->b:I

    aget-object v8, v8, v11

    invoke-static {v8}, Le/m/a/c/m1/p/c;->a(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v9, v10, v8}, Le/m/a/c/m1/p/c;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v8

    .line 27
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping malformed \'Style:\' line: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 28
    invoke-static {v7, v8}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    :goto_5
    move-object v9, v1

    :goto_6
    if-eqz v9, :cond_7

    .line 29
    iget-object v7, v9, Le/m/a/c/m1/p/c;->a:Ljava/lang/String;

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 30
    :cond_f
    iput-object v0, p0, Le/m/a/c/m1/p/a;->p:Ljava/util/Map;

    goto/16 :goto_0

    :cond_10
    const-string v1, "[V4 Styles]"

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const-string v1, "[Events]"

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_12
    return-void
.end method
