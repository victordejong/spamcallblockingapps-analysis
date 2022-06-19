.class public Le/h/a/c/q0/t$a;
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
    iput-object p1, p0, Le/h/a/c/q0/t$a;->b:Le/h/a/c/q0/t;

    iput-object p2, p0, Le/h/a/c/q0/t$a;->a:Lcom/clevertap/android/sdk/customviews/CloseImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/t$a;->b:Le/h/a/c/q0/t;

    .line 2
    iget-object v0, v0, Le/h/a/c/q0/t;->h:Landroid/widget/RelativeLayout;

    .line 3
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 4
    iget-object v1, p0, Le/h/a/c/q0/t$a;->b:Le/h/a/c/q0/t;

    iget-object v2, v1, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 5
    iget-boolean v2, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->u:Z

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Le/h/a/c/q0/b;->VA()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Le/h/a/c/q0/t$a;->b:Le/h/a/c/q0/t;

    .line 8
    iget-object v2, v1, Le/h/a/c/q0/t;->h:Landroid/widget/RelativeLayout;

    .line 9
    iget-object v3, p0, Le/h/a/c/q0/t$a;->a:Lcom/clevertap/android/sdk/customviews/CloseImageView;

    invoke-virtual {v1, v2, v0, v3}, Le/h/a/c/q0/b;->WA(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Le/h/a/c/q0/t$a;->b:Le/h/a/c/q0/t;

    invoke-virtual {v1}, Le/h/a/c/q0/b;->VA()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Le/h/a/c/q0/t$a;->b:Le/h/a/c/q0/t;

    .line 12
    iget-object v2, v1, Le/h/a/c/q0/t;->h:Landroid/widget/RelativeLayout;

    .line 13
    iget-object v3, p0, Le/h/a/c/q0/t$a;->a:Lcom/clevertap/android/sdk/customviews/CloseImageView;

    invoke-virtual {v1, v2, v0, v3}, Le/h/a/c/q0/b;->XA(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, p0, Le/h/a/c/q0/t$a;->b:Le/h/a/c/q0/t;

    .line 15
    iget-object v2, v1, Le/h/a/c/q0/t;->h:Landroid/widget/RelativeLayout;

    .line 16
    iget-object v3, p0, Le/h/a/c/q0/t$a;->a:Lcom/clevertap/android/sdk/customviews/CloseImageView;

    invoke-virtual {v1, v2, v0, v3}, Le/h/a/c/q0/b;->WA(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    .line 17
    :goto_0
    iget-object v0, p0, Le/h/a/c/q0/t$a;->b:Le/h/a/c/q0/t;

    .line 18
    iget-object v0, v0, Le/h/a/c/q0/t;->h:Landroid/widget/RelativeLayout;

    .line 19
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
