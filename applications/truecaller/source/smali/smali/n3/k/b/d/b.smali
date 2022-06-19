.class public final Ln3/k/b/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Shader;

.field public final b:Landroid/content/res/ColorStateList;

.field public c:I


# direct methods
.method public constructor <init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/k/b/d/b;->a:Landroid/graphics/Shader;

    .line 3
    iput-object p2, p0, Ln3/k/b/d/b;->b:Landroid/content/res/ColorStateList;

    .line 4
    iput p3, p0, Ln3/k/b/d/b;->c:I

    return-void
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Ln3/k/b/d/b;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p0 .. p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 2
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 3
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    if-ne v4, v6, :cond_21

    .line 4
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string v7, "gradient"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_2

    const-string v5, "selector"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    invoke-static {v0, v2, v3, v1}, Ln3/k/b/d/a;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 7
    new-instance v1, Ln3/k/b/d/b;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-direct {v1, v9, v0, v2}, Ln3/k/b/d/b;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v1

    .line 8
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": unsupported complex color tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 11
    sget-object v4, Landroidx/core/R$styleable;->GradientColor:[I

    invoke-static {v0, v1, v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->W0(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 12
    sget v7, Landroidx/core/R$styleable;->GradientColor_android_startX:I

    const-string v8, "startX"

    .line 13
    invoke-static {v2, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    const/4 v10, 0x0

    if-nez v8, :cond_3

    move v12, v10

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v4, v7, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    move v12, v7

    .line 15
    :goto_1
    sget v7, Landroidx/core/R$styleable;->GradientColor_android_startY:I

    const-string v8, "startY"

    .line 16
    invoke-static {v2, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    move v13, v10

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {v4, v7, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    move v13, v7

    .line 18
    :goto_2
    sget v7, Landroidx/core/R$styleable;->GradientColor_android_endX:I

    const-string v8, "endX"

    .line 19
    invoke-static {v2, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    move v14, v10

    goto :goto_3

    .line 20
    :cond_5
    invoke-virtual {v4, v7, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    move v14, v7

    .line 21
    :goto_3
    sget v7, Landroidx/core/R$styleable;->GradientColor_android_endY:I

    const-string v8, "endY"

    .line 22
    invoke-static {v2, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    move v15, v10

    goto :goto_4

    .line 23
    :cond_6
    invoke-virtual {v4, v7, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    move v15, v7

    .line 24
    :goto_4
    sget v7, Landroidx/core/R$styleable;->GradientColor_android_centerX:I

    const-string v8, "centerX"

    .line 25
    invoke-static {v2, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    move v7, v10

    goto :goto_5

    .line 26
    :cond_7
    invoke-virtual {v4, v7, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 27
    :goto_5
    sget v8, Landroidx/core/R$styleable;->GradientColor_android_centerY:I

    const-string v11, "centerY"

    .line 28
    invoke-static {v2, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    move v8, v10

    goto :goto_6

    .line 29
    :cond_8
    invoke-virtual {v4, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 30
    :goto_6
    sget v11, Landroidx/core/R$styleable;->GradientColor_android_type:I

    const-string v9, "type"

    .line 31
    invoke-static {v2, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    const/4 v6, 0x0

    if-nez v9, :cond_9

    move v9, v6

    goto :goto_7

    .line 32
    :cond_9
    invoke-virtual {v4, v11, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 33
    :goto_7
    sget v11, Landroidx/core/R$styleable;->GradientColor_android_startColor:I

    const-string v5, "startColor"

    .line 34
    invoke-static {v2, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    move v5, v6

    goto :goto_8

    .line 35
    :cond_a
    invoke-virtual {v4, v11, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    :goto_8
    const-string v11, "centerColor"

    .line 36
    invoke-static {v2, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v18

    .line 37
    sget v10, Landroidx/core/R$styleable;->GradientColor_android_centerColor:I

    .line 38
    invoke-static {v2, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b

    move v10, v6

    goto :goto_9

    .line 39
    :cond_b
    invoke-virtual {v4, v10, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 40
    :goto_9
    sget v11, Landroidx/core/R$styleable;->GradientColor_android_endColor:I

    const-string v6, "endColor"

    .line 41
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    const/4 v11, 0x0

    goto :goto_a

    :cond_c
    const/4 v6, 0x0

    .line 42
    invoke-virtual {v4, v11, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v23

    move/from16 v11, v23

    .line 43
    :goto_a
    sget v6, Landroidx/core/R$styleable;->GradientColor_android_tileMode:I

    const-string v0, "tileMode"

    .line 44
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v6, 0x0

    goto :goto_b

    :cond_d
    const/4 v0, 0x0

    .line 45
    invoke-virtual {v4, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 46
    :goto_b
    sget v0, Landroidx/core/R$styleable;->GradientColor_android_gradientRadius:I

    move/from16 v20, v7

    const-string v7, "gradientRadius"

    .line 47
    invoke-static {v2, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    const/4 v0, 0x0

    goto :goto_c

    :cond_e
    const/4 v7, 0x0

    .line 48
    invoke-virtual {v4, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 49
    :goto_c
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v7, 0x1

    add-int/2addr v4, v7

    .line 51
    new-instance v7, Ljava/util/ArrayList;

    move/from16 v21, v0

    const/16 v0, 0x14

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v22, v8

    .line 52
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    move/from16 v24, v15

    .line 53
    :goto_d
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    move/from16 v25, v14

    const/4 v14, 0x1

    if-eq v15, v14, :cond_14

    .line 54
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    move/from16 v26, v13

    if-ge v14, v4, :cond_f

    const/4 v13, 0x3

    if-eq v15, v13, :cond_15

    :cond_f
    const/4 v13, 0x2

    if-eq v15, v13, :cond_10

    goto :goto_f

    :cond_10
    if-gt v14, v4, :cond_13

    .line 55
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "item"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    goto :goto_f

    .line 56
    :cond_11
    sget-object v13, Landroidx/core/R$styleable;->GradientColorItem:[I

    invoke-static {v0, v1, v3, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->W0(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    sget v13, Landroidx/core/R$styleable;->GradientColorItem_android_color:I

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    .line 58
    sget v15, Landroidx/core/R$styleable;->GradientColorItem_android_offset:I

    invoke-virtual {v0, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v27

    if-eqz v14, :cond_12

    if-eqz v27, :cond_12

    const/4 v14, 0x0

    .line 59
    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    const/4 v14, 0x0

    .line 60
    invoke-virtual {v0, v15, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 64
    :cond_12
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_e
    move-object/from16 v0, p0

    :goto_f
    move/from16 v14, v25

    move/from16 v13, v26

    goto :goto_d

    :cond_14
    move/from16 v26, v13

    .line 66
    :cond_15
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    new-instance v0, Ln3/k/b/d/g;

    invoke-direct {v0, v8, v7}, Ln3/k/b/d/g;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_10

    :cond_16
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_17

    :goto_11
    const/4 v1, 0x1

    goto :goto_12

    :cond_17
    if-eqz v18, :cond_18

    .line 67
    new-instance v0, Ln3/k/b/d/g;

    invoke-direct {v0, v5, v10, v11}, Ln3/k/b/d/g;-><init>(III)V

    goto :goto_11

    .line 68
    :cond_18
    new-instance v0, Ln3/k/b/d/g;

    invoke-direct {v0, v5, v11}, Ln3/k/b/d/g;-><init>(II)V

    goto :goto_11

    :goto_12
    if-eq v9, v1, :cond_1c

    const/4 v2, 0x2

    if-eq v9, v2, :cond_1b

    .line 69
    new-instance v3, Landroid/graphics/LinearGradient;

    iget-object v4, v0, Ln3/k/b/d/g;->a:[I

    iget-object v0, v0, Ln3/k/b/d/g;->b:[F

    if-eq v6, v1, :cond_1a

    if-eq v6, v2, :cond_19

    .line 70
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_13

    .line 71
    :cond_19
    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_13

    .line 72
    :cond_1a
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    :goto_13
    move-object/from16 v18, v1

    move-object v11, v3

    move/from16 v13, v26

    move/from16 v14, v25

    move/from16 v15, v24

    move-object/from16 v16, v4

    move-object/from16 v17, v0

    .line 73
    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_15

    .line 74
    :cond_1b
    new-instance v3, Landroid/graphics/SweepGradient;

    iget-object v1, v0, Ln3/k/b/d/g;->a:[I

    iget-object v0, v0, Ln3/k/b/d/g;->b:[F

    move/from16 v7, v20

    move/from16 v8, v22

    invoke-direct {v3, v7, v8, v1, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    goto :goto_15

    :cond_1c
    move/from16 v7, v20

    move/from16 v8, v22

    const/4 v1, 0x0

    cmpg-float v1, v21, v1

    if-lez v1, :cond_1f

    .line 75
    new-instance v3, Landroid/graphics/RadialGradient;

    iget-object v1, v0, Ln3/k/b/d/g;->a:[I

    iget-object v0, v0, Ln3/k/b/d/g;->b:[F

    const/4 v2, 0x1

    if-eq v6, v2, :cond_1e

    const/4 v2, 0x2

    if-eq v6, v2, :cond_1d

    .line 76
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_14

    .line 77
    :cond_1d
    sget-object v2, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_14

    .line 78
    :cond_1e
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    :goto_14
    move-object/from16 v22, v2

    move-object/from16 v16, v3

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v21

    move-object/from16 v20, v1

    move-object/from16 v21, v0

    .line 79
    invoke-direct/range {v16 .. v22}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 80
    :goto_15
    new-instance v0, Ln3/k/b/d/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v2}, Ln3/k/b/d/b;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v0

    .line 81
    :cond_1f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_20
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalid gradient color tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_21
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/b/d/b;->a:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/b/d/b;->a:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    iget-object v0, p0, Ln3/k/b/d/b;->b:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d([I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/k/b/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/k/b/d/b;->b:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 5
    iget v0, p0, Ln3/k/b/d/b;->c:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 6
    iput p1, p0, Ln3/k/b/d/b;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
