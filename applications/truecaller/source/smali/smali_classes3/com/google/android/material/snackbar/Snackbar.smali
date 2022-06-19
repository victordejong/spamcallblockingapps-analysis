.class public Lcom/google/android/material/snackbar/Snackbar;
.super Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;,
        Lcom/google/android/material/snackbar/Snackbar$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar<",
        "Lcom/google/android/material/snackbar/Snackbar;",
        ">;"
    }
.end annotation


# static fields
.field public static final w:[I


# instance fields
.field public final u:Landroid/view/accessibility/AccessibilityManager;

.field public v:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->snackbarButtonStyle:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->snackbarTextViewStyle:I

    const/4 v2, 0x1

    aput v0, v1, v2

    sput-object v1, Lcom/google/android/material/snackbar/Snackbar;->w:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Le/m/a/g/w/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Le/m/a/g/w/n;)V

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/material/snackbar/Snackbar;->u:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public static k(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->l(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;
    .locals 8

    const/4 v0, 0x0

    move-object v1, v0

    .line 1
    :cond_0
    instance-of v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v2, :cond_1

    .line 2
    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_1

    .line 3
    :cond_1
    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_2

    .line 5
    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_1

    .line 6
    :cond_2
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_3
    if-eqz p0, :cond_5

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 8
    instance-of v2, p0, Landroid/view/View;

    if-eqz v2, :cond_4

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_4
    move-object p0, v0

    :cond_5
    :goto_0
    if-nez p0, :cond_0

    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_8

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 11
    sget-object v2, Lcom/google/android/material/snackbar/Snackbar;->w:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 12
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/4 v6, 0x1

    .line 13
    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 14
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v5, v3, :cond_6

    if-eq v7, v3, :cond_6

    goto :goto_2

    :cond_6
    move v6, v4

    :goto_2
    if-eqz v6, :cond_7

    .line 15
    sget v2, Lcom/google/android/material/R$layout;->mtrl_layout_snackbar_include:I

    goto :goto_3

    :cond_7
    sget v2, Lcom/google/android/material/R$layout;->design_layout_snackbar_include:I

    .line 16
    :goto_3
    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 17
    new-instance v2, Lcom/google/android/material/snackbar/Snackbar;

    invoke-direct {v2, v0, p0, v1, v1}, Lcom/google/android/material/snackbar/Snackbar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Le/m/a/g/w/n;)V

    .line 18
    iget-object p0, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$k;

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iput p2, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->e:I

    return-object v2

    .line 22
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c(I)V

    return-void
.end method

.method public j()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->e:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_2

    .line 3
    iget-boolean v1, p0, Lcom/google/android/material/snackbar/Snackbar;->v:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/snackbar/Snackbar;->u:Landroid/view/accessibility/AccessibilityManager;

    or-int/lit8 v1, v1, 0x1

    or-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v0

    return v0

    .line 5
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/material/snackbar/Snackbar;->v:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/material/snackbar/Snackbar;->u:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public m(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Landroid/content/Context;

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Lcom/google/android/material/snackbar/Snackbar;->v:Z

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    new-instance p1, Le/m/a/g/w/o;

    invoke-direct {p1, p0, p2}, Le/m/a/g/w/o;-><init>(Lcom/google/android/material/snackbar/Snackbar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-boolean v1, p0, Lcom/google/android/material/snackbar/Snackbar;->v:Z

    :goto_0
    return-object p0
.end method

.method public n()V
    .locals 5

    .line 1
    invoke-static {}, Le/m/a/g/w/p;->b()Le/m/a/g/w/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->j()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->q:Le/m/a/g/w/p$b;

    .line 2
    iget-object v3, v0, Le/m/a/g/w/p;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 3
    :try_start_0
    invoke-virtual {v0, v2}, Le/m/a/g/w/p;->c(Le/m/a/g/w/p$b;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    iget-object v2, v0, Le/m/a/g/w/p;->c:Le/m/a/g/w/p$c;

    iput v1, v2, Le/m/a/g/w/p$c;->b:I

    .line 5
    iget-object v1, v0, Le/m/a/g/w/p;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iget-object v1, v0, Le/m/a/g/w/p;->c:Le/m/a/g/w/p$c;

    invoke-virtual {v0, v1}, Le/m/a/g/w/p;->g(Le/m/a/g/w/p$c;)V

    .line 7
    monitor-exit v3

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v0, v2}, Le/m/a/g/w/p;->d(Le/m/a/g/w/p$b;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    iget-object v2, v0, Le/m/a/g/w/p;->d:Le/m/a/g/w/p$c;

    iput v1, v2, Le/m/a/g/w/p$c;->b:I

    goto :goto_0

    .line 10
    :cond_1
    new-instance v4, Le/m/a/g/w/p$c;

    invoke-direct {v4, v1, v2}, Le/m/a/g/w/p$c;-><init>(ILe/m/a/g/w/p$b;)V

    iput-object v4, v0, Le/m/a/g/w/p;->d:Le/m/a/g/w/p$c;

    .line 11
    :goto_0
    iget-object v1, v0, Le/m/a/g/w/p;->c:Le/m/a/g/w/p$c;

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    .line 12
    invoke-virtual {v0, v1, v2}, Le/m/a/g/w/p;->a(Le/m/a/g/w/p$c;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    monitor-exit v3

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 14
    iput-object v1, v0, Le/m/a/g/w/p;->c:Le/m/a/g/w/p$c;

    .line 15
    invoke-virtual {v0}, Le/m/a/g/w/p;->h()V

    .line 16
    monitor-exit v3

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
