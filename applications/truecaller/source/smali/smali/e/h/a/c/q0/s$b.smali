.class public Le/h/a/c/q0/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/q0/s;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/FrameLayout;

.field public final synthetic b:Lcom/clevertap/android/sdk/customviews/CloseImageView;

.field public final synthetic c:Le/h/a/c/q0/s;


# direct methods
.method public constructor <init>(Le/h/a/c/q0/s;Landroid/widget/FrameLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/q0/s$b;->c:Le/h/a/c/q0/s;

    iput-object p2, p0, Le/h/a/c/q0/s$b;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Le/h/a/c/q0/s$b;->b:Lcom/clevertap/android/sdk/customviews/CloseImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/s$b;->a:Landroid/widget/FrameLayout;

    sget v1, Lcom/clevertap/android/sdk/R$id;->half_interstitial_relative_layout:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 3
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 4
    iget-object v2, p0, Le/h/a/c/q0/s$b;->c:Le/h/a/c/q0/s;

    iget-object v3, v2, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 5
    iget-boolean v3, v3, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->u:Z

    const/16 v4, 0x11

    const v5, 0x3fa66666    # 1.3f

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v2}, Le/h/a/c/q0/b;->VA()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 8
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Le/h/a/c/q0/s$b$c;

    invoke-direct {v1, p0}, Le/h/a/c/q0/s$b$c;-><init>(Le/h/a/c/q0/s$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    iget-object v2, p0, Le/h/a/c/q0/s$b;->c:Le/h/a/c/q0/s;

    invoke-virtual {v2}, Le/h/a/c/q0/b;->VA()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    iget-object v2, p0, Le/h/a/c/q0/s$b;->c:Le/h/a/c/q0/s;

    const/16 v3, 0x8c

    invoke-virtual {v2, v3}, Le/h/a/c/q0/a;->TA(I)I

    move-result v2

    iget-object v6, p0, Le/h/a/c/q0/s$b;->c:Le/h/a/c/q0/s;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Le/h/a/c/q0/a;->TA(I)I

    move-result v6

    iget-object v8, p0, Le/h/a/c/q0/s$b;->c:Le/h/a/c/q0/s;

    .line 13
    invoke-virtual {v8, v3}, Le/h/a/c/q0/a;->TA(I)I

    move-result v3

    iget-object v8, p0, Le/h/a/c/q0/s$b;->c:Le/h/a/c/q0/s;

    invoke-virtual {v8, v7}, Le/h/a/c/q0/a;->TA(I)I

    move-result v7

    .line 14
    invoke-virtual {v1, v2, v6, v3, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 15
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Le/h/a/c/q0/s$b;->c:Le/h/a/c/q0/s;

    const/16 v6, 0x82

    invoke-virtual {v3, v6}, Le/h/a/c/q0/a;->TA(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 16
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 17
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Le/h/a/c/q0/s$b$a;

    invoke-direct {v1, p0}, Le/h/a/c/q0/s$b$a;-><init>(Le/h/a/c/q0/s$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 20
    :cond_2
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v2, 0x1

    .line 21
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Le/h/a/c/q0/s$b$b;

    invoke-direct {v1, p0}, Le/h/a/c/q0/s$b$b;-><init>(Le/h/a/c/q0/s$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    :goto_1
    iget-object v0, p0, Le/h/a/c/q0/s$b;->c:Le/h/a/c/q0/s;

    .line 25
    iget-object v0, v0, Le/h/a/c/q0/s;->h:Landroid/widget/RelativeLayout;

    .line 26
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
