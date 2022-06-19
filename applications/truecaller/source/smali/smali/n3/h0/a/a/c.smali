.class public Ln3/h0/a/a/c;
.super Ln3/h0/a/a/f;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/h0/a/a/c$b;,
        Ln3/h0/a/a/c$c;
    }
.end annotation


# instance fields
.field public b:Ln3/h0/a/a/c$b;

.field public c:Landroid/content/Context;

.field public d:Landroid/animation/ArgbEvaluator;

.field public final e:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0}, Ln3/h0/a/a/c;-><init>(Landroid/content/Context;Ln3/h0/a/a/c$b;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ln3/h0/a/a/c$b;Landroid/content/res/Resources;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ln3/h0/a/a/f;-><init>()V

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Ln3/h0/a/a/c;->d:Landroid/animation/ArgbEvaluator;

    .line 4
    new-instance p3, Ln3/h0/a/a/c$a;

    invoke-direct {p3, p0}, Ln3/h0/a/a/c$a;-><init>(Ln3/h0/a/a/c;)V

    iput-object p3, p0, Ln3/h0/a/a/c;->e:Landroid/graphics/drawable/Drawable$Callback;

    .line 5
    iput-object p1, p0, Ln3/h0/a/a/c;->c:Landroid/content/Context;

    .line 6
    new-instance p1, Ln3/h0/a/a/c$b;

    invoke-direct {p1, p2, p3, p2}, Ln3/h0/a/a/c$b;-><init>(Ln3/h0/a/a/c$b;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object p1, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->b:Ln3/h0/a/a/g;

    invoke-virtual {v0, p1}, Ln3/h0/a/a/g;->draw(Landroid/graphics/Canvas;)V

    .line 4
    iget-object p1, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object p1, p1, Ln3/h0/a/a/c$b;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->b:Ln3/h0/a/a/g;

    invoke-virtual {v0}, Ln3/h0/a/a/g;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget v1, v1, Ln3/h0/a/a/c$b;->a:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->b:Ln3/h0/a/a/g;

    invoke-virtual {v0}, Ln3/h0/a/a/g;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Ln3/h0/a/a/c$c;

    iget-object v1, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/h0/a/a/c$c;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->b:Ln3/h0/a/a/g;

    invoke-virtual {v0}, Ln3/h0/a/a/g;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->b:Ln3/h0/a/a/g;

    invoke-virtual {v0}, Ln3/h0/a/a/g;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->b:Ln3/h0/a/a/g;

    invoke-virtual {v0}, Ln3/h0/a/a/g;->getOpacity()I

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, p1, p2, p3, v0}, Ln3/h0/a/a/c;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v5, v1, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    move-object/from16 v6, p2

    .line 2
    invoke-virtual {v5, v0, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    :cond_0
    move-object/from16 v6, p2

    .line 3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    :goto_0
    if-eq v5, v8, :cond_e

    .line 5
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-ge v9, v7, :cond_1

    const/4 v9, 0x3

    if-eq v5, v9, :cond_e

    :cond_1
    const/4 v9, 0x2

    if-ne v5, v9, :cond_d

    .line 6
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v10, "animated-vector"

    .line 7
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/16 v11, 0x18

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v10, :cond_7

    .line 8
    sget-object v5, Ln3/h0/a/a/a;->e:[I

    .line 9
    invoke-static {v0, v3, v2, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->W0(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 10
    invoke-virtual {v5, v13, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    if-eqz v10, :cond_6

    .line 11
    sget-object v14, Ln3/h0/a/a/g;->j:Landroid/graphics/PorterDuff$Mode;

    if-lt v4, v11, :cond_2

    .line 12
    new-instance v9, Ln3/h0/a/a/g;

    invoke-direct {v9}, Ln3/h0/a/a/g;-><init>()V

    .line 13
    sget-object v11, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    .line 14
    invoke-virtual {v0, v10, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 15
    iput-object v10, v9, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    .line 16
    new-instance v10, Ln3/h0/a/a/g$i;

    iget-object v11, v9, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    .line 17
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v11

    invoke-direct {v10, v11}, Ln3/h0/a/a/g$i;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    goto :goto_2

    .line 18
    :cond_2
    :try_start_0
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 19
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v11

    .line 20
    :goto_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    if-eq v14, v9, :cond_3

    if-eq v14, v8, :cond_3

    goto :goto_1

    :cond_3
    if-ne v14, v9, :cond_4

    .line 21
    invoke-static {v0, v10, v11, v3}, Ln3/h0/a/a/g;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Ln3/h0/a/a/g;

    move-result-object v9

    goto :goto_2

    .line 22
    :cond_4
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v10, "No start tag found"

    invoke-direct {v9, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object v9, v12

    .line 23
    :goto_2
    iput-boolean v13, v9, Ln3/h0/a/a/g;->f:Z

    .line 24
    iget-object v10, v1, Ln3/h0/a/a/c;->e:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 25
    iget-object v10, v1, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v10, v10, Ln3/h0/a/a/c$b;->b:Ln3/h0/a/a/g;

    if-eqz v10, :cond_5

    .line 26
    invoke-virtual {v10, v12}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 27
    :cond_5
    iget-object v10, v1, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iput-object v9, v10, Ln3/h0/a/a/c$b;->b:Ln3/h0/a/a/g;

    .line 28
    :cond_6
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_9

    :cond_7
    const-string v9, "target"

    .line 29
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 30
    sget-object v5, Ln3/h0/a/a/a;->f:[I

    .line 31
    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 32
    invoke-virtual {v5, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 33
    invoke-virtual {v5, v8, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    if-eqz v10, :cond_c

    .line 34
    iget-object v13, v1, Ln3/h0/a/a/c;->c:Landroid/content/Context;

    if-eqz v13, :cond_b

    if-lt v4, v11, :cond_8

    .line 35
    invoke-static {v13, v10}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v10

    goto :goto_3

    .line 36
    :cond_8
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v15

    const-string v11, "Can\'t load animation resource ID #0x"

    .line 37
    :try_start_1
    invoke-virtual {v14, v10}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v21
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    :try_start_2
    invoke-static/range {v21 .. v21}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v16, v21

    invoke-static/range {v13 .. v20}, Ln3/h0/a/a/d;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object v10
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->close()V

    .line 40
    :goto_3
    iget-object v11, v1, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v11, v11, Ln3/h0/a/a/c$b;->b:Ln3/h0/a/a/g;

    .line 41
    iget-object v11, v11, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    iget-object v11, v11, Ln3/h0/a/a/g$h;->b:Ln3/h0/a/a/g$g;

    iget-object v11, v11, Ln3/h0/a/a/g$g;->p:Ln3/g/a;

    .line 42
    invoke-virtual {v11, v9, v12}, Ln3/g/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 43
    invoke-virtual {v10, v11}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 44
    iget-object v11, v1, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v12, v11, Ln3/h0/a/a/c$b;->d:Ljava/util/ArrayList;

    if-nez v12, :cond_9

    .line 45
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v11, Ln3/h0/a/a/c$b;->d:Ljava/util/ArrayList;

    .line 46
    iget-object v11, v1, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    new-instance v12, Ln3/g/a;

    invoke-direct {v12}, Ln3/g/a;-><init>()V

    iput-object v12, v11, Ln3/h0/a/a/c$b;->e:Ln3/g/a;

    .line 47
    :cond_9
    iget-object v11, v1, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v11, v11, Ln3/h0/a/a/c$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v11, v1, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v11, v11, Ln3/h0/a/a/c$b;->e:Ln3/g/a;

    invoke-virtual {v11, v10, v9}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v12, v21

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v12, v21

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    .line 49
    :goto_4
    :try_start_3
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 52
    throw v2

    :catch_4
    move-exception v0

    .line 53
    :goto_5
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 56
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_6
    move-object/from16 v21, v12

    :goto_7
    if-eqz v21, :cond_a

    .line 57
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->close()V

    .line 58
    :cond_a
    throw v0

    .line 59
    :cond_b
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Context can\'t be null when inflating animators"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_c
    :goto_8
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    :cond_d
    :goto_9
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto/16 :goto_0

    .line 63
    :cond_e
    iget-object v0, v1, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    .line 64
    iget-object v2, v0, Ln3/h0/a/a/c$b;->c:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_f

    .line 65
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Ln3/h0/a/a/c$b;->c:Landroid/animation/AnimatorSet;

    .line 66
    :cond_f
    iget-object v2, v0, Ln3/h0/a/a/c$b;->c:Landroid/animation/AnimatorSet;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->b:Ln3/h0/a/a/g;

    invoke-virtual {v0}, Ln3/h0/a/a/g;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->b:Ln3/h0/a/a/g;

    invoke-virtual {v0}, Ln3/h0/a/a/g;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->b:Ln3/h0/a/a/g;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onLevelChange(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->b:Ln3/h0/a/a/g;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->b:Ln3/h0/a/a/g;

    invoke-virtual {v0, p1}, Ln3/h0/a/a/f;->setState([I)Z

    move-result p1

    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->b:Ln3/h0/a/a/g;

    invoke-virtual {v0, p1}, Ln3/h0/a/a/g;->setAlpha(I)V

    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->b:Ln3/h0/a/a/g;

    .line 4
    iget-object v1, v0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    iput-boolean p1, v0, Ln3/h0/a/a/g$h;->e:Z

    :goto_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->b:Ln3/h0/a/a/g;

    .line 4
    iget-object v1, v0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 6
    :cond_1
    iput-object p1, v0, Ln3/h0/a/a/g;->d:Landroid/graphics/ColorFilter;

    .line 7
    invoke-virtual {v0}, Ln3/h0/a/a/g;->invalidateSelf()V

    :goto_0
    return-void
.end method

.method public setTint(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->w1(Landroid/graphics/drawable/Drawable;I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->b:Ln3/h0/a/a/g;

    invoke-virtual {v0, p1}, Ln3/h0/a/a/g;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->x1(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->b:Ln3/h0/a/a/g;

    invoke-virtual {v0, p1}, Ln3/h0/a/a/g;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->y1(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->b:Ln3/h0/a/a/g;

    invoke-virtual {v0, p1}, Ln3/h0/a/a/g;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->b:Ln3/h0/a/a/g;

    invoke-virtual {v0, p1, p2}, Ln3/h0/a/a/g;->setVisible(ZZ)Z

    .line 4
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/c;->b:Ln3/h0/a/a/c$b;

    iget-object v0, v0, Ln3/h0/a/a/c$b;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    return-void
.end method
