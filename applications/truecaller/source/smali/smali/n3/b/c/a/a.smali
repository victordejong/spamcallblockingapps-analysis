.class public Ln3/b/c/a/a;
.super Ln3/b/c/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/b/c/a/a$f;,
        Ln3/b/c/a/a$c;,
        Ln3/b/c/a/a$d;,
        Ln3/b/c/a/a$e;,
        Ln3/b/c/a/a$b;,
        Ln3/b/c/a/a$g;
    }
.end annotation


# instance fields
.field public p:Ln3/b/c/a/a$c;

.field public q:Ln3/b/c/a/a$g;

.field public r:I

.field public s:I

.field public t:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ln3/b/c/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Ln3/b/c/a/a;-><init>(Ln3/b/c/a/a$c;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Ln3/b/c/a/a$c;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Ln3/b/c/a/e;-><init>(Ln3/b/c/a/e$a;)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Ln3/b/c/a/a;->r:I

    .line 4
    iput v0, p0, Ln3/b/c/a/a;->s:I

    .line 5
    new-instance v0, Ln3/b/c/a/a$c;

    invoke-direct {v0, p1, p0, p2}, Ln3/b/c/a/a$c;-><init>(Ln3/b/c/a/a$c;Ln3/b/c/a/a;Landroid/content/res/Resources;)V

    .line 6
    invoke-super {p0, v0}, Ln3/b/c/a/e;->e(Ln3/b/c/a/b$c;)V

    .line 7
    iput-object v0, p0, Ln3/b/c/a/a;->p:Ln3/b/c/a/a$c;

    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Ln3/b/c/a/a;->onStateChange([I)Z

    .line 9
    invoke-virtual {p0}, Ln3/b/c/a/a;->jumpToCurrentState()V

    return-void
.end method

.method public static g(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Ln3/b/c/a/a;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "animated-selector"

    .line 2
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 3
    new-instance v4, Ln3/b/c/a/a;

    const/4 v5, 0x0

    .line 4
    invoke-direct {v4, v5, v5}, Ln3/b/c/a/a;-><init>(Ln3/b/c/a/a$c;Landroid/content/res/Resources;)V

    .line 5
    sget-object v6, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat:[I

    invoke-static {v0, v3, v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->W0(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 6
    sget v7, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_visible:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v4, v7, v8}, Ln3/b/c/a/a;->setVisible(ZZ)Z

    .line 7
    iget-object v7, v4, Ln3/b/c/a/a;->p:Ln3/b/c/a/a$c;

    .line 8
    iget v9, v7, Ln3/b/c/a/b$c;->d:I

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v10

    or-int/2addr v9, v10

    iput v9, v7, Ln3/b/c/a/b$c;->d:I

    .line 9
    sget v9, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_variablePadding:I

    iget-boolean v10, v7, Ln3/b/c/a/b$c;->i:Z

    .line 10
    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 11
    iput-boolean v9, v7, Ln3/b/c/a/b$c;->i:Z

    .line 12
    sget v9, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_constantSize:I

    iget-boolean v10, v7, Ln3/b/c/a/b$c;->l:Z

    .line 13
    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 14
    iput-boolean v9, v7, Ln3/b/c/a/b$c;->l:Z

    .line 15
    sget v9, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_enterFadeDuration:I

    iget v10, v7, Ln3/b/c/a/b$c;->A:I

    .line 16
    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 17
    iput v9, v7, Ln3/b/c/a/b$c;->A:I

    .line 18
    sget v9, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_exitFadeDuration:I

    iget v10, v7, Ln3/b/c/a/b$c;->B:I

    .line 19
    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 20
    iput v9, v7, Ln3/b/c/a/b$c;->B:I

    .line 21
    sget v9, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_dither:I

    iget-boolean v7, v7, Ln3/b/c/a/b$c;->x:Z

    invoke-virtual {v6, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v4, v7}, Ln3/b/c/a/b;->setDither(Z)V

    .line 22
    iget-object v7, v4, Ln3/b/c/a/b;->a:Ln3/b/c/a/b$c;

    invoke-virtual {v7, v0}, Ln3/b/c/a/b$c;->f(Landroid/content/res/Resources;)V

    .line 23
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    add-int/2addr v6, v8

    move-object/from16 v9, p0

    move-object v7, v0

    .line 25
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-eq v10, v8, :cond_16

    .line 26
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-ge v11, v6, :cond_0

    const/4 v12, 0x3

    if-eq v10, v12, :cond_16

    :cond_0
    const/4 v12, 0x2

    if-eq v10, v12, :cond_1

    goto :goto_0

    :cond_1
    if-le v11, v6, :cond_2

    goto :goto_0

    .line 27
    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "item"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-eqz v8, :cond_c

    .line 28
    sget-object v8, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem:[I

    invoke-static {v7, v3, v2, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->W0(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 29
    sget v12, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem_android_id:I

    invoke-virtual {v8, v12, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 30
    sget v13, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem_android_drawable:I

    .line 31
    invoke-virtual {v8, v13, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    if-lez v10, :cond_3

    .line 32
    invoke-static {}, Ln3/b/f/h0;->d()Ln3/b/f/h0;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ln3/b/f/h0;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 33
    :cond_3
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v8

    .line 35
    new-array v10, v8, [I

    move v13, v11

    move v14, v13

    :goto_1
    if-ge v13, v8, :cond_6

    .line 36
    invoke-interface {v2, v13}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v15

    if-eqz v15, :cond_5

    const v11, 0x10100d0

    if-eq v15, v11, :cond_5

    const v11, 0x1010199

    if-eq v15, v11, :cond_5

    add-int/lit8 v11, v14, 0x1

    const/4 v0, 0x0

    .line 37
    invoke-interface {v2, v13, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v17

    if-eqz v17, :cond_4

    goto :goto_2

    :cond_4
    neg-int v15, v15

    .line 38
    :goto_2
    aput v15, v10, v14

    move v14, v11

    :cond_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    const/4 v11, 0x0

    goto :goto_1

    .line 39
    :cond_6
    invoke-static {v10, v14}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v0

    const-string v8, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v5, :cond_a

    .line 40
    :goto_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v10, 0x4

    if-ne v5, v10, :cond_7

    goto :goto_3

    :cond_7
    const/4 v10, 0x2

    if-ne v5, v10, :cond_9

    .line 41
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v10, "vector"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 42
    invoke-static/range {p1 .. p4}, Ln3/h0/a/a/g;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Ln3/h0/a/a/g;

    move-result-object v5

    goto :goto_4

    .line 43
    :cond_8
    invoke-static/range {p1 .. p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_4

    .line 44
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-static {v1, v2, v8}, Le/d/c/a/a;->t(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_4
    if-eqz v5, :cond_b

    .line 46
    iget-object v8, v4, Ln3/b/c/a/a;->p:Ln3/b/c/a/a$c;

    .line 47
    invoke-virtual {v8, v5}, Ln3/b/c/a/b$c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v5

    .line 48
    iget-object v10, v8, Ln3/b/c/a/e$a;->J:[[I

    aput-object v0, v10, v5

    .line 49
    iget-object v0, v8, Ln3/b/c/a/a$c;->L:Ln3/g/i;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Ln3/g/i;->i(ILjava/lang/Object;)V

    goto/16 :goto_a

    .line 50
    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    invoke-static {v1, v2, v8}, Le/d/c/a/a;->t(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_c
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "transition"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 53
    sget-object v0, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition:[I

    invoke-static {v7, v3, v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->W0(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    sget v5, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_fromId:I

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 55
    sget v8, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_toId:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 56
    sget v11, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_drawable:I

    invoke-virtual {v0, v11, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    if-lez v11, :cond_d

    .line 57
    invoke-static {}, Ln3/b/f/h0;->d()Ln3/b/f/h0;

    move-result-object v12

    invoke-virtual {v12, v9, v11}, Ln3/b/f/h0;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_5

    :cond_d
    const/4 v11, 0x0

    .line 58
    :goto_5
    sget v12, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_reversible:I

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v0, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v11, :cond_11

    .line 60
    :goto_6
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    const/4 v13, 0x4

    if-ne v11, v13, :cond_e

    goto :goto_6

    :cond_e
    const/4 v13, 0x2

    if-ne v11, v13, :cond_10

    .line 61
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v13, "animated-vector"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 62
    new-instance v11, Ln3/h0/a/a/c;

    const/4 v13, 0x0

    .line 63
    invoke-direct {v11, v9, v13, v13}, Ln3/h0/a/a/c;-><init>(Landroid/content/Context;Ln3/h0/a/a/c$b;Landroid/content/res/Resources;)V

    .line 64
    invoke-virtual {v11, v7, v1, v2, v3}, Ln3/h0/a/a/c;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_7

    .line 65
    :cond_f
    invoke-static/range {p1 .. p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_7

    .line 66
    :cond_10
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-static {v1, v3, v0}, Le/d/c/a/a;->t(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    :goto_7
    if-eqz v11, :cond_14

    if-eq v5, v10, :cond_13

    if-eq v8, v10, :cond_13

    .line 68
    iget-object v0, v4, Ln3/b/c/a/a;->p:Ln3/b/c/a/a$c;

    .line 69
    invoke-virtual {v0, v11}, Ln3/b/c/a/b$c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v7

    .line 70
    invoke-static {v5, v8}, Ln3/b/c/a/a$c;->h(II)J

    move-result-wide v9

    if-eqz v12, :cond_12

    const-wide v13, 0x200000000L

    goto :goto_8

    :cond_12
    const-wide/16 v13, 0x0

    .line 71
    :goto_8
    iget-object v11, v0, Ln3/b/c/a/a$c;->K:Ln3/g/e;

    int-to-long v2, v7

    or-long v15, v2, v13

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v11, v9, v10, v7}, Ln3/g/e;->a(JLjava/lang/Object;)V

    if-eqz v12, :cond_15

    .line 72
    invoke-static {v8, v5}, Ln3/b/c/a/a$c;->h(II)J

    move-result-wide v7

    .line 73
    iget-object v0, v0, Ln3/b/c/a/a$c;->K:Ln3/g/e;

    const-wide v9, 0x100000000L

    or-long/2addr v2, v9

    or-long/2addr v2, v13

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v7, v8, v2}, Ln3/g/e;->a(JLjava/lang/Object;)V

    goto :goto_9

    .line 74
    :cond_13
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    .line 75
    invoke-static {v1, v2, v3}, Le/d/c/a/a;->t(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_14
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-static {v1, v3, v0}, Le/d/c/a/a;->t(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    :goto_9
    move-object/from16 v9, p0

    move-object/from16 v7, p1

    :goto_a
    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    goto/16 :goto_0

    .line 78
    :cond_16
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {v4, v0}, Ln3/b/c/a/a;->onStateChange([I)Z

    return-object v4

    .line 79
    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": invalid animated-selector tag "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b()Ln3/b/c/a/b$c;
    .locals 3

    .line 1
    new-instance v0, Ln3/b/c/a/a$c;

    iget-object v1, p0, Ln3/b/c/a/a;->p:Ln3/b/c/a/a$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Ln3/b/c/a/a$c;-><init>(Ln3/b/c/a/a$c;Ln3/b/c/a/a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public e(Ln3/b/c/a/b$c;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ln3/b/c/a/e;->e(Ln3/b/c/a/b$c;)V

    .line 2
    instance-of v0, p1, Ln3/b/c/a/a$c;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ln3/b/c/a/a$c;

    iput-object p1, p0, Ln3/b/c/a/a;->p:Ln3/b/c/a/a$c;

    :cond_0
    return-void
.end method

.method public f()Ln3/b/c/a/e$a;
    .locals 3

    .line 1
    new-instance v0, Ln3/b/c/a/a$c;

    iget-object v1, p0, Ln3/b/c/a/a;->p:Ln3/b/c/a/a$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Ln3/b/c/a/a$c;-><init>(Ln3/b/c/a/a$c;Ln3/b/c/a/a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/c/a/b;->jumpToCurrentState()V

    .line 2
    iget-object v0, p0, Ln3/b/c/a/a;->q:Ln3/b/c/a/a$g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ln3/b/c/a/a$g;->d()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Ln3/b/c/a/a;->q:Ln3/b/c/a/a$g;

    .line 5
    iget v0, p0, Ln3/b/c/a/a;->r:I

    invoke-virtual {p0, v0}, Ln3/b/c/a/b;->d(I)Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Ln3/b/c/a/a;->r:I

    .line 7
    iput v0, p0, Ln3/b/c/a/a;->s:I

    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/b/c/a/a;->t:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ln3/b/c/a/e;->mutate()Landroid/graphics/drawable/Drawable;

    if-ne p0, p0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/b/c/a/a;->p:Ln3/b/c/a/a$c;

    invoke-virtual {v0}, Ln3/b/c/a/a$c;->e()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ln3/b/c/a/a;->t:Z

    :cond_0
    return-object p0
.end method

.method public onStateChange([I)Z
    .locals 14

    .line 1
    iget-object v0, p0, Ln3/b/c/a/a;->p:Ln3/b/c/a/a$c;

    .line 2
    invoke-virtual {v0, p1}, Ln3/b/c/a/e$a;->g([I)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v0, v1}, Ln3/b/c/a/e$a;->g([I)I

    move-result v1

    .line 4
    :goto_0
    iget v0, p0, Ln3/b/c/a/b;->g:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_b

    .line 5
    iget-object v4, p0, Ln3/b/c/a/a;->q:Ln3/b/c/a/a$g;

    if-eqz v4, :cond_3

    .line 6
    iget v0, p0, Ln3/b/c/a/a;->r:I

    if-ne v1, v0, :cond_1

    :goto_1
    move v0, v2

    goto/16 :goto_6

    .line 7
    :cond_1
    iget v0, p0, Ln3/b/c/a/a;->s:I

    if-ne v1, v0, :cond_2

    invoke-virtual {v4}, Ln3/b/c/a/a$g;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v4}, Ln3/b/c/a/a$g;->b()V

    .line 9
    iget v0, p0, Ln3/b/c/a/a;->s:I

    iput v0, p0, Ln3/b/c/a/a;->r:I

    .line 10
    iput v1, p0, Ln3/b/c/a/a;->s:I

    goto :goto_1

    .line 11
    :cond_2
    iget v0, p0, Ln3/b/c/a/a;->r:I

    .line 12
    invoke-virtual {v4}, Ln3/b/c/a/a$g;->d()V

    :cond_3
    const/4 v4, 0x0

    .line 13
    iput-object v4, p0, Ln3/b/c/a/a;->q:Ln3/b/c/a/a$g;

    const/4 v4, -0x1

    .line 14
    iput v4, p0, Ln3/b/c/a/a;->s:I

    .line 15
    iput v4, p0, Ln3/b/c/a/a;->r:I

    .line 16
    iget-object v4, p0, Ln3/b/c/a/a;->p:Ln3/b/c/a/a$c;

    .line 17
    invoke-virtual {v4, v0}, Ln3/b/c/a/a$c;->i(I)I

    move-result v5

    .line 18
    invoke-virtual {v4, v1}, Ln3/b/c/a/a$c;->i(I)I

    move-result v6

    if-eqz v6, :cond_a

    if-nez v5, :cond_4

    goto/16 :goto_5

    .line 19
    :cond_4
    invoke-static {v5, v6}, Ln3/b/c/a/a$c;->h(II)J

    move-result-wide v7

    .line 20
    iget-object v9, v4, Ln3/b/c/a/a$c;->K:Ln3/g/e;

    const-wide/16 v10, -0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v7, v8, v12}, Ln3/g/e;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-int v7, v7

    if-gez v7, :cond_5

    goto/16 :goto_5

    .line 21
    :cond_5
    invoke-static {v5, v6}, Ln3/b/c/a/a$c;->h(II)J

    move-result-wide v8

    .line 22
    iget-object v12, v4, Ln3/b/c/a/a$c;->K:Ln3/g/e;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v8, v9, v13}, Ln3/g/e;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide v12, 0x200000000L

    and-long/2addr v8, v12

    const-wide/16 v12, 0x0

    cmp-long v8, v8, v12

    if-eqz v8, :cond_6

    move v8, v2

    goto :goto_2

    :cond_6
    move v8, v3

    .line 23
    :goto_2
    invoke-virtual {p0, v7}, Ln3/b/c/a/b;->d(I)Z

    .line 24
    iget-object v7, p0, Ln3/b/c/a/b;->c:Landroid/graphics/drawable/Drawable;

    .line 25
    instance-of v9, v7, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v9, :cond_8

    .line 26
    invoke-static {v5, v6}, Ln3/b/c/a/a$c;->h(II)J

    move-result-wide v5

    .line 27
    iget-object v4, v4, Ln3/b/c/a/a$c;->K:Ln3/g/e;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v5, v6, v9}, Ln3/g/e;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide v9, 0x100000000L

    and-long/2addr v4, v9

    cmp-long v4, v4, v12

    if-eqz v4, :cond_7

    move v4, v2

    goto :goto_3

    :cond_7
    move v4, v3

    .line 28
    :goto_3
    new-instance v5, Ln3/b/c/a/a$e;

    check-cast v7, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5, v7, v4, v8}, Ln3/b/c/a/a$e;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    goto :goto_4

    .line 29
    :cond_8
    instance-of v4, v7, Ln3/h0/a/a/c;

    if-eqz v4, :cond_9

    .line 30
    new-instance v5, Ln3/b/c/a/a$d;

    check-cast v7, Ln3/h0/a/a/c;

    invoke-direct {v5, v7}, Ln3/b/c/a/a$d;-><init>(Ln3/h0/a/a/c;)V

    goto :goto_4

    .line 31
    :cond_9
    instance-of v4, v7, Landroid/graphics/drawable/Animatable;

    if-eqz v4, :cond_a

    .line 32
    new-instance v5, Ln3/b/c/a/a$b;

    check-cast v7, Landroid/graphics/drawable/Animatable;

    invoke-direct {v5, v7}, Ln3/b/c/a/a$b;-><init>(Landroid/graphics/drawable/Animatable;)V

    .line 33
    :goto_4
    invoke-virtual {v5}, Ln3/b/c/a/a$g;->c()V

    .line 34
    iput-object v5, p0, Ln3/b/c/a/a;->q:Ln3/b/c/a/a$g;

    .line 35
    iput v0, p0, Ln3/b/c/a/a;->s:I

    .line 36
    iput v1, p0, Ln3/b/c/a/a;->r:I

    goto/16 :goto_1

    :cond_a
    :goto_5
    move v0, v3

    :goto_6
    if-nez v0, :cond_c

    .line 37
    invoke-virtual {p0, v1}, Ln3/b/c/a/b;->d(I)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    move v2, v3

    .line 38
    :cond_c
    :goto_7
    iget-object v0, p0, Ln3/b/c/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 39
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v2, p1

    :cond_d
    return v2
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Ln3/b/c/a/b;->setVisible(ZZ)Z

    move-result v0

    .line 2
    iget-object v1, p0, Ln3/b/c/a/a;->q:Ln3/b/c/a/a$g;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v1}, Ln3/b/c/a/a$g;->c()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Ln3/b/c/a/a;->jumpToCurrentState()V

    :cond_2
    :goto_0
    return v0
.end method
