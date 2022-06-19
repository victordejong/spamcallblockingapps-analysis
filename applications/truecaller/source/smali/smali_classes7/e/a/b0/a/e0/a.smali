.class public final Le/a/b0/a/e0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/a/b0/a/e0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/b0/a/e0/a;

    invoke-direct {v0}, Le/a/b0/a/e0/a;-><init>()V

    sput-object v0, Le/a/b0/a/e0/a;->a:Le/a/b0/a/e0/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Le/a/b0/a/e0/a;Landroid/view/ViewGroup;Lcom/truecaller/common/ui/tooltip/TooltipDirection;ILandroid/view/View;FLandroid/content/Context;IZLs1/z/b/a;I)Z
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "parent.context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v10, v2

    goto :goto_1

    :cond_1
    move/from16 v10, p7

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    move v11, v2

    goto :goto_2

    :cond_2
    move/from16 v11, p8

    :goto_2
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v12, p9

    .line 2
    invoke-virtual/range {v3 .. v12}, Le/a/b0/a/e0/a;->a(Landroid/view/ViewGroup;Lcom/truecaller/common/ui/tooltip/TooltipDirection;ILandroid/view/View;FLandroid/content/Context;IZLs1/z/b/a;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Lcom/truecaller/common/ui/tooltip/TooltipDirection;ILandroid/view/View;FLandroid/content/Context;IZLs1/z/b/a;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/truecaller/common/ui/tooltip/TooltipDirection;",
            "I",
            "Landroid/view/View;",
            "F",
            "Landroid/content/Context;",
            "IZ",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v6, p6

    const-string v0, "parent"

    move-object v1, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    move-object v2, p2

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dismissListener"

    move-object/from16 v9, p9

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, p3

    .line 1
    invoke-virtual {v6, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "context.getString(textRes)"

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v4, p4

    move v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    .line 2
    invoke-virtual/range {v0 .. v9}, Le/a/b0/a/e0/a;->b(Landroid/view/ViewGroup;Lcom/truecaller/common/ui/tooltip/TooltipDirection;Ljava/lang/String;Landroid/view/View;FLandroid/content/Context;IZLs1/z/b/a;)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/ViewGroup;Lcom/truecaller/common/ui/tooltip/TooltipDirection;Ljava/lang/String;Landroid/view/View;FLandroid/content/Context;IZLs1/z/b/a;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/truecaller/common/ui/tooltip/TooltipDirection;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "F",
            "Landroid/content/Context;",
            "IZ",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dismissListener"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/b0/a/e0/a;->d(Landroid/view/ViewGroup;)V

    .line 2
    new-instance v0, Le/a/b0/a/e0/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v0, p6, v1, v2, v3}, Le/a/b0/a/e0/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    invoke-virtual {v0, p2}, Le/a/b0/a/e0/b;->setDirection(Lcom/truecaller/common/ui/tooltip/TooltipDirection;)V

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p6

    int-to-float p6, p6

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p6, v3

    invoke-virtual {v0, p6}, Le/a/b0/a/e0/b;->setNotchBias(F)V

    :cond_0
    if-eqz p7, :cond_1

    .line 5
    invoke-virtual {v0, p7}, Le/a/b0/a/e0/b;->setColor(I)V

    .line 6
    :cond_1
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p6, "parent.context"

    invoke-static {p3, p6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance p6, Landroid/view/View;

    invoke-direct {p6, p3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string p7, "window"

    .line 9
    invoke-virtual {p3, p7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string p7, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p3, p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Landroid/view/WindowManager;

    .line 10
    new-instance p7, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x3e8

    const v4, 0x840018

    const/4 v5, -0x2

    invoke-direct {p7, v3, v4, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 11
    :try_start_0
    invoke-interface {p3, p6, p7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p6

    goto :goto_0

    :catch_0
    move-exception p3

    .line 12
    invoke-static {p3}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v1, :cond_2

    .line 13
    new-instance p3, Le/a/b0/a/e0/a$a;

    invoke-direct {p3, p8, p1, v0, p9}, Le/a/b0/a/e0/a$a;-><init>(ZLandroid/view/ViewGroup;Le/a/b0/a/e0/b;Ls1/z/b/a;)V

    invoke-virtual {v1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 14
    new-instance p3, Le/a/b0/a/e0/d;

    invoke-direct {p3, v0, p2, p4, p5}, Le/a/b0/a/e0/d;-><init>(Le/a/b0/a/e0/b;Lcom/truecaller/common/ui/tooltip/TooltipDirection;Landroid/view/View;F)V

    .line 15
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 16
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 17
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 18
    invoke-virtual {p1, v0, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 19
    new-instance p2, Le/a/b0/a/e0/c;

    invoke-direct {p2, v0, p3, v1}, Le/a/b0/a/e0/c;-><init>(Le/a/b0/a/e0/b;Le/a/b0/a/e0/d;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method public final d(Landroid/view/ViewGroup;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Le/a/b0/a/e0/c;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Le/a/b0/a/e0/c;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Le/a/b0/a/e0/c;->b:Le/a/b0/a/e0/d;

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 4
    iget-object v1, v0, Le/a/b0/a/e0/c;->a:Le/a/b0/a/e0/b;

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "parent.context"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/g;->n0(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p1

    .line 8
    iget-object v0, v0, Le/a/b0/a/e0/c;->c:Landroid/view/View;

    .line 9
    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
