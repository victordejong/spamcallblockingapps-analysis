.class public Le/h/a/c/q0/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/q0/v;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/FrameLayout;

.field public final synthetic b:Lcom/clevertap/android/sdk/customviews/CloseImageView;

.field public final synthetic c:Le/h/a/c/q0/v;


# direct methods
.method public constructor <init>(Le/h/a/c/q0/v;Landroid/widget/FrameLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/q0/v$a;->c:Le/h/a/c/q0/v;

    iput-object p2, p0, Le/h/a/c/q0/v$a;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Le/h/a/c/q0/v$a;->b:Lcom/clevertap/android/sdk/customviews/CloseImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/v$a;->a:Landroid/widget/FrameLayout;

    sget v1, Lcom/clevertap/android/sdk/R$id;->interstitial_relative_layout:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 3
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 4
    iget-object v2, p0, Le/h/a/c/q0/v$a;->c:Le/h/a/c/q0/v;

    iget-object v3, v2, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 5
    iget-boolean v3, v3, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->u:Z

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v2}, Le/h/a/c/q0/b;->VA()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v0, p0, Le/h/a/c/q0/v$a;->c:Le/h/a/c/q0/v;

    .line 8
    iget-object v2, v0, Le/h/a/c/q0/v;->n:Landroid/widget/RelativeLayout;

    .line 9
    iget-object v3, p0, Le/h/a/c/q0/v$a;->a:Landroid/widget/FrameLayout;

    iget-object v4, p0, Le/h/a/c/q0/v$a;->b:Lcom/clevertap/android/sdk/customviews/CloseImageView;

    invoke-virtual {v0, v2, v1, v3, v4}, Le/h/a/c/q0/b;->ZA(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, p0, Le/h/a/c/q0/v$a;->c:Le/h/a/c/q0/v;

    invoke-virtual {v2}, Le/h/a/c/q0/b;->VA()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    iget-object v0, p0, Le/h/a/c/q0/v$a;->c:Le/h/a/c/q0/v;

    .line 12
    iget-object v2, v0, Le/h/a/c/q0/v;->n:Landroid/widget/RelativeLayout;

    .line 13
    iget-object v3, p0, Le/h/a/c/q0/v$a;->a:Landroid/widget/FrameLayout;

    iget-object v4, p0, Le/h/a/c/q0/v$a;->b:Lcom/clevertap/android/sdk/customviews/CloseImageView;

    invoke-virtual {v0, v2, v1, v3, v4}, Le/h/a/c/q0/b;->YA(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v2, p0, Le/h/a/c/q0/v$a;->c:Le/h/a/c/q0/v;

    iget-object v3, p0, Le/h/a/c/q0/v$a;->b:Lcom/clevertap/android/sdk/customviews/CloseImageView;

    .line 15
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3fe3d70a    # 1.78f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    invoke-virtual {v2, v0, v3}, Le/h/a/c/q0/b;->UA(Landroid/widget/RelativeLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    .line 19
    :goto_0
    iget-object v0, p0, Le/h/a/c/q0/v$a;->c:Le/h/a/c/q0/v;

    .line 20
    iget-object v0, v0, Le/h/a/c/q0/v;->n:Landroid/widget/RelativeLayout;

    .line 21
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
