.class public Le/h/a/c/q0/v$b;
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
    iput-object p1, p0, Le/h/a/c/q0/v$b;->c:Le/h/a/c/q0/v;

    iput-object p2, p0, Le/h/a/c/q0/v$b;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Le/h/a/c/q0/v$b;->b:Lcom/clevertap/android/sdk/customviews/CloseImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/v$b;->c:Le/h/a/c/q0/v;

    .line 2
    iget-object v0, v0, Le/h/a/c/q0/v;->n:Landroid/widget/RelativeLayout;

    .line 3
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 4
    iget-object v1, p0, Le/h/a/c/q0/v$b;->c:Le/h/a/c/q0/v;

    iget-object v2, v1, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 5
    iget-boolean v2, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->u:Z

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Le/h/a/c/q0/b;->VA()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Le/h/a/c/q0/v$b;->c:Le/h/a/c/q0/v;

    .line 8
    iget-object v2, v1, Le/h/a/c/q0/v;->n:Landroid/widget/RelativeLayout;

    .line 9
    iget-object v3, p0, Le/h/a/c/q0/v$b;->a:Landroid/widget/FrameLayout;

    iget-object v4, p0, Le/h/a/c/q0/v$b;->b:Lcom/clevertap/android/sdk/customviews/CloseImageView;

    invoke-virtual {v1, v2, v0, v3, v4}, Le/h/a/c/q0/b;->cB(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Le/h/a/c/q0/v$b;->c:Le/h/a/c/q0/v;

    invoke-virtual {v1}, Le/h/a/c/q0/b;->VA()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Le/h/a/c/q0/v$b;->c:Le/h/a/c/q0/v;

    .line 12
    iget-object v2, v1, Le/h/a/c/q0/v;->n:Landroid/widget/RelativeLayout;

    .line 13
    iget-object v3, p0, Le/h/a/c/q0/v$b;->a:Landroid/widget/FrameLayout;

    iget-object v4, p0, Le/h/a/c/q0/v$b;->b:Lcom/clevertap/android/sdk/customviews/CloseImageView;

    invoke-virtual {v1, v2, v0, v3, v4}, Le/h/a/c/q0/b;->bB(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, p0, Le/h/a/c/q0/v$b;->c:Le/h/a/c/q0/v;

    .line 15
    iget-object v2, v1, Le/h/a/c/q0/v;->n:Landroid/widget/RelativeLayout;

    .line 16
    iget-object v3, p0, Le/h/a/c/q0/v$b;->b:Lcom/clevertap/android/sdk/customviews/CloseImageView;

    invoke-virtual {v1, v2, v0, v3}, Le/h/a/c/q0/b;->aB(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    .line 17
    :goto_0
    iget-object v0, p0, Le/h/a/c/q0/v$b;->c:Le/h/a/c/q0/v;

    .line 18
    iget-object v0, v0, Le/h/a/c/q0/v;->n:Landroid/widget/RelativeLayout;

    .line 19
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
