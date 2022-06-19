.class public final Lcom/google/android/gms/common/SignInButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/SignInButton$ColorScheme;,
        Lcom/google/android/gms/common/SignInButton$ButtonSize;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/view/View;

.field public d:Landroid/view/View$OnClickListener;


# virtual methods
.method public a(II)V
    .locals 8

    iput p1, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    :try_start_0
    iget p2, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    .line 4
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/zaz;->a(Landroid/content/Context;II)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;
    :try_end_0
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 5
    :catch_0
    iget p2, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    new-instance v1, Lcom/google/android/gms/common/internal/zaaa;

    .line 6
    invoke-direct {v1, p1}, Lcom/google/android/gms/common/internal/zaaa;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 8
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 11
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42400000    # 48.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 12
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinHeight(I)V

    .line 13
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinWidth(I)V

    .line 14
    sget v2, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_icon_dark:I

    sget v3, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_icon_light:I

    .line 15
    invoke-static {v0, v2, v3, v3}, Lcom/google/android/gms/common/internal/zaaa;->a(IIII)I

    move-result v2

    sget v3, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_text_dark:I

    sget v4, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_text_light:I

    .line 16
    invoke-static {v0, v3, v4, v4}, Lcom/google/android/gms/common/internal/zaaa;->a(IIII)I

    move-result v3

    const-string v4, "Unknown button size: "

    const/16 v5, 0x20

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v7, :cond_2

    if-ne p2, v6, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v5, v4, p2}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move v2, v3

    .line 19
    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 20
    sget v3, Lcom/google/android/gms/base/R$color;->common_google_signin_btn_tint:I

    .line 21
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 23
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 24
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 25
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v2, Lcom/google/android/gms/base/R$color;->common_google_signin_btn_text_dark:I

    sget v3, Lcom/google/android/gms/base/R$color;->common_google_signin_btn_text_light:I

    .line 26
    invoke-static {v0, v2, v3, v3}, Lcom/google/android/gms/common/internal/zaaa;->a(IIII)I

    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const-string v2, "null reference"

    .line 28
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    if-eq p2, v7, :cond_4

    if-ne p2, v6, :cond_3

    .line 30
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 31
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v5, v4, p2}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_4
    sget p2, Lcom/google/android/gms/base/R$string;->common_signin_button_text_long:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 34
    :cond_5
    sget p2, Lcom/google/android/gms/base/R$string;->common_signin_button_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 36
    invoke-virtual {v1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/util/DeviceProperties;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x13

    .line 37
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setGravity(I)V

    .line 38
    :cond_6
    iput-object v1, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    .line 39
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    .line 41
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    .line 42
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 1
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setColorScheme(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/SignInButton;->a(II)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View$OnClickListener;

    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setScopes([Lcom/google/android/gms/common/api/Scope;)V
    .locals 1
    .param p1    # [Lcom/google/android/gms/common/api/Scope;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p1, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;->a(II)V

    return-void
.end method

.method public setSize(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;->a(II)V

    return-void
.end method
