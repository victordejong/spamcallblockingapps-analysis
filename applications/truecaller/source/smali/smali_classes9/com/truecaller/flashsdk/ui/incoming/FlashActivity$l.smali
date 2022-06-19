.class public final Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->L6(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$l;->a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;

    iput-object p2, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$l;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$l;->a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;

    sget v2, Lcom/truecaller/flashsdk/R$string;->tip_first_received_flash:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$l;->b:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "getString(R.string.tip_first_received_flash, name)"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    and-int v5, v4, v4

    if-eqz v5, :cond_0

    .line 2
    sget v5, Lcom/truecaller/flashsdk/R$drawable;->flash_ic_tooltip_center_bottom:I

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    const-string v7, "context"

    .line 3
    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "toolTipText"

    invoke-static {v2, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 5
    sget v10, Lcom/truecaller/flashsdk/R$layout;->flash_v2_pop_up:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 6
    sget v10, Lcom/truecaller/flashsdk/R$id;->text:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const-string v12, "view.findViewById<TextView>(R.id.text)"

    invoke-static {v10, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v10, -0x2

    invoke-direct {v2, v9, v10, v10, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 8
    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v2, v13}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v13, 0x1030002

    .line 9
    invoke-virtual {v2, v13}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 10
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 11
    new-instance v14, Le/a/y/a/l/c$a;

    invoke-direct {v14, v2}, Le/a/y/a/l/c$a;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v14}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 12
    sget-object v14, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 13
    invoke-static {v1, v5}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 14
    sget v14, Lcom/truecaller/flashsdk/R$attr;->theme_contrast_bg:I

    invoke-static {v1, v14}, Le/a/p5/s0/g;->k0(Landroid/content/Context;I)I

    move-result v1

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v1, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    const-string v1, "view"

    .line 15
    invoke-static {v9, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object v5, v0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$l;->a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;

    .line 17
    invoke-virtual {v5}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->pa()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    move-result-object v5

    .line 18
    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v14, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v9, v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isFinishing()Z

    move-result v9

    const-string v15, "contentView"

    if-nez v9, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 20
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v9

    .line 21
    invoke-virtual {v9, v6, v6}, Landroid/view/View;->measure(II)V

    .line 22
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    .line 23
    invoke-static {v9, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v16, v9

    .line 24
    invoke-virtual {v2, v5, v9, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 25
    :cond_2
    iget-object v2, v0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$l;->a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;

    sget v5, Lcom/truecaller/flashsdk/R$string;->tip_first_flash_reply:I

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "getString(R.string.tip_first_flash_reply)"

    invoke-static {v5, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/2addr v4, v4

    if-eqz v4, :cond_3

    .line 26
    sget v4, Lcom/truecaller/flashsdk/R$drawable;->flash_ic_tooltip_center_bottom:I

    goto :goto_1

    :cond_3
    move v4, v6

    .line 27
    :goto_1
    invoke-static {v2, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 29
    sget v8, Lcom/truecaller/flashsdk/R$layout;->flash_v2_pop_up:I

    invoke-virtual {v7, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 30
    sget v8, Lcom/truecaller/flashsdk/R$id;->text:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    new-instance v5, Landroid/widget/PopupWindow;

    invoke-direct {v5, v7, v10, v10, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 32
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v5, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    invoke-virtual {v5, v13}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 34
    invoke-virtual {v5, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 35
    new-instance v3, Le/a/y/a/l/c$a;

    invoke-direct {v3, v5}, Le/a/y/a/l/c$a;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {v5, v3}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 36
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 37
    invoke-static {v2, v4}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 38
    sget v4, Lcom/truecaller/flashsdk/R$attr;->theme_contrast_bg:I

    invoke-static {v2, v4}, Le/a/p5/s0/g;->k0(Landroid/content/Context;I)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 39
    :cond_4
    invoke-static {v7, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 40
    iget-object v2, v0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$l;->a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;

    .line 41
    iget-object v2, v2, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->R:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 42
    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 44
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v6, v6}, Landroid/view/View;->measure(II)V

    .line 46
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 47
    invoke-static {v1, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 48
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v4

    add-int/2addr v1, v6

    neg-int v1, v1

    .line 49
    invoke-virtual {v5, v2, v3, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_5
    return-void

    :cond_6
    const-string v1, "replyWithText"

    .line 50
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11
.end method
