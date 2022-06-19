.class public Le/m/a/g/p/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/p/b;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/g/p/b;->a:Lcom/google/android/material/navigation/NavigationView;

    .line 2
    iget-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->j:[I

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 4
    iget-object v0, p0, Le/m/a/g/p/b;->a:Lcom/google/android/material/navigation/NavigationView;

    .line 5
    iget-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->j:[I

    const/4 v2, 0x1

    .line 6
    aget v1, v1, v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 7
    :goto_0
    iget-object v0, v0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    .line 8
    iget-boolean v4, v0, Le/m/a/g/o/g;->p:Z

    if-eq v4, v1, :cond_1

    .line 9
    iput-boolean v1, v0, Le/m/a/g/o/g;->p:Z

    .line 10
    invoke-virtual {v0}, Le/m/a/g/o/g;->n()V

    .line 11
    :cond_1
    iget-object v0, p0, Le/m/a/g/p/b;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0, v1}, Le/m/a/g/o/i;->setDrawTopInsetForeground(Z)V

    .line 12
    iget-object v0, p0, Le/m/a/g/p/b;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 13
    :goto_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_3

    .line 14
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 15
    check-cast v0, Landroid/app/Activity;

    goto :goto_2

    .line 16
    :cond_2
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    const v1, 0x1020002

    .line 17
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v4, p0, Le/m/a/g/p/b;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    if-ne v1, v4, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v3

    .line 18
    :goto_3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v3

    .line 19
    :goto_4
    iget-object v4, p0, Le/m/a/g/p/b;->a:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    move v2, v3

    :goto_5
    invoke-virtual {v4, v2}, Le/m/a/g/o/i;->setDrawBottomInsetForeground(Z)V

    :cond_7
    return-void
.end method
