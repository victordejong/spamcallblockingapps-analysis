.class public abstract Le/h/a/c/q0/e;
.super Le/h/a/c/q0/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/h/a/c/q0/b;-><init>()V

    return-void
.end method


# virtual methods
.method public dB(Landroid/widget/Button;Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x8

    if-eqz v2, :cond_4

    const/4 v4, 0x0

    .line 1
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 2
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object v5, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;->h:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v5, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;->i:Ljava/lang/String;

    .line 6
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 7
    new-instance v5, Le/h/a/c/q0/a$a;

    invoke-direct {v5, v0}, Le/h/a/c/q0/a$a;-><init>(Le/h/a/c/q0/a;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v5, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v5, :cond_2

    .line 10
    iget-object v5, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;->d:Ljava/lang/String;

    .line 11
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/high16 v9, 0x43f00000    # 480.0f

    .line 12
    iget-object v10, v0, Le/h/a/c/q0/a;->c:Landroid/content/Context;

    const-string v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    if-nez v10, :cond_0

    move v10, v4

    goto :goto_0

    .line 13
    :cond_0
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1e

    if-lt v11, v12, :cond_1

    .line 14
    iget-object v10, v0, Le/h/a/c/q0/a;->c:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 15
    iget v10, v10, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_0

    .line 16
    :cond_1
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 17
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 18
    iget v10, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_0
    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v9, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v9, v5

    .line 19
    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v10, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-array v11, v3, [F

    aput v9, v11, v4

    aput v9, v11, v8

    aput v9, v11, v6

    const/4 v12, 0x3

    aput v9, v11, v12

    const/4 v13, 0x4

    aput v9, v11, v13

    const/4 v14, 0x5

    aput v9, v11, v14

    const/4 v15, 0x6

    aput v9, v11, v15

    const/16 v16, 0x7

    aput v9, v11, v16

    new-array v15, v3, [F

    fill-array-data v15, :array_0

    invoke-direct {v10, v11, v7, v15}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v5, v10}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 20
    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v10

    .line 21
    iget-object v11, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;->b:Ljava/lang/String;

    .line 22
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v10

    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    new-instance v10, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v11, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-array v15, v3, [F

    aput v9, v15, v4

    aput v9, v15, v8

    aput v9, v15, v6

    aput v9, v15, v12

    aput v9, v15, v13

    aput v9, v15, v14

    const/16 v17, 0x6

    aput v9, v15, v17

    aput v9, v15, v16

    new-array v3, v3, [F

    aput v9, v3, v4

    aput v9, v3, v8

    aput v9, v3, v6

    aput v9, v3, v12

    aput v9, v3, v13

    aput v9, v3, v14

    aput v9, v3, v17

    aput v9, v3, v16

    invoke-direct {v11, v15, v7, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v10, v11}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object v7, v10

    goto :goto_1

    :cond_2
    move-object v5, v7

    .line 26
    :goto_1
    iget-object v3, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;->c:Ljava/lang/String;

    .line 27
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v7, :cond_3

    .line 28
    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 29
    iget-object v2, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;->c:Ljava/lang/String;

    .line 30
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    .line 32
    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_3
    if-eqz v5, :cond_5

    new-array v2, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v7, v2, v4

    aput-object v5, v2, v8

    .line 33
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 34
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 35
    :cond_4
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
