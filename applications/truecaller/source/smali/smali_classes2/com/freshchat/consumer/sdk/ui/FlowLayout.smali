.class public Lcom/freshchat/consumer/sdk/ui/FlowLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final md:Ljava/lang/String;


# instance fields
.field private me:Z

.field private mf:I

.field private mg:I

.field private mh:I

.field private mi:F

.field private mj:F

.field private mk:Z

.field private ml:I

.field private mm:I

.field private mn:I

.field private mo:I

.field private mp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->md:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/freshchat/consumer/sdk/ui/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->me:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mf:I

    iput v1, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mg:I

    const v2, -0x10002

    iput v2, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mh:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mi:F

    iput v3, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mj:F

    iput-boolean v1, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mk:Z

    const v4, 0x7fffffff

    iput v4, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->ml:I

    const/4 v5, -0x1

    iput v5, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mm:I

    const/high16 v6, -0x10000

    iput v6, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mn:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mp:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mq:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mr:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->ms:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v7, Lcom/freshchat/consumer/sdk/R$styleable;->freshchatFlowLayout:[I

    invoke-virtual {p1, p2, v7, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/freshchat/consumer/sdk/R$styleable;->freshchatFlowLayout_freshchatFlFlow:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->me:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget p2, Lcom/freshchat/consumer/sdk/R$styleable;->freshchatFlowLayout_freshchatFlChildSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mf:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget p2, Lcom/freshchat/consumer/sdk/R$styleable;->freshchatFlowLayout_freshchatFlChildSpacing:I

    invoke-direct {p0, v3}, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->a(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mf:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    sget p2, Lcom/freshchat/consumer/sdk/R$styleable;->freshchatFlowLayout_freshchatFlMinChildSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mg:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    :try_start_4
    sget p2, Lcom/freshchat/consumer/sdk/R$styleable;->freshchatFlowLayout_freshchatFlMinChildSpacing:I

    invoke-direct {p0, v3}, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->a(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mg:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    sget p2, Lcom/freshchat/consumer/sdk/R$styleable;->freshchatFlowLayout_freshchatFlChildSpacingForLastRow:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mh:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    :try_start_6
    sget p2, Lcom/freshchat/consumer/sdk/R$styleable;->freshchatFlowLayout_freshchatFlChildSpacingForLastRow:I

    invoke-direct {p0, v3}, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->a(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mh:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    :try_start_7
    sget p2, Lcom/freshchat/consumer/sdk/R$styleable;->freshchatFlowLayout_freshchatFlRowSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mi:F
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catch_3
    :try_start_8
    sget p2, Lcom/freshchat/consumer/sdk/R$styleable;->freshchatFlowLayout_freshchatFlRowSpacing:I

    invoke-direct {p0, v3}, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->a(F)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mi:F

    :goto_3
    sget p2, Lcom/freshchat/consumer/sdk/R$styleable;->freshchatFlowLayout_freshchatFlMaxRows:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->ml:I

    sget p2, Lcom/freshchat/consumer/sdk/R$styleable;->freshchatFlowLayout_freshchatFlRtl:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mk:Z

    sget p2, Lcom/freshchat/consumer/sdk/R$styleable;->freshchatFlowLayout_android_gravity:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mm:I

    sget p2, Lcom/freshchat/consumer/sdk/R$styleable;->freshchatFlowLayout_freshchatFlRowVerticalGravity:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mn:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method private a(F)F
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private a(IIII)I
    .locals 3

    iget v0, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mf:I

    const/4 v1, 0x0

    const/high16 v2, -0x10000

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->ms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->ms:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sub-int/2addr p2, p3

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mr:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int v1, p2, p1

    goto :goto_0

    :cond_2
    sub-int/2addr p2, p3

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mr:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p2, p1

    div-int/lit8 v1, p2, 0x2

    :cond_3
    :goto_0
    return v1
.end method

.method private b(IIII)F
    .locals 1

    const/high16 v0, -0x10000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    if-le p4, p1, :cond_0

    sub-int/2addr p2, p3

    sub-int/2addr p4, p1

    div-int/2addr p2, p4

    int-to-float p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    :goto_0
    return p1
.end method


# virtual methods
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getChildSpacing()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mf:I

    return v0
.end method

.method public getChildSpacingForLastRow()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mh:I

    return v0
.end method

.method public getMaxRows()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->ml:I

    return v0
.end method

.method public getMinChildSpacing()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mg:I

    return v0
.end method

.method public getRowSpacing()F
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mi:F

    return v0
.end method

.method public getRowsCount()I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->ms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 22

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    iget-boolean v5, v0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mk:Z

    if-eqz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    iget v6, v0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mm:I

    and-int/lit8 v7, v6, 0x70

    and-int/lit8 v6, v6, 0x7

    const/16 v8, 0x50

    const/16 v9, 0x10

    if-eq v7, v9, :cond_2

    if-eq v7, v8, :cond_1

    goto :goto_2

    :cond_1
    sub-int v7, p5, p3

    sub-int/2addr v7, v3

    sub-int/2addr v7, v4

    iget v4, v0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mo:I

    sub-int/2addr v7, v4

    goto :goto_1

    :cond_2
    sub-int v7, p5, p3

    sub-int/2addr v7, v3

    sub-int/2addr v7, v4

    iget v4, v0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mo:I

    sub-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x2

    :goto_1
    add-int/2addr v3, v7

    :goto_2
    add-int v4, v1, v2

    sub-int v7, p4, p2

    const/4 v10, 0x0

    invoke-direct {v0, v6, v7, v4, v10}, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->a(IIII)I

    move-result v11

    add-int/2addr v5, v11

    iget v11, v0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mn:I

    and-int/lit8 v11, v11, 0x70

    iget-object v12, v0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->ms:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move v13, v10

    move v14, v13

    :goto_3
    if-ge v13, v12, :cond_a

    iget-object v15, v0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->ms:Ljava/util/List;

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iget-object v10, v0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mq:Ljava/util/List;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v9, v0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mp:Ljava/util/List;

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const/4 v8, 0x0

    :goto_4
    move/from16 v16, v1

    if-ge v8, v15, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v14, v1, :cond_8

    add-int/lit8 v1, v14, 0x1

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move/from16 p2, v1

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 p3, v12

    const/16 v12, 0x8

    if-ne v1, v12, :cond_3

    move/from16 v14, p2

    move/from16 v12, p3

    move/from16 v1, v16

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v12, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v12, :cond_4

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v12, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 p4, v8

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 p5, v8

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v17, v4

    move/from16 v21, v12

    move/from16 v12, p5

    move/from16 p5, v15

    move/from16 v15, v21

    goto :goto_5

    :cond_4
    move/from16 p4, v8

    move/from16 v17, v4

    move/from16 p5, v15

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_5
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    add-int v19, v3, v8

    move/from16 v20, v6

    const/16 v6, 0x50

    if-ne v11, v6, :cond_5

    add-int v8, v3, v10

    sub-int/2addr v8, v1

    sub-int v19, v8, v18

    move/from16 v1, v19

    const/16 v6, 0x10

    goto :goto_6

    :cond_5
    const/16 v6, 0x10

    if-ne v11, v6, :cond_6

    sub-int v8, v10, v8

    sub-int/2addr v8, v1

    sub-int v8, v8, v18

    div-int/lit8 v8, v8, 0x2

    add-int v19, v8, v19

    :cond_6
    move/from16 v1, v19

    :goto_6
    add-int v8, v1, v18

    iget-boolean v6, v0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mk:Z

    if-eqz v6, :cond_7

    sub-int v6, v5, v12

    move/from16 v18, v11

    sub-int v11, v6, v4

    invoke-virtual {v14, v11, v1, v6, v8}, Landroid/view/View;->layout(IIII)V

    int-to-float v1, v5

    int-to-float v4, v4

    add-float/2addr v4, v9

    int-to-float v5, v15

    add-float/2addr v4, v5

    int-to-float v5, v12

    add-float/2addr v4, v5

    sub-float/2addr v1, v4

    float-to-int v1, v1

    goto :goto_7

    :cond_7
    move/from16 v18, v11

    add-int v6, v5, v15

    add-int v11, v6, v4

    invoke-virtual {v14, v6, v1, v11, v8}, Landroid/view/View;->layout(IIII)V

    int-to-float v1, v5

    int-to-float v4, v4

    add-float/2addr v4, v9

    int-to-float v5, v15

    add-float/2addr v4, v5

    int-to-float v5, v12

    add-float/2addr v4, v5

    add-float/2addr v4, v1

    float-to-int v1, v4

    :goto_7
    move v5, v1

    move/from16 v14, p2

    move/from16 v12, p3

    move/from16 v8, p4

    move/from16 v15, p5

    move/from16 v1, v16

    move/from16 v4, v17

    move/from16 v11, v18

    move/from16 v6, v20

    goto/16 :goto_4

    :cond_8
    move/from16 v17, v4

    move/from16 v20, v6

    move/from16 v18, v11

    move/from16 p3, v12

    iget-boolean v1, v0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mk:Z

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    goto :goto_8

    :cond_9
    move/from16 v1, v16

    :goto_8
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v17

    move/from16 v4, v20

    invoke-direct {v0, v4, v7, v5, v13}, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->a(IIII)I

    move-result v6

    add-int/2addr v1, v6

    int-to-float v3, v3

    int-to-float v6, v10

    iget v8, v0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mj:F

    add-float/2addr v6, v8

    add-float/2addr v6, v3

    float-to-int v3, v6

    move/from16 v12, p3

    move v6, v4

    move v4, v5

    move/from16 v11, v18

    const/16 v8, 0x50

    const/16 v9, 0x10

    const/4 v10, 0x0

    move v5, v1

    move/from16 v1, v16

    goto/16 :goto_3

    :cond_a
    return-void
.end method

.method public onMeasure(II)V
    .locals 26

    move-object/from16 v6, p0

    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    iget-object v0, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->ms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int v12, v0, v1

    if-eqz v8, :cond_0

    iget-boolean v0, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->me:Z

    if-eqz v0, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    iget v0, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mf:I

    const/high16 v5, -0x10000

    if-ne v0, v5, :cond_1

    if-nez v8, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-ne v4, v5, :cond_2

    iget v0, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mg:I

    int-to-float v0, v0

    goto :goto_2

    :cond_2
    int-to-float v0, v4

    :goto_2
    move v3, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_3
    if-ge v2, v11, :cond_7

    move/from16 v18, v3

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    move/from16 v20, v0

    const/16 v0, 0x8

    if-ne v5, v0, :cond_3

    move/from16 v0, p1

    move/from16 v23, v2

    move v5, v4

    move/from16 v21, v8

    move/from16 v24, v10

    move/from16 v22, v11

    move/from16 v10, v18

    const/high16 v8, -0x10000

    move v2, v1

    move/from16 v18, v7

    move/from16 v7, v20

    move/from16 v1, p2

    move/from16 v20, v9

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_4

    const/16 v21, 0x0

    move/from16 v22, v11

    move/from16 v11, v20

    move-object/from16 v0, p0

    move/from16 v20, v9

    move v9, v1

    move-object v1, v3

    move/from16 v23, v2

    move/from16 v2, p1

    move/from16 v24, v10

    move/from16 v10, v18

    move/from16 v18, v7

    move-object v7, v3

    move/from16 v3, v21

    move/from16 v25, v4

    move/from16 v4, p2

    move-object/from16 v19, v5

    move/from16 v21, v8

    const/high16 v8, -0x10000

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    move-object/from16 v5, v19

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    move v2, v0

    move v3, v1

    move/from16 v0, p1

    move/from16 v1, p2

    goto :goto_4

    :cond_4
    move/from16 v0, p1

    move/from16 v23, v2

    move/from16 v25, v4

    move/from16 v21, v8

    move/from16 v24, v10

    move/from16 v22, v11

    move/from16 v10, v18

    move/from16 v11, v20

    const/high16 v8, -0x10000

    move/from16 v18, v7

    move/from16 v20, v9

    move v9, v1

    move-object v7, v3

    move/from16 v1, p2

    invoke-virtual {v6, v7, v0, v1}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    if-eqz v15, :cond_6

    add-int v3, v14, v2

    if-le v3, v12, :cond_6

    iget-object v3, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mp:Ljava/util/List;

    move/from16 v5, v25

    invoke-direct {v6, v5, v12, v9, v11}, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->b(IIII)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->ms:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mq:Ljava/util/List;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mr:Ljava/util/List;

    float-to-int v7, v10

    sub-int v9, v14, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mp:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v9, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->ml:I

    if-gt v3, v9, :cond_5

    move/from16 v3, v17

    add-int v16, v16, v3

    :cond_5
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int v14, v2, v7

    move/from16 v17, v4

    const/4 v7, 0x1

    goto :goto_5

    :cond_6
    move/from16 v3, v17

    move/from16 v5, v25

    add-int/lit8 v7, v11, 0x1

    int-to-float v11, v14

    int-to-float v14, v2

    add-float/2addr v14, v10

    add-float/2addr v14, v11

    float-to-int v14, v14

    add-int/2addr v2, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    :goto_5
    add-int/lit8 v3, v23, 0x1

    move v1, v2

    move v2, v3

    move v4, v5

    move v0, v7

    move v5, v8

    move v3, v10

    move/from16 v7, v18

    move/from16 v9, v20

    move/from16 v8, v21

    move/from16 v11, v22

    move/from16 v10, v24

    goto/16 :goto_3

    :cond_7
    move v11, v0

    move/from16 v18, v7

    move/from16 v21, v8

    move/from16 v20, v9

    move/from16 v24, v10

    move v9, v1

    move v10, v3

    move v8, v5

    move/from16 v3, v17

    move v5, v4

    iget v0, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mh:I

    const v1, -0x10001

    if-ne v0, v1, :cond_8

    iget-object v0, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_9

    iget-object v0, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_6

    :cond_8
    const v1, -0x10002

    if-eq v0, v1, :cond_9

    iget-object v1, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mp:Ljava/util/List;

    invoke-direct {v6, v0, v12, v9, v11}, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->b(IIII)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    iget-object v0, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mp:Ljava/util/List;

    invoke-direct {v6, v5, v12, v9, v11}, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->b(IIII)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    iget-object v0, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->ms:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mq:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mr:Ljava/util/List;

    float-to-int v1, v10

    sub-int v1, v14, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->ml:I

    if-gt v0, v1, :cond_a

    add-int v16, v16, v3

    :cond_a
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne v5, v8, :cond_b

    move/from16 v0, v18

    move v1, v0

    goto :goto_8

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v1

    move/from16 v1, v18

    if-nez v21, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v2

    add-int v3, v3, v16

    iget-object v2, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mp:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v4, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->ml:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v4, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mi:F

    const/high16 v5, -0x38800000    # -65536.0f

    cmpl-float v7, v4, v5

    const/4 v8, 0x0

    if-nez v7, :cond_d

    if-nez v24, :cond_d

    move v4, v8

    :cond_d
    cmpl-float v5, v4, v5

    if-nez v5, :cond_f

    const/4 v5, 0x1

    if-le v2, v5, :cond_e

    sub-int v9, v20, v3

    sub-int/2addr v2, v5

    div-int/2addr v9, v2

    int-to-float v2, v9

    iput v2, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mj:F

    goto :goto_9

    :cond_e
    iput v8, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mj:F

    :goto_9
    move/from16 v3, v20

    move v4, v3

    goto :goto_b

    :cond_f
    const/4 v5, 0x1

    iput v4, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mj:F

    if-le v2, v5, :cond_11

    int-to-float v3, v3

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    float-to-int v2, v4

    if-nez v24, :cond_10

    move v3, v2

    goto :goto_a

    :cond_10
    move/from16 v4, v20

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    goto :goto_b

    :cond_11
    :goto_a
    move/from16 v4, v20

    :goto_b
    iput v3, v6, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mo:I

    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v5, v21

    if-ne v5, v2, :cond_12

    move v7, v1

    goto :goto_c

    :cond_12
    move v7, v0

    :goto_c
    move/from16 v0, v24

    if-ne v0, v2, :cond_13

    move v9, v4

    goto :goto_d

    :cond_13
    move v9, v3

    :goto_d
    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setChildSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mf:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setChildSpacingForLastRow(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mh:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setFlow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->me:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mm:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mm:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMaxRows(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->ml:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setMinChildSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mg:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setRowSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mi:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setRowVerticalGravity(I)V
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mn:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mn:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setRtl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/ui/FlowLayout;->mk:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
