.class public final Le/m/a/c/m1/t/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/m1/t/f$a;,
        Le/m/a/c/m1/t/f$b;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/lang/StringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)(.*)?$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/m/a/c/m1/t/f;->b:Ljava/util/regex/Pattern;

    const-string v0, "(\\S+?):(\\S+)"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/m/a/c/m1/t/f;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Le/m/a/c/m1/t/f;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Ljava/lang/String;Le/m/a/c/m1/t/f$a;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/m/a/c/m1/t/f$a;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Le/m/a/c/m1/t/d;",
            ">;",
            "Ljava/util/List<",
            "Le/m/a/c/m1/t/f$b;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 1
    iget v3, v0, Le/m/a/c/m1/t/f$a;->b:I

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 3
    iget-object v5, v0, Le/m/a/c/m1/t/f$a;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v6, :cond_c

    const/16 v13, 0x69

    if-eq v6, v13, :cond_a

    const v13, 0x3291ee

    if-eq v6, v13, :cond_8

    const/16 v13, 0x62

    if-eq v6, v13, :cond_6

    const/16 v13, 0x63

    if-eq v6, v13, :cond_4

    const/16 v13, 0x75

    if-eq v6, v13, :cond_2

    const/16 v13, 0x76

    if-eq v6, v13, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "v"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x5

    goto :goto_1

    :cond_2
    const-string v6, "u"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x4

    goto :goto_1

    :cond_4
    const-string v6, "c"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    move v5, v10

    goto :goto_1

    :cond_6
    const-string v6, "b"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_0

    :cond_7
    move v5, v12

    goto :goto_1

    :cond_8
    const-string v6, "lang"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_0

    :cond_9
    const/4 v5, 0x6

    goto :goto_1

    :cond_a
    const-string v6, "i"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_0

    :cond_b
    const/4 v5, 0x3

    goto :goto_1

    :cond_c
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    :goto_0
    const/4 v5, -0x1

    goto :goto_1

    :cond_d
    move v5, v11

    :goto_1
    const/16 v6, 0x21

    packed-switch v5, :pswitch_data_0

    return-void

    .line 4
    :pswitch_0
    new-instance v5, Landroid/text/style/UnderlineSpan;

    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1, v5, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 5
    :pswitch_1
    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v5, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 6
    :pswitch_2
    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v12}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v5, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7
    :goto_2
    :pswitch_3
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->clear()V

    .line 8
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    move v13, v11

    :goto_3
    if-ge v13, v5, :cond_12

    move-object/from16 v14, p3

    .line 9
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Le/m/a/c/m1/t/d;

    .line 10
    iget-object v8, v0, Le/m/a/c/m1/t/f$a;->a:Ljava/lang/String;

    iget-object v12, v0, Le/m/a/c/m1/t/f$a;->d:[Ljava/lang/String;

    iget-object v6, v0, Le/m/a/c/m1/t/f$a;->c:Ljava/lang/String;

    .line 11
    iget-object v9, v15, Le/m/a/c/m1/t/d;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, v15, Le/m/a/c/m1/t/d;->b:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, v15, Le/m/a/c/m1/t/d;->c:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, v15, Le/m/a/c/m1/t/d;->d:Ljava/lang/String;

    .line 12
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 13
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    move-object/from16 v10, p0

    const/4 v9, 0x4

    goto :goto_5

    .line 14
    :cond_e
    iget-object v9, v15, Le/m/a/c/m1/t/d;->a:Ljava/lang/String;

    const/high16 v7, 0x40000000    # 2.0f

    move-object/from16 v10, p0

    invoke-static {v11, v9, v10, v7}, Le/m/a/c/m1/t/d;->b(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 15
    iget-object v9, v15, Le/m/a/c/m1/t/d;->b:Ljava/lang/String;

    const/4 v11, 0x2

    invoke-static {v7, v9, v8, v11}, Le/m/a/c/m1/t/d;->b(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 16
    iget-object v8, v15, Le/m/a/c/m1/t/d;->d:Ljava/lang/String;

    const/4 v9, 0x4

    invoke-static {v7, v8, v6, v9}, Le/m/a/c/m1/t/d;->b(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_10

    .line 17
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iget-object v8, v15, Le/m/a/c/m1/t/d;->c:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_4

    .line 18
    :cond_f
    iget-object v7, v15, Le/m/a/c/m1/t/d;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    mul-int/2addr v7, v9

    add-int/2addr v6, v7

    goto :goto_5

    :cond_10
    :goto_4
    const/4 v6, 0x0

    :goto_5
    if-lez v6, :cond_11

    .line 19
    new-instance v7, Le/m/a/c/m1/t/f$b;

    invoke-direct {v7, v6, v15}, Le/m/a/c/m1/t/f$b;-><init>(ILe/m/a/c/m1/t/d;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v13, v13, 0x1

    const/16 v6, 0x21

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_3

    .line 20
    :cond_12
    invoke-static/range {p4 .. p4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 21
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v0, :cond_21

    .line 22
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/m/a/c/m1/t/f$b;

    iget-object v6, v6, Le/m/a/c/m1/t/f$b;->b:Le/m/a/c/m1/t/d;

    if-nez v6, :cond_13

    const/4 v8, -0x1

    const/16 v9, 0x21

    const/4 v10, 0x2

    const/4 v11, 0x3

    goto/16 :goto_d

    .line 23
    :cond_13
    invoke-virtual {v6}, Le/m/a/c/m1/t/d;->a()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_14

    .line 24
    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-virtual {v6}, Le/m/a/c/m1/t/d;->a()I

    move-result v9

    invoke-direct {v7, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v9, 0x21

    invoke-virtual {v1, v7, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7

    :cond_14
    const/16 v9, 0x21

    .line 25
    :goto_7
    iget v7, v6, Le/m/a/c/m1/t/d;->j:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_15

    move/from16 v16, v10

    goto :goto_8

    :cond_15
    const/16 v16, 0x0

    :goto_8
    if-eqz v16, :cond_16

    .line 26
    new-instance v7, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v7}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v1, v7, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 27
    :cond_16
    iget v7, v6, Le/m/a/c/m1/t/d;->k:I

    if-ne v7, v10, :cond_17

    const/4 v7, 0x1

    goto :goto_9

    :cond_17
    const/4 v7, 0x0

    :goto_9
    if-eqz v7, :cond_18

    .line 28
    new-instance v7, Landroid/text/style/UnderlineSpan;

    invoke-direct {v7}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1, v7, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 29
    :cond_18
    iget-boolean v7, v6, Le/m/a/c/m1/t/d;->g:Z

    if-eqz v7, :cond_1a

    .line 30
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    .line 31
    iget-boolean v10, v6, Le/m/a/c/m1/t/d;->g:Z

    if-eqz v10, :cond_19

    .line 32
    iget v10, v6, Le/m/a/c/m1/t/d;->f:I

    .line 33
    invoke-direct {v7, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v7, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a

    .line 34
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1a
    :goto_a
    iget-boolean v7, v6, Le/m/a/c/m1/t/d;->i:Z

    if-eqz v7, :cond_1c

    .line 36
    new-instance v7, Landroid/text/style/BackgroundColorSpan;

    .line 37
    iget-boolean v9, v6, Le/m/a/c/m1/t/d;->i:Z

    if-eqz v9, :cond_1b

    .line 38
    iget v9, v6, Le/m/a/c/m1/t/d;->h:I

    .line 39
    invoke-direct {v7, v9}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v9, 0x21

    invoke-virtual {v1, v7, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_b

    .line 40
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1c
    :goto_b
    iget-object v7, v6, Le/m/a/c/m1/t/d;->e:Ljava/lang/String;

    if-eqz v7, :cond_1d

    .line 42
    new-instance v7, Landroid/text/style/TypefaceSpan;

    .line 43
    iget-object v9, v6, Le/m/a/c/m1/t/d;->e:Ljava/lang/String;

    .line 44
    invoke-direct {v7, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x21

    invoke-virtual {v1, v7, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_c

    :cond_1d
    const/16 v9, 0x21

    .line 45
    :goto_c
    iget v6, v6, Le/m/a/c/m1/t/d;->n:I

    const/4 v7, 0x0

    const/4 v10, 0x1

    if-eq v6, v10, :cond_20

    const/4 v10, 0x2

    if-eq v6, v10, :cond_1f

    const/4 v11, 0x3

    if-eq v6, v11, :cond_1e

    goto :goto_d

    .line 46
    :cond_1e
    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v6, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1, v6, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_d

    :cond_1f
    const/4 v11, 0x3

    .line 47
    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v6, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1, v6, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_d
    const/4 v12, 0x1

    goto :goto_e

    :cond_20
    const/4 v10, 0x2

    const/4 v11, 0x3

    .line 48
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    float-to-int v7, v7

    const/4 v12, 0x1

    invoke-direct {v6, v7, v12}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v1, v6, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    :cond_21
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;Ljava/util/regex/Matcher;Le/m/a/c/q1/t;Le/m/a/c/m1/t/e$b;Ljava/lang/StringBuilder;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Matcher;",
            "Le/m/a/c/q1/t;",
            "Le/m/a/c/m1/t/e$b;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Le/m/a/c/m1/t/d;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/m/a/c/m1/t/h;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 2
    iput-wide v2, p3, Le/m/a/c/m1/t/e$b;->a:J

    const/4 v2, 0x2

    .line 3
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/m/a/c/m1/t/h;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 4
    iput-wide v2, p3, Le/m/a/c/m1/t/e$b;->b:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    .line 5
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Le/m/a/c/m1/t/f;->c(Ljava/lang/String;Le/m/a/c/m1/t/e$b;)V

    .line 6
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7
    invoke-virtual {p2}, Le/m/a/c/q1/t;->f()Ljava/lang/String;

    move-result-object p1

    .line 8
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\n"

    .line 10
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p2}, Le/m/a/c/q1/t;->f()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3, p5}, Le/m/a/c/m1/t/f;->d(Ljava/lang/String;Ljava/lang/String;Le/m/a/c/m1/t/e$b;Ljava/util/List;)V

    return v1

    .line 14
    :catch_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    return v0
.end method

.method public static c(Ljava/lang/String;Le/m/a/c/m1/t/e$b;)V
    .locals 8

    .line 1
    sget-object v0, Le/m/a/c/m1/t/f;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 4
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v4, "line"

    .line 5
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x2c

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eqz v4, :cond_4

    .line 6
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v7, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 7
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/m/a/c/m1/t/f;->e(Ljava/lang/String;)I

    move-result v2

    .line 8
    iput v2, p1, Le/m/a/c/m1/t/e$b;->g:I

    .line 9
    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v1, "%"

    .line 10
    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-static {v3}, Le/m/a/c/m1/t/h;->a(Ljava/lang/String;)F

    move-result v0

    .line 12
    iput v0, p1, Le/m/a/c/m1/t/e$b;->e:F

    .line 13
    iput v6, p1, Le/m/a/c/m1/t/e$b;->f:I

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    :cond_3
    int-to-float v1, v1

    .line 15
    iput v1, p1, Le/m/a/c/m1/t/e$b;->e:F

    .line 16
    iput v0, p1, Le/m/a/c/m1/t/e$b;->f:I

    goto :goto_0

    :cond_4
    const-string v4, "align"

    .line 17
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 18
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v4, 0x3

    sparse-switch v1, :sswitch_data_0

    :goto_1
    move v6, v7

    goto :goto_2

    :sswitch_0
    const-string v1, "start"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    move v6, v4

    goto :goto_2

    :sswitch_1
    const-string v1, "right"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    move v6, v2

    goto :goto_2

    :sswitch_2
    const-string v1, "left"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    move v6, v0

    goto :goto_2

    :sswitch_3
    const-string v1, "end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    :goto_2
    packed-switch v6, :pswitch_data_0

    move v0, v2

    goto :goto_3

    :pswitch_0
    const/4 v0, 0x5

    goto :goto_3

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_3

    :pswitch_2
    move v0, v4

    .line 19
    :goto_3
    :pswitch_3
    :try_start_1
    iput v0, p1, Le/m/a/c/m1/t/e$b;->d:I

    goto/16 :goto_0

    :cond_9
    const-string v0, "position"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 21
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v7, :cond_a

    add-int/lit8 v1, v0, 0x1

    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/m/a/c/m1/t/f;->e(Ljava/lang/String;)I

    move-result v1

    .line 23
    iput v1, p1, Le/m/a/c/m1/t/e$b;->i:I

    .line 24
    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 25
    :cond_a
    invoke-static {v3}, Le/m/a/c/m1/t/h;->a(Ljava/lang/String;)F

    move-result v0

    .line 26
    iput v0, p1, Le/m/a/c/m1/t/e$b;->h:F

    goto/16 :goto_0

    :cond_b
    const-string v0, "size"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {v3}, Le/m/a/c/m1/t/h;->a(Ljava/lang/String;)F

    move-result v0

    .line 29
    iput v0, p1, Le/m/a/c/m1/t/e$b;->j:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 30
    :catch_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    return-void

    :sswitch_data_0
    .sparse-switch
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Le/m/a/c/m1/t/e$b;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Le/m/a/c/m1/t/e$b;",
            "Ljava/util/List<",
            "Le/m/a/c/m1/t/d;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, ""

    if-ge v7, v8, :cond_25

    .line 5
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const-string v10, " "

    const/16 v11, 0x3e

    const/16 v12, 0x3c

    const/16 v13, 0x26

    const/4 v15, 0x2

    const/4 v14, -0x1

    const/4 v6, 0x1

    if-eq v8, v13, :cond_1c

    if-eq v8, v12, :cond_0

    .line 6
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v8, v7, 0x1

    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-lt v8, v12, :cond_2

    :cond_1
    :goto_1
    move v7, v8

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2f

    if-ne v12, v13, :cond_3

    move v12, v6

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    .line 9
    :goto_2
    invoke-virtual {v1, v11, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-ne v8, v14, :cond_4

    .line 10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    :goto_3
    add-int/lit8 v11, v8, -0x2

    .line 11
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v13, :cond_5

    move v13, v6

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :goto_4
    if-eqz v12, :cond_6

    move v14, v15

    goto :goto_5

    :cond_6
    move v14, v6

    :goto_5
    add-int/2addr v7, v14

    if-eqz v13, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v11, v8, -0x1

    .line 12
    :goto_6
    invoke-virtual {v1, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_1

    .line 14
    :cond_8
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 15
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    xor-int/2addr v14, v6

    invoke-static {v14}, Ln3/g0/y;->r(Z)V

    .line 16
    sget v14, Le/m/a/c/q1/d0;->a:I

    const-string v14, "[ \\.]"

    .line 17
    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    .line 18
    aget-object v11, v11, v14

    .line 19
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/16 v15, 0x62

    const/4 v6, 0x4

    if-eq v14, v15, :cond_13

    const/16 v15, 0x63

    if-eq v14, v15, :cond_11

    const/16 v15, 0x69

    if-eq v14, v15, :cond_f

    const v15, 0x3291ee

    if-eq v14, v15, :cond_d

    const/16 v15, 0x75

    if-eq v14, v15, :cond_b

    const/16 v15, 0x76

    if-eq v14, v15, :cond_9

    goto :goto_7

    :cond_9
    const-string v14, "v"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    goto :goto_7

    :cond_a
    move v14, v6

    goto :goto_8

    :cond_b
    const-string v14, "u"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    goto :goto_7

    :cond_c
    const/4 v14, 0x3

    goto :goto_8

    :cond_d
    const-string v14, "lang"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    goto :goto_7

    :cond_e
    const/4 v14, 0x5

    goto :goto_8

    :cond_f
    const-string v14, "i"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    goto :goto_7

    :cond_10
    const/4 v14, 0x2

    goto :goto_8

    :cond_11
    const-string v14, "c"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    goto :goto_7

    :cond_12
    const/4 v14, 0x1

    goto :goto_8

    :cond_13
    const-string v14, "b"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14

    :goto_7
    const/4 v14, -0x1

    goto :goto_8

    :cond_14
    const/4 v14, 0x0

    :goto_8
    if-eqz v14, :cond_15

    const/4 v15, 0x1

    if-eq v14, v15, :cond_15

    const/4 v15, 0x2

    if-eq v14, v15, :cond_15

    const/4 v15, 0x3

    if-eq v14, v15, :cond_15

    if-eq v14, v6, :cond_15

    const/4 v6, 0x5

    if-eq v14, v6, :cond_15

    const/4 v6, 0x0

    goto :goto_9

    :cond_15
    const/4 v6, 0x1

    :goto_9
    if-nez v6, :cond_16

    goto/16 :goto_1

    :cond_16
    if-eqz v12, :cond_19

    .line 20
    :cond_17
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_18

    goto/16 :goto_1

    .line 21
    :cond_18
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/m/a/c/m1/t/f$a;

    .line 22
    invoke-static {v0, v6, v3, v2, v5}, Le/m/a/c/m1/t/f;->a(Ljava/lang/String;Le/m/a/c/m1/t/f$a;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    .line 23
    iget-object v6, v6, Le/m/a/c/m1/t/f$a;->a:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    goto/16 :goto_1

    :cond_19
    if-nez v13, :cond_1

    .line 24
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 25
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 26
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    const/4 v12, 0x1

    xor-int/2addr v11, v12

    invoke-static {v11}, Ln3/g0/y;->r(Z)V

    .line 27
    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1a

    const/4 v11, 0x0

    goto :goto_a

    .line 28
    :cond_1a
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    .line 29
    invoke-virtual {v7, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :goto_a
    const-string v10, "\\."

    .line 30
    invoke-static {v7, v10}, Le/m/a/c/q1/d0;->B(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 31
    aget-object v10, v7, v11

    .line 32
    array-length v11, v7

    const/4 v14, 0x1

    if-le v11, v14, :cond_1b

    .line 33
    array-length v11, v7

    invoke-static {v7, v14, v11}, Le/m/a/c/q1/d0;->y([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_b

    .line 34
    :cond_1b
    sget-object v7, Le/m/a/c/m1/t/f$a;->e:[Ljava/lang/String;

    .line 35
    :goto_b
    new-instance v11, Le/m/a/c/m1/t/f$a;

    invoke-direct {v11, v10, v6, v9, v7}, Le/m/a/c/m1/t/f$a;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    .line 36
    invoke-virtual {v4, v11}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1c
    move v14, v6

    const/4 v6, 0x3

    const/16 v9, 0x3b

    add-int/lit8 v7, v7, 0x1

    .line 37
    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/16 v6, 0x20

    .line 38
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    const/4 v15, -0x1

    if-ne v9, v15, :cond_1d

    move v9, v14

    goto :goto_c

    :cond_1d
    if-ne v14, v15, :cond_1e

    goto :goto_c

    .line 39
    :cond_1e
    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_c
    if-eq v9, v15, :cond_24

    .line 40
    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 41
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_d

    :sswitch_0
    const-string v8, "nbsp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    goto :goto_d

    :cond_1f
    const/4 v15, 0x3

    goto :goto_d

    :sswitch_1
    const-string v8, "amp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    goto :goto_d

    :cond_20
    const/4 v15, 0x2

    goto :goto_d

    :sswitch_2
    const-string v8, "lt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    goto :goto_d

    :cond_21
    const/4 v15, 0x1

    goto :goto_d

    :sswitch_3
    const-string v8, "gt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_22

    goto :goto_d

    :cond_22
    const/4 v15, 0x0

    :goto_d
    packed-switch v15, :pswitch_data_0

    goto :goto_e

    .line 42
    :pswitch_0
    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_e

    .line 43
    :pswitch_1
    invoke-virtual {v3, v13}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_e

    .line 44
    :pswitch_2
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_e

    .line 45
    :pswitch_3
    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :goto_e
    if-ne v9, v14, :cond_23

    .line 46
    invoke-virtual {v3, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_23
    add-int/lit8 v7, v9, 0x1

    goto/16 :goto_0

    .line 47
    :cond_24
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 48
    :cond_25
    :goto_f
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    .line 49
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/m1/t/f$a;

    invoke-static {v0, v1, v3, v2, v5}, Le/m/a/c/m1/t/f;->a(Ljava/lang/String;Le/m/a/c/m1/t/f$a;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    goto :goto_f

    .line 50
    :cond_26
    new-instance v1, Le/m/a/c/m1/t/f$a;

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/String;

    invoke-direct {v1, v9, v4, v9, v6}, Le/m/a/c/m1/t/f$a;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    .line 51
    invoke-static {v0, v1, v3, v2, v5}, Le/m/a/c/m1/t/f;->a(Ljava/lang/String;Le/m/a/c/m1/t/f$a;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, p2

    .line 52
    iput-object v3, v0, Le/m/a/c/m1/t/e$b;->c:Ljava/lang/CharSequence;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xced -> :sswitch_3
        0xd88 -> :sswitch_2
        0x179c4 -> :sswitch_1
        0x337f11 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_0

    :sswitch_3
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    const/high16 p0, -0x80000000

    return p0

    :pswitch_0
    return v3

    :pswitch_1
    return v1

    :pswitch_2
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
