.class public Le/h/a/c/q0/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/q0/t;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/clevertap/android/sdk/customviews/CloseImageView;

.field public final synthetic b:Le/h/a/c/q0/t;


# direct methods
.method public constructor <init>(Le/h/a/c/q0/t;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/q0/t$b;->b:Le/h/a/c/q0/t;

    iput-object p2, p0, Le/h/a/c/q0/t$b;->a:Lcom/clevertap/android/sdk/customviews/CloseImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/t$b;->b:Le/h/a/c/q0/t;

    .line 2
    iget-object v0, v0, Le/h/a/c/q0/t;->h:Landroid/widget/RelativeLayout;

    .line 3
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 4
    iget-object v1, p0, Le/h/a/c/q0/t$b;->b:Le/h/a/c/q0/t;

    iget-object v2, v1, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 5
    iget-boolean v2, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->u:Z

    const/16 v3, 0x11

    const v4, 0x3fa66666    # 1.3f

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v1}, Le/h/a/c/q0/b;->VA()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Le/h/a/c/q0/t$b;->b:Le/h/a/c/q0/t;

    .line 8
    iget-object v1, v1, Le/h/a/c/q0/t;->h:Landroid/widget/RelativeLayout;

    .line 9
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 10
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 11
    iget-object v1, p0, Le/h/a/c/q0/t$b;->b:Le/h/a/c/q0/t;

    .line 12
    iget-object v1, v1, Le/h/a/c/q0/t;->h:Landroid/widget/RelativeLayout;

    .line 13
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Le/h/a/c/q0/t$b$c;

    invoke-direct {v1, p0}, Le/h/a/c/q0/t$b$c;-><init>(Le/h/a/c/q0/t$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 15
    :cond_1
    :goto_0
    iget-object v1, p0, Le/h/a/c/q0/t$b;->b:Le/h/a/c/q0/t;

    invoke-virtual {v1}, Le/h/a/c/q0/b;->VA()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    iget-object v1, p0, Le/h/a/c/q0/t$b;->b:Le/h/a/c/q0/t;

    const/16 v2, 0x8c

    invoke-virtual {v1, v2}, Le/h/a/c/q0/a;->TA(I)I

    move-result v1

    iget-object v5, p0, Le/h/a/c/q0/t$b;->b:Le/h/a/c/q0/t;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Le/h/a/c/q0/a;->TA(I)I

    move-result v5

    iget-object v7, p0, Le/h/a/c/q0/t$b;->b:Le/h/a/c/q0/t;

    .line 17
    invoke-virtual {v7, v2}, Le/h/a/c/q0/a;->TA(I)I

    move-result v2

    iget-object v7, p0, Le/h/a/c/q0/t$b;->b:Le/h/a/c/q0/t;

    invoke-virtual {v7, v6}, Le/h/a/c/q0/a;->TA(I)I

    move-result v6

    .line 18
    invoke-virtual {v0, v1, v5, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 19
    iget-object v1, p0, Le/h/a/c/q0/t$b;->b:Le/h/a/c/q0/t;

    .line 20
    iget-object v1, v1, Le/h/a/c/q0/t;->h:Landroid/widget/RelativeLayout;

    .line 21
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Le/h/a/c/q0/t$b;->b:Le/h/a/c/q0/t;

    const/16 v5, 0x82

    invoke-virtual {v2, v5}, Le/h/a/c/q0/a;->TA(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 22
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 23
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 24
    iget-object v1, p0, Le/h/a/c/q0/t$b;->b:Le/h/a/c/q0/t;

    .line 25
    iget-object v1, v1, Le/h/a/c/q0/t;->h:Landroid/widget/RelativeLayout;

    .line 26
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Le/h/a/c/q0/t$b$a;

    invoke-direct {v1, p0}, Le/h/a/c/q0/t$b$a;-><init>(Le/h/a/c/q0/t$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 28
    :cond_2
    iget-object v1, p0, Le/h/a/c/q0/t$b;->b:Le/h/a/c/q0/t;

    .line 29
    iget-object v1, v1, Le/h/a/c/q0/t;->h:Landroid/widget/RelativeLayout;

    .line 30
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v1, 0x1

    .line 31
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 32
    iget-object v1, p0, Le/h/a/c/q0/t$b;->b:Le/h/a/c/q0/t;

    .line 33
    iget-object v1, v1, Le/h/a/c/q0/t;->h:Landroid/widget/RelativeLayout;

    .line 34
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Le/h/a/c/q0/t$b$b;

    invoke-direct {v1, p0}, Le/h/a/c/q0/t$b$b;-><init>(Le/h/a/c/q0/t$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    :goto_1
    iget-object v0, p0, Le/h/a/c/q0/t$b;->b:Le/h/a/c/q0/t;

    .line 37
    iget-object v0, v0, Le/h/a/c/q0/t;->h:Landroid/widget/RelativeLayout;

    .line 38
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
