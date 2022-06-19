.class public abstract Le/h/a/c/q0/b;
.super Le/h/a/c/q0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/h/a/c/q0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public OA()V
    .locals 0

    return-void
.end method

.method public RA()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/a;->c:Landroid/content/Context;

    instance-of v1, v0, Lcom/clevertap/android/sdk/InAppNotificationActivity;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Le/h/a/c/q0/c0;

    .line 3
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Le/h/a/c/q0/a;->g:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public UA(Landroid/widget/RelativeLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Le/h/a/c/q0/b$a;

    invoke-direct {v1, p0, p2, p1}, Le/h/a/c/q0/b$a;-><init>(Le/h/a/c/q0/b;Lcom/clevertap/android/sdk/customviews/CloseImageView;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public VA()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-static {v0}, Le/h/a/c/j0;->k(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/clevertap/android/sdk/R$bool;->ctIsTablet:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public WA(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    invoke-virtual {p0, p1, p3}, Le/h/a/c/q0/b;->UA(Landroid/widget/RelativeLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    return-void
.end method

.method public XA(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V
    .locals 4

    const/16 v0, 0x8c

    .line 1
    invoke-virtual {p0, v0}, Le/h/a/c/q0/a;->TA(I)I

    move-result v1

    invoke-virtual {p0, v0}, Le/h/a/c/q0/a;->TA(I)I

    move-result v2

    .line 2
    invoke-virtual {p0, v0}, Le/h/a/c/q0/a;->TA(I)I

    move-result v3

    invoke-virtual {p0, v0}, Le/h/a/c/q0/a;->TA(I)I

    move-result v0

    .line 3
    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 4
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    const/16 v1, 0xd2

    invoke-virtual {p0, v1}, Le/h/a/c/q0/a;->TA(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v0, v0

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 5
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-virtual {p0, p1, p3}, Le/h/a/c/q0/b;->UA(Landroid/widget/RelativeLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    return-void
.end method

.method public YA(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Le/h/a/c/q0/a;->TA(I)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const v2, 0x3fe3d70a    # 1.78f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 2
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    const/16 v3, 0x118

    invoke-virtual {p0, v3}, Le/h/a/c/q0/a;->TA(I)I

    move-result v3

    sub-int/2addr p3, v3

    if-le v0, p3, :cond_0

    .line 3
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float p3, p3

    div-float/2addr p3, v2

    float-to-int p3, p3

    .line 4
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 5
    :cond_0
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 6
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p0, v1}, Le/h/a/c/q0/a;->TA(I)I

    move-result v0

    sub-int/2addr p3, v0

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_0
    const/16 p3, 0x8c

    .line 7
    invoke-virtual {p0, p3}, Le/h/a/c/q0/a;->TA(I)I

    move-result v0

    invoke-virtual {p0, p3}, Le/h/a/c/q0/a;->TA(I)I

    move-result v1

    .line 8
    invoke-virtual {p0, p3}, Le/h/a/c/q0/a;->TA(I)I

    move-result v2

    invoke-virtual {p0, p3}, Le/h/a/c/q0/a;->TA(I)I

    move-result p3

    .line 9
    invoke-virtual {p2, v0, v1, v2, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    invoke-virtual {p0, p1, p4}, Le/h/a/c/q0/b;->UA(Landroid/widget/RelativeLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    return-void
.end method

.method public ZA(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3fe3d70a    # 1.78f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    const/16 v2, 0x50

    invoke-virtual {p0, v2}, Le/h/a/c/q0/a;->TA(I)I

    move-result v2

    sub-int/2addr p3, v2

    if-le v0, p3, :cond_0

    .line 3
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float p3, p3

    div-float/2addr p3, v1

    float-to-int p3, p3

    .line 4
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 5
    :cond_0
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 6
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-virtual {p0, p1, p4}, Le/h/a/c/q0/b;->UA(Landroid/widget/RelativeLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    return-void
.end method

.method public aB(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3fe3d70a    # 1.78f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v0, 0x1

    .line 2
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-virtual {p0, p1, p3}, Le/h/a/c/q0/b;->UA(Landroid/widget/RelativeLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    return-void
.end method

.method public bB(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    const/16 v1, 0x78

    invoke-virtual {p0, v1}, Le/h/a/c/q0/a;->TA(I)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const v2, 0x3fe3d70a    # 1.78f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 2
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    const/16 v3, 0x118

    invoke-virtual {p0, v3}, Le/h/a/c/q0/a;->TA(I)I

    move-result v3

    sub-int/2addr p3, v3

    if-le v0, p3, :cond_0

    .line 3
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float p3, p3

    div-float/2addr p3, v2

    float-to-int p3, p3

    .line 4
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 5
    :cond_0
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 6
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result p3

    .line 7
    invoke-virtual {p0, v1}, Le/h/a/c/q0/a;->TA(I)I

    move-result v0

    sub-int/2addr p3, v0

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_0
    const/16 p3, 0x8c

    .line 8
    invoke-virtual {p0, p3}, Le/h/a/c/q0/a;->TA(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Le/h/a/c/q0/a;->TA(I)I

    move-result v2

    .line 9
    invoke-virtual {p0, p3}, Le/h/a/c/q0/a;->TA(I)I

    move-result p3

    invoke-virtual {p0, v1}, Le/h/a/c/q0/a;->TA(I)I

    move-result v1

    .line 10
    invoke-virtual {p2, v0, v2, p3, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 p3, 0x11

    .line 11
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    invoke-virtual {p0, p1, p4}, Le/h/a/c/q0/b;->UA(Landroid/widget/RelativeLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    return-void
.end method

.method public cB(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3fe3d70a    # 1.78f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    const/16 v2, 0x50

    invoke-virtual {p0, v2}, Le/h/a/c/q0/a;->TA(I)I

    move-result v2

    sub-int/2addr p3, v2

    if-le v0, p3, :cond_0

    .line 3
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float p3, p3

    div-float/2addr p3, v1

    float-to-int p3, p3

    .line 4
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 5
    :cond_0
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_0
    const/16 p3, 0x11

    .line 6
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-virtual {p0, p1, p4}, Le/h/a/c/q0/b;->UA(Landroid/widget/RelativeLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    return-void
.end method
